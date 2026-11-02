ILSTUI ; m-ils TUI — command dispatcher (pure; the read loop is thin)
 ; DISPATCH(cmd) returns a reply string ($C(10)-joined lines). The loop:
 ;   GT.M:  F  R cmd:60 D  Q:cmd="QUIT"  W $$DISPATCH(cmd),!
 ;   mJVM: exercised by the battery through DISPATCH directly.
 ; Commands:
 ;   HELP | DEMO | LIST | SHOW <CAT|SER> <id> | AUTH <ui>
 ;   MH <heading> | FIND <word> | ISSN <issn> | VALIDATE <CAT|SER> <id>
 ;   LEDGER | RELATED <ui> | QUIT
 ;
DISPATCH(cmd) ;
 N verb,arg,arg2,parts
 N rawcmd S rawcmd=cmd
 S cmd=$ZCONVERT(cmd,"U")
 I cmd["QUIT" Q "bye"
 S parts=$L(cmd," ")
 S verb=$P(cmd," ")
 I parts>1 S arg=$P(cmd," ",2)
 I parts>2 S arg2=$P(cmd," ",3)
 I verb="HELP" Q $$HELP()
 I verb="DEMO" D DEMOALL Q "seeded: 3 CATLINE + 3 SERLINE records, 8 MeSH authorities"
 I verb="LIST" Q $$LIST()
 I verb="SHOW" Q $$SHOW($G(arg),$G(arg2))
 I verb="AUTH" Q $$AUTHINFO($G(arg))
 I verb="MH" Q $$MHINFO($G(arg))
 I verb="FIND" Q $$FINDINFO($G(arg))
 I verb="ISSN" Q $$ISSNINFO($G(arg))
 I verb="VALIDATE" Q $$VALINFO($G(arg),$G(arg2))
 I verb="LEDGER" Q $$LEDGER()
 I verb="RELATED" Q $$RELINFO($G(arg))
 I verb="LOGIN" Q $$LOGINUI($P(rawcmd," ",2),$P(rawcmd," ",3))
 I verb="LOANS" Q $$MYLOANS^ILSCIRC(^ILS("TMP","TOK"))
 I verb="HOLDS" Q $$MYHOLDS^ILSCIRC(^ILS("TMP","TOK"))
 I verb="ILL" Q $$MYILL^ILSILL(^ILS("TMP","TOK"))
 Q "unknown command (HELP for list)"
 ;
HELP() ;
 Q "HELP DEMO LIST SHOW <kind> <id> AUTH <ui> MH <heading> FIND <word>"_$C(10)_"ISSN <issn> VALIDATE <kind> <id> LEDGER RELATED <ui> QUIT"_$C(10)_"LOGIN <name> <pw> LOANS HOLDS ILL"
 ;
LOGINUI(name,pw) ; store session token in ^ILS("TMP","TOK"), return ok|role or err|login
 N t
 S t=$$LOGIN^ILSPAT(name,pw)
 I t="" Q "err|login"
 S ^ILS("TMP","TOK")=t
 Q "ok|"_$$ROLE^ILSPAT(t)
 ;
DEMOALL ;
 D DEMO^ILSREC
 D AUTHDEMO^ILSAUTH
 D PATDEMO^ILSPAT
 D CIRCDEMO^ILSCIRC
 D ILLDEMO^ILSILL
 D REINDEX^ILSEARCH
 Q
 ;
LIST() ; titles of both kinds: "CAT id:title|...|SER id:title|..."
 Q $$TITLES^ILSREC("CAT")_"|"_$$TITLES^ILSREC("SER")
 ;
SHOW(kind,recid) ; line-mode rendering of a record
 I kind'="CAT" I kind'="SER" Q "kind must be CAT or SER"
 I '$D(^ILS(kind,recid)) Q "no such record"
 Q $$FORMAT^ILSREC(recid,kind)
 ;
AUTHINFO(ui) ; authority record + tree + linked records
 N out,name,tree,links
 S name=$$AUTHGET^ILSAUTH(ui)
 I name="" Q "no such authority record"
 S tree=$$TREEGET^ILSAUTH(ui)
 S links=$$RECAUTH^ILSAUTH(ui)
 S out=ui_": "_name_$C(10)_"tree: "_tree
 I links'="" S out=out_$C(10)_"linked: "_links
 Q out
 ;
MHINFO(head) ; records by MeSH heading name
 N ids
 S ids=$$BYHEAD^ILSEARCH(head)
 I ids="" Q "no records for heading "_head
 Q ids
 ;
FINDINFO(word) ;
 N ids
 S ids=$$TITLE^ILSEARCH(word)
 I ids="" Q "no hits for "_word
 Q ids
 ;
ISSNINFO(issn) ;
 N ids
 S ids=$$BYISSN^ILSEARCH(issn)
 I ids="" Q "no serial with ISSN "_issn
 Q ids
 ;
VALINFO(kind,recid) ; authority-validate a record
 I kind'="CAT" I kind'="SER" Q "kind must be CAT or SER"
 I '$D(^ILS(kind,recid)) Q "no such record"
 Q $$VALIDATE^ILSAUTH(recid,kind)
 ;
LEDGER() ; unlinked headings ledger: kind:recid:heading per line
 N out,kind,recid,head
 S out=""
 S kind="CAT"
LG1 ;
 D LGK
 I kind="CAT" S kind="SER" G LG1
 I out="" Q "ledger empty (all headings validated)"
 Q out
 ;
LGK ; append one kind's ledger entries to out
 S recid=""
LGK1 S recid=$O(^ILS("LEDG",kind,recid))
 I recid="" G LGKD
 S head=""
LGK2 S head=$O(^ILS("LEDG",kind,recid,head))
 I head="" G LGK1
 I out="" S out=kind_":"_recid_":"_head G LGK2
 S out=out_$C(10)_(kind_":"_recid_":"_head)
 G LGK2
LGKD ;
 Q
 ;
RELINFO(ui) ; authority records related by tree root
 N out
 S out=$$AUTHRELATED^ILSAUTH(ui)
 I out="" Q "no related authorities"
 Q out
 ;
LOOP ; the thin read loop (GT.M interactive; 60s per read)
 F  D  Q:STOP=1
 . R cmd:60
 . I '$T S STOP=1 Q
 . W $$DISPATCH(cmd),!
 S STOP=0
 Q
