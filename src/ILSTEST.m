ILSTEST ; m-ils self-check battery — the project's conformance oracle
 ; Runs under BOTH engines (mJVM native, GT.M V7.2-001); output must be
 ; identical line-for-line across engines. Every check prints
 ; "Tnn ok <desc>" or "Tnn FAIL <desc>: got=[..] want=[..]".
 D T01
 D T02
 D T03
 D T04
 D T05
 D T06
 D T07
 D T08
 D T09
 D T10
 D T11
 D T12
 D T13
 D T14
 D T15
 D T16
 D T17
 D T18
 D T19
 D T20
 W !
 W "ILSTEST done"
 W !
 Q
 ;
CHK(tname,desc,got,want) ;
 I got=want D  Q
 . W tname_" ok "_desc
 . W !
 I got'=want D
 . W tname_" FAIL "_desc_": got=["_got_"] want=["_want_"]"
 . W !
 Q
 ;
T01 ; demo seed (DEMOALL also seeds patrons/items via PATDEMO/CIRCDEMO/ILLDEMO)
 D DEMOALL^ILSTUI
 ; validate all six records (unrolled: mJVM #35 — comma value-list FOR)
 N vr
 S vr=$$VALIDATE^ILSAUTH(1,"CAT")
 S vr=$$VALIDATE^ILSAUTH(2,"CAT")
 S vr=$$VALIDATE^ILSAUTH(3,"CAT")
 S vr=$$VALIDATE^ILSAUTH(101,"SER")
 S vr=$$VALIDATE^ILSAUTH(102,"SER")
 S vr=$$VALIDATE^ILSAUTH(103,"SER")
 D CHK("T01","demo seed (6 records, 8 authorities)",$$COUNT^ILSAUTH(),8)
 Q
 ;
T02 ; field get/put ($G directly: mJVM #25 bars 4-arg extrinsic $$GET)
 D CHK("T02","CAT 1 BTI",$G(^ILS("CAT",1,"BTI",1)),"Medical Informatics: A Primer")
 Q
 ;
T03 ; parse/format roundtrip (tags render in $O collation, not source order)
 D KILLREC^ILSREC(4,"CAT")
 N T3,E3
 S T3="ID - 4"_$C(10)
 S T3=T3_"BTI - Temp Record"_$C(10)
 S T3=T3_"MH - Genomics"_$C(10)
 D PARSE^ILSREC(4,"CAT",T3)
 S E3="BTI - Temp Record"_$C(10)
 S E3=E3_"ID - 4"_$C(10)
 S E3=E3_"MH - Genomics"
 D CHK("T03","parse/format roundtrip",$$FORMAT^ILSREC(4,"CAT"),E3)
 Q
 ;
T04 ; MeSH lookup by name
 D CHK("T04","authority by name",$$AUTHBYNAME^ILSAUTH("Diabetes Mellitus"),"D003920")
 Q
 ;
T05 ; authority get
 D CHK("T05","authority get",$$AUTHGET^ILSAUTH("D008297"),"Medical Informatics")
 Q
 ;
T06 ; authority validate: all valid
 D CHK("T06","validate CAT 1 (2 MH)",$$VALIDATE^ILSAUTH(1,"CAT"),"ok|2")
 Q
 ;
T07 ; authority validate: one bad heading
 N T7
 S T7="ID - 5"_$C(10)
 S T7=T7_"BTI - Bad Heading Book"_$C(10)
 S T7=T7_"MH - Diabetes Mellitus"_$C(10)
 S T7=T7_"MH - Quantum Bibliography"_$C(10)
 D PARSE^ILSREC(5,"CAT",T7)
 D CHK("T07","validate CAT 5 (1 ok, 1 bad)",$$VALIDATE^ILSAUTH(5,"CAT"),"fail|1|1")
 Q
 ;
T08 ; ledger records the bad heading
 D CHK("T08","ledger has bad heading",$$LEDGER^ILSTUI(),"CAT:5:Quantum Bibliography")
 Q
 ;
T09 ; records by authority
 D CHK("T09","records for D003920",$$RECAUTH^ILSAUTH("D003920"),"CAT:2|CAT:5|SER:102")
 Q
 ;
T10 ; title search
 D CHK("T10","FIND DIABETES",$$DISPATCH^ILSTUI("FIND DIABETES"),"CAT:2")
 Q
 ;
T11 ; heading search
 D CHK("T11","MH GENOMICS",$$DISPATCH^ILSTUI("MH GENOMICS"),"CAT:3|SER:103")
 Q
 ;
T12 ; ISSN search
 D CHK("T12","ISSN 0742-3071",$$DISPATCH^ILSTUI("ISSN 0742-3071"),"102")
 Q
 ;
T13 ; TUI show
 N W13
 S W13=$$DISPATCH^ILSTUI("SHOW CAT 2")
 I W13["Diabetes Management in Primary Care" D
 . W "T13 ok TUI show CAT 2"
 . W !
 I W13'["Diabetes Management in Primary Care" D
 . W "T13 FAIL TUI show CAT 2"
 . W !
 Q
 ;
T14 ; trailing-period normalization in authority lookup (Phase 0 finding)
 D AUTHADD^ILSAUTH("D999999","Phase Zero Heading","Z99.999")
 D CHK("T14","trailing-period lookup",$$AUTHBYNAME^ILSAUTH("Phase Zero Heading."),"D999999")
 Q
 ;
T15 ; auth: demo patron login, bad password, bogus token
 N a,b
 S a=$$LOGIN^ILSPAT("Alice","pw")
 S b=$$LOGIN^ILSPAT("Alice","nope")
 D CHK("T15","patron login ok",$$CHECK^ILSPAT(a),1)
 D CHK("T15b","bad password rejected",b,"")
 D CHK("T15c","bogus token rejected",$$CHECK^ILSPAT("bogus"),"")
 Q
 ;
T16 ; role guard + whoami
 N p,l
 S p=$$LOGIN^ILSPAT("Alice","pw")
 S l=$$LOGIN^ILSPAT("Lib","lp")
 D CHK("T16","patron cannot manage items",$$CAN^ILSPAT(p,"manageitems"),0)
 D CHK("T16b","librarian can manage items",$$CAN^ILSPAT(l,"manageitems"),1)
 D CHK("T16c","whoami patron",$$WHOAMI^ILSPAT(p),"1|Alice|patron")
 Q
 ;
T17 ; items + checkout/checkin/item status
 K ^ILS("ITEM"),^ILSIDX("ITEMBYBIB"),^ILS("LOAN"),^ILSIDX("LOANBYITEM"),^ILSIDX("LOANBYPAT"),^ILS("SEQ","LOAN")
 N l,pa,r
 S l=$$LOGIN^ILSPAT("Lib","lp")
 S pa=$$LOGIN^ILSPAT("Alice","pw")
 S r=$$ADDITEM^ILSCIRC(pa,1,"B1")
 D CHK("T17","patron cannot add item",r,"err|auth")
 S r=$$ADDITEM^ILSCIRC(l,1,"B1")
 D CHK("T17b","librarian adds item",r,"ok|B1")
 S r=$$CHECKOUT^ILSCIRC(l,"B1")
 D CHK("T17c","checkout ok",r,"ok|1")
 D CHK("T17d","status on-loan",$$ITEMSTATUS^ILSCIRC("B1"),"on-loan")
 S r=$$CHECKIN^ILSCIRC(l,"B1")
 D CHK("T17e","checkin ok",r,"ok|1")
 D CHK("T17f","status available",$$ITEMSTATUS^ILSCIRC("B1"),"available")
 Q
 ;
T18 ; holds + renew rules
 K ^ILS("HOLD"),^ILSIDX("HOLDBYCAT"),^ILSIDX("HOLDBYPAT"),^ILS("SEQ","HOLD")
 N l,pa,h,r
 S l=$$LOGIN^ILSPAT("Lib","lp")
 S pa=$$LOGIN^ILSPAT("Alice","pw")
 S h=$$HOLD^ILSCIRC(pa,1)
 D CHK("T18","hold placed",h,"ok|1")
 S r=$$CHECKOUT^ILSCIRC(l,"B1")
 D CHK("T18b","checkout with hold queued (advisory)",r,"ok|2")
 S r=$$RENEW^ILSCIRC(l,2)
 D CHK("T18c","renew blocked by queued hold",r,"err|holdqueued")
 S r=$$CHECKIN^ILSCIRC(l,"B1")
 D CHK("T18d","checkin fills hold",$G(^ILS("HOLD",1,"STATUS")),"filled")
 D CHK("T18e","status reserved",$$ITEMSTATUS^ILSCIRC("B1"),"reserved")
 Q
 ;
T19 ; ILL lifecycle + guards
 K ^ILS("ILL"),^ILSIDX("ILLBYPAT"),^ILSIDX("ILLQ"),^ILS("SEQ","ILL")
 N l,pa,r
 S l=$$LOGIN^ILSPAT("Lib","lp")
 S pa=$$LOGIN^ILSPAT("Alice","pw")
 S r=$$ILLREQ^ILSILL(pa,2,"partner@example.org")
 D CHK("T19","ill request placed",r,"ok|1")
 S r=$$ILLSET^ILSILL(pa,1,"shipped")
 D CHK("T19b","patron cannot advance ILL",r,"err|auth")
 S r=$$ILLSET^ILSILL(l,1,"returned")
 D CHK("T19c","illegal transition rejected",r,"err|transition")
 S r=$$ILLSET^ILSILL(l,1,"shipped")
 D CHK("T19d","pending->shipped ok",r,"ok|1")
 D CHK("T19e","pending queue empty",$O(^ILSIDX("ILLQ","pending","")),"")
 Q
 ;
T20 ; TUI verbs + web route
 N r
 S r=$$DISPATCH^ILSTUI("LOGIN Alice pw")
 D CHK("T20","TUI login",r,"ok|patron")
 D CHK("T20b","TUI loans empty",$$DISPATCH^ILSTUI("LOANS"),"")
 D CHK("T20c","web /loans renders",$$HTML^ILSHTML("/loans")["my loans",1)
 Q
 ;
