ILSREC ; m-ils record store — CATLINE bibliographic + SERLINE serial records
 ; NLM line-mode format: tagged lines "TAG - value" (CATLINE from CATFILE,
 ; SERLINE from SERFILE). Repeatable tags (MH headings) carry a sequence.
 ; Storage: ^ILS("CAT",id,tag,seq)=value ; ^ILS("SER",id,tag,seq)=value
 ; Fields: CAT: ID BTI AU PB DP AB ISBN MH (repeatable)
 ;         SER: ID STI ISS CTY LA MH (repeatable)
 ; Dual-engine style (AGENTS.md): GOTO-walk $O traversals (no QUIT-in-FOR),
 ; no IF inside dotted blocks (IFs live at tag level), one command per IF
 ; line, parenthesized mixed arithmetic, single-arg WRITEs.
 ;
PUT(recid,kind,tag,seq,val) ; store a field
 S ^ILS(kind,recid,tag,seq)=val
 Q
 ;
GET(recid,kind,tag,seq) ; read a field ("" when absent)
 Q $G(^ILS(kind,recid,tag,seq))
 ;
SEQPUT(recid,kind,tag,val) ; auto-sequenced append for repeatable tags
 N seq
 S seq=$O(^ILS(kind,recid,tag,""),-1)+1
 S ^ILS(kind,recid,tag,seq)=val
 Q
 ;
KILLREC(recid,kind) ; remove a record entirely
 K ^ILS(kind,recid)
 Q
 ;
PARSE(recid,kind,text) ; ingest a line-mode body; field count is left in
 ; ^ILS("TMP","CNT") (GT.M forbids Q with argument in a DOed label).
 K ^ILS("TMP","CNT")
 S ^ILS("TMP","CNT")=0
 N p,np
 S np=$L(text,$C(10))
 F p=1:1:np D
 . D PLINE(recid,kind,$P(text,$C(10),p))
 Q
 ;
PLINE(recid,kind,line) ; process one tagged line (IFs at tag level)
 I line="" Q
 I $P(line," - ",2)="" Q
 I $P(line," - ",1)="" Q
 S tag=$P(line," - ",1)
 S val=$P(line," - ",2,999)
 S seq=$O(^ILS(kind,recid,tag,""),-1)+1
 S ^ILS(kind,recid,tag,seq)=val
 S ^ILS("TMP","CNT")=$G(^ILS("TMP","CNT"))+1
 Q
 ;
FORMAT(recid,kind) ; render to line-mode text ($C(10)-joined)
 N out,line,tag,seq,val
 S out=""
 S tag=""
FW1 S tag=$O(^ILS(kind,recid,tag))
 I tag="" G FWD
 S seq=""
FW2 S seq=$O(^ILS(kind,recid,tag,seq))
 I seq="" G FW1
 S val=$G(^ILS(kind,recid,tag,seq))
 S line=tag_" - "_val
 I out="" S out=line G FW2
 S out=out_$C(10)_line
 G FW2
FWD ;
 Q out
 ;
TITLES(kind) ; all ids+titles of a kind: "id:title|id:..."
 N out,id,t
 S out=""
 S id=""
TW1 S id=$O(^ILS(kind,id))
 I id="" G TWD
 I id'?1.N G TW1
 S t=$G(^ILS(kind,id,$S(kind="CAT":"BTI",1:"STI"),1))
 I out="" S out=id_":"_t G TW1
 S out=out_"|"_id_":"_t
 G TW1
TWD ;
 Q out
 ;
DEMO ; seed demonstration data (3 CATLINE books, 3 SERLINE serials)
 D KILLALL
 D CAT1
 D CAT2
 D CAT3
 D SER1
 D SER2
 D SER3
 Q
 ;
KILLALL ;
 K ^ILS("CAT")
 K ^ILS("SER")
 Q
 ;
CAT1 ;
 N T
 S T="ID - 1"_$C(10)
 S T=T_"BTI - Medical Informatics: A Primer"_$C(10)
 S T=T_"AU - Chen, Wei"_$C(10)
 S T=T_"PB - Biomedical Press"_$C(10)
 S T=T_"DP - 2020"_$C(10)
 S T=T_"AB - An introduction to health data systems."_$C(10)
 S T=T_"MH - Medical Informatics"_$C(10)
 S T=T_"MH - Terminology as Topic"_$C(10)
 D PARSE(1,"CAT",T)
 Q
 ;
CAT2 ;
 N T
 S T="ID - 2"_$C(10)
 S T=T_"BTI - Diabetes Management in Primary Care"_$C(10)
 S T=T_"AU - Alvarez, Rosa"_$C(10)
 S T=T_"PB - Riverside Health"_$C(10)
 S T=T_"DP - 2019"_$C(10)
 S T=T_"MH - Diabetes Mellitus"_$C(10)
 S T=T_"MH - Primary Health Care"_$C(10)
 D PARSE(2,"CAT",T)
 Q
 ;
CAT3 ;
 N T
 S T="ID - 3"_$C(10)
 S T=T_"BTI - Genomics and Public Health"_$C(10)
 S T=T_"AU - Okafor, Daniel"_$C(10)
 S T=T_"PB - Genome Press"_$C(10)
 S T=T_"DP - 2021"_$C(10)
 S T=T_"MH - Genomics"_$C(10)
 S T=T_"MH - Public Health"_$C(10)
 D PARSE(3,"CAT",T)
 Q
 ;
SER1 ;
 N T
 S T="ID - 101"_$C(10)
 S T=T_"STI - Journal of the American Medical Informatics Association"_$C(10)
 S T=T_"ISS - 1067-5027"_$C(10)
 S T=T_"CTY - United States"_$C(10)
 S T=T_"LA - eng"_$C(10)
 S T=T_"MH - Medical Informatics"_$C(10)
 D PARSE(101,"SER",T)
 Q
 ;
SER2 ;
 N T
 S T="ID - 102"_$C(10)
 S T=T_"STI - Diabetic Medicine"_$C(10)
 S T=T_"ISS - 0742-3071"_$C(10)
 S T=T_"CTY - United Kingdom"_$C(10)
 S T=T_"LA - eng"_$C(10)
 S T=T_"MH - Diabetes Mellitus"_$C(10)
 D PARSE(102,"SER",T)
 Q
 ;
SER3 ;
 N T
 S T="ID - 103"_$C(10)
 S T=T_"STI - Public Health Genomics"_$C(10)
 S T=T_"ISS - 1662-4246"_$C(10)
 S T=T_"CTY - Switzerland"_$C(10)
 S T=T_"MH - Genomics"_$C(10)
 D PARSE(103,"SER",T)
 Q
