ILSPAT ; m-ils accounts & session auth (MVP expansion, m-ils#1, design doc docs/MVP-EXPANSION-DESIGN.md)
 ; Stores:
 ;   ^ILS("PAT",id,"NAME"|"EMAIL"|"ROLE"|"SALT"|"HASH"|"CREATED")=value
 ;   ^ILSIDX("PATBYNAME",foldedname)=id
 ;   ^ILS("SES",token)=patid_":"_expiryAbsSec
 ;   ^ILS("SEQ","PAT")=lastId
 ; HASH is a pure-M iterated mixer (NOT cryptographic — MVP grade; plaintext is
 ; never stored). Pluggable: swap $$HASH/$$VERIFY to upgrade (e.g. gtmcrypt on
 ; GT.M) without changing call sites.
 ;
NXTID(k) ; next id for counter ^ILS("SEQ",k) — shared by all modules
 Q $I(^ILS("SEQ",k))
 ;
NOW() ; absolute seconds from $H (parenthesized mixed arithmetic)
 Q ($P($H,",",1)*86400)+($P($H,",",2))
 ;
HASH(s) ; iterated mixer mod 2^31-1 (exact in double), 100 rounds; decimal string
 ; GOTO loops (mJVM-safe; FOR bodies with >1 command hit mjvm#19)
 N h,i,c,r
 S h=2166136261
 S i=0
HL S i=i+1
 I i>$L(s) G HR
 S c=$A($E(s,i))
 S h=(((h*31)+c)#2147483647)
 G HL
HR S r=0
HR2 S r=r+1
 I r>100 G HD
 S h=(((h*31)+r)#2147483647)
 G HR2
HD Q $G(h)
 ;
FOLD(s) ; case-fold key
 Q $ZCONVERT(s,"U")
 ;
VERIFY(id,password) ; 1 when password matches stored hash
 Q $$HASH(^ILS("PAT",id,"SALT")_password)=^ILS("PAT",id,"HASH")
 ;
CREATEPAT(name,email,role,password) ; returns new id, or "" with ^ILS("TMP","ERR") set
 N id,nm
 S nm=$$FOLD(name)
 I $D(^ILSIDX("PATBYNAME",nm)) S ^ILS("TMP","ERR")="name exists" Q ""
 S id=$$NXTID("PAT")
 S ^ILS("PAT",id,"NAME")=name
 S ^ILS("PAT",id,"EMAIL")=email
 S ^ILS("PAT",id,"ROLE")=role
 S ^ILS("PAT",id,"SALT")=$$HASH($H_":"_$ZJOB_":"_id)
 S ^ILS("PAT",id,"HASH")=$$HASH(^ILS("PAT",id,"SALT")_password)
 S ^ILS("PAT",id,"CREATED")=$$NOW()
 S ^ILSIDX("PATBYNAME",nm)=id
 Q $G(id)
 ;
LOGIN(name,password) ; returns session token, "" on failure
 N id,tok,e
 S id=$G(^ILSIDX("PATBYNAME",$$FOLD(name)))
 I id="" Q ""
 I '$$VERIFY(id,password) Q ""
 S tok=$$HASH(name_":"_$H_":"_$ZJOB_":"_id)
 S e=$$NOW()+604800
 S ^ILS("SES",tok)=id_":"_e
 Q tok
 ;
CHECK(token) ; patid for a live session, "" otherwise (expired sessions removed)
 N rec,e
 S rec=$G(^ILS("SES",token))
 I rec="" Q ""
 S e=$P(rec,":",2)
 I e<$$NOW() K ^ILS("SES",token) Q ""
 Q $P(rec,":",1)
 ;
ROLE(token) ; "patron"|"librarian"|"" 
 N id
 S id=$$CHECK(token)
 I id="" Q ""
 Q $G(^ILS("PAT",id,"ROLE"))
 ;
CAN(token,action) ; role guard — the single enforcement point for mutating APIs
 N role
 S role=$$ROLE(token)
 I role="librarian" Q 1
 I role'="patron" Q 0
 I action="view" Q 1
 I action="myloans" Q 1
 I action="myholds" Q 1
 I action="myill" Q 1
 I action="hold" Q 1
 I action="illreq" Q 1
 I action="renew" Q 1
 Q 0
 ;
WHOAMI(token) ; "id|name|role" or ""
 N id
 S id=$$CHECK(token)
 I id="" Q ""
 Q id_"|"_^ILS("PAT",id,"NAME")_"|"_^ILS("PAT",id,"ROLE")
 ;
PATDEMO ; seed one patron + one librarian (ids 1,2 after a reset)
 K ^ILS("PAT"),^ILSIDX("PATBYNAME"),^ILS("SES")
 K ^ILS("SEQ","PAT")
 N a,b
 S a=$$CREATEPAT("Alice","alice@example.org","patron","pw")
 S b=$$CREATEPAT("Lib","lib@example.org","librarian","lp")
 Q
