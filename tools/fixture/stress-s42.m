STRESS ; generated CRUD op stream — seed=42 n=2000 (do not edit)
 N k,r,p
 S k=0
 S k=(k)+1
 S r=$$DISPATCH^ILSTUI("MH GENOMICS")
 S ^ILS("TMP","J",k)="SEARCH|MH_GENOMICS|"_($L(r))_"|"_($E(r,1,40))
 S k=(k)+1
 D PARSE^ILSREC("90000002","CAT","ID - 90000002"_$C(10)_"BTI - Stress Title 2"_$C(10)_"AU - Tester, Ann"_$C(10)_"MH - Genomics")
 S ^ILS("TMP","J",k)="CREATE|90000002|"_$G(^ILS("TMP","CNT"))
 S k=(k)+1
 S r=$$DISPATCH^ILSTUI("RELATED D003920")
 S ^ILS("TMP","J",k)="SEARCH|RELATED_D003920|"_($L(r))_"|"_($E(r,1,40))
 S k=(k)+1
 S r=$G(^ILS("CAT","7503289","AU",1))
 S ^ILS("TMP","J",k)="READ|CAT|7503289|AU|"_($L(r))_"|"_($E(r,1,24))
 S k=(k)+1
 S r=$$DISPATCH^ILSTUI("MH GENOMICS")
 S ^ILS("TMP","J",k)="SEARCH|MH_GENOMICS|"_($L(r))_"|"_($E(r,1,40))
 S k=(k)+1
 D PUT^ILSREC("90000006","CAT","DP",1,"2026")
 S ^ILS("TMP","J",k)="UPD|90000006|"_($D(^ILS("CAT","90000006","DP",1)))
 S k=(k)+1
 S r=$G(^ILS("CAT","1264327","AU",1))
 S ^ILS("TMP","J",k)="READ|CAT|1264327|AU|"_($L(r))_"|"_($E(r,1,24))
 S k=(k)+1
 S r=$$DISPATCH^ILSTUI("AUTH D003920")
 S ^ILS("TMP","J",k)="SEARCH|AUTH_D003920|"_($L(r))_"|"_($E(r,1,40))
 S k=(k)+1
 D PARSE^ILSREC("90000009","CAT","ID - 90000009"_$C(10)_"BTI - Stress Title 9"_$C(10)_"AU - Tester, Ann"_$C(10)_"MH - Genomics"_$C(10)_"MH - Genomics")
 S ^ILS("TMP","J",k)="CREATE|90000009|"_$G(^ILS("TMP","CNT"))
 S k=(k)+1
 S r=$G(^ILS("CAT","7609600","MH",1))
 S ^ILS("TMP","J",k)="READ|CAT|7609600|MH|"_($L(r))_"|"_($E(r,1,24))
 S k=(k)+1
 D AUTHADD^ILSAUTH("D990011","Stress Heading 11","Z99.011")
 S ^ILS("TMP","J",k)="AUTHADD|D990011|"_($D(^ILS("ANAME","STRESS HEADING 11","D990011")))
 S k=(k)+1
 D PARSE^ILSREC("90000012","CAT","ID - 90000012"_$C(10)_"BTI - Stress Title 12"_$C(10)_"AU - Tester, Ann"_$C(10)_"MH - Medical Informatics"_$C(10)_"MH - Genomics")
 S ^ILS("TMP","J",k)="CREATE|90000012|"_$G(^ILS("TMP","CNT"))
 S k=(k)+1
 S r=$$VALIDATE^ILSAUTH("7808791","CAT")
 S ^ILS("TMP","J",k)="VAL|7808791|"_(r)
 S k=(k)+1
 D AUTHADD^ILSAUTH("D990014","Stress Heading 14","Z99.014")
 S ^ILS("TMP","J",k)="AUTHADD|D990014|"_($D(^ILS("ANAME","STRESS HEADING 14","D990014")))
 S k=(k)+1
 S r=$$DISPATCH^ILSTUI("AUTH D003920")
 S ^ILS("TMP","J",k)="SEARCH|AUTH_D003920|"_($L(r))_"|"_($E(r,1,40))
 S k=(k)+1
 D SEQPUT^ILSREC("7505764","CAT","MH","Stress Heading 16")
 S ^ILS("TMP","J",k)="SEQPUT|7505764"
 S k=(k)+1
 S r=$$VALIDATE^ILSAUTH("90000017","CAT")
 S ^ILS("TMP","J",k)="VAL|90000017|"_(r)
 S k=(k)+1
 S p=$D(^ILS("CAT","7802251"))
 D KILLREC^ILSREC("7802251","CAT")
 S ^ILS("TMP","J",k)="DEL|7802251|"_(p)_"->"_($D(^ILS("CAT","7802251")))
 S k=(k)+1
 S r=$$DISPATCH^ILSTUI("AUTH D003920")
 S ^ILS("TMP","J",k)="SEARCH|AUTH_D003920|"_($L(r))_"|"_($E(r,1,40))
 S k=(k)+1
 S r=$G(^ILS("CAT","8003963","BTI",1))
 S ^ILS("TMP","J",k)="READ|CAT|8003963|BTI|"_($L(r))_"|"_($E(r,1,24))
 S k=(k)+1
 S r=$$DISPATCH^ILSTUI("FIND DIABETES")
 S ^ILS("TMP","J",k)="SEARCH|FIND_DIABETES|"_($L(r))_"|"_($E(r,1,40))
 S k=(k)+1
 D PARSE^ILSREC("90000022","CAT","ID - 90000022"_$C(10)_"BTI - Stress Title 22"_$C(10)_"AU - Tester, Ann"_$C(10)_"MH - Quantum Bibliography"_$C(10)_"MH - Public Health")
 S ^ILS("TMP","J",k)="CREATE|90000022|"_$G(^ILS("TMP","CNT"))
 S k=(k)+1
 S r=$$VALIDATE^ILSAUTH("7808791","CAT")
 S ^ILS("TMP","J",k)="VAL|7808791|"_(r)
 S k=(k)+1
 D PARSE^ILSREC("90000024","CAT","ID - 90000024"_$C(10)_"BTI - Stress Title 24"_$C(10)_"AU - Tester, Ann"_$C(10)_"MH - Genomics"_$C(10)_"MH - Diabetes Mellitus.")
 S ^ILS("TMP","J",k)="CREATE|90000024|"_$G(^ILS("TMP","CNT"))
 S k=(k)+1
 D PUT^ILSREC("90000025","CAT","DP",1,"2026")
 S ^ILS("TMP","J",k)="UPD|90000025|"_($D(^ILS("CAT","90000025","DP",1)))
 S k=(k)+1
 D PARSE^ILSREC("90000026","CAT","ID - 90000026"_$C(10)_"BTI - Stress Title 26"_$C(10)_"AU - Tester, Ann"_$C(10)_"MH - Public Health"_$C(10)_"MH - Diabetes Mellitus."_$C(10)_"MH - Quantum Bibliography")
 S ^ILS("TMP","J",k)="CREATE|90000026|"_$G(^ILS("TMP","CNT"))
 S k=(k)+1
 S r=$G(^ILS("SER","1260665","STI",1))
 S ^ILS("TMP","J",k)="READ|SER|1260665|STI|"_($L(r))_"|"_($E(r,1,24))
 S k=(k)+1
 D AUTHADD^ILSAUTH("D990028","Stress Heading 28","Z99.028")
 S ^ILS("TMP","J",k)="AUTHADD|D990028|"_($D(^ILS("ANAME","STRESS HEADING 28","D990028")))
 S k=(k)+1
 D PARSE^ILSREC("90000029","CAT","ID - 90000029"_$C(10)_"BTI - Stress Title 29"_$C(10)_"AU - Tester, Ann"_$C(10)_"MH - Medical Informatics"_$C(10)_"MH - Public Health"_$C(10)_"MH - Medical Informatics")
 S ^ILS("TMP","J",k)="CREATE|90000029|"_$G(^ILS("TMP","CNT"))
 S k=(k)+1
 S r=$G(^ILS("CAT","7609600","AU",1))
 S ^ILS("TMP","J",k)="READ|CAT|7609600|AU|"_($L(r))_"|"_($E(r,1,24))
 S k=(k)+1
 S r=$$VALIDATE^ILSAUTH("7803530","CAT")
 S ^ILS("TMP","J",k)="VAL|7803530|"_(r)
 S k=(k)+1
 D PARSE^ILSREC("90000032","CAT","ID - 90000032"_$C(10)_"BTI - Stress Title 32"_$C(10)_"AU - Tester, Ann"_$C(10)_"MH - Genomics")
 S ^ILS("TMP","J",k)="CREATE|90000032|"_$G(^ILS("TMP","CNT"))
 S k=(k)+1
 D PARSE^ILSREC("90000033","CAT","ID - 90000033"_$C(10)_"BTI - Stress Title 33"_$C(10)_"AU - Tester, Ann"_$C(10)_"MH - Quantum Bibliography")
 S ^ILS("TMP","J",k)="CREATE|90000033|"_$G(^ILS("TMP","CNT"))
 S k=(k)+1
 S r=$$DISPATCH^ILSTUI("LIST")
 S ^ILS("TMP","J",k)="SEARCH|LIST|"_($L(r))_"|"_($E(r,1,40))
 S k=(k)+1
 S r=$$VALIDATE^ILSAUTH("7808791","CAT")
 S ^ILS("TMP","J",k)="VAL|7808791|"_(r)
 S k=(k)+1
 S p=$D(^ILS("CAT","8007202"))
 D KILLREC^ILSREC("8007202","CAT")
 S ^ILS("TMP","J",k)="DEL|8007202|"_(p)_"->"_($D(^ILS("CAT","8007202")))
 S k=(k)+1
 D PARSE^ILSREC("90000037","CAT","ID - 90000037"_$C(10)_"BTI - Stress Title 37"_$C(10)_"AU - Tester, Ann"_$C(10)_"MH - Public Health"_$C(10)_"MH - Public Health"_$C(10)_"MH - Genomics")
 S ^ILS("TMP","J",k)="CREATE|90000037|"_$G(^ILS("TMP","CNT"))
 S k=(k)+1
 D AUTHADD^ILSAUTH("D990038","Stress Heading 38","Z99.038")
 S ^ILS("TMP","J",k)="AUTHADD|D990038|"_($D(^ILS("ANAME","STRESS HEADING 38","D990038")))
 S k=(k)+1
 D PARSE^ILSREC("90000039","CAT","ID - 90000039"_$C(10)_"BTI - Stress Title 39"_$C(10)_"AU - Tester, Ann"_$C(10)_"MH - Public Health")
 S ^ILS("TMP","J",k)="CREATE|90000039|"_$G(^ILS("TMP","CNT"))
 S k=(k)+1
 S r=$$VALIDATE^ILSAUTH("90000040","CAT")
 S ^ILS("TMP","J",k)="VAL|90000040|"_(r)
 S k=(k)+1
 S r=$$DISPATCH^ILSTUI("MH DIABETES MELLITUS.")
 S ^ILS("TMP","J",k)="SEARCH|MH_DIABETES_MELLITUS.|"_($L(r))_"|"_($E(r,1,40))
 S k=(k)+1
 D PUT^ILSREC("90000042","CAT","DP",1,"2026")
 S ^ILS("TMP","J",k)="UPD|90000042|"_($D(^ILS("CAT","90000042","DP",1)))
 S k=(k)+1
 S r=$G(^ILS("CAT","8101154","MH",1))
 S ^ILS("TMP","J",k)="READ|CAT|8101154|MH|"_($L(r))_"|"_($E(r,1,24))
 S k=(k)+1
 S p=$D(^ILS("CAT","90000044"))
 D KILLREC^ILSREC("90000044","CAT")
 S ^ILS("TMP","J",k)="DEL|90000044|"_(p)_"->"_($D(^ILS("CAT","90000044")))
 S k=(k)+1
 S r=$G(^ILS("CAT","7609600","PB",1))
 S ^ILS("TMP","J",k)="READ|CAT|7609600|PB|"_($L(r))_"|"_($E(r,1,24))
 S k=(k)+1
 D PARSE^ILSREC("90000046","CAT","ID - 90000046"_$C(10)_"BTI - Stress Title 46"_$C(10)_"AU - Tester, Ann"_$C(10)_"MH - Medical Informatics")
 S ^ILS("TMP","J",k)="CREATE|90000046|"_$G(^ILS("TMP","CNT"))
 S k=(k)+1
 S p=$D(^ILS("CAT","7803530"))
 D KILLREC^ILSREC("7803530","CAT")
 S ^ILS("TMP","J",k)="DEL|7803530|"_(p)_"->"_($D(^ILS("CAT","7803530")))
 S k=(k)+1
 D SEQPUT^ILSREC("90000048","CAT","MH","Stress Heading 48")
 S ^ILS("TMP","J",k)="SEQPUT|90000048"
 S k=(k)+1
 D PARSE^ILSREC("90000049","CAT","ID - 90000049"_$C(10)_"BTI - Stress Title 49"_$C(10)_"AU - Tester, Ann"_$C(10)_"MH - Quantum Bibliography"_$C(10)_"MH - Medical Informatics"_$C(10)_"MH - Diabetes Mellitus.")
 S ^ILS("TMP","J",k)="CREATE|90000049|"_$G(^ILS("TMP","CNT"))
 S k=(k)+1
 D AUTHADD^ILSAUTH("D990050","Stress Heading 50","Z99.050")
 S ^ILS("TMP","J",k)="AUTHADD|D990050|"_($D(^ILS("ANAME","STRESS HEADING 50","D990050")))
 S k=(k)+1
 S p=$D(^ILS("CAT","7503289"))
 D KILLREC^ILSREC("7503289","CAT")
 S ^ILS("TMP","J",k)="DEL|7503289|"_(p)_"->"_($D(^ILS("CAT","7503289")))
 S k=(k)+1
 S p=$D(^ILS("CAT","90000052"))
 D KILLREC^ILSREC("90000052","CAT")
 S ^ILS("TMP","J",k)="DEL|90000052|"_(p)_"->"_($D(^ILS("CAT","90000052")))
 S k=(k)+1
 S r=$$DISPATCH^ILSTUI("SHOW SER 1260300")
 S ^ILS("TMP","J",k)="SEARCH|SHOW_SER_1260300|"_($L(r))_"|"_($E(r,1,40))
 S k=(k)+1
 S r=$$VALIDATE^ILSAUTH("7802251","CAT")
 S ^ILS("TMP","J",k)="VAL|7802251|"_(r)
 S k=(k)+1
 S p=$D(^ILS("CAT","7505764"))
 D KILLREC^ILSREC("7505764","CAT")
 S ^ILS("TMP","J",k)="DEL|7505764|"_(p)_"->"_($D(^ILS("CAT","7505764")))
 S k=(k)+1
 D PARSE^ILSREC("90000056","CAT","ID - 90000056"_$C(10)_"BTI - Stress Title 56"_$C(10)_"AU - Tester, Ann"_$C(10)_"MH - Genomics"_$C(10)_"MH - Medical Informatics")
 S ^ILS("TMP","J",k)="CREATE|90000056|"_$G(^ILS("TMP","CNT"))
 S k=(k)+1
 S r=$$DISPATCH^ILSTUI("HELP")
 S ^ILS("TMP","J",k)="SEARCH|HELP|"_($L(r))_"|"_($E(r,1,40))
 S k=(k)+1
 D PARSE^ILSREC("90000058","CAT","ID - 90000058"_$C(10)_"BTI - Stress Title 58"_$C(10)_"AU - Tester, Ann"_$C(10)_"MH - Genomics"_$C(10)_"MH - Diabetes Mellitus."_$C(10)_"MH - Genomics")
 S ^ILS("TMP","J",k)="CREATE|90000058|"_$G(^ILS("TMP","CNT"))
 S k=(k)+1
 S p=$D(^ILS("CAT","90000059"))
 D KILLREC^ILSREC("90000059","CAT")
 S ^ILS("TMP","J",k)="DEL|90000059|"_(p)_"->"_($D(^ILS("CAT","90000059")))
 S k=(k)+1
 D PARSE^ILSREC("90000060","CAT","ID - 90000060"_$C(10)_"BTI - Stress Title 60"_$C(10)_"AU - Tester, Ann"_$C(10)_"MH - Public Health")
 S ^ILS("TMP","J",k)="CREATE|90000060|"_$G(^ILS("TMP","CNT"))
 S k=(k)+1
 S r=$$DISPATCH^ILSTUI("FIND HEALTH")
 S ^ILS("TMP","J",k)="SEARCH|FIND_HEALTH|"_($L(r))_"|"_($E(r,1,40))
 S k=(k)+1
 D SEQPUT^ILSREC("90000062","CAT","MH","Stress Heading 62")
 S ^ILS("TMP","J",k)="SEQPUT|90000062"
 S k=(k)+1
 D PARSE^ILSREC("90000063","CAT","ID - 90000063"_$C(10)_"BTI - Stress Title 63"_$C(10)_"AU - Tester, Ann"_$C(10)_"MH - Quantum Bibliography"_$C(10)_"MH - Diabetes Mellitus.")
 S ^ILS("TMP","J",k)="CREATE|90000063|"_$G(^ILS("TMP","CNT"))
 S k=(k)+1
 D PARSE^ILSREC("90000064","CAT","ID - 90000064"_$C(10)_"BTI - Stress Title 64"_$C(10)_"AU - Tester, Ann"_$C(10)_"MH - Quantum Bibliography"_$C(10)_"MH - Public Health"_$C(10)_"MH - Quantum Bibliography")
 S ^ILS("TMP","J",k)="CREATE|90000064|"_$G(^ILS("TMP","CNT"))
 S k=(k)+1
 S r=$G(^ILS("SER","1256232","MH",1))
 S ^ILS("TMP","J",k)="READ|SER|1256232|MH|"_($L(r))_"|"_($E(r,1,24))
 S k=(k)+1
 S r=$$DISPATCH^ILSTUI("SHOW CAT 1275455")
 S ^ILS("TMP","J",k)="SEARCH|SHOW_CAT_1275455|"_($L(r))_"|"_($E(r,1,40))
 S k=(k)+1
 S r=$G(^ILS("CAT","1275455","AU",1))
 S ^ILS("TMP","J",k)="READ|CAT|1275455|AU|"_($L(r))_"|"_($E(r,1,24))
 S k=(k)+1
 D PARSE^ILSREC("90000068","CAT","ID - 90000068"_$C(10)_"BTI - Stress Title 68"_$C(10)_"AU - Tester, Ann"_$C(10)_"MH - Quantum Bibliography"_$C(10)_"MH - Diabetes Mellitus."_$C(10)_"MH - Quantum Bibliography")
 S ^ILS("TMP","J",k)="CREATE|90000068|"_$G(^ILS("TMP","CNT"))
 S k=(k)+1
 D PARSE^ILSREC("90000069","CAT","ID - 90000069"_$C(10)_"BTI - Stress Title 69"_$C(10)_"AU - Tester, Ann"_$C(10)_"MH - Diabetes Mellitus."_$C(10)_"MH - Genomics")
 S ^ILS("TMP","J",k)="CREATE|90000069|"_$G(^ILS("TMP","CNT"))
 S k=(k)+1
 S r=$G(^ILS("SER","1260767","STI",1))
 S ^ILS("TMP","J",k)="READ|SER|1260767|STI|"_($L(r))_"|"_($E(r,1,24))
 S k=(k)+1
 D PARSE^ILSREC("90000071","CAT","ID - 90000071"_$C(10)_"BTI - Stress Title 71"_$C(10)_"AU - Tester, Ann"_$C(10)_"MH - Genomics"_$C(10)_"MH - Genomics"_$C(10)_"MH - Diabetes Mellitus.")
 S ^ILS("TMP","J",k)="CREATE|90000071|"_$G(^ILS("TMP","CNT"))
 S k=(k)+1
 D PARSE^ILSREC("90000072","CAT","ID - 90000072"_$C(10)_"BTI - Stress Title 72"_$C(10)_"AU - Tester, Ann"_$C(10)_"MH - Quantum Bibliography"_$C(10)_"MH - Diabetes Mellitus.")
 S ^ILS("TMP","J",k)="CREATE|90000072|"_$G(^ILS("TMP","CNT"))
 S k=(k)+1
 S p=$D(^ILS("CAT","90000073"))
 D KILLREC^ILSREC("90000073","CAT")
 S ^ILS("TMP","J",k)="DEL|90000073|"_(p)_"->"_($D(^ILS("CAT","90000073")))
 S k=(k)+1
 D PARSE^ILSREC("90000074","CAT","ID - 90000074"_$C(10)_"BTI - Stress Title 74"_$C(10)_"AU - Tester, Ann"_$C(10)_"MH - Quantum Bibliography")
 S ^ILS("TMP","J",k)="CREATE|90000074|"_$G(^ILS("TMP","CNT"))
 S k=(k)+1
 D AUTHADD^ILSAUTH("D990075","Stress Heading 75","Z99.075")
 S ^ILS("TMP","J",k)="AUTHADD|D990075|"_($D(^ILS("ANAME","STRESS HEADING 75","D990075")))
 S k=(k)+1
 D SEQPUT^ILSREC("7705180","CAT","MH","Stress Heading 76")
 S ^ILS("TMP","J",k)="SEQPUT|7705180"
 S k=(k)+1
 D SEQPUT^ILSREC("90000077","CAT","MH","Stress Heading 77")
 S ^ILS("TMP","J",k)="SEQPUT|90000077"
 S k=(k)+1
 S r=$G(^ILS("CAT","7503289","BTI",1))
 S ^ILS("TMP","J",k)="READ|CAT|7503289|BTI|"_($L(r))_"|"_($E(r,1,24))
 S k=(k)+1
 S r=$$DISPATCH^ILSTUI("RELATED D003920")
 S ^ILS("TMP","J",k)="SEARCH|RELATED_D003920|"_($L(r))_"|"_($E(r,1,40))
 S k=(k)+1
 S r=$G(^ILS("CAT","7803530","MH",1))
 S ^ILS("TMP","J",k)="READ|CAT|7803530|MH|"_($L(r))_"|"_($E(r,1,24))
 S k=(k)+1
 S p=$D(^ILS("CAT","90000081"))
 D KILLREC^ILSREC("90000081","CAT")
 S ^ILS("TMP","J",k)="DEL|90000081|"_(p)_"->"_($D(^ILS("CAT","90000081")))
 S k=(k)+1
 D PARSE^ILSREC("90000082","CAT","ID - 90000082"_$C(10)_"BTI - Stress Title 82"_$C(10)_"AU - Tester, Ann"_$C(10)_"MH - Genomics"_$C(10)_"MH - Diabetes Mellitus."_$C(10)_"MH - Genomics")
 S ^ILS("TMP","J",k)="CREATE|90000082|"_$G(^ILS("TMP","CNT"))
 S k=(k)+1
 S r=$$DISPATCH^ILSTUI("SHOW CAT 7505764")
 S ^ILS("TMP","J",k)="SEARCH|SHOW_CAT_7505764|"_($L(r))_"|"_($E(r,1,40))
 S k=(k)+1
 D PARSE^ILSREC("90000084","CAT","ID - 90000084"_$C(10)_"BTI - Stress Title 84"_$C(10)_"AU - Tester, Ann"_$C(10)_"MH - Diabetes Mellitus."_$C(10)_"MH - Medical Informatics"_$C(10)_"MH - Medical Informatics")
 S ^ILS("TMP","J",k)="CREATE|90000084|"_$G(^ILS("TMP","CNT"))
 S k=(k)+1
 D PARSE^ILSREC("90000085","CAT","ID - 90000085"_$C(10)_"BTI - Stress Title 85"_$C(10)_"AU - Tester, Ann"_$C(10)_"MH - Quantum Bibliography")
 S ^ILS("TMP","J",k)="CREATE|90000085|"_$G(^ILS("TMP","CNT"))
 S k=(k)+1
 S r=$$DISPATCH^ILSTUI("HELP")
 S ^ILS("TMP","J",k)="SEARCH|HELP|"_($L(r))_"|"_($E(r,1,40))
 S k=(k)+1
 S p=$D(^ILS("CAT","8003963"))
 D KILLREC^ILSREC("8003963","CAT")
 S ^ILS("TMP","J",k)="DEL|8003963|"_(p)_"->"_($D(^ILS("CAT","8003963")))
 S k=(k)+1
 S r=$G(^ILS("CAT","1302032","PB",1))
 S ^ILS("TMP","J",k)="READ|CAT|1302032|PB|"_($L(r))_"|"_($E(r,1,24))
 S k=(k)+1
 S r=$G(^ILS("SER","1263300","STI",1))
 S ^ILS("TMP","J",k)="READ|SER|1263300|STI|"_($L(r))_"|"_($E(r,1,24))
 S k=(k)+1
 D PARSE^ILSREC("90000090","CAT","ID - 90000090"_$C(10)_"BTI - Stress Title 90"_$C(10)_"AU - Tester, Ann"_$C(10)_"MH - Medical Informatics"_$C(10)_"MH - Genomics"_$C(10)_"MH - Genomics")
 S ^ILS("TMP","J",k)="CREATE|90000090|"_$G(^ILS("TMP","CNT"))
 S k=(k)+1
 S r=$$DISPATCH^ILSTUI("RELATED D003920")
 S ^ILS("TMP","J",k)="SEARCH|RELATED_D003920|"_($L(r))_"|"_($E(r,1,40))
 S k=(k)+1
 S p=$D(^ILS("CAT","90000092"))
 D KILLREC^ILSREC("90000092","CAT")
 S ^ILS("TMP","J",k)="DEL|90000092|"_(p)_"->"_($D(^ILS("CAT","90000092")))
 S k=(k)+1
 S p=$D(^ILS("CAT","7502500"))
 D KILLREC^ILSREC("7502500","CAT")
 S ^ILS("TMP","J",k)="DEL|7502500|"_(p)_"->"_($D(^ILS("CAT","7502500")))
 S k=(k)+1
 S r=$G(^ILS("CAT","7508397","MH",1))
 S ^ILS("TMP","J",k)="READ|CAT|7508397|MH|"_($L(r))_"|"_($E(r,1,24))
 S k=(k)+1
 S r=$$VALIDATE^ILSAUTH("90000095","CAT")
 S ^ILS("TMP","J",k)="VAL|90000095|"_(r)
 S k=(k)+1
 S r=$$DISPATCH^ILSTUI("SHOW CAT 7808791")
 S ^ILS("TMP","J",k)="SEARCH|SHOW_CAT_7808791|"_($L(r))_"|"_($E(r,1,40))
 S k=(k)+1
 S p=$D(^ILS("CAT","1302032"))
 D KILLREC^ILSREC("1302032","CAT")
 S ^ILS("TMP","J",k)="DEL|1302032|"_(p)_"->"_($D(^ILS("CAT","1302032")))
 S k=(k)+1
 D AUTHADD^ILSAUTH("D990098","Stress Heading 98","Z99.098")
 S ^ILS("TMP","J",k)="AUTHADD|D990098|"_($D(^ILS("ANAME","STRESS HEADING 98","D990098")))
 S k=(k)+1
 S p=$D(^ILS("CAT","90000099"))
 D KILLREC^ILSREC("90000099","CAT")
 S ^ILS("TMP","J",k)="DEL|90000099|"_(p)_"->"_($D(^ILS("CAT","90000099")))
 S k=(k)+1
 D PARSE^ILSREC("90000100","CAT","ID - 90000100"_$C(10)_"BTI - Stress Title 100"_$C(10)_"AU - Tester, Ann"_$C(10)_"MH - Medical Informatics"_$C(10)_"MH - Diabetes Mellitus.")
 S ^ILS("TMP","J",k)="CREATE|90000100|"_$G(^ILS("TMP","CNT"))
 S k=(k)+1
 D SEQPUT^ILSREC("7911752","CAT","MH","Stress Heading 101")
 S ^ILS("TMP","J",k)="SEQPUT|7911752"
 S k=(k)+1
 S r=$$DISPATCH^ILSTUI("ISSN 0742-3071")
 S ^ILS("TMP","J",k)="SEARCH|ISSN_0742-3071|"_($L(r))_"|"_($E(r,1,40))
 S k=(k)+1
 S r=$$DISPATCH^ILSTUI("ISSN 0742-3071")
 S ^ILS("TMP","J",k)="SEARCH|ISSN_0742-3071|"_($L(r))_"|"_($E(r,1,40))
 S k=(k)+1
 S r=$G(^ILS("CAT","7506781","AU",1))
 S ^ILS("TMP","J",k)="READ|CAT|7506781|AU|"_($L(r))_"|"_($E(r,1,24))
 S k=(k)+1
 D PUT^ILSREC("90000105","CAT","DP",1,"2026")
 S ^ILS("TMP","J",k)="UPD|90000105|"_($D(^ILS("CAT","90000105","DP",1)))
 S k=(k)+1
 D PARSE^ILSREC("90000106","CAT","ID - 90000106"_$C(10)_"BTI - Stress Title 106"_$C(10)_"AU - Tester, Ann"_$C(10)_"MH - Diabetes Mellitus.")
 S ^ILS("TMP","J",k)="CREATE|90000106|"_$G(^ILS("TMP","CNT"))
 S k=(k)+1
 S r=$$DISPATCH^ILSTUI("AUTH D003920")
 S ^ILS("TMP","J",k)="SEARCH|AUTH_D003920|"_($L(r))_"|"_($E(r,1,40))
 S k=(k)+1
 D PARSE^ILSREC("90000108","CAT","ID - 90000108"_$C(10)_"BTI - Stress Title 108"_$C(10)_"AU - Tester, Ann"_$C(10)_"MH - Genomics")
 S ^ILS("TMP","J",k)="CREATE|90000108|"_$G(^ILS("TMP","CNT"))
 S k=(k)+1
 S r=$G(^ILS("SER","1262226","STI",1))
 S ^ILS("TMP","J",k)="READ|SER|1262226|STI|"_($L(r))_"|"_($E(r,1,24))
 S k=(k)+1
 S p=$D(^ILS("CAT","7505764"))
 D KILLREC^ILSREC("7505764","CAT")
 S ^ILS("TMP","J",k)="DEL|7505764|"_(p)_"->"_($D(^ILS("CAT","7505764")))
 S k=(k)+1
 S r=$$DISPATCH^ILSTUI("AUTH D003920")
 S ^ILS("TMP","J",k)="SEARCH|AUTH_D003920|"_($L(r))_"|"_($E(r,1,40))
 S k=(k)+1
 S p=$D(^ILS("CAT","7909441"))
 D KILLREC^ILSREC("7909441","CAT")
 S ^ILS("TMP","J",k)="DEL|7909441|"_(p)_"->"_($D(^ILS("CAT","7909441")))
 S k=(k)+1
 D PUT^ILSREC("90000113","CAT","DP",1,"2026")
 S ^ILS("TMP","J",k)="UPD|90000113|"_($D(^ILS("CAT","90000113","DP",1)))
 S k=(k)+1
 D PARSE^ILSREC("90000114","CAT","ID - 90000114"_$C(10)_"BTI - Stress Title 114"_$C(10)_"AU - Tester, Ann"_$C(10)_"MH - Quantum Bibliography")
 S ^ILS("TMP","J",k)="CREATE|90000114|"_$G(^ILS("TMP","CNT"))
 S k=(k)+1
 D PARSE^ILSREC("90000115","CAT","ID - 90000115"_$C(10)_"BTI - Stress Title 115"_$C(10)_"AU - Tester, Ann"_$C(10)_"MH - Public Health"_$C(10)_"MH - Quantum Bibliography"_$C(10)_"MH - Diabetes Mellitus.")
 S ^ILS("TMP","J",k)="CREATE|90000115|"_$G(^ILS("TMP","CNT"))
 S k=(k)+1
 D AUTHADD^ILSAUTH("D990116","Stress Heading 116","Z99.116")
 S ^ILS("TMP","J",k)="AUTHADD|D990116|"_($D(^ILS("ANAME","STRESS HEADING 116","D990116")))
 S k=(k)+1
 D SEQPUT^ILSREC("1267066","CAT","MH","Stress Heading 117")
 S ^ILS("TMP","J",k)="SEQPUT|1267066"
 S k=(k)+1
 D PARSE^ILSREC("90000118","CAT","ID - 90000118"_$C(10)_"BTI - Stress Title 118"_$C(10)_"AU - Tester, Ann"_$C(10)_"MH - Public Health"_$C(10)_"MH - Public Health")
 S ^ILS("TMP","J",k)="CREATE|90000118|"_$G(^ILS("TMP","CNT"))
 S k=(k)+1
 D PUT^ILSREC("90000119","CAT","DP",1,"2026")
 S ^ILS("TMP","J",k)="UPD|90000119|"_($D(^ILS("CAT","90000119","DP",1)))
 S k=(k)+1
 S r=$$DISPATCH^ILSTUI("LIST")
 S ^ILS("TMP","J",k)="SEARCH|LIST|"_($L(r))_"|"_($E(r,1,40))
 S k=(k)+1
 S p=$D(^ILS("CAT","90000121"))
 D KILLREC^ILSREC("90000121","CAT")
 S ^ILS("TMP","J",k)="DEL|90000121|"_(p)_"->"_($D(^ILS("CAT","90000121")))
 S k=(k)+1
 D AUTHADD^ILSAUTH("D990122","Stress Heading 122","Z99.122")
 S ^ILS("TMP","J",k)="AUTHADD|D990122|"_($D(^ILS("ANAME","STRESS HEADING 122","D990122")))
 S k=(k)+1
 S r=$$DISPATCH^ILSTUI("LIST")
 S ^ILS("TMP","J",k)="SEARCH|LIST|"_($L(r))_"|"_($E(r,1,40))
 S k=(k)+1
 S r=$$DISPATCH^ILSTUI("MH GENOMICS")
 S ^ILS("TMP","J",k)="SEARCH|MH_GENOMICS|"_($L(r))_"|"_($E(r,1,40))
 S k=(k)+1
 S r=$$VALIDATE^ILSAUTH("7506781","CAT")
 S ^ILS("TMP","J",k)="VAL|7506781|"_(r)
 S k=(k)+1
 D PARSE^ILSREC("90000126","CAT","ID - 90000126"_$C(10)_"BTI - Stress Title 126"_$C(10)_"AU - Tester, Ann"_$C(10)_"MH - Quantum Bibliography"_$C(10)_"MH - Public Health"_$C(10)_"MH - Public Health")
 S ^ILS("TMP","J",k)="CREATE|90000126|"_$G(^ILS("TMP","CNT"))
 S k=(k)+1
 S r=$G(^ILS("SER","1257757","ISS",1))
 S ^ILS("TMP","J",k)="READ|SER|1257757|ISS|"_($L(r))_"|"_($E(r,1,24))
 S k=(k)+1
 S p=$D(^ILS("CAT","1267066"))
 D KILLREC^ILSREC("1267066","CAT")
 S ^ILS("TMP","J",k)="DEL|1267066|"_(p)_"->"_($D(^ILS("CAT","1267066")))
 S k=(k)+1
 D SEQPUT^ILSREC("7808791","CAT","MH","Stress Heading 129")
 S ^ILS("TMP","J",k)="SEQPUT|7808791"
 S k=(k)+1
 S p=$D(^ILS("CAT","90000130"))
 D KILLREC^ILSREC("90000130","CAT")
 S ^ILS("TMP","J",k)="DEL|90000130|"_(p)_"->"_($D(^ILS("CAT","90000130")))
 S k=(k)+1
 D PARSE^ILSREC("90000131","CAT","ID - 90000131"_$C(10)_"BTI - Stress Title 131"_$C(10)_"AU - Tester, Ann"_$C(10)_"MH - Genomics"_$C(10)_"MH - Public Health")
 S ^ILS("TMP","J",k)="CREATE|90000131|"_$G(^ILS("TMP","CNT"))
 S k=(k)+1
 S r=$$DISPATCH^ILSTUI("SHOW CAT 1275455")
 S ^ILS("TMP","J",k)="SEARCH|SHOW_CAT_1275455|"_($L(r))_"|"_($E(r,1,40))
 S k=(k)+1
 S p=$D(^ILS("CAT","90000133"))
 D KILLREC^ILSREC("90000133","CAT")
 S ^ILS("TMP","J",k)="DEL|90000133|"_(p)_"->"_($D(^ILS("CAT","90000133")))
 S k=(k)+1
 S r=$$DISPATCH^ILSTUI("AUTH D003920")
 S ^ILS("TMP","J",k)="SEARCH|AUTH_D003920|"_($L(r))_"|"_($E(r,1,40))
 S k=(k)+1
 D AUTHADD^ILSAUTH("D990135","Stress Heading 135","Z99.135")
 S ^ILS("TMP","J",k)="AUTHADD|D990135|"_($D(^ILS("ANAME","STRESS HEADING 135","D990135")))
 S k=(k)+1
 D PARSE^ILSREC("90000136","CAT","ID - 90000136"_$C(10)_"BTI - Stress Title 136"_$C(10)_"AU - Tester, Ann"_$C(10)_"MH - Quantum Bibliography"_$C(10)_"MH - Diabetes Mellitus.")
 S ^ILS("TMP","J",k)="CREATE|90000136|"_$G(^ILS("TMP","CNT"))
 S k=(k)+1
 S r=$$DISPATCH^ILSTUI("ISSN 0742-3071")
 S ^ILS("TMP","J",k)="SEARCH|ISSN_0742-3071|"_($L(r))_"|"_($E(r,1,40))
 S k=(k)+1
 D PUT^ILSREC("7503289","CAT","DP",1,"2026")
 S ^ILS("TMP","J",k)="UPD|7503289|"_($D(^ILS("CAT","7503289","DP",1)))
 S k=(k)+1
 S r=$$DISPATCH^ILSTUI("SHOW CAT 7605530")
 S ^ILS("TMP","J",k)="SEARCH|SHOW_CAT_7605530|"_($L(r))_"|"_($E(r,1,40))
 S k=(k)+1
 S r=$G(^ILS("CAT","7807107","DP",1))
 S ^ILS("TMP","J",k)="READ|CAT|7807107|DP|"_($L(r))_"|"_($E(r,1,24))
 S k=(k)+1
 D SEQPUT^ILSREC("90000141","CAT","MH","Stress Heading 141")
 S ^ILS("TMP","J",k)="SEQPUT|90000141"
 S k=(k)+1
 S r=$$DISPATCH^ILSTUI("ISSN 0742-3071")
 S ^ILS("TMP","J",k)="SEARCH|ISSN_0742-3071|"_($L(r))_"|"_($E(r,1,40))
 S k=(k)+1
 S r=$$DISPATCH^ILSTUI("AUTH D003920")
 S ^ILS("TMP","J",k)="SEARCH|AUTH_D003920|"_($L(r))_"|"_($E(r,1,40))
 S k=(k)+1
 S r=$$VALIDATE^ILSAUTH("7508397","CAT")
 S ^ILS("TMP","J",k)="VAL|7508397|"_(r)
 S k=(k)+1
 D PARSE^ILSREC("90000145","CAT","ID - 90000145"_$C(10)_"BTI - Stress Title 145"_$C(10)_"AU - Tester, Ann"_$C(10)_"MH - Diabetes Mellitus.")
 S ^ILS("TMP","J",k)="CREATE|90000145|"_$G(^ILS("TMP","CNT"))
 S k=(k)+1
 D PARSE^ILSREC("90000146","CAT","ID - 90000146"_$C(10)_"BTI - Stress Title 146"_$C(10)_"AU - Tester, Ann"_$C(10)_"MH - Quantum Bibliography")
 S ^ILS("TMP","J",k)="CREATE|90000146|"_$G(^ILS("TMP","CNT"))
 S k=(k)+1
 S r=$$DISPATCH^ILSTUI("MH DIABETES MELLITUS.")
 S ^ILS("TMP","J",k)="SEARCH|MH_DIABETES_MELLITUS.|"_($L(r))_"|"_($E(r,1,40))
 S k=(k)+1
 S p=$D(^ILS("CAT","90000148"))
 D KILLREC^ILSREC("90000148","CAT")
 S ^ILS("TMP","J",k)="DEL|90000148|"_(p)_"->"_($D(^ILS("CAT","90000148")))
 S k=(k)+1
 D PUT^ILSREC("7703942","CAT","DP",1,"2026")
 S ^ILS("TMP","J",k)="UPD|7703942|"_($D(^ILS("CAT","7703942","DP",1)))
 S k=(k)+1
 S r=$$DISPATCH^ILSTUI("MH GENOMICS")
 S ^ILS("TMP","J",k)="SEARCH|MH_GENOMICS|"_($L(r))_"|"_($E(r,1,40))
 S k=(k)+1
 D PUT^ILSREC("7705180","CAT","DP",1,"2026")
 S ^ILS("TMP","J",k)="UPD|7705180|"_($D(^ILS("CAT","7705180","DP",1)))
 S k=(k)+1
 D PUT^ILSREC("90000152","CAT","DP",1,"2026")
 S ^ILS("TMP","J",k)="UPD|90000152|"_($D(^ILS("CAT","90000152","DP",1)))
 S k=(k)+1
 S r=$$DISPATCH^ILSTUI("MH DIABETES MELLITUS.")
 S ^ILS("TMP","J",k)="SEARCH|MH_DIABETES_MELLITUS.|"_($L(r))_"|"_($E(r,1,40))
 S k=(k)+1
 D SEQPUT^ILSREC("90000154","CAT","MH","Stress Heading 154")
 S ^ILS("TMP","J",k)="SEQPUT|90000154"
 S k=(k)+1
 S r=$$DISPATCH^ILSTUI("LEDGER")
 S ^ILS("TMP","J",k)="SEARCH|LEDGER|"_($L(r))_"|"_($E(r,1,40))
 S k=(k)+1
 D SEQPUT^ILSREC("90000156","CAT","MH","Stress Heading 156")
 S ^ILS("TMP","J",k)="SEQPUT|90000156"
 S k=(k)+1
 S r=$$DISPATCH^ILSTUI("FIND DIABETES")
 S ^ILS("TMP","J",k)="SEARCH|FIND_DIABETES|"_($L(r))_"|"_($E(r,1,40))
 S k=(k)+1
 S r=$G(^ILS("CAT","7505764","PB",1))
 S ^ILS("TMP","J",k)="READ|CAT|7505764|PB|"_($L(r))_"|"_($E(r,1,24))
 S k=(k)+1
 D SEQPUT^ILSREC("90000159","CAT","MH","Stress Heading 159")
 S ^ILS("TMP","J",k)="SEQPUT|90000159"
 S k=(k)+1
 D AUTHADD^ILSAUTH("D990160","Stress Heading 160","Z99.160")
 S ^ILS("TMP","J",k)="AUTHADD|D990160|"_($D(^ILS("ANAME","STRESS HEADING 160","D990160")))
 S k=(k)+1
 D PARSE^ILSREC("90000161","CAT","ID - 90000161"_$C(10)_"BTI - Stress Title 161"_$C(10)_"AU - Tester, Ann"_$C(10)_"MH - Diabetes Mellitus."_$C(10)_"MH - Public Health")
 S ^ILS("TMP","J",k)="CREATE|90000161|"_$G(^ILS("TMP","CNT"))
 S k=(k)+1
 S r=$G(^ILS("SER","1257757","STI",1))
 S ^ILS("TMP","J",k)="READ|SER|1257757|STI|"_($L(r))_"|"_($E(r,1,24))
 S k=(k)+1
 D PARSE^ILSREC("90000163","CAT","ID - 90000163"_$C(10)_"BTI - Stress Title 163"_$C(10)_"AU - Tester, Ann"_$C(10)_"MH - Diabetes Mellitus."_$C(10)_"MH - Diabetes Mellitus.")
 S ^ILS("TMP","J",k)="CREATE|90000163|"_$G(^ILS("TMP","CNT"))
 S k=(k)+1
 D PARSE^ILSREC("90000164","CAT","ID - 90000164"_$C(10)_"BTI - Stress Title 164"_$C(10)_"AU - Tester, Ann"_$C(10)_"MH - Public Health"_$C(10)_"MH - Medical Informatics")
 S ^ILS("TMP","J",k)="CREATE|90000164|"_$G(^ILS("TMP","CNT"))
 S k=(k)+1
 S r=$G(^ILS("CAT","7705180","DP",1))
 S ^ILS("TMP","J",k)="READ|CAT|7705180|DP|"_($L(r))_"|"_($E(r,1,24))
 S k=(k)+1
 S p=$D(^ILS("CAT","90000166"))
 D KILLREC^ILSREC("90000166","CAT")
 S ^ILS("TMP","J",k)="DEL|90000166|"_(p)_"->"_($D(^ILS("CAT","90000166")))
 S k=(k)+1
 S r=$$DISPATCH^ILSTUI("HELP")
 S ^ILS("TMP","J",k)="SEARCH|HELP|"_($L(r))_"|"_($E(r,1,40))
 S k=(k)+1
 D PARSE^ILSREC("90000168","CAT","ID - 90000168"_$C(10)_"BTI - Stress Title 168"_$C(10)_"AU - Tester, Ann"_$C(10)_"MH - Public Health"_$C(10)_"MH - Quantum Bibliography")
 S ^ILS("TMP","J",k)="CREATE|90000168|"_$G(^ILS("TMP","CNT"))
 S k=(k)+1
 S p=$D(^ILS("CAT","90000169"))
 D KILLREC^ILSREC("90000169","CAT")
 S ^ILS("TMP","J",k)="DEL|90000169|"_(p)_"->"_($D(^ILS("CAT","90000169")))
 S k=(k)+1
 S r=$G(^ILS("SER","1260767","MH",1))
 S ^ILS("TMP","J",k)="READ|SER|1260767|MH|"_($L(r))_"|"_($E(r,1,24))
 S k=(k)+1
 S p=$D(^ILS("CAT","7506781"))
 D KILLREC^ILSREC("7506781","CAT")
 S ^ILS("TMP","J",k)="DEL|7506781|"_(p)_"->"_($D(^ILS("CAT","7506781")))
 S k=(k)+1
 S r=$G(^ILS("CAT","7605530","DP",1))
 S ^ILS("TMP","J",k)="READ|CAT|7605530|DP|"_($L(r))_"|"_($E(r,1,24))
 S k=(k)+1
 D SEQPUT^ILSREC("90000173","CAT","MH","Stress Heading 173")
 S ^ILS("TMP","J",k)="SEQPUT|90000173"
 S k=(k)+1
 S r=$$VALIDATE^ILSAUTH("7703942","CAT")
 S ^ILS("TMP","J",k)="VAL|7703942|"_(r)
 S k=(k)+1
 S r=$$DISPATCH^ILSTUI("SHOW CAT 1264327")
 S ^ILS("TMP","J",k)="SEARCH|SHOW_CAT_1264327|"_($L(r))_"|"_($E(r,1,40))
 S k=(k)+1
 S r=$$DISPATCH^ILSTUI("FIND DIABETES")
 S ^ILS("TMP","J",k)="SEARCH|FIND_DIABETES|"_($L(r))_"|"_($E(r,1,40))
 S k=(k)+1
 D PARSE^ILSREC("90000177","CAT","ID - 90000177"_$C(10)_"BTI - Stress Title 177"_$C(10)_"AU - Tester, Ann"_$C(10)_"MH - Public Health"_$C(10)_"MH - Diabetes Mellitus.")
 S ^ILS("TMP","J",k)="CREATE|90000177|"_$G(^ILS("TMP","CNT"))
 S k=(k)+1
 S r=$G(^ILS("CAT","7703942","PB",1))
 S ^ILS("TMP","J",k)="READ|CAT|7703942|PB|"_($L(r))_"|"_($E(r,1,24))
 S k=(k)+1
 D PUT^ILSREC("90000179","CAT","DP",1,"2026")
 S ^ILS("TMP","J",k)="UPD|90000179|"_($D(^ILS("CAT","90000179","DP",1)))
 S k=(k)+1
 D PARSE^ILSREC("90000180","CAT","ID - 90000180"_$C(10)_"BTI - Stress Title 180"_$C(10)_"AU - Tester, Ann"_$C(10)_"MH - Medical Informatics")
 S ^ILS("TMP","J",k)="CREATE|90000180|"_$G(^ILS("TMP","CNT"))
 S k=(k)+1
 D PARSE^ILSREC("90000181","CAT","ID - 90000181"_$C(10)_"BTI - Stress Title 181"_$C(10)_"AU - Tester, Ann"_$C(10)_"MH - Diabetes Mellitus."_$C(10)_"MH - Genomics")
 S ^ILS("TMP","J",k)="CREATE|90000181|"_$G(^ILS("TMP","CNT"))
 S k=(k)+1
 D SEQPUT^ILSREC("90000182","CAT","MH","Stress Heading 182")
 S ^ILS("TMP","J",k)="SEQPUT|90000182"
 S k=(k)+1
 S p=$D(^ILS("CAT","1264327"))
 D KILLREC^ILSREC("1264327","CAT")
 S ^ILS("TMP","J",k)="DEL|1264327|"_(p)_"->"_($D(^ILS("CAT","1264327")))
 S k=(k)+1
 S r=$$DISPATCH^ILSTUI("FIND HEALTH")
 S ^ILS("TMP","J",k)="SEARCH|FIND_HEALTH|"_($L(r))_"|"_($E(r,1,40))
 S k=(k)+1
 S r=$$DISPATCH^ILSTUI("HELP")
 S ^ILS("TMP","J",k)="SEARCH|HELP|"_($L(r))_"|"_($E(r,1,40))
 S k=(k)+1
 S r=$$DISPATCH^ILSTUI("AUTH D003920")
 S ^ILS("TMP","J",k)="SEARCH|AUTH_D003920|"_($L(r))_"|"_($E(r,1,40))
 S k=(k)+1
 S r=$$DISPATCH^ILSTUI("SHOW SER 1257757")
 S ^ILS("TMP","J",k)="SEARCH|SHOW_SER_1257757|"_($L(r))_"|"_($E(r,1,40))
 S k=(k)+1
 D PUT^ILSREC("7508397","CAT","DP",1,"2026")
 S ^ILS("TMP","J",k)="UPD|7508397|"_($D(^ILS("CAT","7508397","DP",1)))
 S k=(k)+1
 D PARSE^ILSREC("90000189","CAT","ID - 90000189"_$C(10)_"BTI - Stress Title 189"_$C(10)_"AU - Tester, Ann"_$C(10)_"MH - Medical Informatics"_$C(10)_"MH - Quantum Bibliography")
 S ^ILS("TMP","J",k)="CREATE|90000189|"_$G(^ILS("TMP","CNT"))
 S k=(k)+1
 S r=$G(^ILS("SER","1257757","MH",1))
 S ^ILS("TMP","J",k)="READ|SER|1257757|MH|"_($L(r))_"|"_($E(r,1,24))
 S k=(k)+1
 S r=$$DISPATCH^ILSTUI("SHOW CAT 7505764")
 S ^ILS("TMP","J",k)="SEARCH|SHOW_CAT_7505764|"_($L(r))_"|"_($E(r,1,40))
 S k=(k)+1
 S r=$$DISPATCH^ILSTUI("ISSN 0742-3071")
 S ^ILS("TMP","J",k)="SEARCH|ISSN_0742-3071|"_($L(r))_"|"_($E(r,1,40))
 S k=(k)+1
 D SEQPUT^ILSREC("90000193","CAT","MH","Stress Heading 193")
 S ^ILS("TMP","J",k)="SEQPUT|90000193"
 S k=(k)+1
 D PARSE^ILSREC("90000194","CAT","ID - 90000194"_$C(10)_"BTI - Stress Title 194"_$C(10)_"AU - Tester, Ann"_$C(10)_"MH - Quantum Bibliography"_$C(10)_"MH - Public Health"_$C(10)_"MH - Genomics")
 S ^ILS("TMP","J",k)="CREATE|90000194|"_$G(^ILS("TMP","CNT"))
 S k=(k)+1
 S r=$$DISPATCH^ILSTUI("AUTH D003920")
 S ^ILS("TMP","J",k)="SEARCH|AUTH_D003920|"_($L(r))_"|"_($E(r,1,40))
 S k=(k)+1
 S r=$G(^ILS("CAT","7705180","PB",1))
 S ^ILS("TMP","J",k)="READ|CAT|7705180|PB|"_($L(r))_"|"_($E(r,1,24))
 S k=(k)+1
 S r=$$DISPATCH^ILSTUI("LEDGER")
 S ^ILS("TMP","J",k)="SEARCH|LEDGER|"_($L(r))_"|"_($E(r,1,40))
 S k=(k)+1
 S r=$G(^ILS("SER","1262006","ISS",1))
 S ^ILS("TMP","J",k)="READ|SER|1262006|ISS|"_($L(r))_"|"_($E(r,1,24))
 S k=(k)+1
 S r=$$DISPATCH^ILSTUI("RELATED D003920")
 S ^ILS("TMP","J",k)="SEARCH|RELATED_D003920|"_($L(r))_"|"_($E(r,1,40))
 S k=(k)+1
 S r=$G(^ILS("SER","1261010","ISS",1))
 S ^ILS("TMP","J",k)="READ|SER|1261010|ISS|"_($L(r))_"|"_($E(r,1,24))
 S k=(k)+1
 S r=$G(^ILS("CAT","1267372","PB",1))
 S ^ILS("TMP","J",k)="READ|CAT|1267372|PB|"_($L(r))_"|"_($E(r,1,24))
 S k=(k)+1
 S p=$D(^ILS("CAT","7802251"))
 D KILLREC^ILSREC("7802251","CAT")
 S ^ILS("TMP","J",k)="DEL|7802251|"_(p)_"->"_($D(^ILS("CAT","7802251")))
 S k=(k)+1
 S r=$$DISPATCH^ILSTUI("SHOW CAT 7703942")
 S ^ILS("TMP","J",k)="SEARCH|SHOW_CAT_7703942|"_($L(r))_"|"_($E(r,1,40))
 S k=(k)+1
 D PARSE^ILSREC("90000204","CAT","ID - 90000204"_$C(10)_"BTI - Stress Title 204"_$C(10)_"AU - Tester, Ann"_$C(10)_"MH - Diabetes Mellitus."_$C(10)_"MH - Quantum Bibliography")
 S ^ILS("TMP","J",k)="CREATE|90000204|"_$G(^ILS("TMP","CNT"))
 S k=(k)+1
 D PARSE^ILSREC("90000205","CAT","ID - 90000205"_$C(10)_"BTI - Stress Title 205"_$C(10)_"AU - Tester, Ann"_$C(10)_"MH - Public Health"_$C(10)_"MH - Public Health")
 S ^ILS("TMP","J",k)="CREATE|90000205|"_$G(^ILS("TMP","CNT"))
 S k=(k)+1
 S p=$D(^ILS("CAT","90000206"))
 D KILLREC^ILSREC("90000206","CAT")
 S ^ILS("TMP","J",k)="DEL|90000206|"_(p)_"->"_($D(^ILS("CAT","90000206")))
 S k=(k)+1
 D AUTHADD^ILSAUTH("D990207","Stress Heading 207","Z99.207")
 S ^ILS("TMP","J",k)="AUTHADD|D990207|"_($D(^ILS("ANAME","STRESS HEADING 207","D990207")))
 S k=(k)+1
 D PARSE^ILSREC("90000208","CAT","ID - 90000208"_$C(10)_"BTI - Stress Title 208"_$C(10)_"AU - Tester, Ann"_$C(10)_"MH - Genomics")
 S ^ILS("TMP","J",k)="CREATE|90000208|"_$G(^ILS("TMP","CNT"))
 S k=(k)+1
 D PARSE^ILSREC("90000209","CAT","ID - 90000209"_$C(10)_"BTI - Stress Title 209"_$C(10)_"AU - Tester, Ann"_$C(10)_"MH - Quantum Bibliography"_$C(10)_"MH - Medical Informatics")
 S ^ILS("TMP","J",k)="CREATE|90000209|"_$G(^ILS("TMP","CNT"))
 S k=(k)+1
 D SEQPUT^ILSREC("90000210","CAT","MH","Stress Heading 210")
 S ^ILS("TMP","J",k)="SEQPUT|90000210"
 S k=(k)+1
 S r=$G(^ILS("SER","1257757","ISS",1))
 S ^ILS("TMP","J",k)="READ|SER|1257757|ISS|"_($L(r))_"|"_($E(r,1,24))
 S k=(k)+1
 D PARSE^ILSREC("90000212","CAT","ID - 90000212"_$C(10)_"BTI - Stress Title 212"_$C(10)_"AU - Tester, Ann"_$C(10)_"MH - Diabetes Mellitus."_$C(10)_"MH - Public Health"_$C(10)_"MH - Medical Informatics")
 S ^ILS("TMP","J",k)="CREATE|90000212|"_$G(^ILS("TMP","CNT"))
 S k=(k)+1
 S r=$G(^ILS("CAT","7609600","DP",1))
 S ^ILS("TMP","J",k)="READ|CAT|7609600|DP|"_($L(r))_"|"_($E(r,1,24))
 S k=(k)+1
 S r=$$VALIDATE^ILSAUTH("7609600","CAT")
 S ^ILS("TMP","J",k)="VAL|7609600|"_(r)
 S k=(k)+1
 D PUT^ILSREC("7506781","CAT","DP",1,"2026")
 S ^ILS("TMP","J",k)="UPD|7506781|"_($D(^ILS("CAT","7506781","DP",1)))
 S k=(k)+1
 D SEQPUT^ILSREC("8007202","CAT","MH","Stress Heading 216")
 S ^ILS("TMP","J",k)="SEQPUT|8007202"
 S k=(k)+1
 D SEQPUT^ILSREC("7503289","CAT","MH","Stress Heading 217")
 S ^ILS("TMP","J",k)="SEQPUT|7503289"
 S k=(k)+1
 D AUTHADD^ILSAUTH("D990218","Stress Heading 218","Z99.218")
 S ^ILS("TMP","J",k)="AUTHADD|D990218|"_($D(^ILS("ANAME","STRESS HEADING 218","D990218")))
 S k=(k)+1
 S r=$$DISPATCH^ILSTUI("RELATED D003920")
 S ^ILS("TMP","J",k)="SEARCH|RELATED_D003920|"_($L(r))_"|"_($E(r,1,40))
 S k=(k)+1
 S r=$$VALIDATE^ILSAUTH("90000220","CAT")
 S ^ILS("TMP","J",k)="VAL|90000220|"_(r)
 S k=(k)+1
 D AUTHADD^ILSAUTH("D990221","Stress Heading 221","Z99.221")
 S ^ILS("TMP","J",k)="AUTHADD|D990221|"_($D(^ILS("ANAME","STRESS HEADING 221","D990221")))
 S k=(k)+1
 S r=$G(^ILS("CAT","8003963","MH",1))
 S ^ILS("TMP","J",k)="READ|CAT|8003963|MH|"_($L(r))_"|"_($E(r,1,24))
 S k=(k)+1
 D PARSE^ILSREC("90000223","CAT","ID - 90000223"_$C(10)_"BTI - Stress Title 223"_$C(10)_"AU - Tester, Ann"_$C(10)_"MH - Genomics")
 S ^ILS("TMP","J",k)="CREATE|90000223|"_$G(^ILS("TMP","CNT"))
 S k=(k)+1
 S r=$$DISPATCH^ILSTUI("SHOW SER 1262006")
 S ^ILS("TMP","J",k)="SEARCH|SHOW_SER_1262006|"_($L(r))_"|"_($E(r,1,40))
 S k=(k)+1
 S p=$D(^ILS("CAT","1264327"))
 D KILLREC^ILSREC("1264327","CAT")
 S ^ILS("TMP","J",k)="DEL|1264327|"_(p)_"->"_($D(^ILS("CAT","1264327")))
 S k=(k)+1
 S r=$$DISPATCH^ILSTUI("LEDGER")
 S ^ILS("TMP","J",k)="SEARCH|LEDGER|"_($L(r))_"|"_($E(r,1,40))
 S k=(k)+1
 S r=$G(^ILS("SER","1260134","ISS",1))
 S ^ILS("TMP","J",k)="READ|SER|1260134|ISS|"_($L(r))_"|"_($E(r,1,24))
 S k=(k)+1
 D PARSE^ILSREC("90000228","CAT","ID - 90000228"_$C(10)_"BTI - Stress Title 228"_$C(10)_"AU - Tester, Ann"_$C(10)_"MH - Quantum Bibliography")
 S ^ILS("TMP","J",k)="CREATE|90000228|"_$G(^ILS("TMP","CNT"))
 S k=(k)+1
 S r=$G(^ILS("CAT","8000583","BTI",1))
 S ^ILS("TMP","J",k)="READ|CAT|8000583|BTI|"_($L(r))_"|"_($E(r,1,24))
 S k=(k)+1
 D PARSE^ILSREC("90000230","CAT","ID - 90000230"_$C(10)_"BTI - Stress Title 230"_$C(10)_"AU - Tester, Ann"_$C(10)_"MH - Public Health"_$C(10)_"MH - Genomics"_$C(10)_"MH - Diabetes Mellitus.")
 S ^ILS("TMP","J",k)="CREATE|90000230|"_$G(^ILS("TMP","CNT"))
 S k=(k)+1
 D PARSE^ILSREC("90000231","CAT","ID - 90000231"_$C(10)_"BTI - Stress Title 231"_$C(10)_"AU - Tester, Ann"_$C(10)_"MH - Medical Informatics"_$C(10)_"MH - Medical Informatics")
 S ^ILS("TMP","J",k)="CREATE|90000231|"_$G(^ILS("TMP","CNT"))
 S k=(k)+1
 D PUT^ILSREC("7807107","CAT","DP",1,"2026")
 S ^ILS("TMP","J",k)="UPD|7807107|"_($D(^ILS("CAT","7807107","DP",1)))
 S k=(k)+1
 S p=$D(^ILS("CAT","7901827"))
 D KILLREC^ILSREC("7901827","CAT")
 S ^ILS("TMP","J",k)="DEL|7901827|"_(p)_"->"_($D(^ILS("CAT","7901827")))
 S k=(k)+1
 S r=$$VALIDATE^ILSAUTH("7909441","CAT")
 S ^ILS("TMP","J",k)="VAL|7909441|"_(r)
 S k=(k)+1
 D PARSE^ILSREC("90000235","CAT","ID - 90000235"_$C(10)_"BTI - Stress Title 235"_$C(10)_"AU - Tester, Ann"_$C(10)_"MH - Genomics"_$C(10)_"MH - Diabetes Mellitus."_$C(10)_"MH - Diabetes Mellitus.")
 S ^ILS("TMP","J",k)="CREATE|90000235|"_$G(^ILS("TMP","CNT"))
 S k=(k)+1
 D AUTHADD^ILSAUTH("D990236","Stress Heading 236","Z99.236")
 S ^ILS("TMP","J",k)="AUTHADD|D990236|"_($D(^ILS("ANAME","STRESS HEADING 236","D990236")))
 S k=(k)+1
 D PARSE^ILSREC("90000237","CAT","ID - 90000237"_$C(10)_"BTI - Stress Title 237"_$C(10)_"AU - Tester, Ann"_$C(10)_"MH - Diabetes Mellitus.")
 S ^ILS("TMP","J",k)="CREATE|90000237|"_$G(^ILS("TMP","CNT"))
 S k=(k)+1
 S r=$$DISPATCH^ILSTUI("FIND DIABETES")
 S ^ILS("TMP","J",k)="SEARCH|FIND_DIABETES|"_($L(r))_"|"_($E(r,1,40))
 S k=(k)+1
 S r=$G(^ILS("CAT","7508397","BTI",1))
 S ^ILS("TMP","J",k)="READ|CAT|7508397|BTI|"_($L(r))_"|"_($E(r,1,24))
 S k=(k)+1
 D PARSE^ILSREC("90000240","CAT","ID - 90000240"_$C(10)_"BTI - Stress Title 240"_$C(10)_"AU - Tester, Ann"_$C(10)_"MH - Public Health"_$C(10)_"MH - Quantum Bibliography"_$C(10)_"MH - Genomics")
 S ^ILS("TMP","J",k)="CREATE|90000240|"_$G(^ILS("TMP","CNT"))
 S k=(k)+1
 S r=$$DISPATCH^ILSTUI("ISSN 0742-3071")
 S ^ILS("TMP","J",k)="SEARCH|ISSN_0742-3071|"_($L(r))_"|"_($E(r,1,40))
 S k=(k)+1
 S r=$$DISPATCH^ILSTUI("FIND HEALTH")
 S ^ILS("TMP","J",k)="SEARCH|FIND_HEALTH|"_($L(r))_"|"_($E(r,1,40))
 S k=(k)+1
 S r=$$DISPATCH^ILSTUI("SHOW CAT 1302032")
 S ^ILS("TMP","J",k)="SEARCH|SHOW_CAT_1302032|"_($L(r))_"|"_($E(r,1,40))
 S k=(k)+1
 D AUTHADD^ILSAUTH("D990244","Stress Heading 244","Z99.244")
 S ^ILS("TMP","J",k)="AUTHADD|D990244|"_($D(^ILS("ANAME","STRESS HEADING 244","D990244")))
 S k=(k)+1
 D PARSE^ILSREC("90000245","CAT","ID - 90000245"_$C(10)_"BTI - Stress Title 245"_$C(10)_"AU - Tester, Ann"_$C(10)_"MH - Diabetes Mellitus.")
 S ^ILS("TMP","J",k)="CREATE|90000245|"_$G(^ILS("TMP","CNT"))
 S k=(k)+1
 D SEQPUT^ILSREC("90000246","CAT","MH","Stress Heading 246")
 S ^ILS("TMP","J",k)="SEQPUT|90000246"
 S k=(k)+1
 S p=$D(^ILS("CAT","7802251"))
 D KILLREC^ILSREC("7802251","CAT")
 S ^ILS("TMP","J",k)="DEL|7802251|"_(p)_"->"_($D(^ILS("CAT","7802251")))
 S k=(k)+1
 S r=$$DISPATCH^ILSTUI("SHOW SER 1260134")
 S ^ILS("TMP","J",k)="SEARCH|SHOW_SER_1260134|"_($L(r))_"|"_($E(r,1,40))
 S k=(k)+1
 S r=$$DISPATCH^ILSTUI("LEDGER")
 S ^ILS("TMP","J",k)="SEARCH|LEDGER|"_($L(r))_"|"_($E(r,1,40))
 S k=(k)+1
 S r=$$DISPATCH^ILSTUI("LIST")
 S ^ILS("TMP","J",k)="SEARCH|LIST|"_($L(r))_"|"_($E(r,1,40))
 S k=(k)+1
 S r=$$DISPATCH^ILSTUI("MH GENOMICS")
 S ^ILS("TMP","J",k)="SEARCH|MH_GENOMICS|"_($L(r))_"|"_($E(r,1,40))
 S k=(k)+1
 S r=$$VALIDATE^ILSAUTH("90000252","CAT")
 S ^ILS("TMP","J",k)="VAL|90000252|"_(r)
 S k=(k)+1
 S r=$$DISPATCH^ILSTUI("MH GENOMICS")
 S ^ILS("TMP","J",k)="SEARCH|MH_GENOMICS|"_($L(r))_"|"_($E(r,1,40))
 S k=(k)+1
 D SEQPUT^ILSREC("90000254","CAT","MH","Stress Heading 254")
 S ^ILS("TMP","J",k)="SEQPUT|90000254"
 S k=(k)+1
 D PARSE^ILSREC("90000255","CAT","ID - 90000255"_$C(10)_"BTI - Stress Title 255"_$C(10)_"AU - Tester, Ann"_$C(10)_"MH - Quantum Bibliography"_$C(10)_"MH - Public Health"_$C(10)_"MH - Diabetes Mellitus.")
 S ^ILS("TMP","J",k)="CREATE|90000255|"_$G(^ILS("TMP","CNT"))
 S k=(k)+1
 S r=$$VALIDATE^ILSAUTH("7803530","CAT")
 S ^ILS("TMP","J",k)="VAL|7803530|"_(r)
 S k=(k)+1
 S r=$$VALIDATE^ILSAUTH("7705180","CAT")
 S ^ILS("TMP","J",k)="VAL|7705180|"_(r)
 S k=(k)+1
 S r=$G(^ILS("CAT","7502500","PB",1))
 S ^ILS("TMP","J",k)="READ|CAT|7502500|PB|"_($L(r))_"|"_($E(r,1,24))
 S k=(k)+1
 S r=$G(^ILS("CAT","8000583","DP",1))
 S ^ILS("TMP","J",k)="READ|CAT|8000583|DP|"_($L(r))_"|"_($E(r,1,24))
 S k=(k)+1
 D PUT^ILSREC("90000260","CAT","DP",1,"2026")
 S ^ILS("TMP","J",k)="UPD|90000260|"_($D(^ILS("CAT","90000260","DP",1)))
 S k=(k)+1
 S r=$G(^ILS("CAT","8101154","DP",1))
 S ^ILS("TMP","J",k)="READ|CAT|8101154|DP|"_($L(r))_"|"_($E(r,1,24))
 S k=(k)+1
 S p=$D(^ILS("CAT","90000262"))
 D KILLREC^ILSREC("90000262","CAT")
 S ^ILS("TMP","J",k)="DEL|90000262|"_(p)_"->"_($D(^ILS("CAT","90000262")))
 S k=(k)+1
 D PARSE^ILSREC("90000263","CAT","ID - 90000263"_$C(10)_"BTI - Stress Title 263"_$C(10)_"AU - Tester, Ann"_$C(10)_"MH - Quantum Bibliography"_$C(10)_"MH - Quantum Bibliography"_$C(10)_"MH - Genomics")
 S ^ILS("TMP","J",k)="CREATE|90000263|"_$G(^ILS("TMP","CNT"))
 S k=(k)+1
 D PARSE^ILSREC("90000264","CAT","ID - 90000264"_$C(10)_"BTI - Stress Title 264"_$C(10)_"AU - Tester, Ann"_$C(10)_"MH - Medical Informatics"_$C(10)_"MH - Quantum Bibliography")
 S ^ILS("TMP","J",k)="CREATE|90000264|"_$G(^ILS("TMP","CNT"))
 S k=(k)+1
 S r=$$DISPATCH^ILSTUI("MH GENOMICS")
 S ^ILS("TMP","J",k)="SEARCH|MH_GENOMICS|"_($L(r))_"|"_($E(r,1,40))
 S k=(k)+1
 S r=$$DISPATCH^ILSTUI("ISSN 0742-3071")
 S ^ILS("TMP","J",k)="SEARCH|ISSN_0742-3071|"_($L(r))_"|"_($E(r,1,40))
 S k=(k)+1
 S r=$$DISPATCH^ILSTUI("MH DIABETES MELLITUS.")
 S ^ILS("TMP","J",k)="SEARCH|MH_DIABETES_MELLITUS.|"_($L(r))_"|"_($E(r,1,40))
 S k=(k)+1
 S r=$$DISPATCH^ILSTUI("FIND HEALTH")
 S ^ILS("TMP","J",k)="SEARCH|FIND_HEALTH|"_($L(r))_"|"_($E(r,1,40))
 S k=(k)+1
 S r=$G(^ILS("CAT","7705180","BTI",1))
 S ^ILS("TMP","J",k)="READ|CAT|7705180|BTI|"_($L(r))_"|"_($E(r,1,24))
 S k=(k)+1
 D PARSE^ILSREC("90000270","CAT","ID - 90000270"_$C(10)_"BTI - Stress Title 270"_$C(10)_"AU - Tester, Ann"_$C(10)_"MH - Quantum Bibliography")
 S ^ILS("TMP","J",k)="CREATE|90000270|"_$G(^ILS("TMP","CNT"))
 S k=(k)+1
 S p=$D(^ILS("CAT","90000271"))
 D KILLREC^ILSREC("90000271","CAT")
 S ^ILS("TMP","J",k)="DEL|90000271|"_(p)_"->"_($D(^ILS("CAT","90000271")))
 S k=(k)+1
 D PARSE^ILSREC("90000272","CAT","ID - 90000272"_$C(10)_"BTI - Stress Title 272"_$C(10)_"AU - Tester, Ann"_$C(10)_"MH - Public Health"_$C(10)_"MH - Medical Informatics"_$C(10)_"MH - Public Health")
 S ^ILS("TMP","J",k)="CREATE|90000272|"_$G(^ILS("TMP","CNT"))
 S k=(k)+1
 S r=$G(^ILS("CAT","7803530","AU",1))
 S ^ILS("TMP","J",k)="READ|CAT|7803530|AU|"_($L(r))_"|"_($E(r,1,24))
 S k=(k)+1
 S r=$G(^ILS("CAT","7503289","MH",1))
 S ^ILS("TMP","J",k)="READ|CAT|7503289|MH|"_($L(r))_"|"_($E(r,1,24))
 S k=(k)+1
 S r=$$DISPATCH^ILSTUI("FIND DIABETES")
 S ^ILS("TMP","J",k)="SEARCH|FIND_DIABETES|"_($L(r))_"|"_($E(r,1,40))
 S k=(k)+1
 D PUT^ILSREC("90000276","CAT","DP",1,"2026")
 S ^ILS("TMP","J",k)="UPD|90000276|"_($D(^ILS("CAT","90000276","DP",1)))
 S k=(k)+1
 D PUT^ILSREC("1264327","CAT","DP",1,"2026")
 S ^ILS("TMP","J",k)="UPD|1264327|"_($D(^ILS("CAT","1264327","DP",1)))
 S k=(k)+1
 D AUTHADD^ILSAUTH("D990278","Stress Heading 278","Z99.278")
 S ^ILS("TMP","J",k)="AUTHADD|D990278|"_($D(^ILS("ANAME","STRESS HEADING 278","D990278")))
 S k=(k)+1
 S r=$$DISPATCH^ILSTUI("SHOW CAT 7803530")
 S ^ILS("TMP","J",k)="SEARCH|SHOW_CAT_7803530|"_($L(r))_"|"_($E(r,1,40))
 S k=(k)+1
 D PARSE^ILSREC("90000280","CAT","ID - 90000280"_$C(10)_"BTI - Stress Title 280"_$C(10)_"AU - Tester, Ann"_$C(10)_"MH - Quantum Bibliography"_$C(10)_"MH - Public Health"_$C(10)_"MH - Public Health")
 S ^ILS("TMP","J",k)="CREATE|90000280|"_$G(^ILS("TMP","CNT"))
 S k=(k)+1
 S r=$$DISPATCH^ILSTUI("RELATED D003920")
 S ^ILS("TMP","J",k)="SEARCH|RELATED_D003920|"_($L(r))_"|"_($E(r,1,40))
 S k=(k)+1
 S p=$D(^ILS("CAT","90000282"))
 D KILLREC^ILSREC("90000282","CAT")
 S ^ILS("TMP","J",k)="DEL|90000282|"_(p)_"->"_($D(^ILS("CAT","90000282")))
 S k=(k)+1
 S r=$$VALIDATE^ILSAUTH("7703942","CAT")
 S ^ILS("TMP","J",k)="VAL|7703942|"_(r)
 S k=(k)+1
 D PARSE^ILSREC("90000284","CAT","ID - 90000284"_$C(10)_"BTI - Stress Title 284"_$C(10)_"AU - Tester, Ann"_$C(10)_"MH - Genomics"_$C(10)_"MH - Public Health")
 S ^ILS("TMP","J",k)="CREATE|90000284|"_$G(^ILS("TMP","CNT"))
 S k=(k)+1
 D SEQPUT^ILSREC("90000285","CAT","MH","Stress Heading 285")
 S ^ILS("TMP","J",k)="SEQPUT|90000285"
 S k=(k)+1
 S r=$G(^ILS("CAT","7911752","AU",1))
 S ^ILS("TMP","J",k)="READ|CAT|7911752|AU|"_($L(r))_"|"_($E(r,1,24))
 S k=(k)+1
 S r=$G(^ILS("CAT","7807107","MH",1))
 S ^ILS("TMP","J",k)="READ|CAT|7807107|MH|"_($L(r))_"|"_($E(r,1,24))
 S k=(k)+1
 S r=$G(^ILS("CAT","7802251","BTI",1))
 S ^ILS("TMP","J",k)="READ|CAT|7802251|BTI|"_($L(r))_"|"_($E(r,1,24))
 S k=(k)+1
 S r=$$DISPATCH^ILSTUI("LEDGER")
 S ^ILS("TMP","J",k)="SEARCH|LEDGER|"_($L(r))_"|"_($E(r,1,40))
 S k=(k)+1
 D PARSE^ILSREC("90000290","CAT","ID - 90000290"_$C(10)_"BTI - Stress Title 290"_$C(10)_"AU - Tester, Ann"_$C(10)_"MH - Diabetes Mellitus."_$C(10)_"MH - Genomics"_$C(10)_"MH - Quantum Bibliography")
 S ^ILS("TMP","J",k)="CREATE|90000290|"_$G(^ILS("TMP","CNT"))
 S k=(k)+1
 D SEQPUT^ILSREC("7909441","CAT","MH","Stress Heading 291")
 S ^ILS("TMP","J",k)="SEQPUT|7909441"
 S k=(k)+1
 S r=$$DISPATCH^ILSTUI("AUTH D003920")
 S ^ILS("TMP","J",k)="SEARCH|AUTH_D003920|"_($L(r))_"|"_($E(r,1,40))
 S k=(k)+1
 S r=$$DISPATCH^ILSTUI("AUTH D003920")
 S ^ILS("TMP","J",k)="SEARCH|AUTH_D003920|"_($L(r))_"|"_($E(r,1,40))
 S k=(k)+1
 S p=$D(^ILS("CAT","7808791"))
 D KILLREC^ILSREC("7808791","CAT")
 S ^ILS("TMP","J",k)="DEL|7808791|"_(p)_"->"_($D(^ILS("CAT","7808791")))
 S k=(k)+1
 D PARSE^ILSREC("90000295","CAT","ID - 90000295"_$C(10)_"BTI - Stress Title 295"_$C(10)_"AU - Tester, Ann"_$C(10)_"MH - Diabetes Mellitus.")
 S ^ILS("TMP","J",k)="CREATE|90000295|"_$G(^ILS("TMP","CNT"))
 S k=(k)+1
 S r=$$DISPATCH^ILSTUI("ISSN 0742-3071")
 S ^ILS("TMP","J",k)="SEARCH|ISSN_0742-3071|"_($L(r))_"|"_($E(r,1,40))
 S k=(k)+1
 D PARSE^ILSREC("90000297","CAT","ID - 90000297"_$C(10)_"BTI - Stress Title 297"_$C(10)_"AU - Tester, Ann"_$C(10)_"MH - Genomics")
 S ^ILS("TMP","J",k)="CREATE|90000297|"_$G(^ILS("TMP","CNT"))
 S k=(k)+1
 S r=$G(^ILS("CAT","1264327","BTI",1))
 S ^ILS("TMP","J",k)="READ|CAT|1264327|BTI|"_($L(r))_"|"_($E(r,1,24))
 S k=(k)+1
 S r=$G(^ILS("CAT","7609600","PB",1))
 S ^ILS("TMP","J",k)="READ|CAT|7609600|PB|"_($L(r))_"|"_($E(r,1,24))
 S k=(k)+1
 S r=$G(^ILS("CAT","7705180","MH",1))
 S ^ILS("TMP","J",k)="READ|CAT|7705180|MH|"_($L(r))_"|"_($E(r,1,24))
 S k=(k)+1
 S r=$$DISPATCH^ILSTUI("FIND DIABETES")
 S ^ILS("TMP","J",k)="SEARCH|FIND_DIABETES|"_($L(r))_"|"_($E(r,1,40))
 S k=(k)+1
 D PARSE^ILSREC("90000302","CAT","ID - 90000302"_$C(10)_"BTI - Stress Title 302"_$C(10)_"AU - Tester, Ann"_$C(10)_"MH - Medical Informatics"_$C(10)_"MH - Diabetes Mellitus.")
 S ^ILS("TMP","J",k)="CREATE|90000302|"_$G(^ILS("TMP","CNT"))
 S k=(k)+1
 S r=$G(^ILS("CAT","7505764","DP",1))
 S ^ILS("TMP","J",k)="READ|CAT|7505764|DP|"_($L(r))_"|"_($E(r,1,24))
 S k=(k)+1
 S r=$$DISPATCH^ILSTUI("LEDGER")
 S ^ILS("TMP","J",k)="SEARCH|LEDGER|"_($L(r))_"|"_($E(r,1,40))
 S k=(k)+1
 D PARSE^ILSREC("90000305","CAT","ID - 90000305"_$C(10)_"BTI - Stress Title 305"_$C(10)_"AU - Tester, Ann"_$C(10)_"MH - Public Health"_$C(10)_"MH - Medical Informatics")
 S ^ILS("TMP","J",k)="CREATE|90000305|"_$G(^ILS("TMP","CNT"))
 S k=(k)+1
 D PARSE^ILSREC("90000306","CAT","ID - 90000306"_$C(10)_"BTI - Stress Title 306"_$C(10)_"AU - Tester, Ann"_$C(10)_"MH - Public Health"_$C(10)_"MH - Medical Informatics")
 S ^ILS("TMP","J",k)="CREATE|90000306|"_$G(^ILS("TMP","CNT"))
 S k=(k)+1
 D AUTHADD^ILSAUTH("D990307","Stress Heading 307","Z99.307")
 S ^ILS("TMP","J",k)="AUTHADD|D990307|"_($D(^ILS("ANAME","STRESS HEADING 307","D990307")))
 S k=(k)+1
 S r=$$VALIDATE^ILSAUTH("7802251","CAT")
 S ^ILS("TMP","J",k)="VAL|7802251|"_(r)
 S k=(k)+1
 D SEQPUT^ILSREC("7703942","CAT","MH","Stress Heading 309")
 S ^ILS("TMP","J",k)="SEQPUT|7703942"
 S k=(k)+1
 D PARSE^ILSREC("90000310","CAT","ID - 90000310"_$C(10)_"BTI - Stress Title 310"_$C(10)_"AU - Tester, Ann"_$C(10)_"MH - Medical Informatics"_$C(10)_"MH - Public Health")
 S ^ILS("TMP","J",k)="CREATE|90000310|"_$G(^ILS("TMP","CNT"))
 S k=(k)+1
 S r=$$DISPATCH^ILSTUI("SHOW SER 1256232")
 S ^ILS("TMP","J",k)="SEARCH|SHOW_SER_1256232|"_($L(r))_"|"_($E(r,1,40))
 S k=(k)+1
 S r=$$VALIDATE^ILSAUTH("7506781","CAT")
 S ^ILS("TMP","J",k)="VAL|7506781|"_(r)
 S k=(k)+1
 D PARSE^ILSREC("90000313","CAT","ID - 90000313"_$C(10)_"BTI - Stress Title 313"_$C(10)_"AU - Tester, Ann"_$C(10)_"MH - Genomics"_$C(10)_"MH - Medical Informatics"_$C(10)_"MH - Quantum Bibliography")
 S ^ILS("TMP","J",k)="CREATE|90000313|"_$G(^ILS("TMP","CNT"))
 S k=(k)+1
 D SEQPUT^ILSREC("90000314","CAT","MH","Stress Heading 314")
 S ^ILS("TMP","J",k)="SEQPUT|90000314"
 S k=(k)+1
 D PARSE^ILSREC("90000315","CAT","ID - 90000315"_$C(10)_"BTI - Stress Title 315"_$C(10)_"AU - Tester, Ann"_$C(10)_"MH - Diabetes Mellitus."_$C(10)_"MH - Diabetes Mellitus.")
 S ^ILS("TMP","J",k)="CREATE|90000315|"_$G(^ILS("TMP","CNT"))
 S k=(k)+1
 S r=$$DISPATCH^ILSTUI("SHOW CAT 8101154")
 S ^ILS("TMP","J",k)="SEARCH|SHOW_CAT_8101154|"_($L(r))_"|"_($E(r,1,40))
 S k=(k)+1
 D PUT^ILSREC("90000317","CAT","DP",1,"2026")
 S ^ILS("TMP","J",k)="UPD|90000317|"_($D(^ILS("CAT","90000317","DP",1)))
 S k=(k)+1
 D PARSE^ILSREC("90000318","CAT","ID - 90000318"_$C(10)_"BTI - Stress Title 318"_$C(10)_"AU - Tester, Ann"_$C(10)_"MH - Genomics"_$C(10)_"MH - Public Health"_$C(10)_"MH - Quantum Bibliography")
 S ^ILS("TMP","J",k)="CREATE|90000318|"_$G(^ILS("TMP","CNT"))
 S k=(k)+1
 D PARSE^ILSREC("90000319","CAT","ID - 90000319"_$C(10)_"BTI - Stress Title 319"_$C(10)_"AU - Tester, Ann"_$C(10)_"MH - Diabetes Mellitus."_$C(10)_"MH - Genomics")
 S ^ILS("TMP","J",k)="CREATE|90000319|"_$G(^ILS("TMP","CNT"))
 S k=(k)+1
 S p=$D(^ILS("CAT","7705180"))
 D KILLREC^ILSREC("7705180","CAT")
 S ^ILS("TMP","J",k)="DEL|7705180|"_(p)_"->"_($D(^ILS("CAT","7705180")))
 S k=(k)+1
 D PARSE^ILSREC("90000321","CAT","ID - 90000321"_$C(10)_"BTI - Stress Title 321"_$C(10)_"AU - Tester, Ann"_$C(10)_"MH - Medical Informatics")
 S ^ILS("TMP","J",k)="CREATE|90000321|"_$G(^ILS("TMP","CNT"))
 S k=(k)+1
 S p=$D(^ILS("CAT","7807107"))
 D KILLREC^ILSREC("7807107","CAT")
 S ^ILS("TMP","J",k)="DEL|7807107|"_(p)_"->"_($D(^ILS("CAT","7807107")))
 S k=(k)+1
 S p=$D(^ILS("CAT","90000323"))
 D KILLREC^ILSREC("90000323","CAT")
 S ^ILS("TMP","J",k)="DEL|90000323|"_(p)_"->"_($D(^ILS("CAT","90000323")))
 S k=(k)+1
 D AUTHADD^ILSAUTH("D990324","Stress Heading 324","Z99.324")
 S ^ILS("TMP","J",k)="AUTHADD|D990324|"_($D(^ILS("ANAME","STRESS HEADING 324","D990324")))
 S k=(k)+1
 D SEQPUT^ILSREC("7508397","CAT","MH","Stress Heading 325")
 S ^ILS("TMP","J",k)="SEQPUT|7508397"
 S k=(k)+1
 S r=$G(^ILS("CAT","1267372","AU",1))
 S ^ILS("TMP","J",k)="READ|CAT|1267372|AU|"_($L(r))_"|"_($E(r,1,24))
 S k=(k)+1
 D SEQPUT^ILSREC("8000583","CAT","MH","Stress Heading 327")
 S ^ILS("TMP","J",k)="SEQPUT|8000583"
 S k=(k)+1
 S r=$$VALIDATE^ILSAUTH("90000328","CAT")
 S ^ILS("TMP","J",k)="VAL|90000328|"_(r)
 S k=(k)+1
 D PUT^ILSREC("7703942","CAT","DP",1,"2026")
 S ^ILS("TMP","J",k)="UPD|7703942|"_($D(^ILS("CAT","7703942","DP",1)))
 S k=(k)+1
 S r=$$DISPATCH^ILSTUI("LEDGER")
 S ^ILS("TMP","J",k)="SEARCH|LEDGER|"_($L(r))_"|"_($E(r,1,40))
 S k=(k)+1
 D SEQPUT^ILSREC("7703942","CAT","MH","Stress Heading 331")
 S ^ILS("TMP","J",k)="SEQPUT|7703942"
 S k=(k)+1
 S p=$D(^ILS("CAT","7505764"))
 D KILLREC^ILSREC("7505764","CAT")
 S ^ILS("TMP","J",k)="DEL|7505764|"_(p)_"->"_($D(^ILS("CAT","7505764")))
 S k=(k)+1
 S r=$G(^ILS("CAT","7808791","PB",1))
 S ^ILS("TMP","J",k)="READ|CAT|7808791|PB|"_($L(r))_"|"_($E(r,1,24))
 S k=(k)+1
 S p=$D(^ILS("CAT","1267372"))
 D KILLREC^ILSREC("1267372","CAT")
 S ^ILS("TMP","J",k)="DEL|1267372|"_(p)_"->"_($D(^ILS("CAT","1267372")))
 S k=(k)+1
 S r=$$DISPATCH^ILSTUI("LEDGER")
 S ^ILS("TMP","J",k)="SEARCH|LEDGER|"_($L(r))_"|"_($E(r,1,40))
 S k=(k)+1
 S r=$$DISPATCH^ILSTUI("MH DIABETES MELLITUS.")
 S ^ILS("TMP","J",k)="SEARCH|MH_DIABETES_MELLITUS.|"_($L(r))_"|"_($E(r,1,40))
 S k=(k)+1
 S p=$D(^ILS("CAT","7803530"))
 D KILLREC^ILSREC("7803530","CAT")
 S ^ILS("TMP","J",k)="DEL|7803530|"_(p)_"->"_($D(^ILS("CAT","7803530")))
 S k=(k)+1
 D PARSE^ILSREC("90000338","CAT","ID - 90000338"_$C(10)_"BTI - Stress Title 338"_$C(10)_"AU - Tester, Ann"_$C(10)_"MH - Medical Informatics")
 S ^ILS("TMP","J",k)="CREATE|90000338|"_$G(^ILS("TMP","CNT"))
 S k=(k)+1
 D PARSE^ILSREC("90000339","CAT","ID - 90000339"_$C(10)_"BTI - Stress Title 339"_$C(10)_"AU - Tester, Ann"_$C(10)_"MH - Public Health"_$C(10)_"MH - Medical Informatics")
 S ^ILS("TMP","J",k)="CREATE|90000339|"_$G(^ILS("TMP","CNT"))
 S k=(k)+1
 S r=$G(^ILS("SER","1260024","ISS",1))
 S ^ILS("TMP","J",k)="READ|SER|1260024|ISS|"_($L(r))_"|"_($E(r,1,24))
 S k=(k)+1
 S r=$$DISPATCH^ILSTUI("LEDGER")
 S ^ILS("TMP","J",k)="SEARCH|LEDGER|"_($L(r))_"|"_($E(r,1,40))
 S k=(k)+1
 S p=$D(^ILS("CAT","8003963"))
 D KILLREC^ILSREC("8003963","CAT")
 S ^ILS("TMP","J",k)="DEL|8003963|"_(p)_"->"_($D(^ILS("CAT","8003963")))
 S k=(k)+1
 S r=$G(^ILS("CAT","7505764","PB",1))
 S ^ILS("TMP","J",k)="READ|CAT|7505764|PB|"_($L(r))_"|"_($E(r,1,24))
 S k=(k)+1
 D PARSE^ILSREC("90000344","CAT","ID - 90000344"_$C(10)_"BTI - Stress Title 344"_$C(10)_"AU - Tester, Ann"_$C(10)_"MH - Public Health"_$C(10)_"MH - Medical Informatics"_$C(10)_"MH - Public Health")
 S ^ILS("TMP","J",k)="CREATE|90000344|"_$G(^ILS("TMP","CNT"))
 S k=(k)+1
 D PARSE^ILSREC("90000345","CAT","ID - 90000345"_$C(10)_"BTI - Stress Title 345"_$C(10)_"AU - Tester, Ann"_$C(10)_"MH - Diabetes Mellitus."_$C(10)_"MH - Genomics")
 S ^ILS("TMP","J",k)="CREATE|90000345|"_$G(^ILS("TMP","CNT"))
 S k=(k)+1
 S p=$D(^ILS("CAT","90000346"))
 D KILLREC^ILSREC("90000346","CAT")
 S ^ILS("TMP","J",k)="DEL|90000346|"_(p)_"->"_($D(^ILS("CAT","90000346")))
 S k=(k)+1
 D PARSE^ILSREC("90000347","CAT","ID - 90000347"_$C(10)_"BTI - Stress Title 347"_$C(10)_"AU - Tester, Ann"_$C(10)_"MH - Medical Informatics")
 S ^ILS("TMP","J",k)="CREATE|90000347|"_$G(^ILS("TMP","CNT"))
 S k=(k)+1
 S r=$$VALIDATE^ILSAUTH("7605530","CAT")
 S ^ILS("TMP","J",k)="VAL|7605530|"_(r)
 S k=(k)+1
 D PARSE^ILSREC("90000349","CAT","ID - 90000349"_$C(10)_"BTI - Stress Title 349"_$C(10)_"AU - Tester, Ann"_$C(10)_"MH - Medical Informatics")
 S ^ILS("TMP","J",k)="CREATE|90000349|"_$G(^ILS("TMP","CNT"))
 S k=(k)+1
 D PARSE^ILSREC("90000350","CAT","ID - 90000350"_$C(10)_"BTI - Stress Title 350"_$C(10)_"AU - Tester, Ann"_$C(10)_"MH - Diabetes Mellitus."_$C(10)_"MH - Medical Informatics"_$C(10)_"MH - Diabetes Mellitus.")
 S ^ILS("TMP","J",k)="CREATE|90000350|"_$G(^ILS("TMP","CNT"))
 S k=(k)+1
 D PUT^ILSREC("8101154","CAT","DP",1,"2026")
 S ^ILS("TMP","J",k)="UPD|8101154|"_($D(^ILS("CAT","8101154","DP",1)))
 S k=(k)+1
 S p=$D(^ILS("CAT","1302032"))
 D KILLREC^ILSREC("1302032","CAT")
 S ^ILS("TMP","J",k)="DEL|1302032|"_(p)_"->"_($D(^ILS("CAT","1302032")))
 S k=(k)+1
 S r=$$VALIDATE^ILSAUTH("7502500","CAT")
 S ^ILS("TMP","J",k)="VAL|7502500|"_(r)
 S k=(k)+1
 D PARSE^ILSREC("90000354","CAT","ID - 90000354"_$C(10)_"BTI - Stress Title 354"_$C(10)_"AU - Tester, Ann"_$C(10)_"MH - Diabetes Mellitus.")
 S ^ILS("TMP","J",k)="CREATE|90000354|"_$G(^ILS("TMP","CNT"))
 S k=(k)+1
 D PARSE^ILSREC("90000355","CAT","ID - 90000355"_$C(10)_"BTI - Stress Title 355"_$C(10)_"AU - Tester, Ann"_$C(10)_"MH - Medical Informatics")
 S ^ILS("TMP","J",k)="CREATE|90000355|"_$G(^ILS("TMP","CNT"))
 S k=(k)+1
 S r=$G(^ILS("CAT","1267066","AU",1))
 S ^ILS("TMP","J",k)="READ|CAT|1267066|AU|"_($L(r))_"|"_($E(r,1,24))
 S k=(k)+1
 D SEQPUT^ILSREC("90000357","CAT","MH","Stress Heading 357")
 S ^ILS("TMP","J",k)="SEQPUT|90000357"
 S k=(k)+1
 S r=$G(^ILS("SER","1260767","MH",1))
 S ^ILS("TMP","J",k)="READ|SER|1260767|MH|"_($L(r))_"|"_($E(r,1,24))
 S k=(k)+1
 D PARSE^ILSREC("90000359","CAT","ID - 90000359"_$C(10)_"BTI - Stress Title 359"_$C(10)_"AU - Tester, Ann"_$C(10)_"MH - Diabetes Mellitus."_$C(10)_"MH - Medical Informatics"_$C(10)_"MH - Genomics")
 S ^ILS("TMP","J",k)="CREATE|90000359|"_$G(^ILS("TMP","CNT"))
 S k=(k)+1
 D SEQPUT^ILSREC("90000360","CAT","MH","Stress Heading 360")
 S ^ILS("TMP","J",k)="SEQPUT|90000360"
 S k=(k)+1
 S r=$G(^ILS("CAT","1264327","BTI",1))
 S ^ILS("TMP","J",k)="READ|CAT|1264327|BTI|"_($L(r))_"|"_($E(r,1,24))
 S k=(k)+1
 S r=$$VALIDATE^ILSAUTH("90000362","CAT")
 S ^ILS("TMP","J",k)="VAL|90000362|"_(r)
 S k=(k)+1
 S r=$G(^ILS("CAT","8003963","DP",1))
 S ^ILS("TMP","J",k)="READ|CAT|8003963|DP|"_($L(r))_"|"_($E(r,1,24))
 S k=(k)+1
 D PARSE^ILSREC("90000364","CAT","ID - 90000364"_$C(10)_"BTI - Stress Title 364"_$C(10)_"AU - Tester, Ann"_$C(10)_"MH - Public Health")
 S ^ILS("TMP","J",k)="CREATE|90000364|"_$G(^ILS("TMP","CNT"))
 S k=(k)+1
 S r=$$DISPATCH^ILSTUI("MH DIABETES MELLITUS.")
 S ^ILS("TMP","J",k)="SEARCH|MH_DIABETES_MELLITUS.|"_($L(r))_"|"_($E(r,1,40))
 S k=(k)+1
 S r=$$DISPATCH^ILSTUI("HELP")
 S ^ILS("TMP","J",k)="SEARCH|HELP|"_($L(r))_"|"_($E(r,1,40))
 S k=(k)+1
 S r=$G(^ILS("SER","1260767","ISS",1))
 S ^ILS("TMP","J",k)="READ|SER|1260767|ISS|"_($L(r))_"|"_($E(r,1,24))
 S k=(k)+1
 S r=$G(^ILS("CAT","1275455","BTI",1))
 S ^ILS("TMP","J",k)="READ|CAT|1275455|BTI|"_($L(r))_"|"_($E(r,1,24))
 S k=(k)+1
 S p=$D(^ILS("CAT","90000369"))
 D KILLREC^ILSREC("90000369","CAT")
 S ^ILS("TMP","J",k)="DEL|90000369|"_(p)_"->"_($D(^ILS("CAT","90000369")))
 S k=(k)+1
 D PUT^ILSREC("90000370","CAT","DP",1,"2026")
 S ^ILS("TMP","J",k)="UPD|90000370|"_($D(^ILS("CAT","90000370","DP",1)))
 S k=(k)+1
 S r=$G(^ILS("CAT","7605530","DP",1))
 S ^ILS("TMP","J",k)="READ|CAT|7605530|DP|"_($L(r))_"|"_($E(r,1,24))
 S k=(k)+1
 S r=$G(^ILS("SER","1260223","ISS",1))
 S ^ILS("TMP","J",k)="READ|SER|1260223|ISS|"_($L(r))_"|"_($E(r,1,24))
 S k=(k)+1
 S r=$G(^ILS("CAT","1302032","DP",1))
 S ^ILS("TMP","J",k)="READ|CAT|1302032|DP|"_($L(r))_"|"_($E(r,1,24))
 S k=(k)+1
 D PARSE^ILSREC("90000374","CAT","ID - 90000374"_$C(10)_"BTI - Stress Title 374"_$C(10)_"AU - Tester, Ann"_$C(10)_"MH - Genomics")
 S ^ILS("TMP","J",k)="CREATE|90000374|"_$G(^ILS("TMP","CNT"))
 S k=(k)+1
 S r=$G(^ILS("SER","1260223","STI",1))
 S ^ILS("TMP","J",k)="READ|SER|1260223|STI|"_($L(r))_"|"_($E(r,1,24))
 S k=(k)+1
 S r=$$DISPATCH^ILSTUI("HELP")
 S ^ILS("TMP","J",k)="SEARCH|HELP|"_($L(r))_"|"_($E(r,1,40))
 S k=(k)+1
 S r=$G(^ILS("CAT","7609600","DP",1))
 S ^ILS("TMP","J",k)="READ|CAT|7609600|DP|"_($L(r))_"|"_($E(r,1,24))
 S k=(k)+1
 S p=$D(^ILS("CAT","90000378"))
 D KILLREC^ILSREC("90000378","CAT")
 S ^ILS("TMP","J",k)="DEL|90000378|"_(p)_"->"_($D(^ILS("CAT","90000378")))
 S k=(k)+1
 S r=$$VALIDATE^ILSAUTH("7609600","CAT")
 S ^ILS("TMP","J",k)="VAL|7609600|"_(r)
 S k=(k)+1
 D PARSE^ILSREC("90000380","CAT","ID - 90000380"_$C(10)_"BTI - Stress Title 380"_$C(10)_"AU - Tester, Ann"_$C(10)_"MH - Diabetes Mellitus."_$C(10)_"MH - Diabetes Mellitus."_$C(10)_"MH - Quantum Bibliography")
 S ^ILS("TMP","J",k)="CREATE|90000380|"_$G(^ILS("TMP","CNT"))
 S k=(k)+1
 D PARSE^ILSREC("90000381","CAT","ID - 90000381"_$C(10)_"BTI - Stress Title 381"_$C(10)_"AU - Tester, Ann"_$C(10)_"MH - Public Health")
 S ^ILS("TMP","J",k)="CREATE|90000381|"_$G(^ILS("TMP","CNT"))
 S k=(k)+1
 D PUT^ILSREC("8101154","CAT","DP",1,"2026")
 S ^ILS("TMP","J",k)="UPD|8101154|"_($D(^ILS("CAT","8101154","DP",1)))
 S k=(k)+1
 D PARSE^ILSREC("90000383","CAT","ID - 90000383"_$C(10)_"BTI - Stress Title 383"_$C(10)_"AU - Tester, Ann"_$C(10)_"MH - Medical Informatics"_$C(10)_"MH - Medical Informatics")
 S ^ILS("TMP","J",k)="CREATE|90000383|"_$G(^ILS("TMP","CNT"))
 S k=(k)+1
 S r=$$DISPATCH^ILSTUI("SHOW CAT 7808791")
 S ^ILS("TMP","J",k)="SEARCH|SHOW_CAT_7808791|"_($L(r))_"|"_($E(r,1,40))
 S k=(k)+1
 S r=$$DISPATCH^ILSTUI("SHOW CAT 8003963")
 S ^ILS("TMP","J",k)="SEARCH|SHOW_CAT_8003963|"_($L(r))_"|"_($E(r,1,40))
 S k=(k)+1
 D PARSE^ILSREC("90000386","CAT","ID - 90000386"_$C(10)_"BTI - Stress Title 386"_$C(10)_"AU - Tester, Ann"_$C(10)_"MH - Public Health"_$C(10)_"MH - Public Health")
 S ^ILS("TMP","J",k)="CREATE|90000386|"_$G(^ILS("TMP","CNT"))
 S k=(k)+1
 S r=$G(^ILS("CAT","1302032","MH",1))
 S ^ILS("TMP","J",k)="READ|CAT|1302032|MH|"_($L(r))_"|"_($E(r,1,24))
 S k=(k)+1
 S r=$$DISPATCH^ILSTUI("MH DIABETES MELLITUS.")
 S ^ILS("TMP","J",k)="SEARCH|MH_DIABETES_MELLITUS.|"_($L(r))_"|"_($E(r,1,40))
 S k=(k)+1
 S r=$$DISPATCH^ILSTUI("MH GENOMICS")
 S ^ILS("TMP","J",k)="SEARCH|MH_GENOMICS|"_($L(r))_"|"_($E(r,1,40))
 S k=(k)+1
 S r=$$DISPATCH^ILSTUI("LIST")
 S ^ILS("TMP","J",k)="SEARCH|LIST|"_($L(r))_"|"_($E(r,1,40))
 S k=(k)+1
 S r=$G(^ILS("CAT","8007202","PB",1))
 S ^ILS("TMP","J",k)="READ|CAT|8007202|PB|"_($L(r))_"|"_($E(r,1,24))
 S k=(k)+1
 D PUT^ILSREC("90000392","CAT","DP",1,"2026")
 S ^ILS("TMP","J",k)="UPD|90000392|"_($D(^ILS("CAT","90000392","DP",1)))
 S k=(k)+1
 D PARSE^ILSREC("90000393","CAT","ID - 90000393"_$C(10)_"BTI - Stress Title 393"_$C(10)_"AU - Tester, Ann"_$C(10)_"MH - Medical Informatics")
 S ^ILS("TMP","J",k)="CREATE|90000393|"_$G(^ILS("TMP","CNT"))
 S k=(k)+1
 D PARSE^ILSREC("90000394","CAT","ID - 90000394"_$C(10)_"BTI - Stress Title 394"_$C(10)_"AU - Tester, Ann"_$C(10)_"MH - Public Health")
 S ^ILS("TMP","J",k)="CREATE|90000394|"_$G(^ILS("TMP","CNT"))
 S k=(k)+1
 S r=$G(^ILS("CAT","7909441","DP",1))
 S ^ILS("TMP","J",k)="READ|CAT|7909441|DP|"_($L(r))_"|"_($E(r,1,24))
 S k=(k)+1
 S r=$G(^ILS("CAT","7807107","BTI",1))
 S ^ILS("TMP","J",k)="READ|CAT|7807107|BTI|"_($L(r))_"|"_($E(r,1,24))
 S k=(k)+1
 S r=$G(^ILS("CAT","8000583","MH",1))
 S ^ILS("TMP","J",k)="READ|CAT|8000583|MH|"_($L(r))_"|"_($E(r,1,24))
 S k=(k)+1
 S r=$G(^ILS("CAT","1267066","AU",1))
 S ^ILS("TMP","J",k)="READ|CAT|1267066|AU|"_($L(r))_"|"_($E(r,1,24))
 S k=(k)+1
 S r=$G(^ILS("CAT","1264327","AU",1))
 S ^ILS("TMP","J",k)="READ|CAT|1264327|AU|"_($L(r))_"|"_($E(r,1,24))
 S k=(k)+1
 S r=$G(^ILS("CAT","1302032","PB",1))
 S ^ILS("TMP","J",k)="READ|CAT|1302032|PB|"_($L(r))_"|"_($E(r,1,24))
 S k=(k)+1
 D AUTHADD^ILSAUTH("D990401","Stress Heading 401","Z99.401")
 S ^ILS("TMP","J",k)="AUTHADD|D990401|"_($D(^ILS("ANAME","STRESS HEADING 401","D990401")))
 S k=(k)+1
 D PARSE^ILSREC("90000402","CAT","ID - 90000402"_$C(10)_"BTI - Stress Title 402"_$C(10)_"AU - Tester, Ann"_$C(10)_"MH - Quantum Bibliography"_$C(10)_"MH - Diabetes Mellitus.")
 S ^ILS("TMP","J",k)="CREATE|90000402|"_$G(^ILS("TMP","CNT"))
 S k=(k)+1
 D PARSE^ILSREC("90000403","CAT","ID - 90000403"_$C(10)_"BTI - Stress Title 403"_$C(10)_"AU - Tester, Ann"_$C(10)_"MH - Diabetes Mellitus."_$C(10)_"MH - Medical Informatics"_$C(10)_"MH - Medical Informatics")
 S ^ILS("TMP","J",k)="CREATE|90000403|"_$G(^ILS("TMP","CNT"))
 S k=(k)+1
 D PUT^ILSREC("90000404","CAT","DP",1,"2026")
 S ^ILS("TMP","J",k)="UPD|90000404|"_($D(^ILS("CAT","90000404","DP",1)))
 S k=(k)+1
 S p=$D(^ILS("CAT","1264327"))
 D KILLREC^ILSREC("1264327","CAT")
 S ^ILS("TMP","J",k)="DEL|1264327|"_(p)_"->"_($D(^ILS("CAT","1264327")))
 S k=(k)+1
 S r=$G(^ILS("CAT","7605530","MH",1))
 S ^ILS("TMP","J",k)="READ|CAT|7605530|MH|"_($L(r))_"|"_($E(r,1,24))
 S k=(k)+1
 S r=$G(^ILS("CAT","7911752","DP",1))
 S ^ILS("TMP","J",k)="READ|CAT|7911752|DP|"_($L(r))_"|"_($E(r,1,24))
 S k=(k)+1
 D AUTHADD^ILSAUTH("D990408","Stress Heading 408","Z99.408")
 S ^ILS("TMP","J",k)="AUTHADD|D990408|"_($D(^ILS("ANAME","STRESS HEADING 408","D990408")))
 S k=(k)+1
 S r=$G(^ILS("SER","1260024","MH",1))
 S ^ILS("TMP","J",k)="READ|SER|1260024|MH|"_($L(r))_"|"_($E(r,1,24))
 S k=(k)+1
 S r=$G(^ILS("CAT","7609600","BTI",1))
 S ^ILS("TMP","J",k)="READ|CAT|7609600|BTI|"_($L(r))_"|"_($E(r,1,24))
 S k=(k)+1
 S r=$G(^ILS("CAT","7705180","MH",1))
 S ^ILS("TMP","J",k)="READ|CAT|7705180|MH|"_($L(r))_"|"_($E(r,1,24))
 S k=(k)+1
 S r=$G(^ILS("CAT","7508397","PB",1))
 S ^ILS("TMP","J",k)="READ|CAT|7508397|PB|"_($L(r))_"|"_($E(r,1,24))
 S k=(k)+1
 D PARSE^ILSREC("90000413","CAT","ID - 90000413"_$C(10)_"BTI - Stress Title 413"_$C(10)_"AU - Tester, Ann"_$C(10)_"MH - Genomics")
 S ^ILS("TMP","J",k)="CREATE|90000413|"_$G(^ILS("TMP","CNT"))
 S k=(k)+1
 S r=$$DISPATCH^ILSTUI("MH DIABETES MELLITUS.")
 S ^ILS("TMP","J",k)="SEARCH|MH_DIABETES_MELLITUS.|"_($L(r))_"|"_($E(r,1,40))
 S k=(k)+1
 D PARSE^ILSREC("90000415","CAT","ID - 90000415"_$C(10)_"BTI - Stress Title 415"_$C(10)_"AU - Tester, Ann"_$C(10)_"MH - Public Health"_$C(10)_"MH - Diabetes Mellitus.")
 S ^ILS("TMP","J",k)="CREATE|90000415|"_$G(^ILS("TMP","CNT"))
 S k=(k)+1
 D PARSE^ILSREC("90000416","CAT","ID - 90000416"_$C(10)_"BTI - Stress Title 416"_$C(10)_"AU - Tester, Ann"_$C(10)_"MH - Public Health")
 S ^ILS("TMP","J",k)="CREATE|90000416|"_$G(^ILS("TMP","CNT"))
 S k=(k)+1
 D PARSE^ILSREC("90000417","CAT","ID - 90000417"_$C(10)_"BTI - Stress Title 417"_$C(10)_"AU - Tester, Ann"_$C(10)_"MH - Diabetes Mellitus."_$C(10)_"MH - Genomics"_$C(10)_"MH - Diabetes Mellitus.")
 S ^ILS("TMP","J",k)="CREATE|90000417|"_$G(^ILS("TMP","CNT"))
 S k=(k)+1
 S r=$$VALIDATE^ILSAUTH("7802251","CAT")
 S ^ILS("TMP","J",k)="VAL|7802251|"_(r)
 S k=(k)+1
 D PUT^ILSREC("90000419","CAT","DP",1,"2026")
 S ^ILS("TMP","J",k)="UPD|90000419|"_($D(^ILS("CAT","90000419","DP",1)))
 S k=(k)+1
 S p=$D(^ILS("CAT","90000420"))
 D KILLREC^ILSREC("90000420","CAT")
 S ^ILS("TMP","J",k)="DEL|90000420|"_(p)_"->"_($D(^ILS("CAT","90000420")))
 S k=(k)+1
 S r=$$DISPATCH^ILSTUI("HELP")
 S ^ILS("TMP","J",k)="SEARCH|HELP|"_($L(r))_"|"_($E(r,1,40))
 S k=(k)+1
 S r=$$VALIDATE^ILSAUTH("7802251","CAT")
 S ^ILS("TMP","J",k)="VAL|7802251|"_(r)
 S k=(k)+1
 D PARSE^ILSREC("90000423","CAT","ID - 90000423"_$C(10)_"BTI - Stress Title 423"_$C(10)_"AU - Tester, Ann"_$C(10)_"MH - Public Health"_$C(10)_"MH - Public Health")
 S ^ILS("TMP","J",k)="CREATE|90000423|"_$G(^ILS("TMP","CNT"))
 S k=(k)+1
 S r=$$DISPATCH^ILSTUI("AUTH D003920")
 S ^ILS("TMP","J",k)="SEARCH|AUTH_D003920|"_($L(r))_"|"_($E(r,1,40))
 S k=(k)+1
 S r=$G(^ILS("CAT","1267066","PB",1))
 S ^ILS("TMP","J",k)="READ|CAT|1267066|PB|"_($L(r))_"|"_($E(r,1,24))
 S k=(k)+1
 D SEQPUT^ILSREC("1267372","CAT","MH","Stress Heading 426")
 S ^ILS("TMP","J",k)="SEQPUT|1267372"
 S k=(k)+1
 S r=$$DISPATCH^ILSTUI("LEDGER")
 S ^ILS("TMP","J",k)="SEARCH|LEDGER|"_($L(r))_"|"_($E(r,1,40))
 S k=(k)+1
 S r=$$VALIDATE^ILSAUTH("90000428","CAT")
 S ^ILS("TMP","J",k)="VAL|90000428|"_(r)
 S k=(k)+1
 D PARSE^ILSREC("90000429","CAT","ID - 90000429"_$C(10)_"BTI - Stress Title 429"_$C(10)_"AU - Tester, Ann"_$C(10)_"MH - Diabetes Mellitus."_$C(10)_"MH - Public Health"_$C(10)_"MH - Medical Informatics")
 S ^ILS("TMP","J",k)="CREATE|90000429|"_$G(^ILS("TMP","CNT"))
 S k=(k)+1
 S r=$G(^ILS("CAT","1267066","DP",1))
 S ^ILS("TMP","J",k)="READ|CAT|1267066|DP|"_($L(r))_"|"_($E(r,1,24))
 S k=(k)+1
 D PARSE^ILSREC("90000431","CAT","ID - 90000431"_$C(10)_"BTI - Stress Title 431"_$C(10)_"AU - Tester, Ann"_$C(10)_"MH - Genomics"_$C(10)_"MH - Medical Informatics")
 S ^ILS("TMP","J",k)="CREATE|90000431|"_$G(^ILS("TMP","CNT"))
 S k=(k)+1
 S r=$$DISPATCH^ILSTUI("MH GENOMICS")
 S ^ILS("TMP","J",k)="SEARCH|MH_GENOMICS|"_($L(r))_"|"_($E(r,1,40))
 S k=(k)+1
 S r=$G(^ILS("CAT","7807107","MH",1))
 S ^ILS("TMP","J",k)="READ|CAT|7807107|MH|"_($L(r))_"|"_($E(r,1,24))
 S k=(k)+1
 D PARSE^ILSREC("90000434","CAT","ID - 90000434"_$C(10)_"BTI - Stress Title 434"_$C(10)_"AU - Tester, Ann"_$C(10)_"MH - Public Health"_$C(10)_"MH - Quantum Bibliography")
 S ^ILS("TMP","J",k)="CREATE|90000434|"_$G(^ILS("TMP","CNT"))
 S k=(k)+1
 S r=$G(^ILS("CAT","7909441","BTI",1))
 S ^ILS("TMP","J",k)="READ|CAT|7909441|BTI|"_($L(r))_"|"_($E(r,1,24))
 S k=(k)+1
 D PUT^ILSREC("90000436","CAT","DP",1,"2026")
 S ^ILS("TMP","J",k)="UPD|90000436|"_($D(^ILS("CAT","90000436","DP",1)))
 S k=(k)+1
 D PARSE^ILSREC("90000437","CAT","ID - 90000437"_$C(10)_"BTI - Stress Title 437"_$C(10)_"AU - Tester, Ann"_$C(10)_"MH - Quantum Bibliography"_$C(10)_"MH - Public Health"_$C(10)_"MH - Public Health")
 S ^ILS("TMP","J",k)="CREATE|90000437|"_$G(^ILS("TMP","CNT"))
 S k=(k)+1
 D SEQPUT^ILSREC("90000438","CAT","MH","Stress Heading 438")
 S ^ILS("TMP","J",k)="SEQPUT|90000438"
 S k=(k)+1
 S p=$D(^ILS("CAT","7901827"))
 D KILLREC^ILSREC("7901827","CAT")
 S ^ILS("TMP","J",k)="DEL|7901827|"_(p)_"->"_($D(^ILS("CAT","7901827")))
 S k=(k)+1
 S r=$$DISPATCH^ILSTUI("AUTH D003920")
 S ^ILS("TMP","J",k)="SEARCH|AUTH_D003920|"_($L(r))_"|"_($E(r,1,40))
 S k=(k)+1
 S r=$$DISPATCH^ILSTUI("LIST")
 S ^ILS("TMP","J",k)="SEARCH|LIST|"_($L(r))_"|"_($E(r,1,40))
 S k=(k)+1
 D PUT^ILSREC("7808791","CAT","DP",1,"2026")
 S ^ILS("TMP","J",k)="UPD|7808791|"_($D(^ILS("CAT","7808791","DP",1)))
 S k=(k)+1
 D SEQPUT^ILSREC("90000443","CAT","MH","Stress Heading 443")
 S ^ILS("TMP","J",k)="SEQPUT|90000443"
 S k=(k)+1
 D SEQPUT^ILSREC("90000444","CAT","MH","Stress Heading 444")
 S ^ILS("TMP","J",k)="SEQPUT|90000444"
 S k=(k)+1
 S r=$$DISPATCH^ILSTUI("SHOW CAT 8000583")
 S ^ILS("TMP","J",k)="SEARCH|SHOW_CAT_8000583|"_($L(r))_"|"_($E(r,1,40))
 S k=(k)+1
 S r=$$DISPATCH^ILSTUI("MH GENOMICS")
 S ^ILS("TMP","J",k)="SEARCH|MH_GENOMICS|"_($L(r))_"|"_($E(r,1,40))
 S k=(k)+1
 D PARSE^ILSREC("90000447","CAT","ID - 90000447"_$C(10)_"BTI - Stress Title 447"_$C(10)_"AU - Tester, Ann"_$C(10)_"MH - Public Health")
 S ^ILS("TMP","J",k)="CREATE|90000447|"_$G(^ILS("TMP","CNT"))
 S k=(k)+1
 S p=$D(^ILS("CAT","7505764"))
 D KILLREC^ILSREC("7505764","CAT")
 S ^ILS("TMP","J",k)="DEL|7505764|"_(p)_"->"_($D(^ILS("CAT","7505764")))
 S k=(k)+1
 S r=$$VALIDATE^ILSAUTH("7508397","CAT")
 S ^ILS("TMP","J",k)="VAL|7508397|"_(r)
 S k=(k)+1
 D SEQPUT^ILSREC("8101154","CAT","MH","Stress Heading 450")
 S ^ILS("TMP","J",k)="SEQPUT|8101154"
 S k=(k)+1
 D SEQPUT^ILSREC("90000451","CAT","MH","Stress Heading 451")
 S ^ILS("TMP","J",k)="SEQPUT|90000451"
 S k=(k)+1
 S p=$D(^ILS("CAT","90000452"))
 D KILLREC^ILSREC("90000452","CAT")
 S ^ILS("TMP","J",k)="DEL|90000452|"_(p)_"->"_($D(^ILS("CAT","90000452")))
 S k=(k)+1
 S r=$$DISPATCH^ILSTUI("FIND DIABETES")
 S ^ILS("TMP","J",k)="SEARCH|FIND_DIABETES|"_($L(r))_"|"_($E(r,1,40))
 S k=(k)+1
 D SEQPUT^ILSREC("90000454","CAT","MH","Stress Heading 454")
 S ^ILS("TMP","J",k)="SEQPUT|90000454"
 S k=(k)+1
 D PARSE^ILSREC("90000455","CAT","ID - 90000455"_$C(10)_"BTI - Stress Title 455"_$C(10)_"AU - Tester, Ann"_$C(10)_"MH - Genomics"_$C(10)_"MH - Quantum Bibliography")
 S ^ILS("TMP","J",k)="CREATE|90000455|"_$G(^ILS("TMP","CNT"))
 S k=(k)+1
 S r=$G(^ILS("SER","1260665","MH",1))
 S ^ILS("TMP","J",k)="READ|SER|1260665|MH|"_($L(r))_"|"_($E(r,1,24))
 S k=(k)+1
 D AUTHADD^ILSAUTH("D990457","Stress Heading 457","Z99.457")
 S ^ILS("TMP","J",k)="AUTHADD|D990457|"_($D(^ILS("ANAME","STRESS HEADING 457","D990457")))
 S k=(k)+1
 D PUT^ILSREC("7808791","CAT","DP",1,"2026")
 S ^ILS("TMP","J",k)="UPD|7808791|"_($D(^ILS("CAT","7808791","DP",1)))
 S k=(k)+1
 S r=$$VALIDATE^ILSAUTH("90000459","CAT")
 S ^ILS("TMP","J",k)="VAL|90000459|"_(r)
 S k=(k)+1
 S p=$D(^ILS("CAT","8000583"))
 D KILLREC^ILSREC("8000583","CAT")
 S ^ILS("TMP","J",k)="DEL|8000583|"_(p)_"->"_($D(^ILS("CAT","8000583")))
 S k=(k)+1
 S p=$D(^ILS("CAT","90000461"))
 D KILLREC^ILSREC("90000461","CAT")
 S ^ILS("TMP","J",k)="DEL|90000461|"_(p)_"->"_($D(^ILS("CAT","90000461")))
 S k=(k)+1
 S r=$G(^ILS("CAT","7703942","MH",1))
 S ^ILS("TMP","J",k)="READ|CAT|7703942|MH|"_($L(r))_"|"_($E(r,1,24))
 S k=(k)+1
 S r=$$DISPATCH^ILSTUI("FIND DIABETES")
 S ^ILS("TMP","J",k)="SEARCH|FIND_DIABETES|"_($L(r))_"|"_($E(r,1,40))
 S k=(k)+1
 S r=$$DISPATCH^ILSTUI("ISSN 0742-3071")
 S ^ILS("TMP","J",k)="SEARCH|ISSN_0742-3071|"_($L(r))_"|"_($E(r,1,40))
 S k=(k)+1
 S r=$G(^ILS("CAT","1275455","MH",1))
 S ^ILS("TMP","J",k)="READ|CAT|1275455|MH|"_($L(r))_"|"_($E(r,1,24))
 S k=(k)+1
 S p=$D(^ILS("CAT","8101154"))
 D KILLREC^ILSREC("8101154","CAT")
 S ^ILS("TMP","J",k)="DEL|8101154|"_(p)_"->"_($D(^ILS("CAT","8101154")))
 S k=(k)+1
 D PARSE^ILSREC("90000467","CAT","ID - 90000467"_$C(10)_"BTI - Stress Title 467"_$C(10)_"AU - Tester, Ann"_$C(10)_"MH - Medical Informatics"_$C(10)_"MH - Diabetes Mellitus.")
 S ^ILS("TMP","J",k)="CREATE|90000467|"_$G(^ILS("TMP","CNT"))
 S k=(k)+1
 D SEQPUT^ILSREC("7505764","CAT","MH","Stress Heading 468")
 S ^ILS("TMP","J",k)="SEQPUT|7505764"
 S k=(k)+1
 S p=$D(^ILS("CAT","90000469"))
 D KILLREC^ILSREC("90000469","CAT")
 S ^ILS("TMP","J",k)="DEL|90000469|"_(p)_"->"_($D(^ILS("CAT","90000469")))
 S k=(k)+1
 S r=$G(^ILS("CAT","7609600","AU",1))
 S ^ILS("TMP","J",k)="READ|CAT|7609600|AU|"_($L(r))_"|"_($E(r,1,24))
 S k=(k)+1
 S r=$G(^ILS("CAT","7505764","BTI",1))
 S ^ILS("TMP","J",k)="READ|CAT|7505764|BTI|"_($L(r))_"|"_($E(r,1,24))
 S k=(k)+1
 S r=$G(^ILS("CAT","8003963","PB",1))
 S ^ILS("TMP","J",k)="READ|CAT|8003963|PB|"_($L(r))_"|"_($E(r,1,24))
 S k=(k)+1
 D SEQPUT^ILSREC("7508397","CAT","MH","Stress Heading 473")
 S ^ILS("TMP","J",k)="SEQPUT|7508397"
 S k=(k)+1
 S r=$G(^ILS("SER","1262226","MH",1))
 S ^ILS("TMP","J",k)="READ|SER|1262226|MH|"_($L(r))_"|"_($E(r,1,24))
 S k=(k)+1
 S r=$G(^ILS("CAT","1267372","BTI",1))
 S ^ILS("TMP","J",k)="READ|CAT|1267372|BTI|"_($L(r))_"|"_($E(r,1,24))
 S k=(k)+1
 D AUTHADD^ILSAUTH("D990476","Stress Heading 476","Z99.476")
 S ^ILS("TMP","J",k)="AUTHADD|D990476|"_($D(^ILS("ANAME","STRESS HEADING 476","D990476")))
 S k=(k)+1
 D SEQPUT^ILSREC("90000477","CAT","MH","Stress Heading 477")
 S ^ILS("TMP","J",k)="SEQPUT|90000477"
 S k=(k)+1
 S r=$$DISPATCH^ILSTUI("MH DIABETES MELLITUS.")
 S ^ILS("TMP","J",k)="SEARCH|MH_DIABETES_MELLITUS.|"_($L(r))_"|"_($E(r,1,40))
 S k=(k)+1
 D PARSE^ILSREC("90000479","CAT","ID - 90000479"_$C(10)_"BTI - Stress Title 479"_$C(10)_"AU - Tester, Ann"_$C(10)_"MH - Genomics")
 S ^ILS("TMP","J",k)="CREATE|90000479|"_$G(^ILS("TMP","CNT"))
 S k=(k)+1
 D PARSE^ILSREC("90000480","CAT","ID - 90000480"_$C(10)_"BTI - Stress Title 480"_$C(10)_"AU - Tester, Ann"_$C(10)_"MH - Medical Informatics"_$C(10)_"MH - Quantum Bibliography"_$C(10)_"MH - Genomics")
 S ^ILS("TMP","J",k)="CREATE|90000480|"_$G(^ILS("TMP","CNT"))
 S k=(k)+1
 D PARSE^ILSREC("90000481","CAT","ID - 90000481"_$C(10)_"BTI - Stress Title 481"_$C(10)_"AU - Tester, Ann"_$C(10)_"MH - Medical Informatics"_$C(10)_"MH - Medical Informatics")
 S ^ILS("TMP","J",k)="CREATE|90000481|"_$G(^ILS("TMP","CNT"))
 S k=(k)+1
 D PARSE^ILSREC("90000482","CAT","ID - 90000482"_$C(10)_"BTI - Stress Title 482"_$C(10)_"AU - Tester, Ann"_$C(10)_"MH - Medical Informatics"_$C(10)_"MH - Diabetes Mellitus."_$C(10)_"MH - Diabetes Mellitus.")
 S ^ILS("TMP","J",k)="CREATE|90000482|"_$G(^ILS("TMP","CNT"))
 S k=(k)+1
 D AUTHADD^ILSAUTH("D990483","Stress Heading 483","Z99.483")
 S ^ILS("TMP","J",k)="AUTHADD|D990483|"_($D(^ILS("ANAME","STRESS HEADING 483","D990483")))
 S k=(k)+1
 D PARSE^ILSREC("90000484","CAT","ID - 90000484"_$C(10)_"BTI - Stress Title 484"_$C(10)_"AU - Tester, Ann"_$C(10)_"MH - Diabetes Mellitus."_$C(10)_"MH - Medical Informatics")
 S ^ILS("TMP","J",k)="CREATE|90000484|"_$G(^ILS("TMP","CNT"))
 S k=(k)+1
 S r=$G(^ILS("CAT","1267372","MH",1))
 S ^ILS("TMP","J",k)="READ|CAT|1267372|MH|"_($L(r))_"|"_($E(r,1,24))
 S k=(k)+1
 S r=$$VALIDATE^ILSAUTH("7807107","CAT")
 S ^ILS("TMP","J",k)="VAL|7807107|"_(r)
 S k=(k)+1
 S r=$$DISPATCH^ILSTUI("RELATED D003920")
 S ^ILS("TMP","J",k)="SEARCH|RELATED_D003920|"_($L(r))_"|"_($E(r,1,40))
 S k=(k)+1
 S r=$G(^ILS("CAT","7911752","DP",1))
 S ^ILS("TMP","J",k)="READ|CAT|7911752|DP|"_($L(r))_"|"_($E(r,1,24))
 S k=(k)+1
 S r=$$VALIDATE^ILSAUTH("1264327","CAT")
 S ^ILS("TMP","J",k)="VAL|1264327|"_(r)
 S k=(k)+1
 S r=$G(^ILS("CAT","7505764","BTI",1))
 S ^ILS("TMP","J",k)="READ|CAT|7505764|BTI|"_($L(r))_"|"_($E(r,1,24))
 S k=(k)+1
 D PUT^ILSREC("90000491","CAT","DP",1,"2026")
 S ^ILS("TMP","J",k)="UPD|90000491|"_($D(^ILS("CAT","90000491","DP",1)))
 S k=(k)+1
 D PARSE^ILSREC("90000492","CAT","ID - 90000492"_$C(10)_"BTI - Stress Title 492"_$C(10)_"AU - Tester, Ann"_$C(10)_"MH - Public Health"_$C(10)_"MH - Diabetes Mellitus."_$C(10)_"MH - Quantum Bibliography")
 S ^ILS("TMP","J",k)="CREATE|90000492|"_$G(^ILS("TMP","CNT"))
 S k=(k)+1
 S r=$$VALIDATE^ILSAUTH("7502500","CAT")
 S ^ILS("TMP","J",k)="VAL|7502500|"_(r)
 S k=(k)+1
 D SEQPUT^ILSREC("8101154","CAT","MH","Stress Heading 494")
 S ^ILS("TMP","J",k)="SEQPUT|8101154"
 S k=(k)+1
 D PARSE^ILSREC("90000495","CAT","ID - 90000495"_$C(10)_"BTI - Stress Title 495"_$C(10)_"AU - Tester, Ann"_$C(10)_"MH - Genomics")
 S ^ILS("TMP","J",k)="CREATE|90000495|"_$G(^ILS("TMP","CNT"))
 S k=(k)+1
 D PUT^ILSREC("90000496","CAT","DP",1,"2026")
 S ^ILS("TMP","J",k)="UPD|90000496|"_($D(^ILS("CAT","90000496","DP",1)))
 S k=(k)+1
 S r=$G(^ILS("CAT","7808791","DP",1))
 S ^ILS("TMP","J",k)="READ|CAT|7808791|DP|"_($L(r))_"|"_($E(r,1,24))
 S k=(k)+1
 D AUTHADD^ILSAUTH("D990498","Stress Heading 498","Z99.498")
 S ^ILS("TMP","J",k)="AUTHADD|D990498|"_($D(^ILS("ANAME","STRESS HEADING 498","D990498")))
 S k=(k)+1
 D SEQPUT^ILSREC("7609600","CAT","MH","Stress Heading 499")
 S ^ILS("TMP","J",k)="SEQPUT|7609600"
 S k=(k)+1
 D PARSE^ILSREC("90000500","CAT","ID - 90000500"_$C(10)_"BTI - Stress Title 500"_$C(10)_"AU - Tester, Ann"_$C(10)_"MH - Public Health"_$C(10)_"MH - Public Health"_$C(10)_"MH - Genomics")
 S ^ILS("TMP","J",k)="CREATE|90000500|"_$G(^ILS("TMP","CNT"))
 S k=(k)+1
 D SEQPUT^ILSREC("7703942","CAT","MH","Stress Heading 501")
 S ^ILS("TMP","J",k)="SEQPUT|7703942"
 S k=(k)+1
 S p=$D(^ILS("CAT","7502500"))
 D KILLREC^ILSREC("7502500","CAT")
 S ^ILS("TMP","J",k)="DEL|7502500|"_(p)_"->"_($D(^ILS("CAT","7502500")))
 S k=(k)+1
 S r=$G(^ILS("CAT","7807107","PB",1))
 S ^ILS("TMP","J",k)="READ|CAT|7807107|PB|"_($L(r))_"|"_($E(r,1,24))
 S k=(k)+1
 D PUT^ILSREC("90000504","CAT","DP",1,"2026")
 S ^ILS("TMP","J",k)="UPD|90000504|"_($D(^ILS("CAT","90000504","DP",1)))
 S k=(k)+1
 S r=$$DISPATCH^ILSTUI("FIND DIABETES")
 S ^ILS("TMP","J",k)="SEARCH|FIND_DIABETES|"_($L(r))_"|"_($E(r,1,40))
 S k=(k)+1
 S r=$G(^ILS("CAT","8000583","PB",1))
 S ^ILS("TMP","J",k)="READ|CAT|8000583|PB|"_($L(r))_"|"_($E(r,1,24))
 S k=(k)+1
 S r=$G(^ILS("CAT","7705180","AU",1))
 S ^ILS("TMP","J",k)="READ|CAT|7705180|AU|"_($L(r))_"|"_($E(r,1,24))
 S k=(k)+1
 S r=$$DISPATCH^ILSTUI("AUTH D003920")
 S ^ILS("TMP","J",k)="SEARCH|AUTH_D003920|"_($L(r))_"|"_($E(r,1,40))
 S k=(k)+1
 D SEQPUT^ILSREC("90000509","CAT","MH","Stress Heading 509")
 S ^ILS("TMP","J",k)="SEQPUT|90000509"
 S k=(k)+1
 S r=$G(^ILS("CAT","1267066","BTI",1))
 S ^ILS("TMP","J",k)="READ|CAT|1267066|BTI|"_($L(r))_"|"_($E(r,1,24))
 S k=(k)+1
 S r=$$DISPATCH^ILSTUI("LIST")
 S ^ILS("TMP","J",k)="SEARCH|LIST|"_($L(r))_"|"_($E(r,1,40))
 S k=(k)+1
 D SEQPUT^ILSREC("90000512","CAT","MH","Stress Heading 512")
 S ^ILS("TMP","J",k)="SEQPUT|90000512"
 S k=(k)+1
 D PARSE^ILSREC("90000513","CAT","ID - 90000513"_$C(10)_"BTI - Stress Title 513"_$C(10)_"AU - Tester, Ann"_$C(10)_"MH - Quantum Bibliography"_$C(10)_"MH - Genomics"_$C(10)_"MH - Diabetes Mellitus.")
 S ^ILS("TMP","J",k)="CREATE|90000513|"_$G(^ILS("TMP","CNT"))
 S k=(k)+1
 D PARSE^ILSREC("90000514","CAT","ID - 90000514"_$C(10)_"BTI - Stress Title 514"_$C(10)_"AU - Tester, Ann"_$C(10)_"MH - Public Health"_$C(10)_"MH - Public Health"_$C(10)_"MH - Quantum Bibliography")
 S ^ILS("TMP","J",k)="CREATE|90000514|"_$G(^ILS("TMP","CNT"))
 S k=(k)+1
 S p=$D(^ILS("CAT","1302032"))
 D KILLREC^ILSREC("1302032","CAT")
 S ^ILS("TMP","J",k)="DEL|1302032|"_(p)_"->"_($D(^ILS("CAT","1302032")))
 S k=(k)+1
 S r=$$DISPATCH^ILSTUI("AUTH D003920")
 S ^ILS("TMP","J",k)="SEARCH|AUTH_D003920|"_($L(r))_"|"_($E(r,1,40))
 S k=(k)+1
 D SEQPUT^ILSREC("90000517","CAT","MH","Stress Heading 517")
 S ^ILS("TMP","J",k)="SEQPUT|90000517"
 S k=(k)+1
 S r=$G(^ILS("CAT","7505764","BTI",1))
 S ^ILS("TMP","J",k)="READ|CAT|7505764|BTI|"_($L(r))_"|"_($E(r,1,24))
 S k=(k)+1
 D PARSE^ILSREC("90000519","CAT","ID - 90000519"_$C(10)_"BTI - Stress Title 519"_$C(10)_"AU - Tester, Ann"_$C(10)_"MH - Quantum Bibliography")
 S ^ILS("TMP","J",k)="CREATE|90000519|"_$G(^ILS("TMP","CNT"))
 S k=(k)+1
 S r=$$DISPATCH^ILSTUI("RELATED D003920")
 S ^ILS("TMP","J",k)="SEARCH|RELATED_D003920|"_($L(r))_"|"_($E(r,1,40))
 S k=(k)+1
 D PUT^ILSREC("90000521","CAT","DP",1,"2026")
 S ^ILS("TMP","J",k)="UPD|90000521|"_($D(^ILS("CAT","90000521","DP",1)))
 S k=(k)+1
 S r=$$DISPATCH^ILSTUI("SHOW SER 1260056")
 S ^ILS("TMP","J",k)="SEARCH|SHOW_SER_1260056|"_($L(r))_"|"_($E(r,1,40))
 S k=(k)+1
 D PARSE^ILSREC("90000523","CAT","ID - 90000523"_$C(10)_"BTI - Stress Title 523"_$C(10)_"AU - Tester, Ann"_$C(10)_"MH - Quantum Bibliography")
 S ^ILS("TMP","J",k)="CREATE|90000523|"_$G(^ILS("TMP","CNT"))
 S k=(k)+1
 D PARSE^ILSREC("90000524","CAT","ID - 90000524"_$C(10)_"BTI - Stress Title 524"_$C(10)_"AU - Tester, Ann"_$C(10)_"MH - Quantum Bibliography"_$C(10)_"MH - Genomics"_$C(10)_"MH - Public Health")
 S ^ILS("TMP","J",k)="CREATE|90000524|"_$G(^ILS("TMP","CNT"))
 S k=(k)+1
 S r=$$DISPATCH^ILSTUI("SHOW SER 1260767")
 S ^ILS("TMP","J",k)="SEARCH|SHOW_SER_1260767|"_($L(r))_"|"_($E(r,1,40))
 S k=(k)+1
 S r=$$DISPATCH^ILSTUI("ISSN 0742-3071")
 S ^ILS("TMP","J",k)="SEARCH|ISSN_0742-3071|"_($L(r))_"|"_($E(r,1,40))
 S k=(k)+1
 D PUT^ILSREC("90000527","CAT","DP",1,"2026")
 S ^ILS("TMP","J",k)="UPD|90000527|"_($D(^ILS("CAT","90000527","DP",1)))
 S k=(k)+1
 S r=$G(^ILS("CAT","7503289","AU",1))
 S ^ILS("TMP","J",k)="READ|CAT|7503289|AU|"_($L(r))_"|"_($E(r,1,24))
 S k=(k)+1
 D PARSE^ILSREC("90000529","CAT","ID - 90000529"_$C(10)_"BTI - Stress Title 529"_$C(10)_"AU - Tester, Ann"_$C(10)_"MH - Genomics"_$C(10)_"MH - Public Health")
 S ^ILS("TMP","J",k)="CREATE|90000529|"_$G(^ILS("TMP","CNT"))
 S k=(k)+1
 S r=$$DISPATCH^ILSTUI("AUTH D003920")
 S ^ILS("TMP","J",k)="SEARCH|AUTH_D003920|"_($L(r))_"|"_($E(r,1,40))
 S k=(k)+1
 S r=$$VALIDATE^ILSAUTH("1267372","CAT")
 S ^ILS("TMP","J",k)="VAL|1267372|"_(r)
 S k=(k)+1
 D PARSE^ILSREC("90000532","CAT","ID - 90000532"_$C(10)_"BTI - Stress Title 532"_$C(10)_"AU - Tester, Ann"_$C(10)_"MH - Quantum Bibliography"_$C(10)_"MH - Medical Informatics")
 S ^ILS("TMP","J",k)="CREATE|90000532|"_$G(^ILS("TMP","CNT"))
 S k=(k)+1
 S r=$G(^ILS("CAT","7901827","BTI",1))
 S ^ILS("TMP","J",k)="READ|CAT|7901827|BTI|"_($L(r))_"|"_($E(r,1,24))
 S k=(k)+1
 D PARSE^ILSREC("90000534","CAT","ID - 90000534"_$C(10)_"BTI - Stress Title 534"_$C(10)_"AU - Tester, Ann"_$C(10)_"MH - Genomics"_$C(10)_"MH - Quantum Bibliography")
 S ^ILS("TMP","J",k)="CREATE|90000534|"_$G(^ILS("TMP","CNT"))
 S k=(k)+1
 S r=$G(^ILS("CAT","1302032","MH",1))
 S ^ILS("TMP","J",k)="READ|CAT|1302032|MH|"_($L(r))_"|"_($E(r,1,24))
 S k=(k)+1
 S r=$$DISPATCH^ILSTUI("FIND DIABETES")
 S ^ILS("TMP","J",k)="SEARCH|FIND_DIABETES|"_($L(r))_"|"_($E(r,1,40))
 S k=(k)+1
 S r=$G(^ILS("SER","1256232","STI",1))
 S ^ILS("TMP","J",k)="READ|SER|1256232|STI|"_($L(r))_"|"_($E(r,1,24))
 S k=(k)+1
 S r=$$DISPATCH^ILSTUI("ISSN 0742-3071")
 S ^ILS("TMP","J",k)="SEARCH|ISSN_0742-3071|"_($L(r))_"|"_($E(r,1,40))
 S k=(k)+1
 S r=$G(^ILS("SER","1260223","MH",1))
 S ^ILS("TMP","J",k)="READ|SER|1260223|MH|"_($L(r))_"|"_($E(r,1,24))
 S k=(k)+1
 S p=$D(^ILS("CAT","90000540"))
 D KILLREC^ILSREC("90000540","CAT")
 S ^ILS("TMP","J",k)="DEL|90000540|"_(p)_"->"_($D(^ILS("CAT","90000540")))
 S k=(k)+1
 D AUTHADD^ILSAUTH("D990541","Stress Heading 541","Z99.541")
 S ^ILS("TMP","J",k)="AUTHADD|D990541|"_($D(^ILS("ANAME","STRESS HEADING 541","D990541")))
 S k=(k)+1
 S r=$$DISPATCH^ILSTUI("RELATED D003920")
 S ^ILS("TMP","J",k)="SEARCH|RELATED_D003920|"_($L(r))_"|"_($E(r,1,40))
 S k=(k)+1
 S r=$$DISPATCH^ILSTUI("HELP")
 S ^ILS("TMP","J",k)="SEARCH|HELP|"_($L(r))_"|"_($E(r,1,40))
 S k=(k)+1
 S r=$$DISPATCH^ILSTUI("FIND DIABETES")
 S ^ILS("TMP","J",k)="SEARCH|FIND_DIABETES|"_($L(r))_"|"_($E(r,1,40))
 S k=(k)+1
 D PARSE^ILSREC("90000545","CAT","ID - 90000545"_$C(10)_"BTI - Stress Title 545"_$C(10)_"AU - Tester, Ann"_$C(10)_"MH - Medical Informatics"_$C(10)_"MH - Medical Informatics"_$C(10)_"MH - Public Health")
 S ^ILS("TMP","J",k)="CREATE|90000545|"_$G(^ILS("TMP","CNT"))
 S k=(k)+1
 D SEQPUT^ILSREC("90000546","CAT","MH","Stress Heading 546")
 S ^ILS("TMP","J",k)="SEQPUT|90000546"
 S k=(k)+1
 D PARSE^ILSREC("90000547","CAT","ID - 90000547"_$C(10)_"BTI - Stress Title 547"_$C(10)_"AU - Tester, Ann"_$C(10)_"MH - Medical Informatics")
 S ^ILS("TMP","J",k)="CREATE|90000547|"_$G(^ILS("TMP","CNT"))
 S k=(k)+1
 D AUTHADD^ILSAUTH("D990548","Stress Heading 548","Z99.548")
 S ^ILS("TMP","J",k)="AUTHADD|D990548|"_($D(^ILS("ANAME","STRESS HEADING 548","D990548")))
 S k=(k)+1
 D PARSE^ILSREC("90000549","CAT","ID - 90000549"_$C(10)_"BTI - Stress Title 549"_$C(10)_"AU - Tester, Ann"_$C(10)_"MH - Quantum Bibliography"_$C(10)_"MH - Medical Informatics"_$C(10)_"MH - Genomics")
 S ^ILS("TMP","J",k)="CREATE|90000549|"_$G(^ILS("TMP","CNT"))
 S k=(k)+1
 S r=$G(^ILS("CAT","7508397","PB",1))
 S ^ILS("TMP","J",k)="READ|CAT|7508397|PB|"_($L(r))_"|"_($E(r,1,24))
 S k=(k)+1
 S r=$G(^ILS("SER","1262006","ISS",1))
 S ^ILS("TMP","J",k)="READ|SER|1262006|ISS|"_($L(r))_"|"_($E(r,1,24))
 S k=(k)+1
 D AUTHADD^ILSAUTH("D990552","Stress Heading 552","Z99.552")
 S ^ILS("TMP","J",k)="AUTHADD|D990552|"_($D(^ILS("ANAME","STRESS HEADING 552","D990552")))
 S k=(k)+1
 D PARSE^ILSREC("90000553","CAT","ID - 90000553"_$C(10)_"BTI - Stress Title 553"_$C(10)_"AU - Tester, Ann"_$C(10)_"MH - Diabetes Mellitus.")
 S ^ILS("TMP","J",k)="CREATE|90000553|"_$G(^ILS("TMP","CNT"))
 S k=(k)+1
 S r=$G(^ILS("CAT","7503289","PB",1))
 S ^ILS("TMP","J",k)="READ|CAT|7503289|PB|"_($L(r))_"|"_($E(r,1,24))
 S k=(k)+1
 S r=$$DISPATCH^ILSTUI("AUTH D003920")
 S ^ILS("TMP","J",k)="SEARCH|AUTH_D003920|"_($L(r))_"|"_($E(r,1,40))
 S k=(k)+1
 D SEQPUT^ILSREC("90000556","CAT","MH","Stress Heading 556")
 S ^ILS("TMP","J",k)="SEQPUT|90000556"
 S k=(k)+1
 D PARSE^ILSREC("90000557","CAT","ID - 90000557"_$C(10)_"BTI - Stress Title 557"_$C(10)_"AU - Tester, Ann"_$C(10)_"MH - Medical Informatics"_$C(10)_"MH - Medical Informatics")
 S ^ILS("TMP","J",k)="CREATE|90000557|"_$G(^ILS("TMP","CNT"))
 S k=(k)+1
 D PARSE^ILSREC("90000558","CAT","ID - 90000558"_$C(10)_"BTI - Stress Title 558"_$C(10)_"AU - Tester, Ann"_$C(10)_"MH - Quantum Bibliography")
 S ^ILS("TMP","J",k)="CREATE|90000558|"_$G(^ILS("TMP","CNT"))
 S k=(k)+1
 D PARSE^ILSREC("90000559","CAT","ID - 90000559"_$C(10)_"BTI - Stress Title 559"_$C(10)_"AU - Tester, Ann"_$C(10)_"MH - Diabetes Mellitus."_$C(10)_"MH - Diabetes Mellitus.")
 S ^ILS("TMP","J",k)="CREATE|90000559|"_$G(^ILS("TMP","CNT"))
 S k=(k)+1
 D PARSE^ILSREC("90000560","CAT","ID - 90000560"_$C(10)_"BTI - Stress Title 560"_$C(10)_"AU - Tester, Ann"_$C(10)_"MH - Quantum Bibliography"_$C(10)_"MH - Medical Informatics")
 S ^ILS("TMP","J",k)="CREATE|90000560|"_$G(^ILS("TMP","CNT"))
 S k=(k)+1
 S r=$G(^ILS("SER","1263300","STI",1))
 S ^ILS("TMP","J",k)="READ|SER|1263300|STI|"_($L(r))_"|"_($E(r,1,24))
 S k=(k)+1
 D SEQPUT^ILSREC("90000562","CAT","MH","Stress Heading 562")
 S ^ILS("TMP","J",k)="SEQPUT|90000562"
 S k=(k)+1
 D PARSE^ILSREC("90000563","CAT","ID - 90000563"_$C(10)_"BTI - Stress Title 563"_$C(10)_"AU - Tester, Ann"_$C(10)_"MH - Quantum Bibliography")
 S ^ILS("TMP","J",k)="CREATE|90000563|"_$G(^ILS("TMP","CNT"))
 S k=(k)+1
 S r=$$VALIDATE^ILSAUTH("7508397","CAT")
 S ^ILS("TMP","J",k)="VAL|7508397|"_(r)
 S k=(k)+1
 S r=$G(^ILS("CAT","7703942","MH",1))
 S ^ILS("TMP","J",k)="READ|CAT|7703942|MH|"_($L(r))_"|"_($E(r,1,24))
 S k=(k)+1
 S r=$G(^ILS("CAT","7901827","PB",1))
 S ^ILS("TMP","J",k)="READ|CAT|7901827|PB|"_($L(r))_"|"_($E(r,1,24))
 S k=(k)+1
 D PARSE^ILSREC("90000567","CAT","ID - 90000567"_$C(10)_"BTI - Stress Title 567"_$C(10)_"AU - Tester, Ann"_$C(10)_"MH - Quantum Bibliography"_$C(10)_"MH - Medical Informatics")
 S ^ILS("TMP","J",k)="CREATE|90000567|"_$G(^ILS("TMP","CNT"))
 S k=(k)+1
 S p=$D(^ILS("CAT","90000568"))
 D KILLREC^ILSREC("90000568","CAT")
 S ^ILS("TMP","J",k)="DEL|90000568|"_(p)_"->"_($D(^ILS("CAT","90000568")))
 S k=(k)+1
 S r=$G(^ILS("CAT","1275455","DP",1))
 S ^ILS("TMP","J",k)="READ|CAT|1275455|DP|"_($L(r))_"|"_($E(r,1,24))
 S k=(k)+1
 D PARSE^ILSREC("90000570","CAT","ID - 90000570"_$C(10)_"BTI - Stress Title 570"_$C(10)_"AU - Tester, Ann"_$C(10)_"MH - Public Health"_$C(10)_"MH - Quantum Bibliography")
 S ^ILS("TMP","J",k)="CREATE|90000570|"_$G(^ILS("TMP","CNT"))
 S k=(k)+1
 S r=$G(^ILS("CAT","7901827","MH",1))
 S ^ILS("TMP","J",k)="READ|CAT|7901827|MH|"_($L(r))_"|"_($E(r,1,24))
 S k=(k)+1
 D PARSE^ILSREC("90000572","CAT","ID - 90000572"_$C(10)_"BTI - Stress Title 572"_$C(10)_"AU - Tester, Ann"_$C(10)_"MH - Public Health"_$C(10)_"MH - Genomics"_$C(10)_"MH - Quantum Bibliography")
 S ^ILS("TMP","J",k)="CREATE|90000572|"_$G(^ILS("TMP","CNT"))
 S k=(k)+1
 S r=$$DISPATCH^ILSTUI("RELATED D003920")
 S ^ILS("TMP","J",k)="SEARCH|RELATED_D003920|"_($L(r))_"|"_($E(r,1,40))
 S k=(k)+1
 S r=$$VALIDATE^ILSAUTH("1275455","CAT")
 S ^ILS("TMP","J",k)="VAL|1275455|"_(r)
 S k=(k)+1
 D PARSE^ILSREC("90000575","CAT","ID - 90000575"_$C(10)_"BTI - Stress Title 575"_$C(10)_"AU - Tester, Ann"_$C(10)_"MH - Quantum Bibliography")
 S ^ILS("TMP","J",k)="CREATE|90000575|"_$G(^ILS("TMP","CNT"))
 S k=(k)+1
 S r=$G(^ILS("SER","1260767","ISS",1))
 S ^ILS("TMP","J",k)="READ|SER|1260767|ISS|"_($L(r))_"|"_($E(r,1,24))
 S k=(k)+1
 D PUT^ILSREC("7807107","CAT","DP",1,"2026")
 S ^ILS("TMP","J",k)="UPD|7807107|"_($D(^ILS("CAT","7807107","DP",1)))
 S k=(k)+1
 D PARSE^ILSREC("90000578","CAT","ID - 90000578"_$C(10)_"BTI - Stress Title 578"_$C(10)_"AU - Tester, Ann"_$C(10)_"MH - Diabetes Mellitus.")
 S ^ILS("TMP","J",k)="CREATE|90000578|"_$G(^ILS("TMP","CNT"))
 S k=(k)+1
 D SEQPUT^ILSREC("90000579","CAT","MH","Stress Heading 579")
 S ^ILS("TMP","J",k)="SEQPUT|90000579"
 S k=(k)+1
 D PARSE^ILSREC("90000580","CAT","ID - 90000580"_$C(10)_"BTI - Stress Title 580"_$C(10)_"AU - Tester, Ann"_$C(10)_"MH - Diabetes Mellitus."_$C(10)_"MH - Public Health"_$C(10)_"MH - Medical Informatics")
 S ^ILS("TMP","J",k)="CREATE|90000580|"_$G(^ILS("TMP","CNT"))
 S k=(k)+1
 S r=$G(^ILS("CAT","7909441","PB",1))
 S ^ILS("TMP","J",k)="READ|CAT|7909441|PB|"_($L(r))_"|"_($E(r,1,24))
 S k=(k)+1
 S r=$$DISPATCH^ILSTUI("RELATED D003920")
 S ^ILS("TMP","J",k)="SEARCH|RELATED_D003920|"_($L(r))_"|"_($E(r,1,40))
 S k=(k)+1
 S r=$G(^ILS("CAT","7803530","BTI",1))
 S ^ILS("TMP","J",k)="READ|CAT|7803530|BTI|"_($L(r))_"|"_($E(r,1,24))
 S k=(k)+1
 S r=$G(^ILS("CAT","7705180","MH",1))
 S ^ILS("TMP","J",k)="READ|CAT|7705180|MH|"_($L(r))_"|"_($E(r,1,24))
 S k=(k)+1
 S r=$G(^ILS("SER","1262373","MH",1))
 S ^ILS("TMP","J",k)="READ|SER|1262373|MH|"_($L(r))_"|"_($E(r,1,24))
 S k=(k)+1
 S r=$$DISPATCH^ILSTUI("HELP")
 S ^ILS("TMP","J",k)="SEARCH|HELP|"_($L(r))_"|"_($E(r,1,40))
 S k=(k)+1
 S r=$$VALIDATE^ILSAUTH("90000587","CAT")
 S ^ILS("TMP","J",k)="VAL|90000587|"_(r)
 S k=(k)+1
 D SEQPUT^ILSREC("90000588","CAT","MH","Stress Heading 588")
 S ^ILS("TMP","J",k)="SEQPUT|90000588"
 S k=(k)+1
 S r=$$DISPATCH^ILSTUI("FIND DIABETES")
 S ^ILS("TMP","J",k)="SEARCH|FIND_DIABETES|"_($L(r))_"|"_($E(r,1,40))
 S k=(k)+1
 D PUT^ILSREC("90000590","CAT","DP",1,"2026")
 S ^ILS("TMP","J",k)="UPD|90000590|"_($D(^ILS("CAT","90000590","DP",1)))
 S k=(k)+1
 D SEQPUT^ILSREC("7901827","CAT","MH","Stress Heading 591")
 S ^ILS("TMP","J",k)="SEQPUT|7901827"
 S k=(k)+1
 D PARSE^ILSREC("90000592","CAT","ID - 90000592"_$C(10)_"BTI - Stress Title 592"_$C(10)_"AU - Tester, Ann"_$C(10)_"MH - Quantum Bibliography")
 S ^ILS("TMP","J",k)="CREATE|90000592|"_$G(^ILS("TMP","CNT"))
 S k=(k)+1
 S r=$G(^ILS("CAT","8003963","AU",1))
 S ^ILS("TMP","J",k)="READ|CAT|8003963|AU|"_($L(r))_"|"_($E(r,1,24))
 S k=(k)+1
 S r=$G(^ILS("SER","1263300","ISS",1))
 S ^ILS("TMP","J",k)="READ|SER|1263300|ISS|"_($L(r))_"|"_($E(r,1,24))
 S k=(k)+1
 S p=$D(^ILS("CAT","90000595"))
 D KILLREC^ILSREC("90000595","CAT")
 S ^ILS("TMP","J",k)="DEL|90000595|"_(p)_"->"_($D(^ILS("CAT","90000595")))
 S k=(k)+1
 D PARSE^ILSREC("90000596","CAT","ID - 90000596"_$C(10)_"BTI - Stress Title 596"_$C(10)_"AU - Tester, Ann"_$C(10)_"MH - Medical Informatics")
 S ^ILS("TMP","J",k)="CREATE|90000596|"_$G(^ILS("TMP","CNT"))
 S k=(k)+1
 D PARSE^ILSREC("90000597","CAT","ID - 90000597"_$C(10)_"BTI - Stress Title 597"_$C(10)_"AU - Tester, Ann"_$C(10)_"MH - Quantum Bibliography"_$C(10)_"MH - Medical Informatics")
 S ^ILS("TMP","J",k)="CREATE|90000597|"_$G(^ILS("TMP","CNT"))
 S k=(k)+1
 S r=$G(^ILS("SER","1260665","MH",1))
 S ^ILS("TMP","J",k)="READ|SER|1260665|MH|"_($L(r))_"|"_($E(r,1,24))
 S k=(k)+1
 S r=$G(^ILS("CAT","8101154","PB",1))
 S ^ILS("TMP","J",k)="READ|CAT|8101154|PB|"_($L(r))_"|"_($E(r,1,24))
 S k=(k)+1
 S r=$$DISPATCH^ILSTUI("FIND HEALTH")
 S ^ILS("TMP","J",k)="SEARCH|FIND_HEALTH|"_($L(r))_"|"_($E(r,1,40))
 S k=(k)+1
 S r=$$DISPATCH^ILSTUI("FIND HEALTH")
 S ^ILS("TMP","J",k)="SEARCH|FIND_HEALTH|"_($L(r))_"|"_($E(r,1,40))
 S k=(k)+1
 D AUTHADD^ILSAUTH("D990602","Stress Heading 602","Z99.602")
 S ^ILS("TMP","J",k)="AUTHADD|D990602|"_($D(^ILS("ANAME","STRESS HEADING 602","D990602")))
 S k=(k)+1
 D PARSE^ILSREC("90000603","CAT","ID - 90000603"_$C(10)_"BTI - Stress Title 603"_$C(10)_"AU - Tester, Ann"_$C(10)_"MH - Quantum Bibliography"_$C(10)_"MH - Public Health"_$C(10)_"MH - Quantum Bibliography")
 S ^ILS("TMP","J",k)="CREATE|90000603|"_$G(^ILS("TMP","CNT"))
 S k=(k)+1
 S r=$G(^ILS("SER","1262226","MH",1))
 S ^ILS("TMP","J",k)="READ|SER|1262226|MH|"_($L(r))_"|"_($E(r,1,24))
 S k=(k)+1
 D AUTHADD^ILSAUTH("D990605","Stress Heading 605","Z99.605")
 S ^ILS("TMP","J",k)="AUTHADD|D990605|"_($D(^ILS("ANAME","STRESS HEADING 605","D990605")))
 S k=(k)+1
 D PARSE^ILSREC("90000606","CAT","ID - 90000606"_$C(10)_"BTI - Stress Title 606"_$C(10)_"AU - Tester, Ann"_$C(10)_"MH - Medical Informatics"_$C(10)_"MH - Quantum Bibliography"_$C(10)_"MH - Quantum Bibliography")
 S ^ILS("TMP","J",k)="CREATE|90000606|"_$G(^ILS("TMP","CNT"))
 S k=(k)+1
 D SEQPUT^ILSREC("90000607","CAT","MH","Stress Heading 607")
 S ^ILS("TMP","J",k)="SEQPUT|90000607"
 S k=(k)+1
 D AUTHADD^ILSAUTH("D990608","Stress Heading 608","Z99.608")
 S ^ILS("TMP","J",k)="AUTHADD|D990608|"_($D(^ILS("ANAME","STRESS HEADING 608","D990608")))
 S k=(k)+1
 D AUTHADD^ILSAUTH("D990609","Stress Heading 609","Z99.609")
 S ^ILS("TMP","J",k)="AUTHADD|D990609|"_($D(^ILS("ANAME","STRESS HEADING 609","D990609")))
 S k=(k)+1
 D SEQPUT^ILSREC("7802251","CAT","MH","Stress Heading 610")
 S ^ILS("TMP","J",k)="SEQPUT|7802251"
 S k=(k)+1
 D PUT^ILSREC("7808791","CAT","DP",1,"2026")
 S ^ILS("TMP","J",k)="UPD|7808791|"_($D(^ILS("CAT","7808791","DP",1)))
 S k=(k)+1
 S r=$$DISPATCH^ILSTUI("ISSN 0742-3071")
 S ^ILS("TMP","J",k)="SEARCH|ISSN_0742-3071|"_($L(r))_"|"_($E(r,1,40))
 S k=(k)+1
 S r=$$DISPATCH^ILSTUI("HELP")
 S ^ILS("TMP","J",k)="SEARCH|HELP|"_($L(r))_"|"_($E(r,1,40))
 S k=(k)+1
 D PARSE^ILSREC("90000614","CAT","ID - 90000614"_$C(10)_"BTI - Stress Title 614"_$C(10)_"AU - Tester, Ann"_$C(10)_"MH - Diabetes Mellitus."_$C(10)_"MH - Diabetes Mellitus."_$C(10)_"MH - Genomics")
 S ^ILS("TMP","J",k)="CREATE|90000614|"_$G(^ILS("TMP","CNT"))
 S k=(k)+1
 D PARSE^ILSREC("90000615","CAT","ID - 90000615"_$C(10)_"BTI - Stress Title 615"_$C(10)_"AU - Tester, Ann"_$C(10)_"MH - Quantum Bibliography"_$C(10)_"MH - Genomics")
 S ^ILS("TMP","J",k)="CREATE|90000615|"_$G(^ILS("TMP","CNT"))
 S k=(k)+1
 S r=$$DISPATCH^ILSTUI("FIND DIABETES")
 S ^ILS("TMP","J",k)="SEARCH|FIND_DIABETES|"_($L(r))_"|"_($E(r,1,40))
 S k=(k)+1
 S r=$$VALIDATE^ILSAUTH("7911752","CAT")
 S ^ILS("TMP","J",k)="VAL|7911752|"_(r)
 S k=(k)+1
 S p=$D(^ILS("CAT","90000618"))
 D KILLREC^ILSREC("90000618","CAT")
 S ^ILS("TMP","J",k)="DEL|90000618|"_(p)_"->"_($D(^ILS("CAT","90000618")))
 S k=(k)+1
 S r=$G(^ILS("CAT","7508397","PB",1))
 S ^ILS("TMP","J",k)="READ|CAT|7508397|PB|"_($L(r))_"|"_($E(r,1,24))
 S k=(k)+1
 D AUTHADD^ILSAUTH("D990620","Stress Heading 620","Z99.620")
 S ^ILS("TMP","J",k)="AUTHADD|D990620|"_($D(^ILS("ANAME","STRESS HEADING 620","D990620")))
 S k=(k)+1
 D PARSE^ILSREC("90000621","CAT","ID - 90000621"_$C(10)_"BTI - Stress Title 621"_$C(10)_"AU - Tester, Ann"_$C(10)_"MH - Medical Informatics")
 S ^ILS("TMP","J",k)="CREATE|90000621|"_$G(^ILS("TMP","CNT"))
 S k=(k)+1
 D PARSE^ILSREC("90000622","CAT","ID - 90000622"_$C(10)_"BTI - Stress Title 622"_$C(10)_"AU - Tester, Ann"_$C(10)_"MH - Genomics"_$C(10)_"MH - Diabetes Mellitus."_$C(10)_"MH - Quantum Bibliography")
 S ^ILS("TMP","J",k)="CREATE|90000622|"_$G(^ILS("TMP","CNT"))
 S k=(k)+1
 S p=$D(^ILS("CAT","1267066"))
 D KILLREC^ILSREC("1267066","CAT")
 S ^ILS("TMP","J",k)="DEL|1267066|"_(p)_"->"_($D(^ILS("CAT","1267066")))
 S k=(k)+1
 S r=$$VALIDATE^ILSAUTH("7803530","CAT")
 S ^ILS("TMP","J",k)="VAL|7803530|"_(r)
 S k=(k)+1
 D PARSE^ILSREC("90000625","CAT","ID - 90000625"_$C(10)_"BTI - Stress Title 625"_$C(10)_"AU - Tester, Ann"_$C(10)_"MH - Public Health"_$C(10)_"MH - Genomics"_$C(10)_"MH - Genomics")
 S ^ILS("TMP","J",k)="CREATE|90000625|"_$G(^ILS("TMP","CNT"))
 S k=(k)+1
 D AUTHADD^ILSAUTH("D990626","Stress Heading 626","Z99.626")
 S ^ILS("TMP","J",k)="AUTHADD|D990626|"_($D(^ILS("ANAME","STRESS HEADING 626","D990626")))
 S k=(k)+1
 S r=$$DISPATCH^ILSTUI("AUTH D003920")
 S ^ILS("TMP","J",k)="SEARCH|AUTH_D003920|"_($L(r))_"|"_($E(r,1,40))
 S k=(k)+1
 S r=$$VALIDATE^ILSAUTH("7803530","CAT")
 S ^ILS("TMP","J",k)="VAL|7803530|"_(r)
 S k=(k)+1
 S p=$D(^ILS("CAT","7807107"))
 D KILLREC^ILSREC("7807107","CAT")
 S ^ILS("TMP","J",k)="DEL|7807107|"_(p)_"->"_($D(^ILS("CAT","7807107")))
 S k=(k)+1
 S r=$G(^ILS("CAT","1275455","PB",1))
 S ^ILS("TMP","J",k)="READ|CAT|1275455|PB|"_($L(r))_"|"_($E(r,1,24))
 S k=(k)+1
 D PARSE^ILSREC("90000631","CAT","ID - 90000631"_$C(10)_"BTI - Stress Title 631"_$C(10)_"AU - Tester, Ann"_$C(10)_"MH - Public Health"_$C(10)_"MH - Diabetes Mellitus.")
 S ^ILS("TMP","J",k)="CREATE|90000631|"_$G(^ILS("TMP","CNT"))
 S k=(k)+1
 D PARSE^ILSREC("90000632","CAT","ID - 90000632"_$C(10)_"BTI - Stress Title 632"_$C(10)_"AU - Tester, Ann"_$C(10)_"MH - Public Health"_$C(10)_"MH - Medical Informatics")
 S ^ILS("TMP","J",k)="CREATE|90000632|"_$G(^ILS("TMP","CNT"))
 S k=(k)+1
 S r=$$DISPATCH^ILSTUI("FIND HEALTH")
 S ^ILS("TMP","J",k)="SEARCH|FIND_HEALTH|"_($L(r))_"|"_($E(r,1,40))
 S k=(k)+1
 S p=$D(^ILS("CAT","90000634"))
 D KILLREC^ILSREC("90000634","CAT")
 S ^ILS("TMP","J",k)="DEL|90000634|"_(p)_"->"_($D(^ILS("CAT","90000634")))
 S k=(k)+1
 D PUT^ILSREC("90000635","CAT","DP",1,"2026")
 S ^ILS("TMP","J",k)="UPD|90000635|"_($D(^ILS("CAT","90000635","DP",1)))
 S k=(k)+1
 S r=$$DISPATCH^ILSTUI("FIND DIABETES")
 S ^ILS("TMP","J",k)="SEARCH|FIND_DIABETES|"_($L(r))_"|"_($E(r,1,40))
 S k=(k)+1
 S r=$G(^ILS("CAT","7506781","DP",1))
 S ^ILS("TMP","J",k)="READ|CAT|7506781|DP|"_($L(r))_"|"_($E(r,1,24))
 S k=(k)+1
 D PARSE^ILSREC("90000638","CAT","ID - 90000638"_$C(10)_"BTI - Stress Title 638"_$C(10)_"AU - Tester, Ann"_$C(10)_"MH - Public Health"_$C(10)_"MH - Public Health")
 S ^ILS("TMP","J",k)="CREATE|90000638|"_$G(^ILS("TMP","CNT"))
 S k=(k)+1
 S r=$$DISPATCH^ILSTUI("HELP")
 S ^ILS("TMP","J",k)="SEARCH|HELP|"_($L(r))_"|"_($E(r,1,40))
 S k=(k)+1
 S r=$$DISPATCH^ILSTUI("SHOW SER 1256232")
 S ^ILS("TMP","J",k)="SEARCH|SHOW_SER_1256232|"_($L(r))_"|"_($E(r,1,40))
 S k=(k)+1
 S r=$$DISPATCH^ILSTUI("LEDGER")
 S ^ILS("TMP","J",k)="SEARCH|LEDGER|"_($L(r))_"|"_($E(r,1,40))
 S k=(k)+1
 S r=$G(^ILS("CAT","8003963","PB",1))
 S ^ILS("TMP","J",k)="READ|CAT|8003963|PB|"_($L(r))_"|"_($E(r,1,24))
 S k=(k)+1
 S r=$$DISPATCH^ILSTUI("SHOW CAT 7508397")
 S ^ILS("TMP","J",k)="SEARCH|SHOW_CAT_7508397|"_($L(r))_"|"_($E(r,1,40))
 S k=(k)+1
 S r=$$DISPATCH^ILSTUI("FIND HEALTH")
 S ^ILS("TMP","J",k)="SEARCH|FIND_HEALTH|"_($L(r))_"|"_($E(r,1,40))
 S k=(k)+1
 D PARSE^ILSREC("90000645","CAT","ID - 90000645"_$C(10)_"BTI - Stress Title 645"_$C(10)_"AU - Tester, Ann"_$C(10)_"MH - Medical Informatics"_$C(10)_"MH - Public Health"_$C(10)_"MH - Quantum Bibliography")
 S ^ILS("TMP","J",k)="CREATE|90000645|"_$G(^ILS("TMP","CNT"))
 S k=(k)+1
 D SEQPUT^ILSREC("90000646","CAT","MH","Stress Heading 646")
 S ^ILS("TMP","J",k)="SEQPUT|90000646"
 S k=(k)+1
 D SEQPUT^ILSREC("90000647","CAT","MH","Stress Heading 647")
 S ^ILS("TMP","J",k)="SEQPUT|90000647"
 S k=(k)+1
 S r=$$DISPATCH^ILSTUI("HELP")
 S ^ILS("TMP","J",k)="SEARCH|HELP|"_($L(r))_"|"_($E(r,1,40))
 S k=(k)+1
 S r=$G(^ILS("SER","1257757","MH",1))
 S ^ILS("TMP","J",k)="READ|SER|1257757|MH|"_($L(r))_"|"_($E(r,1,24))
 S k=(k)+1
 D PARSE^ILSREC("90000650","CAT","ID - 90000650"_$C(10)_"BTI - Stress Title 650"_$C(10)_"AU - Tester, Ann"_$C(10)_"MH - Medical Informatics"_$C(10)_"MH - Diabetes Mellitus."_$C(10)_"MH - Medical Informatics")
 S ^ILS("TMP","J",k)="CREATE|90000650|"_$G(^ILS("TMP","CNT"))
 S k=(k)+1
 S r=$$DISPATCH^ILSTUI("FIND DIABETES")
 S ^ILS("TMP","J",k)="SEARCH|FIND_DIABETES|"_($L(r))_"|"_($E(r,1,40))
 S k=(k)+1
 S r=$$DISPATCH^ILSTUI("MH DIABETES MELLITUS.")
 S ^ILS("TMP","J",k)="SEARCH|MH_DIABETES_MELLITUS.|"_($L(r))_"|"_($E(r,1,40))
 S k=(k)+1
 D PUT^ILSREC("7807107","CAT","DP",1,"2026")
 S ^ILS("TMP","J",k)="UPD|7807107|"_($D(^ILS("CAT","7807107","DP",1)))
 S k=(k)+1
 D PARSE^ILSREC("90000654","CAT","ID - 90000654"_$C(10)_"BTI - Stress Title 654"_$C(10)_"AU - Tester, Ann"_$C(10)_"MH - Medical Informatics")
 S ^ILS("TMP","J",k)="CREATE|90000654|"_$G(^ILS("TMP","CNT"))
 S k=(k)+1
 S r=$G(^ILS("CAT","7808791","DP",1))
 S ^ILS("TMP","J",k)="READ|CAT|7808791|DP|"_($L(r))_"|"_($E(r,1,24))
 S k=(k)+1
 S r=$$DISPATCH^ILSTUI("ISSN 0742-3071")
 S ^ILS("TMP","J",k)="SEARCH|ISSN_0742-3071|"_($L(r))_"|"_($E(r,1,40))
 S k=(k)+1
 S r=$G(^ILS("SER","1262011","STI",1))
 S ^ILS("TMP","J",k)="READ|SER|1262011|STI|"_($L(r))_"|"_($E(r,1,24))
 S k=(k)+1
 S r=$$DISPATCH^ILSTUI("MH GENOMICS")
 S ^ILS("TMP","J",k)="SEARCH|MH_GENOMICS|"_($L(r))_"|"_($E(r,1,40))
 S k=(k)+1
 D PUT^ILSREC("90000659","CAT","DP",1,"2026")
 S ^ILS("TMP","J",k)="UPD|90000659|"_($D(^ILS("CAT","90000659","DP",1)))
 S k=(k)+1
 S p=$D(^ILS("CAT","90000660"))
 D KILLREC^ILSREC("90000660","CAT")
 S ^ILS("TMP","J",k)="DEL|90000660|"_(p)_"->"_($D(^ILS("CAT","90000660")))
 S k=(k)+1
 S r=$G(^ILS("CAT","7502500","AU",1))
 S ^ILS("TMP","J",k)="READ|CAT|7502500|AU|"_($L(r))_"|"_($E(r,1,24))
 S k=(k)+1
 D SEQPUT^ILSREC("90000662","CAT","MH","Stress Heading 662")
 S ^ILS("TMP","J",k)="SEQPUT|90000662"
 S k=(k)+1
 S r=$G(^ILS("SER","1260300","ISS",1))
 S ^ILS("TMP","J",k)="READ|SER|1260300|ISS|"_($L(r))_"|"_($E(r,1,24))
 S k=(k)+1
 S p=$D(^ILS("CAT","90000664"))
 D KILLREC^ILSREC("90000664","CAT")
 S ^ILS("TMP","J",k)="DEL|90000664|"_(p)_"->"_($D(^ILS("CAT","90000664")))
 S k=(k)+1
 S r=$G(^ILS("CAT","8000583","MH",1))
 S ^ILS("TMP","J",k)="READ|CAT|8000583|MH|"_($L(r))_"|"_($E(r,1,24))
 S k=(k)+1
 D PARSE^ILSREC("90000666","CAT","ID - 90000666"_$C(10)_"BTI - Stress Title 666"_$C(10)_"AU - Tester, Ann"_$C(10)_"MH - Genomics"_$C(10)_"MH - Diabetes Mellitus.")
 S ^ILS("TMP","J",k)="CREATE|90000666|"_$G(^ILS("TMP","CNT"))
 S k=(k)+1
 S r=$$VALIDATE^ILSAUTH("1302032","CAT")
 S ^ILS("TMP","J",k)="VAL|1302032|"_(r)
 S k=(k)+1
 D SEQPUT^ILSREC("1264327","CAT","MH","Stress Heading 668")
 S ^ILS("TMP","J",k)="SEQPUT|1264327"
 S k=(k)+1
 S r=$$VALIDATE^ILSAUTH("8007202","CAT")
 S ^ILS("TMP","J",k)="VAL|8007202|"_(r)
 S k=(k)+1
 S r=$$DISPATCH^ILSTUI("RELATED D003920")
 S ^ILS("TMP","J",k)="SEARCH|RELATED_D003920|"_($L(r))_"|"_($E(r,1,40))
 S k=(k)+1
 D PARSE^ILSREC("90000671","CAT","ID - 90000671"_$C(10)_"BTI - Stress Title 671"_$C(10)_"AU - Tester, Ann"_$C(10)_"MH - Public Health"_$C(10)_"MH - Diabetes Mellitus.")
 S ^ILS("TMP","J",k)="CREATE|90000671|"_$G(^ILS("TMP","CNT"))
 S k=(k)+1
 D AUTHADD^ILSAUTH("D990672","Stress Heading 672","Z99.672")
 S ^ILS("TMP","J",k)="AUTHADD|D990672|"_($D(^ILS("ANAME","STRESS HEADING 672","D990672")))
 S k=(k)+1
 S p=$D(^ILS("CAT","90000673"))
 D KILLREC^ILSREC("90000673","CAT")
 S ^ILS("TMP","J",k)="DEL|90000673|"_(p)_"->"_($D(^ILS("CAT","90000673")))
 S k=(k)+1
 D PARSE^ILSREC("90000674","CAT","ID - 90000674"_$C(10)_"BTI - Stress Title 674"_$C(10)_"AU - Tester, Ann"_$C(10)_"MH - Quantum Bibliography"_$C(10)_"MH - Medical Informatics"_$C(10)_"MH - Genomics")
 S ^ILS("TMP","J",k)="CREATE|90000674|"_$G(^ILS("TMP","CNT"))
 S k=(k)+1
 D PARSE^ILSREC("90000675","CAT","ID - 90000675"_$C(10)_"BTI - Stress Title 675"_$C(10)_"AU - Tester, Ann"_$C(10)_"MH - Genomics")
 S ^ILS("TMP","J",k)="CREATE|90000675|"_$G(^ILS("TMP","CNT"))
 S k=(k)+1
 S r=$$DISPATCH^ILSTUI("LEDGER")
 S ^ILS("TMP","J",k)="SEARCH|LEDGER|"_($L(r))_"|"_($E(r,1,40))
 S k=(k)+1
 D PUT^ILSREC("8007202","CAT","DP",1,"2026")
 S ^ILS("TMP","J",k)="UPD|8007202|"_($D(^ILS("CAT","8007202","DP",1)))
 S k=(k)+1
 S r=$G(^ILS("CAT","8101154","BTI",1))
 S ^ILS("TMP","J",k)="READ|CAT|8101154|BTI|"_($L(r))_"|"_($E(r,1,24))
 S k=(k)+1
 D PARSE^ILSREC("90000679","CAT","ID - 90000679"_$C(10)_"BTI - Stress Title 679"_$C(10)_"AU - Tester, Ann"_$C(10)_"MH - Diabetes Mellitus."_$C(10)_"MH - Medical Informatics")
 S ^ILS("TMP","J",k)="CREATE|90000679|"_$G(^ILS("TMP","CNT"))
 S k=(k)+1
 S r=$G(^ILS("CAT","8000583","PB",1))
 S ^ILS("TMP","J",k)="READ|CAT|8000583|PB|"_($L(r))_"|"_($E(r,1,24))
 S k=(k)+1
 D PARSE^ILSREC("90000681","CAT","ID - 90000681"_$C(10)_"BTI - Stress Title 681"_$C(10)_"AU - Tester, Ann"_$C(10)_"MH - Medical Informatics")
 S ^ILS("TMP","J",k)="CREATE|90000681|"_$G(^ILS("TMP","CNT"))
 S k=(k)+1
 D PARSE^ILSREC("90000682","CAT","ID - 90000682"_$C(10)_"BTI - Stress Title 682"_$C(10)_"AU - Tester, Ann"_$C(10)_"MH - Public Health"_$C(10)_"MH - Genomics")
 S ^ILS("TMP","J",k)="CREATE|90000682|"_$G(^ILS("TMP","CNT"))
 S k=(k)+1
 S r=$$DISPATCH^ILSTUI("HELP")
 S ^ILS("TMP","J",k)="SEARCH|HELP|"_($L(r))_"|"_($E(r,1,40))
 S k=(k)+1
 D PARSE^ILSREC("90000684","CAT","ID - 90000684"_$C(10)_"BTI - Stress Title 684"_$C(10)_"AU - Tester, Ann"_$C(10)_"MH - Quantum Bibliography"_$C(10)_"MH - Medical Informatics"_$C(10)_"MH - Quantum Bibliography")
 S ^ILS("TMP","J",k)="CREATE|90000684|"_$G(^ILS("TMP","CNT"))
 S k=(k)+1
 D PARSE^ILSREC("90000685","CAT","ID - 90000685"_$C(10)_"BTI - Stress Title 685"_$C(10)_"AU - Tester, Ann"_$C(10)_"MH - Quantum Bibliography"_$C(10)_"MH - Medical Informatics")
 S ^ILS("TMP","J",k)="CREATE|90000685|"_$G(^ILS("TMP","CNT"))
 S k=(k)+1
 S r=$G(^ILS("CAT","1302032","PB",1))
 S ^ILS("TMP","J",k)="READ|CAT|1302032|PB|"_($L(r))_"|"_($E(r,1,24))
 S k=(k)+1
 S r=$G(^ILS("SER","1260665","STI",1))
 S ^ILS("TMP","J",k)="READ|SER|1260665|STI|"_($L(r))_"|"_($E(r,1,24))
 S k=(k)+1
 D PUT^ILSREC("8003963","CAT","DP",1,"2026")
 S ^ILS("TMP","J",k)="UPD|8003963|"_($D(^ILS("CAT","8003963","DP",1)))
 S k=(k)+1
 S r=$G(^ILS("CAT","7705180","DP",1))
 S ^ILS("TMP","J",k)="READ|CAT|7705180|DP|"_($L(r))_"|"_($E(r,1,24))
 S k=(k)+1
 S r=$$DISPATCH^ILSTUI("FIND DIABETES")
 S ^ILS("TMP","J",k)="SEARCH|FIND_DIABETES|"_($L(r))_"|"_($E(r,1,40))
 S k=(k)+1
 D AUTHADD^ILSAUTH("D990691","Stress Heading 691","Z99.691")
 S ^ILS("TMP","J",k)="AUTHADD|D990691|"_($D(^ILS("ANAME","STRESS HEADING 691","D990691")))
 S k=(k)+1
 S r=$G(^ILS("CAT","7802251","PB",1))
 S ^ILS("TMP","J",k)="READ|CAT|7802251|PB|"_($L(r))_"|"_($E(r,1,24))
 S k=(k)+1
 D PARSE^ILSREC("90000693","CAT","ID - 90000693"_$C(10)_"BTI - Stress Title 693"_$C(10)_"AU - Tester, Ann"_$C(10)_"MH - Diabetes Mellitus."_$C(10)_"MH - Genomics"_$C(10)_"MH - Public Health")
 S ^ILS("TMP","J",k)="CREATE|90000693|"_$G(^ILS("TMP","CNT"))
 S k=(k)+1
 S r=$G(^ILS("CAT","1267066","BTI",1))
 S ^ILS("TMP","J",k)="READ|CAT|1267066|BTI|"_($L(r))_"|"_($E(r,1,24))
 S k=(k)+1
 D PARSE^ILSREC("90000695","CAT","ID - 90000695"_$C(10)_"BTI - Stress Title 695"_$C(10)_"AU - Tester, Ann"_$C(10)_"MH - Medical Informatics"_$C(10)_"MH - Diabetes Mellitus."_$C(10)_"MH - Quantum Bibliography")
 S ^ILS("TMP","J",k)="CREATE|90000695|"_$G(^ILS("TMP","CNT"))
 S k=(k)+1
 D PARSE^ILSREC("90000696","CAT","ID - 90000696"_$C(10)_"BTI - Stress Title 696"_$C(10)_"AU - Tester, Ann"_$C(10)_"MH - Public Health"_$C(10)_"MH - Genomics")
 S ^ILS("TMP","J",k)="CREATE|90000696|"_$G(^ILS("TMP","CNT"))
 S k=(k)+1
 D PARSE^ILSREC("90000697","CAT","ID - 90000697"_$C(10)_"BTI - Stress Title 697"_$C(10)_"AU - Tester, Ann"_$C(10)_"MH - Genomics")
 S ^ILS("TMP","J",k)="CREATE|90000697|"_$G(^ILS("TMP","CNT"))
 S k=(k)+1
 D SEQPUT^ILSREC("90000698","CAT","MH","Stress Heading 698")
 S ^ILS("TMP","J",k)="SEQPUT|90000698"
 S k=(k)+1
 S r=$$DISPATCH^ILSTUI("SHOW SER 1260300")
 S ^ILS("TMP","J",k)="SEARCH|SHOW_SER_1260300|"_($L(r))_"|"_($E(r,1,40))
 S k=(k)+1
 S p=$D(^ILS("CAT","90000700"))
 D KILLREC^ILSREC("90000700","CAT")
 S ^ILS("TMP","J",k)="DEL|90000700|"_(p)_"->"_($D(^ILS("CAT","90000700")))
 S k=(k)+1
 D SEQPUT^ILSREC("7808791","CAT","MH","Stress Heading 701")
 S ^ILS("TMP","J",k)="SEQPUT|7808791"
 S k=(k)+1
 S r=$G(^ILS("CAT","7803530","DP",1))
 S ^ILS("TMP","J",k)="READ|CAT|7803530|DP|"_($L(r))_"|"_($E(r,1,24))
 S k=(k)+1
 D PARSE^ILSREC("90000703","CAT","ID - 90000703"_$C(10)_"BTI - Stress Title 703"_$C(10)_"AU - Tester, Ann"_$C(10)_"MH - Quantum Bibliography"_$C(10)_"MH - Public Health"_$C(10)_"MH - Diabetes Mellitus.")
 S ^ILS("TMP","J",k)="CREATE|90000703|"_$G(^ILS("TMP","CNT"))
 S k=(k)+1
 S r=$G(^ILS("CAT","7901827","AU",1))
 S ^ILS("TMP","J",k)="READ|CAT|7901827|AU|"_($L(r))_"|"_($E(r,1,24))
 S k=(k)+1
 D SEQPUT^ILSREC("7808791","CAT","MH","Stress Heading 705")
 S ^ILS("TMP","J",k)="SEQPUT|7808791"
 S k=(k)+1
 S r=$$DISPATCH^ILSTUI("LIST")
 S ^ILS("TMP","J",k)="SEARCH|LIST|"_($L(r))_"|"_($E(r,1,40))
 S k=(k)+1
 D PARSE^ILSREC("90000707","CAT","ID - 90000707"_$C(10)_"BTI - Stress Title 707"_$C(10)_"AU - Tester, Ann"_$C(10)_"MH - Quantum Bibliography")
 S ^ILS("TMP","J",k)="CREATE|90000707|"_$G(^ILS("TMP","CNT"))
 S k=(k)+1
 S r=$$DISPATCH^ILSTUI("FIND HEALTH")
 S ^ILS("TMP","J",k)="SEARCH|FIND_HEALTH|"_($L(r))_"|"_($E(r,1,40))
 S k=(k)+1
 S r=$$DISPATCH^ILSTUI("SHOW CAT 7605530")
 S ^ILS("TMP","J",k)="SEARCH|SHOW_CAT_7605530|"_($L(r))_"|"_($E(r,1,40))
 S k=(k)+1
 D SEQPUT^ILSREC("8007202","CAT","MH","Stress Heading 710")
 S ^ILS("TMP","J",k)="SEQPUT|8007202"
 S k=(k)+1
 S r=$G(^ILS("CAT","7609600","AU",1))
 S ^ILS("TMP","J",k)="READ|CAT|7609600|AU|"_($L(r))_"|"_($E(r,1,24))
 S k=(k)+1
 D PARSE^ILSREC("90000712","CAT","ID - 90000712"_$C(10)_"BTI - Stress Title 712"_$C(10)_"AU - Tester, Ann"_$C(10)_"MH - Quantum Bibliography"_$C(10)_"MH - Diabetes Mellitus."_$C(10)_"MH - Medical Informatics")
 S ^ILS("TMP","J",k)="CREATE|90000712|"_$G(^ILS("TMP","CNT"))
 S k=(k)+1
 S r=$$VALIDATE^ILSAUTH("90000713","CAT")
 S ^ILS("TMP","J",k)="VAL|90000713|"_(r)
 S k=(k)+1
 S r=$$DISPATCH^ILSTUI("MH DIABETES MELLITUS.")
 S ^ILS("TMP","J",k)="SEARCH|MH_DIABETES_MELLITUS.|"_($L(r))_"|"_($E(r,1,40))
 S k=(k)+1
 D PUT^ILSREC("7911752","CAT","DP",1,"2026")
 S ^ILS("TMP","J",k)="UPD|7911752|"_($D(^ILS("CAT","7911752","DP",1)))
 S k=(k)+1
 D PUT^ILSREC("7807107","CAT","DP",1,"2026")
 S ^ILS("TMP","J",k)="UPD|7807107|"_($D(^ILS("CAT","7807107","DP",1)))
 S k=(k)+1
 D PARSE^ILSREC("90000717","CAT","ID - 90000717"_$C(10)_"BTI - Stress Title 717"_$C(10)_"AU - Tester, Ann"_$C(10)_"MH - Medical Informatics"_$C(10)_"MH - Quantum Bibliography"_$C(10)_"MH - Quantum Bibliography")
 S ^ILS("TMP","J",k)="CREATE|90000717|"_$G(^ILS("TMP","CNT"))
 S k=(k)+1
 D PARSE^ILSREC("90000718","CAT","ID - 90000718"_$C(10)_"BTI - Stress Title 718"_$C(10)_"AU - Tester, Ann"_$C(10)_"MH - Medical Informatics"_$C(10)_"MH - Quantum Bibliography"_$C(10)_"MH - Genomics")
 S ^ILS("TMP","J",k)="CREATE|90000718|"_$G(^ILS("TMP","CNT"))
 S k=(k)+1
 D PARSE^ILSREC("90000719","CAT","ID - 90000719"_$C(10)_"BTI - Stress Title 719"_$C(10)_"AU - Tester, Ann"_$C(10)_"MH - Public Health"_$C(10)_"MH - Medical Informatics"_$C(10)_"MH - Public Health")
 S ^ILS("TMP","J",k)="CREATE|90000719|"_$G(^ILS("TMP","CNT"))
 S k=(k)+1
 D PARSE^ILSREC("90000720","CAT","ID - 90000720"_$C(10)_"BTI - Stress Title 720"_$C(10)_"AU - Tester, Ann"_$C(10)_"MH - Quantum Bibliography"_$C(10)_"MH - Diabetes Mellitus."_$C(10)_"MH - Genomics")
 S ^ILS("TMP","J",k)="CREATE|90000720|"_$G(^ILS("TMP","CNT"))
 S k=(k)+1
 S p=$D(^ILS("CAT","90000721"))
 D KILLREC^ILSREC("90000721","CAT")
 S ^ILS("TMP","J",k)="DEL|90000721|"_(p)_"->"_($D(^ILS("CAT","90000721")))
 S k=(k)+1
 D PARSE^ILSREC("90000722","CAT","ID - 90000722"_$C(10)_"BTI - Stress Title 722"_$C(10)_"AU - Tester, Ann"_$C(10)_"MH - Medical Informatics"_$C(10)_"MH - Public Health"_$C(10)_"MH - Public Health")
 S ^ILS("TMP","J",k)="CREATE|90000722|"_$G(^ILS("TMP","CNT"))
 S k=(k)+1
 D AUTHADD^ILSAUTH("D990723","Stress Heading 723","Z99.723")
 S ^ILS("TMP","J",k)="AUTHADD|D990723|"_($D(^ILS("ANAME","STRESS HEADING 723","D990723")))
 S k=(k)+1
 S r=$G(^ILS("CAT","7703942","DP",1))
 S ^ILS("TMP","J",k)="READ|CAT|7703942|DP|"_($L(r))_"|"_($E(r,1,24))
 S k=(k)+1
 S r=$$DISPATCH^ILSTUI("SHOW SER 1260134")
 S ^ILS("TMP","J",k)="SEARCH|SHOW_SER_1260134|"_($L(r))_"|"_($E(r,1,40))
 S k=(k)+1
 S r=$$DISPATCH^ILSTUI("MH DIABETES MELLITUS.")
 S ^ILS("TMP","J",k)="SEARCH|MH_DIABETES_MELLITUS.|"_($L(r))_"|"_($E(r,1,40))
 S k=(k)+1
 S r=$$DISPATCH^ILSTUI("MH GENOMICS")
 S ^ILS("TMP","J",k)="SEARCH|MH_GENOMICS|"_($L(r))_"|"_($E(r,1,40))
 S k=(k)+1
 S r=$G(^ILS("CAT","1267066","BTI",1))
 S ^ILS("TMP","J",k)="READ|CAT|1267066|BTI|"_($L(r))_"|"_($E(r,1,24))
 S k=(k)+1
 D SEQPUT^ILSREC("7705180","CAT","MH","Stress Heading 729")
 S ^ILS("TMP","J",k)="SEQPUT|7705180"
 S k=(k)+1
 S r=$G(^ILS("SER","1257757","MH",1))
 S ^ILS("TMP","J",k)="READ|SER|1257757|MH|"_($L(r))_"|"_($E(r,1,24))
 S k=(k)+1
 S p=$D(^ILS("CAT","8003963"))
 D KILLREC^ILSREC("8003963","CAT")
 S ^ILS("TMP","J",k)="DEL|8003963|"_(p)_"->"_($D(^ILS("CAT","8003963")))
 S k=(k)+1
 S p=$D(^ILS("CAT","1267066"))
 D KILLREC^ILSREC("1267066","CAT")
 S ^ILS("TMP","J",k)="DEL|1267066|"_(p)_"->"_($D(^ILS("CAT","1267066")))
 S k=(k)+1
 S p=$D(^ILS("CAT","90000733"))
 D KILLREC^ILSREC("90000733","CAT")
 S ^ILS("TMP","J",k)="DEL|90000733|"_(p)_"->"_($D(^ILS("CAT","90000733")))
 S k=(k)+1
 D AUTHADD^ILSAUTH("D990734","Stress Heading 734","Z99.734")
 S ^ILS("TMP","J",k)="AUTHADD|D990734|"_($D(^ILS("ANAME","STRESS HEADING 734","D990734")))
 S k=(k)+1
 S r=$$DISPATCH^ILSTUI("SHOW CAT 1267066")
 S ^ILS("TMP","J",k)="SEARCH|SHOW_CAT_1267066|"_($L(r))_"|"_($E(r,1,40))
 S k=(k)+1
 S p=$D(^ILS("CAT","7503289"))
 D KILLREC^ILSREC("7503289","CAT")
 S ^ILS("TMP","J",k)="DEL|7503289|"_(p)_"->"_($D(^ILS("CAT","7503289")))
 S k=(k)+1
 S r=$$DISPATCH^ILSTUI("SHOW SER 1263300")
 S ^ILS("TMP","J",k)="SEARCH|SHOW_SER_1263300|"_($L(r))_"|"_($E(r,1,40))
 S k=(k)+1
 D PARSE^ILSREC("90000738","CAT","ID - 90000738"_$C(10)_"BTI - Stress Title 738"_$C(10)_"AU - Tester, Ann"_$C(10)_"MH - Medical Informatics")
 S ^ILS("TMP","J",k)="CREATE|90000738|"_$G(^ILS("TMP","CNT"))
 S k=(k)+1
 D PARSE^ILSREC("90000739","CAT","ID - 90000739"_$C(10)_"BTI - Stress Title 739"_$C(10)_"AU - Tester, Ann"_$C(10)_"MH - Medical Informatics"_$C(10)_"MH - Public Health")
 S ^ILS("TMP","J",k)="CREATE|90000739|"_$G(^ILS("TMP","CNT"))
 S k=(k)+1
 S r=$G(^ILS("SER","1262226","MH",1))
 S ^ILS("TMP","J",k)="READ|SER|1262226|MH|"_($L(r))_"|"_($E(r,1,24))
 S k=(k)+1
 D SEQPUT^ILSREC("90000741","CAT","MH","Stress Heading 741")
 S ^ILS("TMP","J",k)="SEQPUT|90000741"
 S k=(k)+1
 D PARSE^ILSREC("90000742","CAT","ID - 90000742"_$C(10)_"BTI - Stress Title 742"_$C(10)_"AU - Tester, Ann"_$C(10)_"MH - Diabetes Mellitus."_$C(10)_"MH - Genomics")
 S ^ILS("TMP","J",k)="CREATE|90000742|"_$G(^ILS("TMP","CNT"))
 S k=(k)+1
 S r=$G(^ILS("SER","1261010","ISS",1))
 S ^ILS("TMP","J",k)="READ|SER|1261010|ISS|"_($L(r))_"|"_($E(r,1,24))
 S k=(k)+1
 S r=$$VALIDATE^ILSAUTH("7911752","CAT")
 S ^ILS("TMP","J",k)="VAL|7911752|"_(r)
 S k=(k)+1
 D AUTHADD^ILSAUTH("D990745","Stress Heading 745","Z99.745")
 S ^ILS("TMP","J",k)="AUTHADD|D990745|"_($D(^ILS("ANAME","STRESS HEADING 745","D990745")))
 S k=(k)+1
 S r=$$VALIDATE^ILSAUTH("7609600","CAT")
 S ^ILS("TMP","J",k)="VAL|7609600|"_(r)
 S k=(k)+1
 S r=$$DISPATCH^ILSTUI("LIST")
 S ^ILS("TMP","J",k)="SEARCH|LIST|"_($L(r))_"|"_($E(r,1,40))
 S k=(k)+1
 S r=$$DISPATCH^ILSTUI("SHOW CAT 7703942")
 S ^ILS("TMP","J",k)="SEARCH|SHOW_CAT_7703942|"_($L(r))_"|"_($E(r,1,40))
 S k=(k)+1
 D SEQPUT^ILSREC("7505764","CAT","MH","Stress Heading 749")
 S ^ILS("TMP","J",k)="SEQPUT|7505764"
 S k=(k)+1
 D PARSE^ILSREC("90000750","CAT","ID - 90000750"_$C(10)_"BTI - Stress Title 750"_$C(10)_"AU - Tester, Ann"_$C(10)_"MH - Quantum Bibliography")
 S ^ILS("TMP","J",k)="CREATE|90000750|"_$G(^ILS("TMP","CNT"))
 S k=(k)+1
 D SEQPUT^ILSREC("90000751","CAT","MH","Stress Heading 751")
 S ^ILS("TMP","J",k)="SEQPUT|90000751"
 S k=(k)+1
 S r=$G(^ILS("CAT","1264327","PB",1))
 S ^ILS("TMP","J",k)="READ|CAT|1264327|PB|"_($L(r))_"|"_($E(r,1,24))
 S k=(k)+1
 S r=$G(^ILS("SER","1257757","STI",1))
 S ^ILS("TMP","J",k)="READ|SER|1257757|STI|"_($L(r))_"|"_($E(r,1,24))
 S k=(k)+1
 D PARSE^ILSREC("90000754","CAT","ID - 90000754"_$C(10)_"BTI - Stress Title 754"_$C(10)_"AU - Tester, Ann"_$C(10)_"MH - Quantum Bibliography"_$C(10)_"MH - Medical Informatics")
 S ^ILS("TMP","J",k)="CREATE|90000754|"_$G(^ILS("TMP","CNT"))
 S k=(k)+1
 S r=$$DISPATCH^ILSTUI("LIST")
 S ^ILS("TMP","J",k)="SEARCH|LIST|"_($L(r))_"|"_($E(r,1,40))
 S k=(k)+1
 D PARSE^ILSREC("90000756","CAT","ID - 90000756"_$C(10)_"BTI - Stress Title 756"_$C(10)_"AU - Tester, Ann"_$C(10)_"MH - Genomics"_$C(10)_"MH - Medical Informatics"_$C(10)_"MH - Medical Informatics")
 S ^ILS("TMP","J",k)="CREATE|90000756|"_$G(^ILS("TMP","CNT"))
 S k=(k)+1
 D PUT^ILSREC("90000757","CAT","DP",1,"2026")
 S ^ILS("TMP","J",k)="UPD|90000757|"_($D(^ILS("CAT","90000757","DP",1)))
 S k=(k)+1
 S r=$G(^ILS("SER","1262011","MH",1))
 S ^ILS("TMP","J",k)="READ|SER|1262011|MH|"_($L(r))_"|"_($E(r,1,24))
 S k=(k)+1
 S p=$D(^ILS("CAT","90000759"))
 D KILLREC^ILSREC("90000759","CAT")
 S ^ILS("TMP","J",k)="DEL|90000759|"_(p)_"->"_($D(^ILS("CAT","90000759")))
 S k=(k)+1
 S r=$$DISPATCH^ILSTUI("FIND DIABETES")
 S ^ILS("TMP","J",k)="SEARCH|FIND_DIABETES|"_($L(r))_"|"_($E(r,1,40))
 S k=(k)+1
 D PARSE^ILSREC("90000761","CAT","ID - 90000761"_$C(10)_"BTI - Stress Title 761"_$C(10)_"AU - Tester, Ann"_$C(10)_"MH - Public Health"_$C(10)_"MH - Public Health")
 S ^ILS("TMP","J",k)="CREATE|90000761|"_$G(^ILS("TMP","CNT"))
 S k=(k)+1
 S r=$G(^ILS("CAT","7705180","PB",1))
 S ^ILS("TMP","J",k)="READ|CAT|7705180|PB|"_($L(r))_"|"_($E(r,1,24))
 S k=(k)+1
 S r=$G(^ILS("CAT","1267372","PB",1))
 S ^ILS("TMP","J",k)="READ|CAT|1267372|PB|"_($L(r))_"|"_($E(r,1,24))
 S k=(k)+1
 D AUTHADD^ILSAUTH("D990764","Stress Heading 764","Z99.764")
 S ^ILS("TMP","J",k)="AUTHADD|D990764|"_($D(^ILS("ANAME","STRESS HEADING 764","D990764")))
 S k=(k)+1
 D PARSE^ILSREC("90000765","CAT","ID - 90000765"_$C(10)_"BTI - Stress Title 765"_$C(10)_"AU - Tester, Ann"_$C(10)_"MH - Quantum Bibliography"_$C(10)_"MH - Medical Informatics"_$C(10)_"MH - Medical Informatics")
 S ^ILS("TMP","J",k)="CREATE|90000765|"_$G(^ILS("TMP","CNT"))
 S k=(k)+1
 D PARSE^ILSREC("90000766","CAT","ID - 90000766"_$C(10)_"BTI - Stress Title 766"_$C(10)_"AU - Tester, Ann"_$C(10)_"MH - Diabetes Mellitus.")
 S ^ILS("TMP","J",k)="CREATE|90000766|"_$G(^ILS("TMP","CNT"))
 S k=(k)+1
 S r=$G(^ILS("SER","1260223","MH",1))
 S ^ILS("TMP","J",k)="READ|SER|1260223|MH|"_($L(r))_"|"_($E(r,1,24))
 S k=(k)+1
 S r=$G(^ILS("SER","1260665","ISS",1))
 S ^ILS("TMP","J",k)="READ|SER|1260665|ISS|"_($L(r))_"|"_($E(r,1,24))
 S k=(k)+1
 S r=$G(^ILS("SER","1262006","MH",1))
 S ^ILS("TMP","J",k)="READ|SER|1262006|MH|"_($L(r))_"|"_($E(r,1,24))
 S k=(k)+1
 D PARSE^ILSREC("90000770","CAT","ID - 90000770"_$C(10)_"BTI - Stress Title 770"_$C(10)_"AU - Tester, Ann"_$C(10)_"MH - Medical Informatics"_$C(10)_"MH - Diabetes Mellitus.")
 S ^ILS("TMP","J",k)="CREATE|90000770|"_$G(^ILS("TMP","CNT"))
 S k=(k)+1
 S r=$G(^ILS("CAT","7703942","PB",1))
 S ^ILS("TMP","J",k)="READ|CAT|7703942|PB|"_($L(r))_"|"_($E(r,1,24))
 S k=(k)+1
 D AUTHADD^ILSAUTH("D990772","Stress Heading 772","Z99.772")
 S ^ILS("TMP","J",k)="AUTHADD|D990772|"_($D(^ILS("ANAME","STRESS HEADING 772","D990772")))
 S k=(k)+1
 S r=$$DISPATCH^ILSTUI("LEDGER")
 S ^ILS("TMP","J",k)="SEARCH|LEDGER|"_($L(r))_"|"_($E(r,1,40))
 S k=(k)+1
 D PARSE^ILSREC("90000774","CAT","ID - 90000774"_$C(10)_"BTI - Stress Title 774"_$C(10)_"AU - Tester, Ann"_$C(10)_"MH - Public Health"_$C(10)_"MH - Quantum Bibliography")
 S ^ILS("TMP","J",k)="CREATE|90000774|"_$G(^ILS("TMP","CNT"))
 S k=(k)+1
 S r=$G(^ILS("SER","1260056","MH",1))
 S ^ILS("TMP","J",k)="READ|SER|1260056|MH|"_($L(r))_"|"_($E(r,1,24))
 S k=(k)+1
 S r=$$VALIDATE^ILSAUTH("8101154","CAT")
 S ^ILS("TMP","J",k)="VAL|8101154|"_(r)
 S k=(k)+1
 S r=$$DISPATCH^ILSTUI("SHOW SER 1262011")
 S ^ILS("TMP","J",k)="SEARCH|SHOW_SER_1262011|"_($L(r))_"|"_($E(r,1,40))
 S k=(k)+1
 D PARSE^ILSREC("90000778","CAT","ID - 90000778"_$C(10)_"BTI - Stress Title 778"_$C(10)_"AU - Tester, Ann"_$C(10)_"MH - Genomics"_$C(10)_"MH - Quantum Bibliography")
 S ^ILS("TMP","J",k)="CREATE|90000778|"_$G(^ILS("TMP","CNT"))
 S k=(k)+1
 S r=$$DISPATCH^ILSTUI("FIND DIABETES")
 S ^ILS("TMP","J",k)="SEARCH|FIND_DIABETES|"_($L(r))_"|"_($E(r,1,40))
 S k=(k)+1
 D PARSE^ILSREC("90000780","CAT","ID - 90000780"_$C(10)_"BTI - Stress Title 780"_$C(10)_"AU - Tester, Ann"_$C(10)_"MH - Diabetes Mellitus."_$C(10)_"MH - Quantum Bibliography"_$C(10)_"MH - Quantum Bibliography")
 S ^ILS("TMP","J",k)="CREATE|90000780|"_$G(^ILS("TMP","CNT"))
 S k=(k)+1
 D PARSE^ILSREC("90000781","CAT","ID - 90000781"_$C(10)_"BTI - Stress Title 781"_$C(10)_"AU - Tester, Ann"_$C(10)_"MH - Quantum Bibliography"_$C(10)_"MH - Medical Informatics"_$C(10)_"MH - Quantum Bibliography")
 S ^ILS("TMP","J",k)="CREATE|90000781|"_$G(^ILS("TMP","CNT"))
 S k=(k)+1
 S r=$$DISPATCH^ILSTUI("SHOW SER 1260767")
 S ^ILS("TMP","J",k)="SEARCH|SHOW_SER_1260767|"_($L(r))_"|"_($E(r,1,40))
 S k=(k)+1
 D PARSE^ILSREC("90000783","CAT","ID - 90000783"_$C(10)_"BTI - Stress Title 783"_$C(10)_"AU - Tester, Ann"_$C(10)_"MH - Medical Informatics"_$C(10)_"MH - Medical Informatics")
 S ^ILS("TMP","J",k)="CREATE|90000783|"_$G(^ILS("TMP","CNT"))
 S k=(k)+1
 S r=$$DISPATCH^ILSTUI("MH DIABETES MELLITUS.")
 S ^ILS("TMP","J",k)="SEARCH|MH_DIABETES_MELLITUS.|"_($L(r))_"|"_($E(r,1,40))
 S k=(k)+1
 D PARSE^ILSREC("90000785","CAT","ID - 90000785"_$C(10)_"BTI - Stress Title 785"_$C(10)_"AU - Tester, Ann"_$C(10)_"MH - Public Health"_$C(10)_"MH - Diabetes Mellitus."_$C(10)_"MH - Medical Informatics")
 S ^ILS("TMP","J",k)="CREATE|90000785|"_$G(^ILS("TMP","CNT"))
 S k=(k)+1
 D PARSE^ILSREC("90000786","CAT","ID - 90000786"_$C(10)_"BTI - Stress Title 786"_$C(10)_"AU - Tester, Ann"_$C(10)_"MH - Quantum Bibliography"_$C(10)_"MH - Public Health"_$C(10)_"MH - Quantum Bibliography")
 S ^ILS("TMP","J",k)="CREATE|90000786|"_$G(^ILS("TMP","CNT"))
 S k=(k)+1
 D PARSE^ILSREC("90000787","CAT","ID - 90000787"_$C(10)_"BTI - Stress Title 787"_$C(10)_"AU - Tester, Ann"_$C(10)_"MH - Public Health")
 S ^ILS("TMP","J",k)="CREATE|90000787|"_$G(^ILS("TMP","CNT"))
 S k=(k)+1
 D PARSE^ILSREC("90000788","CAT","ID - 90000788"_$C(10)_"BTI - Stress Title 788"_$C(10)_"AU - Tester, Ann"_$C(10)_"MH - Medical Informatics"_$C(10)_"MH - Medical Informatics"_$C(10)_"MH - Medical Informatics")
 S ^ILS("TMP","J",k)="CREATE|90000788|"_$G(^ILS("TMP","CNT"))
 S k=(k)+1
 S r=$$DISPATCH^ILSTUI("FIND HEALTH")
 S ^ILS("TMP","J",k)="SEARCH|FIND_HEALTH|"_($L(r))_"|"_($E(r,1,40))
 S k=(k)+1
 S r=$G(^ILS("SER","1261010","MH",1))
 S ^ILS("TMP","J",k)="READ|SER|1261010|MH|"_($L(r))_"|"_($E(r,1,24))
 S k=(k)+1
 S r=$$DISPATCH^ILSTUI("AUTH D003920")
 S ^ILS("TMP","J",k)="SEARCH|AUTH_D003920|"_($L(r))_"|"_($E(r,1,40))
 S k=(k)+1
 D PARSE^ILSREC("90000792","CAT","ID - 90000792"_$C(10)_"BTI - Stress Title 792"_$C(10)_"AU - Tester, Ann"_$C(10)_"MH - Genomics"_$C(10)_"MH - Genomics")
 S ^ILS("TMP","J",k)="CREATE|90000792|"_$G(^ILS("TMP","CNT"))
 S k=(k)+1
 D PUT^ILSREC("90000793","CAT","DP",1,"2026")
 S ^ILS("TMP","J",k)="UPD|90000793|"_($D(^ILS("CAT","90000793","DP",1)))
 S k=(k)+1
 S r=$G(^ILS("SER","1260767","ISS",1))
 S ^ILS("TMP","J",k)="READ|SER|1260767|ISS|"_($L(r))_"|"_($E(r,1,24))
 S k=(k)+1
 S r=$G(^ILS("CAT","8007202","DP",1))
 S ^ILS("TMP","J",k)="READ|CAT|8007202|DP|"_($L(r))_"|"_($E(r,1,24))
 S k=(k)+1
 S r=$G(^ILS("CAT","8003963","BTI",1))
 S ^ILS("TMP","J",k)="READ|CAT|8003963|BTI|"_($L(r))_"|"_($E(r,1,24))
 S k=(k)+1
 D PARSE^ILSREC("90000797","CAT","ID - 90000797"_$C(10)_"BTI - Stress Title 797"_$C(10)_"AU - Tester, Ann"_$C(10)_"MH - Genomics"_$C(10)_"MH - Diabetes Mellitus.")
 S ^ILS("TMP","J",k)="CREATE|90000797|"_$G(^ILS("TMP","CNT"))
 S k=(k)+1
 S p=$D(^ILS("CAT","90000798"))
 D KILLREC^ILSREC("90000798","CAT")
 S ^ILS("TMP","J",k)="DEL|90000798|"_(p)_"->"_($D(^ILS("CAT","90000798")))
 S k=(k)+1
 S r=$$DISPATCH^ILSTUI("RELATED D003920")
 S ^ILS("TMP","J",k)="SEARCH|RELATED_D003920|"_($L(r))_"|"_($E(r,1,40))
 S k=(k)+1
 S r=$$DISPATCH^ILSTUI("LEDGER")
 S ^ILS("TMP","J",k)="SEARCH|LEDGER|"_($L(r))_"|"_($E(r,1,40))
 S k=(k)+1
 S r=$G(^ILS("CAT","7911752","DP",1))
 S ^ILS("TMP","J",k)="READ|CAT|7911752|DP|"_($L(r))_"|"_($E(r,1,24))
 S k=(k)+1
 S r=$G(^ILS("SER","1263300","STI",1))
 S ^ILS("TMP","J",k)="READ|SER|1263300|STI|"_($L(r))_"|"_($E(r,1,24))
 S k=(k)+1
 S r=$G(^ILS("CAT","1264327","AU",1))
 S ^ILS("TMP","J",k)="READ|CAT|1264327|AU|"_($L(r))_"|"_($E(r,1,24))
 S k=(k)+1
 D PARSE^ILSREC("90000804","CAT","ID - 90000804"_$C(10)_"BTI - Stress Title 804"_$C(10)_"AU - Tester, Ann"_$C(10)_"MH - Genomics"_$C(10)_"MH - Medical Informatics"_$C(10)_"MH - Genomics")
 S ^ILS("TMP","J",k)="CREATE|90000804|"_$G(^ILS("TMP","CNT"))
 S k=(k)+1
 D PUT^ILSREC("90000805","CAT","DP",1,"2026")
 S ^ILS("TMP","J",k)="UPD|90000805|"_($D(^ILS("CAT","90000805","DP",1)))
 S k=(k)+1
 D PARSE^ILSREC("90000806","CAT","ID - 90000806"_$C(10)_"BTI - Stress Title 806"_$C(10)_"AU - Tester, Ann"_$C(10)_"MH - Public Health")
 S ^ILS("TMP","J",k)="CREATE|90000806|"_$G(^ILS("TMP","CNT"))
 S k=(k)+1
 S r=$$DISPATCH^ILSTUI("LEDGER")
 S ^ILS("TMP","J",k)="SEARCH|LEDGER|"_($L(r))_"|"_($E(r,1,40))
 S k=(k)+1
 S r=$G(^ILS("CAT","7703942","MH",1))
 S ^ILS("TMP","J",k)="READ|CAT|7703942|MH|"_($L(r))_"|"_($E(r,1,24))
 S k=(k)+1
 D PARSE^ILSREC("90000809","CAT","ID - 90000809"_$C(10)_"BTI - Stress Title 809"_$C(10)_"AU - Tester, Ann"_$C(10)_"MH - Quantum Bibliography"_$C(10)_"MH - Medical Informatics")
 S ^ILS("TMP","J",k)="CREATE|90000809|"_$G(^ILS("TMP","CNT"))
 S k=(k)+1
 D PARSE^ILSREC("90000810","CAT","ID - 90000810"_$C(10)_"BTI - Stress Title 810"_$C(10)_"AU - Tester, Ann"_$C(10)_"MH - Public Health"_$C(10)_"MH - Medical Informatics"_$C(10)_"MH - Medical Informatics")
 S ^ILS("TMP","J",k)="CREATE|90000810|"_$G(^ILS("TMP","CNT"))
 S k=(k)+1
 D PARSE^ILSREC("90000811","CAT","ID - 90000811"_$C(10)_"BTI - Stress Title 811"_$C(10)_"AU - Tester, Ann"_$C(10)_"MH - Public Health")
 S ^ILS("TMP","J",k)="CREATE|90000811|"_$G(^ILS("TMP","CNT"))
 S k=(k)+1
 D PARSE^ILSREC("90000812","CAT","ID - 90000812"_$C(10)_"BTI - Stress Title 812"_$C(10)_"AU - Tester, Ann"_$C(10)_"MH - Genomics"_$C(10)_"MH - Diabetes Mellitus.")
 S ^ILS("TMP","J",k)="CREATE|90000812|"_$G(^ILS("TMP","CNT"))
 S k=(k)+1
 S r=$G(^ILS("CAT","7703942","DP",1))
 S ^ILS("TMP","J",k)="READ|CAT|7703942|DP|"_($L(r))_"|"_($E(r,1,24))
 S k=(k)+1
 S r=$$DISPATCH^ILSTUI("HELP")
 S ^ILS("TMP","J",k)="SEARCH|HELP|"_($L(r))_"|"_($E(r,1,40))
 S k=(k)+1
 D PARSE^ILSREC("90000815","CAT","ID - 90000815"_$C(10)_"BTI - Stress Title 815"_$C(10)_"AU - Tester, Ann"_$C(10)_"MH - Medical Informatics"_$C(10)_"MH - Diabetes Mellitus."_$C(10)_"MH - Medical Informatics")
 S ^ILS("TMP","J",k)="CREATE|90000815|"_$G(^ILS("TMP","CNT"))
 S k=(k)+1
 D PARSE^ILSREC("90000816","CAT","ID - 90000816"_$C(10)_"BTI - Stress Title 816"_$C(10)_"AU - Tester, Ann"_$C(10)_"MH - Diabetes Mellitus."_$C(10)_"MH - Diabetes Mellitus.")
 S ^ILS("TMP","J",k)="CREATE|90000816|"_$G(^ILS("TMP","CNT"))
 S k=(k)+1
 S r=$G(^ILS("CAT","1267066","PB",1))
 S ^ILS("TMP","J",k)="READ|CAT|1267066|PB|"_($L(r))_"|"_($E(r,1,24))
 S k=(k)+1
 S r=$$VALIDATE^ILSAUTH("7503289","CAT")
 S ^ILS("TMP","J",k)="VAL|7503289|"_(r)
 S k=(k)+1
 D SEQPUT^ILSREC("90000819","CAT","MH","Stress Heading 819")
 S ^ILS("TMP","J",k)="SEQPUT|90000819"
 S k=(k)+1
 S r=$G(^ILS("CAT","7705180","DP",1))
 S ^ILS("TMP","J",k)="READ|CAT|7705180|DP|"_($L(r))_"|"_($E(r,1,24))
 S k=(k)+1
 S r=$G(^ILS("CAT","1264327","AU",1))
 S ^ILS("TMP","J",k)="READ|CAT|1264327|AU|"_($L(r))_"|"_($E(r,1,24))
 S k=(k)+1
 D AUTHADD^ILSAUTH("D990822","Stress Heading 822","Z99.822")
 S ^ILS("TMP","J",k)="AUTHADD|D990822|"_($D(^ILS("ANAME","STRESS HEADING 822","D990822")))
 S k=(k)+1
 D AUTHADD^ILSAUTH("D990823","Stress Heading 823","Z99.823")
 S ^ILS("TMP","J",k)="AUTHADD|D990823|"_($D(^ILS("ANAME","STRESS HEADING 823","D990823")))
 S k=(k)+1
 S r=$$DISPATCH^ILSTUI("FIND DIABETES")
 S ^ILS("TMP","J",k)="SEARCH|FIND_DIABETES|"_($L(r))_"|"_($E(r,1,40))
 S k=(k)+1
 S r=$$DISPATCH^ILSTUI("LEDGER")
 S ^ILS("TMP","J",k)="SEARCH|LEDGER|"_($L(r))_"|"_($E(r,1,40))
 S k=(k)+1
 D PARSE^ILSREC("90000826","CAT","ID - 90000826"_$C(10)_"BTI - Stress Title 826"_$C(10)_"AU - Tester, Ann"_$C(10)_"MH - Public Health")
 S ^ILS("TMP","J",k)="CREATE|90000826|"_$G(^ILS("TMP","CNT"))
 S k=(k)+1
 D PUT^ILSREC("90000827","CAT","DP",1,"2026")
 S ^ILS("TMP","J",k)="UPD|90000827|"_($D(^ILS("CAT","90000827","DP",1)))
 S k=(k)+1
 D PUT^ILSREC("8007202","CAT","DP",1,"2026")
 S ^ILS("TMP","J",k)="UPD|8007202|"_($D(^ILS("CAT","8007202","DP",1)))
 S k=(k)+1
 D PARSE^ILSREC("90000829","CAT","ID - 90000829"_$C(10)_"BTI - Stress Title 829"_$C(10)_"AU - Tester, Ann"_$C(10)_"MH - Genomics"_$C(10)_"MH - Diabetes Mellitus.")
 S ^ILS("TMP","J",k)="CREATE|90000829|"_$G(^ILS("TMP","CNT"))
 S k=(k)+1
 D AUTHADD^ILSAUTH("D990830","Stress Heading 830","Z99.830")
 S ^ILS("TMP","J",k)="AUTHADD|D990830|"_($D(^ILS("ANAME","STRESS HEADING 830","D990830")))
 S k=(k)+1
 S r=$$VALIDATE^ILSAUTH("7609600","CAT")
 S ^ILS("TMP","J",k)="VAL|7609600|"_(r)
 S k=(k)+1
 S p=$D(^ILS("CAT","1275455"))
 D KILLREC^ILSREC("1275455","CAT")
 S ^ILS("TMP","J",k)="DEL|1275455|"_(p)_"->"_($D(^ILS("CAT","1275455")))
 S k=(k)+1
 D SEQPUT^ILSREC("8007202","CAT","MH","Stress Heading 833")
 S ^ILS("TMP","J",k)="SEQPUT|8007202"
 S k=(k)+1
 S r=$G(^ILS("SER","1262006","ISS",1))
 S ^ILS("TMP","J",k)="READ|SER|1262006|ISS|"_($L(r))_"|"_($E(r,1,24))
 S k=(k)+1
 D PARSE^ILSREC("90000835","CAT","ID - 90000835"_$C(10)_"BTI - Stress Title 835"_$C(10)_"AU - Tester, Ann"_$C(10)_"MH - Diabetes Mellitus.")
 S ^ILS("TMP","J",k)="CREATE|90000835|"_$G(^ILS("TMP","CNT"))
 S k=(k)+1
 D SEQPUT^ILSREC("90000836","CAT","MH","Stress Heading 836")
 S ^ILS("TMP","J",k)="SEQPUT|90000836"
 S k=(k)+1
 S r=$$DISPATCH^ILSTUI("HELP")
 S ^ILS("TMP","J",k)="SEARCH|HELP|"_($L(r))_"|"_($E(r,1,40))
 S k=(k)+1
 S r=$G(^ILS("SER","1260134","MH",1))
 S ^ILS("TMP","J",k)="READ|SER|1260134|MH|"_($L(r))_"|"_($E(r,1,24))
 S k=(k)+1
 D AUTHADD^ILSAUTH("D990839","Stress Heading 839","Z99.839")
 S ^ILS("TMP","J",k)="AUTHADD|D990839|"_($D(^ILS("ANAME","STRESS HEADING 839","D990839")))
 S k=(k)+1
 S p=$D(^ILS("CAT","90000840"))
 D KILLREC^ILSREC("90000840","CAT")
 S ^ILS("TMP","J",k)="DEL|90000840|"_(p)_"->"_($D(^ILS("CAT","90000840")))
 S k=(k)+1
 S r=$$DISPATCH^ILSTUI("MH DIABETES MELLITUS.")
 S ^ILS("TMP","J",k)="SEARCH|MH_DIABETES_MELLITUS.|"_($L(r))_"|"_($E(r,1,40))
 S k=(k)+1
 D SEQPUT^ILSREC("90000842","CAT","MH","Stress Heading 842")
 S ^ILS("TMP","J",k)="SEQPUT|90000842"
 S k=(k)+1
 S p=$D(^ILS("CAT","1302032"))
 D KILLREC^ILSREC("1302032","CAT")
 S ^ILS("TMP","J",k)="DEL|1302032|"_(p)_"->"_($D(^ILS("CAT","1302032")))
 S k=(k)+1
 D PARSE^ILSREC("90000844","CAT","ID - 90000844"_$C(10)_"BTI - Stress Title 844"_$C(10)_"AU - Tester, Ann"_$C(10)_"MH - Public Health"_$C(10)_"MH - Diabetes Mellitus."_$C(10)_"MH - Quantum Bibliography")
 S ^ILS("TMP","J",k)="CREATE|90000844|"_$G(^ILS("TMP","CNT"))
 S k=(k)+1
 S r=$G(^ILS("CAT","7506781","DP",1))
 S ^ILS("TMP","J",k)="READ|CAT|7506781|DP|"_($L(r))_"|"_($E(r,1,24))
 S k=(k)+1
 S r=$G(^ILS("CAT","8101154","BTI",1))
 S ^ILS("TMP","J",k)="READ|CAT|8101154|BTI|"_($L(r))_"|"_($E(r,1,24))
 S k=(k)+1
 S r=$G(^ILS("SER","1262011","ISS",1))
 S ^ILS("TMP","J",k)="READ|SER|1262011|ISS|"_($L(r))_"|"_($E(r,1,24))
 S k=(k)+1
 S r=$G(^ILS("CAT","7901827","BTI",1))
 S ^ILS("TMP","J",k)="READ|CAT|7901827|BTI|"_($L(r))_"|"_($E(r,1,24))
 S k=(k)+1
 S p=$D(^ILS("CAT","90000849"))
 D KILLREC^ILSREC("90000849","CAT")
 S ^ILS("TMP","J",k)="DEL|90000849|"_(p)_"->"_($D(^ILS("CAT","90000849")))
 S k=(k)+1
 D PARSE^ILSREC("90000850","CAT","ID - 90000850"_$C(10)_"BTI - Stress Title 850"_$C(10)_"AU - Tester, Ann"_$C(10)_"MH - Public Health"_$C(10)_"MH - Genomics")
 S ^ILS("TMP","J",k)="CREATE|90000850|"_$G(^ILS("TMP","CNT"))
 S k=(k)+1
 D SEQPUT^ILSREC("7705180","CAT","MH","Stress Heading 851")
 S ^ILS("TMP","J",k)="SEQPUT|7705180"
 S k=(k)+1
 S r=$G(^ILS("CAT","7508397","PB",1))
 S ^ILS("TMP","J",k)="READ|CAT|7508397|PB|"_($L(r))_"|"_($E(r,1,24))
 S k=(k)+1
 S r=$$DISPATCH^ILSTUI("FIND DIABETES")
 S ^ILS("TMP","J",k)="SEARCH|FIND_DIABETES|"_($L(r))_"|"_($E(r,1,40))
 S k=(k)+1
 S r=$G(^ILS("CAT","8000583","BTI",1))
 S ^ILS("TMP","J",k)="READ|CAT|8000583|BTI|"_($L(r))_"|"_($E(r,1,24))
 S k=(k)+1
 D PARSE^ILSREC("90000855","CAT","ID - 90000855"_$C(10)_"BTI - Stress Title 855"_$C(10)_"AU - Tester, Ann"_$C(10)_"MH - Quantum Bibliography"_$C(10)_"MH - Genomics"_$C(10)_"MH - Genomics")
 S ^ILS("TMP","J",k)="CREATE|90000855|"_$G(^ILS("TMP","CNT"))
 S k=(k)+1
 S p=$D(^ILS("CAT","7802251"))
 D KILLREC^ILSREC("7802251","CAT")
 S ^ILS("TMP","J",k)="DEL|7802251|"_(p)_"->"_($D(^ILS("CAT","7802251")))
 S k=(k)+1
 D PARSE^ILSREC("90000857","CAT","ID - 90000857"_$C(10)_"BTI - Stress Title 857"_$C(10)_"AU - Tester, Ann"_$C(10)_"MH - Diabetes Mellitus."_$C(10)_"MH - Diabetes Mellitus.")
 S ^ILS("TMP","J",k)="CREATE|90000857|"_$G(^ILS("TMP","CNT"))
 S k=(k)+1
 S p=$D(^ILS("CAT","7506781"))
 D KILLREC^ILSREC("7506781","CAT")
 S ^ILS("TMP","J",k)="DEL|7506781|"_(p)_"->"_($D(^ILS("CAT","7506781")))
 S k=(k)+1
 D PARSE^ILSREC("90000859","CAT","ID - 90000859"_$C(10)_"BTI - Stress Title 859"_$C(10)_"AU - Tester, Ann"_$C(10)_"MH - Public Health"_$C(10)_"MH - Genomics")
 S ^ILS("TMP","J",k)="CREATE|90000859|"_$G(^ILS("TMP","CNT"))
 S k=(k)+1
 S r=$G(^ILS("SER","1260024","STI",1))
 S ^ILS("TMP","J",k)="READ|SER|1260024|STI|"_($L(r))_"|"_($E(r,1,24))
 S k=(k)+1
 S r=$G(^ILS("CAT","8003963","AU",1))
 S ^ILS("TMP","J",k)="READ|CAT|8003963|AU|"_($L(r))_"|"_($E(r,1,24))
 S k=(k)+1
 S r=$G(^ILS("CAT","1275455","BTI",1))
 S ^ILS("TMP","J",k)="READ|CAT|1275455|BTI|"_($L(r))_"|"_($E(r,1,24))
 S k=(k)+1
 D PARSE^ILSREC("90000863","CAT","ID - 90000863"_$C(10)_"BTI - Stress Title 863"_$C(10)_"AU - Tester, Ann"_$C(10)_"MH - Diabetes Mellitus.")
 S ^ILS("TMP","J",k)="CREATE|90000863|"_$G(^ILS("TMP","CNT"))
 S k=(k)+1
 S r=$$DISPATCH^ILSTUI("RELATED D003920")
 S ^ILS("TMP","J",k)="SEARCH|RELATED_D003920|"_($L(r))_"|"_($E(r,1,40))
 S k=(k)+1
 D PARSE^ILSREC("90000865","CAT","ID - 90000865"_$C(10)_"BTI - Stress Title 865"_$C(10)_"AU - Tester, Ann"_$C(10)_"MH - Public Health"_$C(10)_"MH - Genomics"_$C(10)_"MH - Quantum Bibliography")
 S ^ILS("TMP","J",k)="CREATE|90000865|"_$G(^ILS("TMP","CNT"))
 S k=(k)+1
 S r=$$DISPATCH^ILSTUI("LEDGER")
 S ^ILS("TMP","J",k)="SEARCH|LEDGER|"_($L(r))_"|"_($E(r,1,40))
 S k=(k)+1
 S r=$G(^ILS("SER","1257757","STI",1))
 S ^ILS("TMP","J",k)="READ|SER|1257757|STI|"_($L(r))_"|"_($E(r,1,24))
 S k=(k)+1
 S r=$G(^ILS("SER","1260024","ISS",1))
 S ^ILS("TMP","J",k)="READ|SER|1260024|ISS|"_($L(r))_"|"_($E(r,1,24))
 S k=(k)+1
 D PUT^ILSREC("90000869","CAT","DP",1,"2026")
 S ^ILS("TMP","J",k)="UPD|90000869|"_($D(^ILS("CAT","90000869","DP",1)))
 S k=(k)+1
 S r=$$VALIDATE^ILSAUTH("7807107","CAT")
 S ^ILS("TMP","J",k)="VAL|7807107|"_(r)
 S k=(k)+1
 S r=$$DISPATCH^ILSTUI("HELP")
 S ^ILS("TMP","J",k)="SEARCH|HELP|"_($L(r))_"|"_($E(r,1,40))
 S k=(k)+1
 S r=$G(^ILS("SER","1262006","MH",1))
 S ^ILS("TMP","J",k)="READ|SER|1262006|MH|"_($L(r))_"|"_($E(r,1,24))
 S k=(k)+1
 D PARSE^ILSREC("90000873","CAT","ID - 90000873"_$C(10)_"BTI - Stress Title 873"_$C(10)_"AU - Tester, Ann"_$C(10)_"MH - Medical Informatics"_$C(10)_"MH - Quantum Bibliography")
 S ^ILS("TMP","J",k)="CREATE|90000873|"_$G(^ILS("TMP","CNT"))
 S k=(k)+1
 S p=$D(^ILS("CAT","1275455"))
 D KILLREC^ILSREC("1275455","CAT")
 S ^ILS("TMP","J",k)="DEL|1275455|"_(p)_"->"_($D(^ILS("CAT","1275455")))
 S k=(k)+1
 D PARSE^ILSREC("90000875","CAT","ID - 90000875"_$C(10)_"BTI - Stress Title 875"_$C(10)_"AU - Tester, Ann"_$C(10)_"MH - Medical Informatics")
 S ^ILS("TMP","J",k)="CREATE|90000875|"_$G(^ILS("TMP","CNT"))
 S k=(k)+1
 D PUT^ILSREC("7705180","CAT","DP",1,"2026")
 S ^ILS("TMP","J",k)="UPD|7705180|"_($D(^ILS("CAT","7705180","DP",1)))
 S k=(k)+1
 D PARSE^ILSREC("90000877","CAT","ID - 90000877"_$C(10)_"BTI - Stress Title 877"_$C(10)_"AU - Tester, Ann"_$C(10)_"MH - Genomics"_$C(10)_"MH - Diabetes Mellitus.")
 S ^ILS("TMP","J",k)="CREATE|90000877|"_$G(^ILS("TMP","CNT"))
 S k=(k)+1
 S r=$$DISPATCH^ILSTUI("HELP")
 S ^ILS("TMP","J",k)="SEARCH|HELP|"_($L(r))_"|"_($E(r,1,40))
 S k=(k)+1
 D AUTHADD^ILSAUTH("D990879","Stress Heading 879","Z99.879")
 S ^ILS("TMP","J",k)="AUTHADD|D990879|"_($D(^ILS("ANAME","STRESS HEADING 879","D990879")))
 S k=(k)+1
 S p=$D(^ILS("CAT","8000583"))
 D KILLREC^ILSREC("8000583","CAT")
 S ^ILS("TMP","J",k)="DEL|8000583|"_(p)_"->"_($D(^ILS("CAT","8000583")))
 S k=(k)+1
 S p=$D(^ILS("CAT","7909441"))
 D KILLREC^ILSREC("7909441","CAT")
 S ^ILS("TMP","J",k)="DEL|7909441|"_(p)_"->"_($D(^ILS("CAT","7909441")))
 S k=(k)+1
 S r=$$DISPATCH^ILSTUI("SHOW SER 1260134")
 S ^ILS("TMP","J",k)="SEARCH|SHOW_SER_1260134|"_($L(r))_"|"_($E(r,1,40))
 S k=(k)+1
 S r=$$DISPATCH^ILSTUI("FIND HEALTH")
 S ^ILS("TMP","J",k)="SEARCH|FIND_HEALTH|"_($L(r))_"|"_($E(r,1,40))
 S k=(k)+1
 D PARSE^ILSREC("90000884","CAT","ID - 90000884"_$C(10)_"BTI - Stress Title 884"_$C(10)_"AU - Tester, Ann"_$C(10)_"MH - Medical Informatics"_$C(10)_"MH - Genomics")
 S ^ILS("TMP","J",k)="CREATE|90000884|"_$G(^ILS("TMP","CNT"))
 S k=(k)+1
 S r=$$DISPATCH^ILSTUI("MH GENOMICS")
 S ^ILS("TMP","J",k)="SEARCH|MH_GENOMICS|"_($L(r))_"|"_($E(r,1,40))
 S k=(k)+1
 S r=$G(^ILS("CAT","7901827","DP",1))
 S ^ILS("TMP","J",k)="READ|CAT|7901827|DP|"_($L(r))_"|"_($E(r,1,24))
 S k=(k)+1
 S r=$G(^ILS("CAT","8101154","DP",1))
 S ^ILS("TMP","J",k)="READ|CAT|8101154|DP|"_($L(r))_"|"_($E(r,1,24))
 S k=(k)+1
 S r=$$VALIDATE^ILSAUTH("90000888","CAT")
 S ^ILS("TMP","J",k)="VAL|90000888|"_(r)
 S k=(k)+1
 D PARSE^ILSREC("90000889","CAT","ID - 90000889"_$C(10)_"BTI - Stress Title 889"_$C(10)_"AU - Tester, Ann"_$C(10)_"MH - Genomics")
 S ^ILS("TMP","J",k)="CREATE|90000889|"_$G(^ILS("TMP","CNT"))
 S k=(k)+1
 D AUTHADD^ILSAUTH("D990890","Stress Heading 890","Z99.890")
 S ^ILS("TMP","J",k)="AUTHADD|D990890|"_($D(^ILS("ANAME","STRESS HEADING 890","D990890")))
 S k=(k)+1
 D PARSE^ILSREC("90000891","CAT","ID - 90000891"_$C(10)_"BTI - Stress Title 891"_$C(10)_"AU - Tester, Ann"_$C(10)_"MH - Quantum Bibliography")
 S ^ILS("TMP","J",k)="CREATE|90000891|"_$G(^ILS("TMP","CNT"))
 S k=(k)+1
 S r=$$DISPATCH^ILSTUI("SHOW CAT 8003963")
 S ^ILS("TMP","J",k)="SEARCH|SHOW_CAT_8003963|"_($L(r))_"|"_($E(r,1,40))
 S k=(k)+1
 D PUT^ILSREC("7703942","CAT","DP",1,"2026")
 S ^ILS("TMP","J",k)="UPD|7703942|"_($D(^ILS("CAT","7703942","DP",1)))
 S k=(k)+1
 S r=$$DISPATCH^ILSTUI("HELP")
 S ^ILS("TMP","J",k)="SEARCH|HELP|"_($L(r))_"|"_($E(r,1,40))
 S k=(k)+1
 D PARSE^ILSREC("90000895","CAT","ID - 90000895"_$C(10)_"BTI - Stress Title 895"_$C(10)_"AU - Tester, Ann"_$C(10)_"MH - Medical Informatics")
 S ^ILS("TMP","J",k)="CREATE|90000895|"_$G(^ILS("TMP","CNT"))
 S k=(k)+1
 S p=$D(^ILS("CAT","90000896"))
 D KILLREC^ILSREC("90000896","CAT")
 S ^ILS("TMP","J",k)="DEL|90000896|"_(p)_"->"_($D(^ILS("CAT","90000896")))
 S k=(k)+1
 D PARSE^ILSREC("90000897","CAT","ID - 90000897"_$C(10)_"BTI - Stress Title 897"_$C(10)_"AU - Tester, Ann"_$C(10)_"MH - Quantum Bibliography"_$C(10)_"MH - Medical Informatics")
 S ^ILS("TMP","J",k)="CREATE|90000897|"_$G(^ILS("TMP","CNT"))
 S k=(k)+1
 S r=$$DISPATCH^ILSTUI("SHOW CAT 8000583")
 S ^ILS("TMP","J",k)="SEARCH|SHOW_CAT_8000583|"_($L(r))_"|"_($E(r,1,40))
 S k=(k)+1
 D PARSE^ILSREC("90000899","CAT","ID - 90000899"_$C(10)_"BTI - Stress Title 899"_$C(10)_"AU - Tester, Ann"_$C(10)_"MH - Quantum Bibliography"_$C(10)_"MH - Diabetes Mellitus."_$C(10)_"MH - Genomics")
 S ^ILS("TMP","J",k)="CREATE|90000899|"_$G(^ILS("TMP","CNT"))
 S k=(k)+1
 D PARSE^ILSREC("90000900","CAT","ID - 90000900"_$C(10)_"BTI - Stress Title 900"_$C(10)_"AU - Tester, Ann"_$C(10)_"MH - Genomics"_$C(10)_"MH - Quantum Bibliography")
 S ^ILS("TMP","J",k)="CREATE|90000900|"_$G(^ILS("TMP","CNT"))
 S k=(k)+1
 S r=$$DISPATCH^ILSTUI("MH GENOMICS")
 S ^ILS("TMP","J",k)="SEARCH|MH_GENOMICS|"_($L(r))_"|"_($E(r,1,40))
 S k=(k)+1
 D PUT^ILSREC("90000902","CAT","DP",1,"2026")
 S ^ILS("TMP","J",k)="UPD|90000902|"_($D(^ILS("CAT","90000902","DP",1)))
 S k=(k)+1
 D PUT^ILSREC("90000903","CAT","DP",1,"2026")
 S ^ILS("TMP","J",k)="UPD|90000903|"_($D(^ILS("CAT","90000903","DP",1)))
 S k=(k)+1
 S r=$$VALIDATE^ILSAUTH("8007202","CAT")
 S ^ILS("TMP","J",k)="VAL|8007202|"_(r)
 S k=(k)+1
 D AUTHADD^ILSAUTH("D990905","Stress Heading 905","Z99.905")
 S ^ILS("TMP","J",k)="AUTHADD|D990905|"_($D(^ILS("ANAME","STRESS HEADING 905","D990905")))
 S k=(k)+1
 S r=$G(^ILS("SER","1262373","ISS",1))
 S ^ILS("TMP","J",k)="READ|SER|1262373|ISS|"_($L(r))_"|"_($E(r,1,24))
 S k=(k)+1
 D PUT^ILSREC("1264327","CAT","DP",1,"2026")
 S ^ILS("TMP","J",k)="UPD|1264327|"_($D(^ILS("CAT","1264327","DP",1)))
 S k=(k)+1
 S r=$G(^ILS("CAT","7506781","MH",1))
 S ^ILS("TMP","J",k)="READ|CAT|7506781|MH|"_($L(r))_"|"_($E(r,1,24))
 S k=(k)+1
 S r=$$DISPATCH^ILSTUI("LEDGER")
 S ^ILS("TMP","J",k)="SEARCH|LEDGER|"_($L(r))_"|"_($E(r,1,40))
 S k=(k)+1
 S r=$G(^ILS("CAT","7901827","AU",1))
 S ^ILS("TMP","J",k)="READ|CAT|7901827|AU|"_($L(r))_"|"_($E(r,1,24))
 S k=(k)+1
 S r=$G(^ILS("CAT","1275455","MH",1))
 S ^ILS("TMP","J",k)="READ|CAT|1275455|MH|"_($L(r))_"|"_($E(r,1,24))
 S k=(k)+1
 S r=$$DISPATCH^ILSTUI("MH DIABETES MELLITUS.")
 S ^ILS("TMP","J",k)="SEARCH|MH_DIABETES_MELLITUS.|"_($L(r))_"|"_($E(r,1,40))
 S k=(k)+1
 S r=$$DISPATCH^ILSTUI("MH GENOMICS")
 S ^ILS("TMP","J",k)="SEARCH|MH_GENOMICS|"_($L(r))_"|"_($E(r,1,40))
 S k=(k)+1
 D PARSE^ILSREC("90000914","CAT","ID - 90000914"_$C(10)_"BTI - Stress Title 914"_$C(10)_"AU - Tester, Ann"_$C(10)_"MH - Quantum Bibliography"_$C(10)_"MH - Diabetes Mellitus.")
 S ^ILS("TMP","J",k)="CREATE|90000914|"_$G(^ILS("TMP","CNT"))
 S k=(k)+1
 D PARSE^ILSREC("90000915","CAT","ID - 90000915"_$C(10)_"BTI - Stress Title 915"_$C(10)_"AU - Tester, Ann"_$C(10)_"MH - Medical Informatics")
 S ^ILS("TMP","J",k)="CREATE|90000915|"_$G(^ILS("TMP","CNT"))
 S k=(k)+1
 D SEQPUT^ILSREC("90000916","CAT","MH","Stress Heading 916")
 S ^ILS("TMP","J",k)="SEQPUT|90000916"
 S k=(k)+1
 D PARSE^ILSREC("90000917","CAT","ID - 90000917"_$C(10)_"BTI - Stress Title 917"_$C(10)_"AU - Tester, Ann"_$C(10)_"MH - Quantum Bibliography")
 S ^ILS("TMP","J",k)="CREATE|90000917|"_$G(^ILS("TMP","CNT"))
 S k=(k)+1
 S p=$D(^ILS("CAT","1267372"))
 D KILLREC^ILSREC("1267372","CAT")
 S ^ILS("TMP","J",k)="DEL|1267372|"_(p)_"->"_($D(^ILS("CAT","1267372")))
 S k=(k)+1
 S r=$$DISPATCH^ILSTUI("MH DIABETES MELLITUS.")
 S ^ILS("TMP","J",k)="SEARCH|MH_DIABETES_MELLITUS.|"_($L(r))_"|"_($E(r,1,40))
 S k=(k)+1
 S p=$D(^ILS("CAT","7807107"))
 D KILLREC^ILSREC("7807107","CAT")
 S ^ILS("TMP","J",k)="DEL|7807107|"_(p)_"->"_($D(^ILS("CAT","7807107")))
 S k=(k)+1
 S r=$$VALIDATE^ILSAUTH("90000921","CAT")
 S ^ILS("TMP","J",k)="VAL|90000921|"_(r)
 S k=(k)+1
 D PARSE^ILSREC("90000922","CAT","ID - 90000922"_$C(10)_"BTI - Stress Title 922"_$C(10)_"AU - Tester, Ann"_$C(10)_"MH - Public Health"_$C(10)_"MH - Public Health")
 S ^ILS("TMP","J",k)="CREATE|90000922|"_$G(^ILS("TMP","CNT"))
 S k=(k)+1
 S r=$G(^ILS("CAT","1264327","PB",1))
 S ^ILS("TMP","J",k)="READ|CAT|1264327|PB|"_($L(r))_"|"_($E(r,1,24))
 S k=(k)+1
 D PARSE^ILSREC("90000924","CAT","ID - 90000924"_$C(10)_"BTI - Stress Title 924"_$C(10)_"AU - Tester, Ann"_$C(10)_"MH - Public Health"_$C(10)_"MH - Medical Informatics"_$C(10)_"MH - Diabetes Mellitus.")
 S ^ILS("TMP","J",k)="CREATE|90000924|"_$G(^ILS("TMP","CNT"))
 S k=(k)+1
 S r=$G(^ILS("CAT","7803530","AU",1))
 S ^ILS("TMP","J",k)="READ|CAT|7803530|AU|"_($L(r))_"|"_($E(r,1,24))
 S k=(k)+1
 D SEQPUT^ILSREC("90000926","CAT","MH","Stress Heading 926")
 S ^ILS("TMP","J",k)="SEQPUT|90000926"
 S k=(k)+1
 D PARSE^ILSREC("90000927","CAT","ID - 90000927"_$C(10)_"BTI - Stress Title 927"_$C(10)_"AU - Tester, Ann"_$C(10)_"MH - Genomics"_$C(10)_"MH - Diabetes Mellitus.")
 S ^ILS("TMP","J",k)="CREATE|90000927|"_$G(^ILS("TMP","CNT"))
 S k=(k)+1
 S r=$$DISPATCH^ILSTUI("SHOW CAT 8003963")
 S ^ILS("TMP","J",k)="SEARCH|SHOW_CAT_8003963|"_($L(r))_"|"_($E(r,1,40))
 S k=(k)+1
 D PARSE^ILSREC("90000929","CAT","ID - 90000929"_$C(10)_"BTI - Stress Title 929"_$C(10)_"AU - Tester, Ann"_$C(10)_"MH - Genomics"_$C(10)_"MH - Quantum Bibliography")
 S ^ILS("TMP","J",k)="CREATE|90000929|"_$G(^ILS("TMP","CNT"))
 S k=(k)+1
 D PUT^ILSREC("90000930","CAT","DP",1,"2026")
 S ^ILS("TMP","J",k)="UPD|90000930|"_($D(^ILS("CAT","90000930","DP",1)))
 S k=(k)+1
 S r=$$DISPATCH^ILSTUI("FIND HEALTH")
 S ^ILS("TMP","J",k)="SEARCH|FIND_HEALTH|"_($L(r))_"|"_($E(r,1,40))
 S k=(k)+1
 S r=$$VALIDATE^ILSAUTH("90000932","CAT")
 S ^ILS("TMP","J",k)="VAL|90000932|"_(r)
 S k=(k)+1
 D PARSE^ILSREC("90000933","CAT","ID - 90000933"_$C(10)_"BTI - Stress Title 933"_$C(10)_"AU - Tester, Ann"_$C(10)_"MH - Genomics"_$C(10)_"MH - Genomics")
 S ^ILS("TMP","J",k)="CREATE|90000933|"_$G(^ILS("TMP","CNT"))
 S k=(k)+1
 S p=$D(^ILS("CAT","90000934"))
 D KILLREC^ILSREC("90000934","CAT")
 S ^ILS("TMP","J",k)="DEL|90000934|"_(p)_"->"_($D(^ILS("CAT","90000934")))
 S k=(k)+1
 S r=$$DISPATCH^ILSTUI("SHOW SER 1260665")
 S ^ILS("TMP","J",k)="SEARCH|SHOW_SER_1260665|"_($L(r))_"|"_($E(r,1,40))
 S k=(k)+1
 S r=$$VALIDATE^ILSAUTH("1275455","CAT")
 S ^ILS("TMP","J",k)="VAL|1275455|"_(r)
 S k=(k)+1
 S r=$$DISPATCH^ILSTUI("SHOW CAT 7703942")
 S ^ILS("TMP","J",k)="SEARCH|SHOW_CAT_7703942|"_($L(r))_"|"_($E(r,1,40))
 S k=(k)+1
 S r=$$DISPATCH^ILSTUI("MH GENOMICS")
 S ^ILS("TMP","J",k)="SEARCH|MH_GENOMICS|"_($L(r))_"|"_($E(r,1,40))
 S k=(k)+1
 S r=$$VALIDATE^ILSAUTH("7506781","CAT")
 S ^ILS("TMP","J",k)="VAL|7506781|"_(r)
 S k=(k)+1
 S p=$D(^ILS("CAT","90000940"))
 D KILLREC^ILSREC("90000940","CAT")
 S ^ILS("TMP","J",k)="DEL|90000940|"_(p)_"->"_($D(^ILS("CAT","90000940")))
 S k=(k)+1
 S r=$G(^ILS("SER","1260223","ISS",1))
 S ^ILS("TMP","J",k)="READ|SER|1260223|ISS|"_($L(r))_"|"_($E(r,1,24))
 S k=(k)+1
 S r=$G(^ILS("CAT","7503289","AU",1))
 S ^ILS("TMP","J",k)="READ|CAT|7503289|AU|"_($L(r))_"|"_($E(r,1,24))
 S k=(k)+1
 D PUT^ILSREC("90000943","CAT","DP",1,"2026")
 S ^ILS("TMP","J",k)="UPD|90000943|"_($D(^ILS("CAT","90000943","DP",1)))
 S k=(k)+1
 D PARSE^ILSREC("90000944","CAT","ID - 90000944"_$C(10)_"BTI - Stress Title 944"_$C(10)_"AU - Tester, Ann"_$C(10)_"MH - Public Health"_$C(10)_"MH - Quantum Bibliography")
 S ^ILS("TMP","J",k)="CREATE|90000944|"_$G(^ILS("TMP","CNT"))
 S k=(k)+1
 D PARSE^ILSREC("90000945","CAT","ID - 90000945"_$C(10)_"BTI - Stress Title 945"_$C(10)_"AU - Tester, Ann"_$C(10)_"MH - Diabetes Mellitus."_$C(10)_"MH - Quantum Bibliography")
 S ^ILS("TMP","J",k)="CREATE|90000945|"_$G(^ILS("TMP","CNT"))
 S k=(k)+1
 S r=$G(^ILS("CAT","1275455","BTI",1))
 S ^ILS("TMP","J",k)="READ|CAT|1275455|BTI|"_($L(r))_"|"_($E(r,1,24))
 S k=(k)+1
 D PARSE^ILSREC("90000947","CAT","ID - 90000947"_$C(10)_"BTI - Stress Title 947"_$C(10)_"AU - Tester, Ann"_$C(10)_"MH - Public Health"_$C(10)_"MH - Medical Informatics"_$C(10)_"MH - Genomics")
 S ^ILS("TMP","J",k)="CREATE|90000947|"_$G(^ILS("TMP","CNT"))
 S k=(k)+1
 D PARSE^ILSREC("90000948","CAT","ID - 90000948"_$C(10)_"BTI - Stress Title 948"_$C(10)_"AU - Tester, Ann"_$C(10)_"MH - Diabetes Mellitus."_$C(10)_"MH - Genomics")
 S ^ILS("TMP","J",k)="CREATE|90000948|"_$G(^ILS("TMP","CNT"))
 S k=(k)+1
 D PUT^ILSREC("90000949","CAT","DP",1,"2026")
 S ^ILS("TMP","J",k)="UPD|90000949|"_($D(^ILS("CAT","90000949","DP",1)))
 S k=(k)+1
 D PARSE^ILSREC("90000950","CAT","ID - 90000950"_$C(10)_"BTI - Stress Title 950"_$C(10)_"AU - Tester, Ann"_$C(10)_"MH - Public Health"_$C(10)_"MH - Diabetes Mellitus.")
 S ^ILS("TMP","J",k)="CREATE|90000950|"_$G(^ILS("TMP","CNT"))
 S k=(k)+1
 D PARSE^ILSREC("90000951","CAT","ID - 90000951"_$C(10)_"BTI - Stress Title 951"_$C(10)_"AU - Tester, Ann"_$C(10)_"MH - Quantum Bibliography"_$C(10)_"MH - Medical Informatics")
 S ^ILS("TMP","J",k)="CREATE|90000951|"_$G(^ILS("TMP","CNT"))
 S k=(k)+1
 D PUT^ILSREC("7802251","CAT","DP",1,"2026")
 S ^ILS("TMP","J",k)="UPD|7802251|"_($D(^ILS("CAT","7802251","DP",1)))
 S k=(k)+1
 D SEQPUT^ILSREC("1267066","CAT","MH","Stress Heading 953")
 S ^ILS("TMP","J",k)="SEQPUT|1267066"
 S k=(k)+1
 S r=$$VALIDATE^ILSAUTH("7703942","CAT")
 S ^ILS("TMP","J",k)="VAL|7703942|"_(r)
 S k=(k)+1
 S r=$G(^ILS("CAT","7911752","BTI",1))
 S ^ILS("TMP","J",k)="READ|CAT|7911752|BTI|"_($L(r))_"|"_($E(r,1,24))
 S k=(k)+1
 S r=$$DISPATCH^ILSTUI("ISSN 0742-3071")
 S ^ILS("TMP","J",k)="SEARCH|ISSN_0742-3071|"_($L(r))_"|"_($E(r,1,40))
 S k=(k)+1
 S r=$$VALIDATE^ILSAUTH("7911752","CAT")
 S ^ILS("TMP","J",k)="VAL|7911752|"_(r)
 S k=(k)+1
 S r=$G(^ILS("CAT","7605530","BTI",1))
 S ^ILS("TMP","J",k)="READ|CAT|7605530|BTI|"_($L(r))_"|"_($E(r,1,24))
 S k=(k)+1
 D PARSE^ILSREC("90000959","CAT","ID - 90000959"_$C(10)_"BTI - Stress Title 959"_$C(10)_"AU - Tester, Ann"_$C(10)_"MH - Genomics"_$C(10)_"MH - Diabetes Mellitus.")
 S ^ILS("TMP","J",k)="CREATE|90000959|"_$G(^ILS("TMP","CNT"))
 S k=(k)+1
 S p=$D(^ILS("CAT","8007202"))
 D KILLREC^ILSREC("8007202","CAT")
 S ^ILS("TMP","J",k)="DEL|8007202|"_(p)_"->"_($D(^ILS("CAT","8007202")))
 S k=(k)+1
 S r=$G(^ILS("CAT","8000583","DP",1))
 S ^ILS("TMP","J",k)="READ|CAT|8000583|DP|"_($L(r))_"|"_($E(r,1,24))
 S k=(k)+1
 D PARSE^ILSREC("90000962","CAT","ID - 90000962"_$C(10)_"BTI - Stress Title 962"_$C(10)_"AU - Tester, Ann"_$C(10)_"MH - Diabetes Mellitus.")
 S ^ILS("TMP","J",k)="CREATE|90000962|"_$G(^ILS("TMP","CNT"))
 S k=(k)+1
 D AUTHADD^ILSAUTH("D990963","Stress Heading 963","Z99.963")
 S ^ILS("TMP","J",k)="AUTHADD|D990963|"_($D(^ILS("ANAME","STRESS HEADING 963","D990963")))
 S k=(k)+1
 S r=$G(^ILS("CAT","7909441","MH",1))
 S ^ILS("TMP","J",k)="READ|CAT|7909441|MH|"_($L(r))_"|"_($E(r,1,24))
 S k=(k)+1
 S r=$$DISPATCH^ILSTUI("SHOW CAT 7508397")
 S ^ILS("TMP","J",k)="SEARCH|SHOW_CAT_7508397|"_($L(r))_"|"_($E(r,1,40))
 S k=(k)+1
 S r=$G(^ILS("CAT","1267066","BTI",1))
 S ^ILS("TMP","J",k)="READ|CAT|1267066|BTI|"_($L(r))_"|"_($E(r,1,24))
 S k=(k)+1
 D AUTHADD^ILSAUTH("D990967","Stress Heading 967","Z99.967")
 S ^ILS("TMP","J",k)="AUTHADD|D990967|"_($D(^ILS("ANAME","STRESS HEADING 967","D990967")))
 S k=(k)+1
 D PARSE^ILSREC("90000968","CAT","ID - 90000968"_$C(10)_"BTI - Stress Title 968"_$C(10)_"AU - Tester, Ann"_$C(10)_"MH - Medical Informatics")
 S ^ILS("TMP","J",k)="CREATE|90000968|"_$G(^ILS("TMP","CNT"))
 S k=(k)+1
 D PARSE^ILSREC("90000969","CAT","ID - 90000969"_$C(10)_"BTI - Stress Title 969"_$C(10)_"AU - Tester, Ann"_$C(10)_"MH - Genomics"_$C(10)_"MH - Quantum Bibliography"_$C(10)_"MH - Public Health")
 S ^ILS("TMP","J",k)="CREATE|90000969|"_$G(^ILS("TMP","CNT"))
 S k=(k)+1
 S r=$G(^ILS("SER","1260223","MH",1))
 S ^ILS("TMP","J",k)="READ|SER|1260223|MH|"_($L(r))_"|"_($E(r,1,24))
 S k=(k)+1
 S r=$$DISPATCH^ILSTUI("LIST")
 S ^ILS("TMP","J",k)="SEARCH|LIST|"_($L(r))_"|"_($E(r,1,40))
 S k=(k)+1
 D PARSE^ILSREC("90000972","CAT","ID - 90000972"_$C(10)_"BTI - Stress Title 972"_$C(10)_"AU - Tester, Ann"_$C(10)_"MH - Diabetes Mellitus."_$C(10)_"MH - Genomics"_$C(10)_"MH - Public Health")
 S ^ILS("TMP","J",k)="CREATE|90000972|"_$G(^ILS("TMP","CNT"))
 S k=(k)+1
 D PARSE^ILSREC("90000973","CAT","ID - 90000973"_$C(10)_"BTI - Stress Title 973"_$C(10)_"AU - Tester, Ann"_$C(10)_"MH - Medical Informatics"_$C(10)_"MH - Public Health")
 S ^ILS("TMP","J",k)="CREATE|90000973|"_$G(^ILS("TMP","CNT"))
 S k=(k)+1
 D SEQPUT^ILSREC("90000974","CAT","MH","Stress Heading 974")
 S ^ILS("TMP","J",k)="SEQPUT|90000974"
 S k=(k)+1
 D PARSE^ILSREC("90000975","CAT","ID - 90000975"_$C(10)_"BTI - Stress Title 975"_$C(10)_"AU - Tester, Ann"_$C(10)_"MH - Diabetes Mellitus."_$C(10)_"MH - Public Health"_$C(10)_"MH - Medical Informatics")
 S ^ILS("TMP","J",k)="CREATE|90000975|"_$G(^ILS("TMP","CNT"))
 S k=(k)+1
 D PUT^ILSREC("90000976","CAT","DP",1,"2026")
 S ^ILS("TMP","J",k)="UPD|90000976|"_($D(^ILS("CAT","90000976","DP",1)))
 S k=(k)+1
 S r=$$VALIDATE^ILSAUTH("7703942","CAT")
 S ^ILS("TMP","J",k)="VAL|7703942|"_(r)
 S k=(k)+1
 S r=$G(^ILS("SER","1262373","STI",1))
 S ^ILS("TMP","J",k)="READ|SER|1262373|STI|"_($L(r))_"|"_($E(r,1,24))
 S k=(k)+1
 D PARSE^ILSREC("90000979","CAT","ID - 90000979"_$C(10)_"BTI - Stress Title 979"_$C(10)_"AU - Tester, Ann"_$C(10)_"MH - Public Health"_$C(10)_"MH - Public Health"_$C(10)_"MH - Medical Informatics")
 S ^ILS("TMP","J",k)="CREATE|90000979|"_$G(^ILS("TMP","CNT"))
 S k=(k)+1
 D PARSE^ILSREC("90000980","CAT","ID - 90000980"_$C(10)_"BTI - Stress Title 980"_$C(10)_"AU - Tester, Ann"_$C(10)_"MH - Public Health"_$C(10)_"MH - Medical Informatics"_$C(10)_"MH - Medical Informatics")
 S ^ILS("TMP","J",k)="CREATE|90000980|"_$G(^ILS("TMP","CNT"))
 S k=(k)+1
 D PARSE^ILSREC("90000981","CAT","ID - 90000981"_$C(10)_"BTI - Stress Title 981"_$C(10)_"AU - Tester, Ann"_$C(10)_"MH - Quantum Bibliography")
 S ^ILS("TMP","J",k)="CREATE|90000981|"_$G(^ILS("TMP","CNT"))
 S k=(k)+1
 S r=$$DISPATCH^ILSTUI("FIND DIABETES")
 S ^ILS("TMP","J",k)="SEARCH|FIND_DIABETES|"_($L(r))_"|"_($E(r,1,40))
 S k=(k)+1
 D PARSE^ILSREC("90000983","CAT","ID - 90000983"_$C(10)_"BTI - Stress Title 983"_$C(10)_"AU - Tester, Ann"_$C(10)_"MH - Medical Informatics")
 S ^ILS("TMP","J",k)="CREATE|90000983|"_$G(^ILS("TMP","CNT"))
 S k=(k)+1
 D PARSE^ILSREC("90000984","CAT","ID - 90000984"_$C(10)_"BTI - Stress Title 984"_$C(10)_"AU - Tester, Ann"_$C(10)_"MH - Quantum Bibliography"_$C(10)_"MH - Genomics"_$C(10)_"MH - Public Health")
 S ^ILS("TMP","J",k)="CREATE|90000984|"_$G(^ILS("TMP","CNT"))
 S k=(k)+1
 S p=$D(^ILS("CAT","1302032"))
 D KILLREC^ILSREC("1302032","CAT")
 S ^ILS("TMP","J",k)="DEL|1302032|"_(p)_"->"_($D(^ILS("CAT","1302032")))
 S k=(k)+1
 S r=$G(^ILS("CAT","7605530","BTI",1))
 S ^ILS("TMP","J",k)="READ|CAT|7605530|BTI|"_($L(r))_"|"_($E(r,1,24))
 S k=(k)+1
 D PARSE^ILSREC("90000987","CAT","ID - 90000987"_$C(10)_"BTI - Stress Title 987"_$C(10)_"AU - Tester, Ann"_$C(10)_"MH - Diabetes Mellitus."_$C(10)_"MH - Genomics"_$C(10)_"MH - Medical Informatics")
 S ^ILS("TMP","J",k)="CREATE|90000987|"_$G(^ILS("TMP","CNT"))
 S k=(k)+1
 S p=$D(^ILS("CAT","90000988"))
 D KILLREC^ILSREC("90000988","CAT")
 S ^ILS("TMP","J",k)="DEL|90000988|"_(p)_"->"_($D(^ILS("CAT","90000988")))
 S k=(k)+1
 S r=$G(^ILS("SER","1260300","MH",1))
 S ^ILS("TMP","J",k)="READ|SER|1260300|MH|"_($L(r))_"|"_($E(r,1,24))
 S k=(k)+1
 D PARSE^ILSREC("90000990","CAT","ID - 90000990"_$C(10)_"BTI - Stress Title 990"_$C(10)_"AU - Tester, Ann"_$C(10)_"MH - Public Health"_$C(10)_"MH - Diabetes Mellitus.")
 S ^ILS("TMP","J",k)="CREATE|90000990|"_$G(^ILS("TMP","CNT"))
 S k=(k)+1
 S r=$$VALIDATE^ILSAUTH("90000991","CAT")
 S ^ILS("TMP","J",k)="VAL|90000991|"_(r)
 S k=(k)+1
 S r=$G(^ILS("CAT","7803530","PB",1))
 S ^ILS("TMP","J",k)="READ|CAT|7803530|PB|"_($L(r))_"|"_($E(r,1,24))
 S k=(k)+1
 D PARSE^ILSREC("90000993","CAT","ID - 90000993"_$C(10)_"BTI - Stress Title 993"_$C(10)_"AU - Tester, Ann"_$C(10)_"MH - Medical Informatics"_$C(10)_"MH - Public Health"_$C(10)_"MH - Diabetes Mellitus.")
 S ^ILS("TMP","J",k)="CREATE|90000993|"_$G(^ILS("TMP","CNT"))
 S k=(k)+1
 S r=$$DISPATCH^ILSTUI("FIND DIABETES")
 S ^ILS("TMP","J",k)="SEARCH|FIND_DIABETES|"_($L(r))_"|"_($E(r,1,40))
 S k=(k)+1
 D SEQPUT^ILSREC("7502500","CAT","MH","Stress Heading 995")
 S ^ILS("TMP","J",k)="SEQPUT|7502500"
 S k=(k)+1
 S p=$D(^ILS("CAT","90000996"))
 D KILLREC^ILSREC("90000996","CAT")
 S ^ILS("TMP","J",k)="DEL|90000996|"_(p)_"->"_($D(^ILS("CAT","90000996")))
 S k=(k)+1
 S r=$G(^ILS("SER","1261010","STI",1))
 S ^ILS("TMP","J",k)="READ|SER|1261010|STI|"_($L(r))_"|"_($E(r,1,24))
 S k=(k)+1
 D PARSE^ILSREC("90000998","CAT","ID - 90000998"_$C(10)_"BTI - Stress Title 998"_$C(10)_"AU - Tester, Ann"_$C(10)_"MH - Medical Informatics"_$C(10)_"MH - Diabetes Mellitus.")
 S ^ILS("TMP","J",k)="CREATE|90000998|"_$G(^ILS("TMP","CNT"))
 S k=(k)+1
 S r=$$DISPATCH^ILSTUI("MH DIABETES MELLITUS.")
 S ^ILS("TMP","J",k)="SEARCH|MH_DIABETES_MELLITUS.|"_($L(r))_"|"_($E(r,1,40))
 S k=(k)+1
 S r=$G(^ILS("CAT","7609600","PB",1))
 S ^ILS("TMP","J",k)="READ|CAT|7609600|PB|"_($L(r))_"|"_($E(r,1,24))
 S k=(k)+1
 D PARSE^ILSREC("90001001","CAT","ID - 90001001"_$C(10)_"BTI - Stress Title 1001"_$C(10)_"AU - Tester, Ann"_$C(10)_"MH - Public Health")
 S ^ILS("TMP","J",k)="CREATE|90001001|"_$G(^ILS("TMP","CNT"))
 S k=(k)+1
 S r=$G(^ILS("CAT","7505764","BTI",1))
 S ^ILS("TMP","J",k)="READ|CAT|7505764|BTI|"_($L(r))_"|"_($E(r,1,24))
 S k=(k)+1
 S r=$G(^ILS("SER","1262011","STI",1))
 S ^ILS("TMP","J",k)="READ|SER|1262011|STI|"_($L(r))_"|"_($E(r,1,24))
 S k=(k)+1
 D PARSE^ILSREC("90001004","CAT","ID - 90001004"_$C(10)_"BTI - Stress Title 1004"_$C(10)_"AU - Tester, Ann"_$C(10)_"MH - Quantum Bibliography"_$C(10)_"MH - Diabetes Mellitus.")
 S ^ILS("TMP","J",k)="CREATE|90001004|"_$G(^ILS("TMP","CNT"))
 S k=(k)+1
 S p=$D(^ILS("CAT","7703942"))
 D KILLREC^ILSREC("7703942","CAT")
 S ^ILS("TMP","J",k)="DEL|7703942|"_(p)_"->"_($D(^ILS("CAT","7703942")))
 S k=(k)+1
 S r=$G(^ILS("CAT","7803530","MH",1))
 S ^ILS("TMP","J",k)="READ|CAT|7803530|MH|"_($L(r))_"|"_($E(r,1,24))
 S k=(k)+1
 S r=$$DISPATCH^ILSTUI("SHOW CAT 7505764")
 S ^ILS("TMP","J",k)="SEARCH|SHOW_CAT_7505764|"_($L(r))_"|"_($E(r,1,40))
 S k=(k)+1
 S r=$G(^ILS("SER","1256232","ISS",1))
 S ^ILS("TMP","J",k)="READ|SER|1256232|ISS|"_($L(r))_"|"_($E(r,1,24))
 S k=(k)+1
 D PARSE^ILSREC("90001009","CAT","ID - 90001009"_$C(10)_"BTI - Stress Title 1009"_$C(10)_"AU - Tester, Ann"_$C(10)_"MH - Genomics"_$C(10)_"MH - Genomics")
 S ^ILS("TMP","J",k)="CREATE|90001009|"_$G(^ILS("TMP","CNT"))
 S k=(k)+1
 S r=$G(^ILS("SER","1260024","MH",1))
 S ^ILS("TMP","J",k)="READ|SER|1260024|MH|"_($L(r))_"|"_($E(r,1,24))
 S k=(k)+1
 D PARSE^ILSREC("90001011","CAT","ID - 90001011"_$C(10)_"BTI - Stress Title 1011"_$C(10)_"AU - Tester, Ann"_$C(10)_"MH - Public Health")
 S ^ILS("TMP","J",k)="CREATE|90001011|"_$G(^ILS("TMP","CNT"))
 S k=(k)+1
 S r=$$DISPATCH^ILSTUI("HELP")
 S ^ILS("TMP","J",k)="SEARCH|HELP|"_($L(r))_"|"_($E(r,1,40))
 S k=(k)+1
 D PARSE^ILSREC("90001013","CAT","ID - 90001013"_$C(10)_"BTI - Stress Title 1013"_$C(10)_"AU - Tester, Ann"_$C(10)_"MH - Diabetes Mellitus."_$C(10)_"MH - Medical Informatics"_$C(10)_"MH - Quantum Bibliography")
 S ^ILS("TMP","J",k)="CREATE|90001013|"_$G(^ILS("TMP","CNT"))
 S k=(k)+1
 D PARSE^ILSREC("90001014","CAT","ID - 90001014"_$C(10)_"BTI - Stress Title 1014"_$C(10)_"AU - Tester, Ann"_$C(10)_"MH - Public Health")
 S ^ILS("TMP","J",k)="CREATE|90001014|"_$G(^ILS("TMP","CNT"))
 S k=(k)+1
 D PARSE^ILSREC("90001015","CAT","ID - 90001015"_$C(10)_"BTI - Stress Title 1015"_$C(10)_"AU - Tester, Ann"_$C(10)_"MH - Quantum Bibliography")
 S ^ILS("TMP","J",k)="CREATE|90001015|"_$G(^ILS("TMP","CNT"))
 S k=(k)+1
 S r=$$DISPATCH^ILSTUI("SHOW SER 1260767")
 S ^ILS("TMP","J",k)="SEARCH|SHOW_SER_1260767|"_($L(r))_"|"_($E(r,1,40))
 S k=(k)+1
 D AUTHADD^ILSAUTH("D991017","Stress Heading 1017","Z99.017")
 S ^ILS("TMP","J",k)="AUTHADD|D991017|"_($D(^ILS("ANAME","STRESS HEADING 1017","D991017")))
 S k=(k)+1
 D AUTHADD^ILSAUTH("D991018","Stress Heading 1018","Z99.018")
 S ^ILS("TMP","J",k)="AUTHADD|D991018|"_($D(^ILS("ANAME","STRESS HEADING 1018","D991018")))
 S k=(k)+1
 D PARSE^ILSREC("90001019","CAT","ID - 90001019"_$C(10)_"BTI - Stress Title 1019"_$C(10)_"AU - Tester, Ann"_$C(10)_"MH - Quantum Bibliography")
 S ^ILS("TMP","J",k)="CREATE|90001019|"_$G(^ILS("TMP","CNT"))
 S k=(k)+1
 S r=$$DISPATCH^ILSTUI("LEDGER")
 S ^ILS("TMP","J",k)="SEARCH|LEDGER|"_($L(r))_"|"_($E(r,1,40))
 S k=(k)+1
 S r=$G(^ILS("CAT","7508397","MH",1))
 S ^ILS("TMP","J",k)="READ|CAT|7508397|MH|"_($L(r))_"|"_($E(r,1,24))
 S k=(k)+1
 S r=$G(^ILS("CAT","7503289","AU",1))
 S ^ILS("TMP","J",k)="READ|CAT|7503289|AU|"_($L(r))_"|"_($E(r,1,24))
 S k=(k)+1
 S r=$$DISPATCH^ILSTUI("MH DIABETES MELLITUS.")
 S ^ILS("TMP","J",k)="SEARCH|MH_DIABETES_MELLITUS.|"_($L(r))_"|"_($E(r,1,40))
 S k=(k)+1
 D PARSE^ILSREC("90001024","CAT","ID - 90001024"_$C(10)_"BTI - Stress Title 1024"_$C(10)_"AU - Tester, Ann"_$C(10)_"MH - Quantum Bibliography"_$C(10)_"MH - Quantum Bibliography")
 S ^ILS("TMP","J",k)="CREATE|90001024|"_$G(^ILS("TMP","CNT"))
 S k=(k)+1
 S p=$D(^ILS("CAT","7911752"))
 D KILLREC^ILSREC("7911752","CAT")
 S ^ILS("TMP","J",k)="DEL|7911752|"_(p)_"->"_($D(^ILS("CAT","7911752")))
 S k=(k)+1
 S r=$$DISPATCH^ILSTUI("FIND DIABETES")
 S ^ILS("TMP","J",k)="SEARCH|FIND_DIABETES|"_($L(r))_"|"_($E(r,1,40))
 S k=(k)+1
 S r=$G(^ILS("CAT","1267066","PB",1))
 S ^ILS("TMP","J",k)="READ|CAT|1267066|PB|"_($L(r))_"|"_($E(r,1,24))
 S k=(k)+1
 S r=$G(^ILS("CAT","7506781","MH",1))
 S ^ILS("TMP","J",k)="READ|CAT|7506781|MH|"_($L(r))_"|"_($E(r,1,24))
 S k=(k)+1
 D PARSE^ILSREC("90001029","CAT","ID - 90001029"_$C(10)_"BTI - Stress Title 1029"_$C(10)_"AU - Tester, Ann"_$C(10)_"MH - Genomics"_$C(10)_"MH - Genomics"_$C(10)_"MH - Public Health")
 S ^ILS("TMP","J",k)="CREATE|90001029|"_$G(^ILS("TMP","CNT"))
 S k=(k)+1
 D SEQPUT^ILSREC("8101154","CAT","MH","Stress Heading 1030")
 S ^ILS("TMP","J",k)="SEQPUT|8101154"
 S k=(k)+1
 S r=$$DISPATCH^ILSTUI("LIST")
 S ^ILS("TMP","J",k)="SEARCH|LIST|"_($L(r))_"|"_($E(r,1,40))
 S k=(k)+1
 S r=$$VALIDATE^ILSAUTH("7803530","CAT")
 S ^ILS("TMP","J",k)="VAL|7803530|"_(r)
 S k=(k)+1
 S r=$$DISPATCH^ILSTUI("FIND HEALTH")
 S ^ILS("TMP","J",k)="SEARCH|FIND_HEALTH|"_($L(r))_"|"_($E(r,1,40))
 S k=(k)+1
 D PARSE^ILSREC("90001034","CAT","ID - 90001034"_$C(10)_"BTI - Stress Title 1034"_$C(10)_"AU - Tester, Ann"_$C(10)_"MH - Genomics"_$C(10)_"MH - Medical Informatics"_$C(10)_"MH - Medical Informatics")
 S ^ILS("TMP","J",k)="CREATE|90001034|"_$G(^ILS("TMP","CNT"))
 S k=(k)+1
 S p=$D(^ILS("CAT","90001035"))
 D KILLREC^ILSREC("90001035","CAT")
 S ^ILS("TMP","J",k)="DEL|90001035|"_(p)_"->"_($D(^ILS("CAT","90001035")))
 S k=(k)+1
 S r=$$DISPATCH^ILSTUI("HELP")
 S ^ILS("TMP","J",k)="SEARCH|HELP|"_($L(r))_"|"_($E(r,1,40))
 S k=(k)+1
 S p=$D(^ILS("CAT","7502500"))
 D KILLREC^ILSREC("7502500","CAT")
 S ^ILS("TMP","J",k)="DEL|7502500|"_(p)_"->"_($D(^ILS("CAT","7502500")))
 S k=(k)+1
 S r=$$VALIDATE^ILSAUTH("90001038","CAT")
 S ^ILS("TMP","J",k)="VAL|90001038|"_(r)
 S k=(k)+1
 D PARSE^ILSREC("90001039","CAT","ID - 90001039"_$C(10)_"BTI - Stress Title 1039"_$C(10)_"AU - Tester, Ann"_$C(10)_"MH - Genomics"_$C(10)_"MH - Quantum Bibliography")
 S ^ILS("TMP","J",k)="CREATE|90001039|"_$G(^ILS("TMP","CNT"))
 S k=(k)+1
 D PARSE^ILSREC("90001040","CAT","ID - 90001040"_$C(10)_"BTI - Stress Title 1040"_$C(10)_"AU - Tester, Ann"_$C(10)_"MH - Diabetes Mellitus."_$C(10)_"MH - Medical Informatics"_$C(10)_"MH - Public Health")
 S ^ILS("TMP","J",k)="CREATE|90001040|"_$G(^ILS("TMP","CNT"))
 S k=(k)+1
 S r=$G(^ILS("SER","1262226","STI",1))
 S ^ILS("TMP","J",k)="READ|SER|1262226|STI|"_($L(r))_"|"_($E(r,1,24))
 S k=(k)+1
 D PARSE^ILSREC("90001042","CAT","ID - 90001042"_$C(10)_"BTI - Stress Title 1042"_$C(10)_"AU - Tester, Ann"_$C(10)_"MH - Quantum Bibliography"_$C(10)_"MH - Medical Informatics"_$C(10)_"MH - Public Health")
 S ^ILS("TMP","J",k)="CREATE|90001042|"_$G(^ILS("TMP","CNT"))
 S k=(k)+1
 S p=$D(^ILS("CAT","90001043"))
 D KILLREC^ILSREC("90001043","CAT")
 S ^ILS("TMP","J",k)="DEL|90001043|"_(p)_"->"_($D(^ILS("CAT","90001043")))
 S k=(k)+1
 S p=$D(^ILS("CAT","8003963"))
 D KILLREC^ILSREC("8003963","CAT")
 S ^ILS("TMP","J",k)="DEL|8003963|"_(p)_"->"_($D(^ILS("CAT","8003963")))
 S k=(k)+1
 S r=$$DISPATCH^ILSTUI("RELATED D003920")
 S ^ILS("TMP","J",k)="SEARCH|RELATED_D003920|"_($L(r))_"|"_($E(r,1,40))
 S k=(k)+1
 S r=$G(^ILS("CAT","7901827","MH",1))
 S ^ILS("TMP","J",k)="READ|CAT|7901827|MH|"_($L(r))_"|"_($E(r,1,24))
 S k=(k)+1
 D SEQPUT^ILSREC("90001047","CAT","MH","Stress Heading 1047")
 S ^ILS("TMP","J",k)="SEQPUT|90001047"
 S k=(k)+1
 S r=$$DISPATCH^ILSTUI("MH DIABETES MELLITUS.")
 S ^ILS("TMP","J",k)="SEARCH|MH_DIABETES_MELLITUS.|"_($L(r))_"|"_($E(r,1,40))
 S k=(k)+1
 S r=$$DISPATCH^ILSTUI("AUTH D003920")
 S ^ILS("TMP","J",k)="SEARCH|AUTH_D003920|"_($L(r))_"|"_($E(r,1,40))
 S k=(k)+1
 S r=$G(^ILS("CAT","7909441","DP",1))
 S ^ILS("TMP","J",k)="READ|CAT|7909441|DP|"_($L(r))_"|"_($E(r,1,24))
 S k=(k)+1
 D PARSE^ILSREC("90001051","CAT","ID - 90001051"_$C(10)_"BTI - Stress Title 1051"_$C(10)_"AU - Tester, Ann"_$C(10)_"MH - Quantum Bibliography"_$C(10)_"MH - Diabetes Mellitus.")
 S ^ILS("TMP","J",k)="CREATE|90001051|"_$G(^ILS("TMP","CNT"))
 S k=(k)+1
 S r=$$DISPATCH^ILSTUI("SHOW CAT 8003963")
 S ^ILS("TMP","J",k)="SEARCH|SHOW_CAT_8003963|"_($L(r))_"|"_($E(r,1,40))
 S k=(k)+1
 D PARSE^ILSREC("90001053","CAT","ID - 90001053"_$C(10)_"BTI - Stress Title 1053"_$C(10)_"AU - Tester, Ann"_$C(10)_"MH - Diabetes Mellitus."_$C(10)_"MH - Genomics")
 S ^ILS("TMP","J",k)="CREATE|90001053|"_$G(^ILS("TMP","CNT"))
 S k=(k)+1
 D SEQPUT^ILSREC("90001054","CAT","MH","Stress Heading 1054")
 S ^ILS("TMP","J",k)="SEQPUT|90001054"
 S k=(k)+1
 D PARSE^ILSREC("90001055","CAT","ID - 90001055"_$C(10)_"BTI - Stress Title 1055"_$C(10)_"AU - Tester, Ann"_$C(10)_"MH - Public Health"_$C(10)_"MH - Public Health")
 S ^ILS("TMP","J",k)="CREATE|90001055|"_$G(^ILS("TMP","CNT"))
 S k=(k)+1
 D SEQPUT^ILSREC("90001056","CAT","MH","Stress Heading 1056")
 S ^ILS("TMP","J",k)="SEQPUT|90001056"
 S k=(k)+1
 S r=$$VALIDATE^ILSAUTH("7508397","CAT")
 S ^ILS("TMP","J",k)="VAL|7508397|"_(r)
 S k=(k)+1
 S r=$$VALIDATE^ILSAUTH("7605530","CAT")
 S ^ILS("TMP","J",k)="VAL|7605530|"_(r)
 S k=(k)+1
 D AUTHADD^ILSAUTH("D991059","Stress Heading 1059","Z99.059")
 S ^ILS("TMP","J",k)="AUTHADD|D991059|"_($D(^ILS("ANAME","STRESS HEADING 1059","D991059")))
 S k=(k)+1
 S r=$G(^ILS("CAT","7503289","DP",1))
 S ^ILS("TMP","J",k)="READ|CAT|7503289|DP|"_($L(r))_"|"_($E(r,1,24))
 S k=(k)+1
 D PARSE^ILSREC("90001061","CAT","ID - 90001061"_$C(10)_"BTI - Stress Title 1061"_$C(10)_"AU - Tester, Ann"_$C(10)_"MH - Quantum Bibliography"_$C(10)_"MH - Medical Informatics")
 S ^ILS("TMP","J",k)="CREATE|90001061|"_$G(^ILS("TMP","CNT"))
 S k=(k)+1
 S p=$D(^ILS("CAT","90001062"))
 D KILLREC^ILSREC("90001062","CAT")
 S ^ILS("TMP","J",k)="DEL|90001062|"_(p)_"->"_($D(^ILS("CAT","90001062")))
 S k=(k)+1
 S r=$$DISPATCH^ILSTUI("FIND DIABETES")
 S ^ILS("TMP","J",k)="SEARCH|FIND_DIABETES|"_($L(r))_"|"_($E(r,1,40))
 S k=(k)+1
 D SEQPUT^ILSREC("8101154","CAT","MH","Stress Heading 1064")
 S ^ILS("TMP","J",k)="SEQPUT|8101154"
 S k=(k)+1
 S p=$D(^ILS("CAT","7503289"))
 D KILLREC^ILSREC("7503289","CAT")
 S ^ILS("TMP","J",k)="DEL|7503289|"_(p)_"->"_($D(^ILS("CAT","7503289")))
 S k=(k)+1
 S p=$D(^ILS("CAT","1267066"))
 D KILLREC^ILSREC("1267066","CAT")
 S ^ILS("TMP","J",k)="DEL|1267066|"_(p)_"->"_($D(^ILS("CAT","1267066")))
 S k=(k)+1
 D PARSE^ILSREC("90001067","CAT","ID - 90001067"_$C(10)_"BTI - Stress Title 1067"_$C(10)_"AU - Tester, Ann"_$C(10)_"MH - Genomics"_$C(10)_"MH - Public Health")
 S ^ILS("TMP","J",k)="CREATE|90001067|"_$G(^ILS("TMP","CNT"))
 S k=(k)+1
 D SEQPUT^ILSREC("7802251","CAT","MH","Stress Heading 1068")
 S ^ILS("TMP","J",k)="SEQPUT|7802251"
 S k=(k)+1
 S r=$$DISPATCH^ILSTUI("MH DIABETES MELLITUS.")
 S ^ILS("TMP","J",k)="SEARCH|MH_DIABETES_MELLITUS.|"_($L(r))_"|"_($E(r,1,40))
 S k=(k)+1
 D PARSE^ILSREC("90001070","CAT","ID - 90001070"_$C(10)_"BTI - Stress Title 1070"_$C(10)_"AU - Tester, Ann"_$C(10)_"MH - Medical Informatics"_$C(10)_"MH - Quantum Bibliography")
 S ^ILS("TMP","J",k)="CREATE|90001070|"_$G(^ILS("TMP","CNT"))
 S k=(k)+1
 D PARSE^ILSREC("90001071","CAT","ID - 90001071"_$C(10)_"BTI - Stress Title 1071"_$C(10)_"AU - Tester, Ann"_$C(10)_"MH - Medical Informatics"_$C(10)_"MH - Medical Informatics")
 S ^ILS("TMP","J",k)="CREATE|90001071|"_$G(^ILS("TMP","CNT"))
 S k=(k)+1
 S r=$G(^ILS("CAT","7506781","BTI",1))
 S ^ILS("TMP","J",k)="READ|CAT|7506781|BTI|"_($L(r))_"|"_($E(r,1,24))
 S k=(k)+1
 D AUTHADD^ILSAUTH("D991073","Stress Heading 1073","Z99.073")
 S ^ILS("TMP","J",k)="AUTHADD|D991073|"_($D(^ILS("ANAME","STRESS HEADING 1073","D991073")))
 S k=(k)+1
 S r=$G(^ILS("CAT","7901827","AU",1))
 S ^ILS("TMP","J",k)="READ|CAT|7901827|AU|"_($L(r))_"|"_($E(r,1,24))
 S k=(k)+1
 S p=$D(^ILS("CAT","90001075"))
 D KILLREC^ILSREC("90001075","CAT")
 S ^ILS("TMP","J",k)="DEL|90001075|"_(p)_"->"_($D(^ILS("CAT","90001075")))
 S k=(k)+1
 S r=$$DISPATCH^ILSTUI("ISSN 0742-3071")
 S ^ILS("TMP","J",k)="SEARCH|ISSN_0742-3071|"_($L(r))_"|"_($E(r,1,40))
 S k=(k)+1
 S r=$$DISPATCH^ILSTUI("SHOW CAT 1264327")
 S ^ILS("TMP","J",k)="SEARCH|SHOW_CAT_1264327|"_($L(r))_"|"_($E(r,1,40))
 S k=(k)+1
 S p=$D(^ILS("CAT","90001078"))
 D KILLREC^ILSREC("90001078","CAT")
 S ^ILS("TMP","J",k)="DEL|90001078|"_(p)_"->"_($D(^ILS("CAT","90001078")))
 S k=(k)+1
 S r=$$DISPATCH^ILSTUI("MH GENOMICS")
 S ^ILS("TMP","J",k)="SEARCH|MH_GENOMICS|"_($L(r))_"|"_($E(r,1,40))
 S k=(k)+1
 S r=$$DISPATCH^ILSTUI("ISSN 0742-3071")
 S ^ILS("TMP","J",k)="SEARCH|ISSN_0742-3071|"_($L(r))_"|"_($E(r,1,40))
 S k=(k)+1
 S r=$$DISPATCH^ILSTUI("LIST")
 S ^ILS("TMP","J",k)="SEARCH|LIST|"_($L(r))_"|"_($E(r,1,40))
 S k=(k)+1
 S r=$G(^ILS("CAT","7802251","PB",1))
 S ^ILS("TMP","J",k)="READ|CAT|7802251|PB|"_($L(r))_"|"_($E(r,1,24))
 S k=(k)+1
 S r=$$DISPATCH^ILSTUI("HELP")
 S ^ILS("TMP","J",k)="SEARCH|HELP|"_($L(r))_"|"_($E(r,1,40))
 S k=(k)+1
 D PARSE^ILSREC("90001084","CAT","ID - 90001084"_$C(10)_"BTI - Stress Title 1084"_$C(10)_"AU - Tester, Ann"_$C(10)_"MH - Public Health"_$C(10)_"MH - Medical Informatics"_$C(10)_"MH - Medical Informatics")
 S ^ILS("TMP","J",k)="CREATE|90001084|"_$G(^ILS("TMP","CNT"))
 S k=(k)+1
 S r=$$DISPATCH^ILSTUI("ISSN 0742-3071")
 S ^ILS("TMP","J",k)="SEARCH|ISSN_0742-3071|"_($L(r))_"|"_($E(r,1,40))
 S k=(k)+1
 S r=$G(^ILS("CAT","7506781","PB",1))
 S ^ILS("TMP","J",k)="READ|CAT|7506781|PB|"_($L(r))_"|"_($E(r,1,24))
 S k=(k)+1
 S p=$D(^ILS("CAT","8003963"))
 D KILLREC^ILSREC("8003963","CAT")
 S ^ILS("TMP","J",k)="DEL|8003963|"_(p)_"->"_($D(^ILS("CAT","8003963")))
 S k=(k)+1
 S r=$$VALIDATE^ILSAUTH("7503289","CAT")
 S ^ILS("TMP","J",k)="VAL|7503289|"_(r)
 S k=(k)+1
 D PARSE^ILSREC("90001089","CAT","ID - 90001089"_$C(10)_"BTI - Stress Title 1089"_$C(10)_"AU - Tester, Ann"_$C(10)_"MH - Genomics")
 S ^ILS("TMP","J",k)="CREATE|90001089|"_$G(^ILS("TMP","CNT"))
 S k=(k)+1
 D SEQPUT^ILSREC("90001090","CAT","MH","Stress Heading 1090")
 S ^ILS("TMP","J",k)="SEQPUT|90001090"
 S k=(k)+1
 S r=$$DISPATCH^ILSTUI("SHOW CAT 1302032")
 S ^ILS("TMP","J",k)="SEARCH|SHOW_CAT_1302032|"_($L(r))_"|"_($E(r,1,40))
 S k=(k)+1
 D PARSE^ILSREC("90001092","CAT","ID - 90001092"_$C(10)_"BTI - Stress Title 1092"_$C(10)_"AU - Tester, Ann"_$C(10)_"MH - Public Health"_$C(10)_"MH - Public Health")
 S ^ILS("TMP","J",k)="CREATE|90001092|"_$G(^ILS("TMP","CNT"))
 S k=(k)+1
 S p=$D(^ILS("CAT","8007202"))
 D KILLREC^ILSREC("8007202","CAT")
 S ^ILS("TMP","J",k)="DEL|8007202|"_(p)_"->"_($D(^ILS("CAT","8007202")))
 S k=(k)+1
 D PARSE^ILSREC("90001094","CAT","ID - 90001094"_$C(10)_"BTI - Stress Title 1094"_$C(10)_"AU - Tester, Ann"_$C(10)_"MH - Medical Informatics"_$C(10)_"MH - Diabetes Mellitus."_$C(10)_"MH - Public Health")
 S ^ILS("TMP","J",k)="CREATE|90001094|"_$G(^ILS("TMP","CNT"))
 S k=(k)+1
 D SEQPUT^ILSREC("7808791","CAT","MH","Stress Heading 1095")
 S ^ILS("TMP","J",k)="SEQPUT|7808791"
 S k=(k)+1
 S r=$G(^ILS("SER","1260223","MH",1))
 S ^ILS("TMP","J",k)="READ|SER|1260223|MH|"_($L(r))_"|"_($E(r,1,24))
 S k=(k)+1
 S r=$G(^ILS("CAT","8000583","MH",1))
 S ^ILS("TMP","J",k)="READ|CAT|8000583|MH|"_($L(r))_"|"_($E(r,1,24))
 S k=(k)+1
 D PARSE^ILSREC("90001098","CAT","ID - 90001098"_$C(10)_"BTI - Stress Title 1098"_$C(10)_"AU - Tester, Ann"_$C(10)_"MH - Quantum Bibliography")
 S ^ILS("TMP","J",k)="CREATE|90001098|"_$G(^ILS("TMP","CNT"))
 S k=(k)+1
 D PARSE^ILSREC("90001099","CAT","ID - 90001099"_$C(10)_"BTI - Stress Title 1099"_$C(10)_"AU - Tester, Ann"_$C(10)_"MH - Medical Informatics"_$C(10)_"MH - Diabetes Mellitus.")
 S ^ILS("TMP","J",k)="CREATE|90001099|"_$G(^ILS("TMP","CNT"))
 S k=(k)+1
 S p=$D(^ILS("CAT","90001100"))
 D KILLREC^ILSREC("90001100","CAT")
 S ^ILS("TMP","J",k)="DEL|90001100|"_(p)_"->"_($D(^ILS("CAT","90001100")))
 S k=(k)+1
 S r=$$DISPATCH^ILSTUI("FIND HEALTH")
 S ^ILS("TMP","J",k)="SEARCH|FIND_HEALTH|"_($L(r))_"|"_($E(r,1,40))
 S k=(k)+1
 D PUT^ILSREC("7605530","CAT","DP",1,"2026")
 S ^ILS("TMP","J",k)="UPD|7605530|"_($D(^ILS("CAT","7605530","DP",1)))
 S k=(k)+1
 S r=$$DISPATCH^ILSTUI("LEDGER")
 S ^ILS("TMP","J",k)="SEARCH|LEDGER|"_($L(r))_"|"_($E(r,1,40))
 S k=(k)+1
 D PARSE^ILSREC("90001104","CAT","ID - 90001104"_$C(10)_"BTI - Stress Title 1104"_$C(10)_"AU - Tester, Ann"_$C(10)_"MH - Medical Informatics"_$C(10)_"MH - Medical Informatics"_$C(10)_"MH - Medical Informatics")
 S ^ILS("TMP","J",k)="CREATE|90001104|"_$G(^ILS("TMP","CNT"))
 S k=(k)+1
 D PARSE^ILSREC("90001105","CAT","ID - 90001105"_$C(10)_"BTI - Stress Title 1105"_$C(10)_"AU - Tester, Ann"_$C(10)_"MH - Medical Informatics")
 S ^ILS("TMP","J",k)="CREATE|90001105|"_$G(^ILS("TMP","CNT"))
 S k=(k)+1
 D PARSE^ILSREC("90001106","CAT","ID - 90001106"_$C(10)_"BTI - Stress Title 1106"_$C(10)_"AU - Tester, Ann"_$C(10)_"MH - Quantum Bibliography"_$C(10)_"MH - Medical Informatics"_$C(10)_"MH - Public Health")
 S ^ILS("TMP","J",k)="CREATE|90001106|"_$G(^ILS("TMP","CNT"))
 S k=(k)+1
 S r=$G(^ILS("SER","1260024","STI",1))
 S ^ILS("TMP","J",k)="READ|SER|1260024|STI|"_($L(r))_"|"_($E(r,1,24))
 S k=(k)+1
 S r=$$VALIDATE^ILSAUTH("7901827","CAT")
 S ^ILS("TMP","J",k)="VAL|7901827|"_(r)
 S k=(k)+1
 S p=$D(^ILS("CAT","90001109"))
 D KILLREC^ILSREC("90001109","CAT")
 S ^ILS("TMP","J",k)="DEL|90001109|"_(p)_"->"_($D(^ILS("CAT","90001109")))
 S k=(k)+1
 D PARSE^ILSREC("90001110","CAT","ID - 90001110"_$C(10)_"BTI - Stress Title 1110"_$C(10)_"AU - Tester, Ann"_$C(10)_"MH - Diabetes Mellitus."_$C(10)_"MH - Genomics"_$C(10)_"MH - Quantum Bibliography")
 S ^ILS("TMP","J",k)="CREATE|90001110|"_$G(^ILS("TMP","CNT"))
 S k=(k)+1
 S r=$G(^ILS("SER","1260223","MH",1))
 S ^ILS("TMP","J",k)="READ|SER|1260223|MH|"_($L(r))_"|"_($E(r,1,24))
 S k=(k)+1
 D PARSE^ILSREC("90001112","CAT","ID - 90001112"_$C(10)_"BTI - Stress Title 1112"_$C(10)_"AU - Tester, Ann"_$C(10)_"MH - Public Health"_$C(10)_"MH - Diabetes Mellitus.")
 S ^ILS("TMP","J",k)="CREATE|90001112|"_$G(^ILS("TMP","CNT"))
 S k=(k)+1
 D PUT^ILSREC("8101154","CAT","DP",1,"2026")
 S ^ILS("TMP","J",k)="UPD|8101154|"_($D(^ILS("CAT","8101154","DP",1)))
 S k=(k)+1
 D PUT^ILSREC("90001114","CAT","DP",1,"2026")
 S ^ILS("TMP","J",k)="UPD|90001114|"_($D(^ILS("CAT","90001114","DP",1)))
 S k=(k)+1
 S r=$G(^ILS("CAT","7705180","DP",1))
 S ^ILS("TMP","J",k)="READ|CAT|7705180|DP|"_($L(r))_"|"_($E(r,1,24))
 S k=(k)+1
 S r=$G(^ILS("CAT","7503289","PB",1))
 S ^ILS("TMP","J",k)="READ|CAT|7503289|PB|"_($L(r))_"|"_($E(r,1,24))
 S k=(k)+1
 S r=$$VALIDATE^ILSAUTH("90001117","CAT")
 S ^ILS("TMP","J",k)="VAL|90001117|"_(r)
 S k=(k)+1
 D PUT^ILSREC("90001118","CAT","DP",1,"2026")
 S ^ILS("TMP","J",k)="UPD|90001118|"_($D(^ILS("CAT","90001118","DP",1)))
 S k=(k)+1
 D PARSE^ILSREC("90001119","CAT","ID - 90001119"_$C(10)_"BTI - Stress Title 1119"_$C(10)_"AU - Tester, Ann"_$C(10)_"MH - Diabetes Mellitus."_$C(10)_"MH - Diabetes Mellitus."_$C(10)_"MH - Public Health")
 S ^ILS("TMP","J",k)="CREATE|90001119|"_$G(^ILS("TMP","CNT"))
 S k=(k)+1
 S r=$G(^ILS("CAT","7807107","MH",1))
 S ^ILS("TMP","J",k)="READ|CAT|7807107|MH|"_($L(r))_"|"_($E(r,1,24))
 S k=(k)+1
 S r=$G(^ILS("CAT","1267066","PB",1))
 S ^ILS("TMP","J",k)="READ|CAT|1267066|PB|"_($L(r))_"|"_($E(r,1,24))
 S k=(k)+1
 S p=$D(^ILS("CAT","7807107"))
 D KILLREC^ILSREC("7807107","CAT")
 S ^ILS("TMP","J",k)="DEL|7807107|"_(p)_"->"_($D(^ILS("CAT","7807107")))
 S k=(k)+1
 S r=$$DISPATCH^ILSTUI("AUTH D003920")
 S ^ILS("TMP","J",k)="SEARCH|AUTH_D003920|"_($L(r))_"|"_($E(r,1,40))
 S k=(k)+1
 S r=$$DISPATCH^ILSTUI("FIND DIABETES")
 S ^ILS("TMP","J",k)="SEARCH|FIND_DIABETES|"_($L(r))_"|"_($E(r,1,40))
 S k=(k)+1
 S r=$G(^ILS("SER","1260024","ISS",1))
 S ^ILS("TMP","J",k)="READ|SER|1260024|ISS|"_($L(r))_"|"_($E(r,1,24))
 S k=(k)+1
 D PARSE^ILSREC("90001126","CAT","ID - 90001126"_$C(10)_"BTI - Stress Title 1126"_$C(10)_"AU - Tester, Ann"_$C(10)_"MH - Diabetes Mellitus.")
 S ^ILS("TMP","J",k)="CREATE|90001126|"_$G(^ILS("TMP","CNT"))
 S k=(k)+1
 D PARSE^ILSREC("90001127","CAT","ID - 90001127"_$C(10)_"BTI - Stress Title 1127"_$C(10)_"AU - Tester, Ann"_$C(10)_"MH - Medical Informatics")
 S ^ILS("TMP","J",k)="CREATE|90001127|"_$G(^ILS("TMP","CNT"))
 S k=(k)+1
 S r=$$DISPATCH^ILSTUI("MH DIABETES MELLITUS.")
 S ^ILS("TMP","J",k)="SEARCH|MH_DIABETES_MELLITUS.|"_($L(r))_"|"_($E(r,1,40))
 S k=(k)+1
 S r=$$DISPATCH^ILSTUI("MH GENOMICS")
 S ^ILS("TMP","J",k)="SEARCH|MH_GENOMICS|"_($L(r))_"|"_($E(r,1,40))
 S k=(k)+1
 S r=$$DISPATCH^ILSTUI("RELATED D003920")
 S ^ILS("TMP","J",k)="SEARCH|RELATED_D003920|"_($L(r))_"|"_($E(r,1,40))
 S k=(k)+1
 S r=$$DISPATCH^ILSTUI("MH GENOMICS")
 S ^ILS("TMP","J",k)="SEARCH|MH_GENOMICS|"_($L(r))_"|"_($E(r,1,40))
 S k=(k)+1
 S r=$$DISPATCH^ILSTUI("MH GENOMICS")
 S ^ILS("TMP","J",k)="SEARCH|MH_GENOMICS|"_($L(r))_"|"_($E(r,1,40))
 S k=(k)+1
 D PARSE^ILSREC("90001133","CAT","ID - 90001133"_$C(10)_"BTI - Stress Title 1133"_$C(10)_"AU - Tester, Ann"_$C(10)_"MH - Quantum Bibliography"_$C(10)_"MH - Genomics")
 S ^ILS("TMP","J",k)="CREATE|90001133|"_$G(^ILS("TMP","CNT"))
 S k=(k)+1
 S r=$$DISPATCH^ILSTUI("LEDGER")
 S ^ILS("TMP","J",k)="SEARCH|LEDGER|"_($L(r))_"|"_($E(r,1,40))
 S k=(k)+1
 D PARSE^ILSREC("90001135","CAT","ID - 90001135"_$C(10)_"BTI - Stress Title 1135"_$C(10)_"AU - Tester, Ann"_$C(10)_"MH - Genomics"_$C(10)_"MH - Public Health"_$C(10)_"MH - Quantum Bibliography")
 S ^ILS("TMP","J",k)="CREATE|90001135|"_$G(^ILS("TMP","CNT"))
 S k=(k)+1
 S r=$$DISPATCH^ILSTUI("SHOW CAT 7807107")
 S ^ILS("TMP","J",k)="SEARCH|SHOW_CAT_7807107|"_($L(r))_"|"_($E(r,1,40))
 S k=(k)+1
 S r=$$DISPATCH^ILSTUI("SHOW SER 1260300")
 S ^ILS("TMP","J",k)="SEARCH|SHOW_SER_1260300|"_($L(r))_"|"_($E(r,1,40))
 S k=(k)+1
 D SEQPUT^ILSREC("8007202","CAT","MH","Stress Heading 1138")
 S ^ILS("TMP","J",k)="SEQPUT|8007202"
 S k=(k)+1
 D AUTHADD^ILSAUTH("D991139","Stress Heading 1139","Z99.139")
 S ^ILS("TMP","J",k)="AUTHADD|D991139|"_($D(^ILS("ANAME","STRESS HEADING 1139","D991139")))
 S k=(k)+1
 D PUT^ILSREC("7909441","CAT","DP",1,"2026")
 S ^ILS("TMP","J",k)="UPD|7909441|"_($D(^ILS("CAT","7909441","DP",1)))
 S k=(k)+1
 D AUTHADD^ILSAUTH("D991141","Stress Heading 1141","Z99.141")
 S ^ILS("TMP","J",k)="AUTHADD|D991141|"_($D(^ILS("ANAME","STRESS HEADING 1141","D991141")))
 S k=(k)+1
 S r=$$DISPATCH^ILSTUI("FIND HEALTH")
 S ^ILS("TMP","J",k)="SEARCH|FIND_HEALTH|"_($L(r))_"|"_($E(r,1,40))
 S k=(k)+1
 S r=$G(^ILS("CAT","7808791","DP",1))
 S ^ILS("TMP","J",k)="READ|CAT|7808791|DP|"_($L(r))_"|"_($E(r,1,24))
 S k=(k)+1
 S p=$D(^ILS("CAT","90001144"))
 D KILLREC^ILSREC("90001144","CAT")
 S ^ILS("TMP","J",k)="DEL|90001144|"_(p)_"->"_($D(^ILS("CAT","90001144")))
 S k=(k)+1
 S r=$G(^ILS("CAT","1264327","BTI",1))
 S ^ILS("TMP","J",k)="READ|CAT|1264327|BTI|"_($L(r))_"|"_($E(r,1,24))
 S k=(k)+1
 S p=$D(^ILS("CAT","90001146"))
 D KILLREC^ILSREC("90001146","CAT")
 S ^ILS("TMP","J",k)="DEL|90001146|"_(p)_"->"_($D(^ILS("CAT","90001146")))
 S k=(k)+1
 S r=$$DISPATCH^ILSTUI("FIND DIABETES")
 S ^ILS("TMP","J",k)="SEARCH|FIND_DIABETES|"_($L(r))_"|"_($E(r,1,40))
 S k=(k)+1
 S r=$$DISPATCH^ILSTUI("SHOW SER 1257757")
 S ^ILS("TMP","J",k)="SEARCH|SHOW_SER_1257757|"_($L(r))_"|"_($E(r,1,40))
 S k=(k)+1
 S p=$D(^ILS("CAT","90001149"))
 D KILLREC^ILSREC("90001149","CAT")
 S ^ILS("TMP","J",k)="DEL|90001149|"_(p)_"->"_($D(^ILS("CAT","90001149")))
 S k=(k)+1
 S r=$G(^ILS("SER","1260134","ISS",1))
 S ^ILS("TMP","J",k)="READ|SER|1260134|ISS|"_($L(r))_"|"_($E(r,1,24))
 S k=(k)+1
 D PARSE^ILSREC("90001151","CAT","ID - 90001151"_$C(10)_"BTI - Stress Title 1151"_$C(10)_"AU - Tester, Ann"_$C(10)_"MH - Genomics")
 S ^ILS("TMP","J",k)="CREATE|90001151|"_$G(^ILS("TMP","CNT"))
 S k=(k)+1
 S p=$D(^ILS("CAT","8000583"))
 D KILLREC^ILSREC("8000583","CAT")
 S ^ILS("TMP","J",k)="DEL|8000583|"_(p)_"->"_($D(^ILS("CAT","8000583")))
 S k=(k)+1
 S r=$G(^ILS("SER","1257757","STI",1))
 S ^ILS("TMP","J",k)="READ|SER|1257757|STI|"_($L(r))_"|"_($E(r,1,24))
 S k=(k)+1
 D PARSE^ILSREC("90001154","CAT","ID - 90001154"_$C(10)_"BTI - Stress Title 1154"_$C(10)_"AU - Tester, Ann"_$C(10)_"MH - Diabetes Mellitus.")
 S ^ILS("TMP","J",k)="CREATE|90001154|"_$G(^ILS("TMP","CNT"))
 S k=(k)+1
 S r=$G(^ILS("SER","1261010","ISS",1))
 S ^ILS("TMP","J",k)="READ|SER|1261010|ISS|"_($L(r))_"|"_($E(r,1,24))
 S k=(k)+1
 S p=$D(^ILS("CAT","7605530"))
 D KILLREC^ILSREC("7605530","CAT")
 S ^ILS("TMP","J",k)="DEL|7605530|"_(p)_"->"_($D(^ILS("CAT","7605530")))
 S k=(k)+1
 D PARSE^ILSREC("90001157","CAT","ID - 90001157"_$C(10)_"BTI - Stress Title 1157"_$C(10)_"AU - Tester, Ann"_$C(10)_"MH - Quantum Bibliography"_$C(10)_"MH - Quantum Bibliography")
 S ^ILS("TMP","J",k)="CREATE|90001157|"_$G(^ILS("TMP","CNT"))
 S k=(k)+1
 D AUTHADD^ILSAUTH("D991158","Stress Heading 1158","Z99.158")
 S ^ILS("TMP","J",k)="AUTHADD|D991158|"_($D(^ILS("ANAME","STRESS HEADING 1158","D991158")))
 S k=(k)+1
 S r=$G(^ILS("SER","1262226","ISS",1))
 S ^ILS("TMP","J",k)="READ|SER|1262226|ISS|"_($L(r))_"|"_($E(r,1,24))
 S k=(k)+1
 S r=$$DISPATCH^ILSTUI("FIND DIABETES")
 S ^ILS("TMP","J",k)="SEARCH|FIND_DIABETES|"_($L(r))_"|"_($E(r,1,40))
 S k=(k)+1
 S r=$$DISPATCH^ILSTUI("MH GENOMICS")
 S ^ILS("TMP","J",k)="SEARCH|MH_GENOMICS|"_($L(r))_"|"_($E(r,1,40))
 S k=(k)+1
 S r=$G(^ILS("CAT","7901827","DP",1))
 S ^ILS("TMP","J",k)="READ|CAT|7901827|DP|"_($L(r))_"|"_($E(r,1,24))
 S k=(k)+1
 D PARSE^ILSREC("90001163","CAT","ID - 90001163"_$C(10)_"BTI - Stress Title 1163"_$C(10)_"AU - Tester, Ann"_$C(10)_"MH - Public Health"_$C(10)_"MH - Medical Informatics")
 S ^ILS("TMP","J",k)="CREATE|90001163|"_$G(^ILS("TMP","CNT"))
 S k=(k)+1
 D PARSE^ILSREC("90001164","CAT","ID - 90001164"_$C(10)_"BTI - Stress Title 1164"_$C(10)_"AU - Tester, Ann"_$C(10)_"MH - Diabetes Mellitus."_$C(10)_"MH - Quantum Bibliography"_$C(10)_"MH - Quantum Bibliography")
 S ^ILS("TMP","J",k)="CREATE|90001164|"_$G(^ILS("TMP","CNT"))
 S k=(k)+1
 D PARSE^ILSREC("90001165","CAT","ID - 90001165"_$C(10)_"BTI - Stress Title 1165"_$C(10)_"AU - Tester, Ann"_$C(10)_"MH - Quantum Bibliography"_$C(10)_"MH - Genomics")
 S ^ILS("TMP","J",k)="CREATE|90001165|"_$G(^ILS("TMP","CNT"))
 S k=(k)+1
 D PARSE^ILSREC("90001166","CAT","ID - 90001166"_$C(10)_"BTI - Stress Title 1166"_$C(10)_"AU - Tester, Ann"_$C(10)_"MH - Public Health"_$C(10)_"MH - Genomics"_$C(10)_"MH - Medical Informatics")
 S ^ILS("TMP","J",k)="CREATE|90001166|"_$G(^ILS("TMP","CNT"))
 S k=(k)+1
 D SEQPUT^ILSREC("90001167","CAT","MH","Stress Heading 1167")
 S ^ILS("TMP","J",k)="SEQPUT|90001167"
 S k=(k)+1
 S r=$$VALIDATE^ILSAUTH("7605530","CAT")
 S ^ILS("TMP","J",k)="VAL|7605530|"_(r)
 S k=(k)+1
 S r=$$DISPATCH^ILSTUI("SHOW SER 1261010")
 S ^ILS("TMP","J",k)="SEARCH|SHOW_SER_1261010|"_($L(r))_"|"_($E(r,1,40))
 S k=(k)+1
 D PARSE^ILSREC("90001170","CAT","ID - 90001170"_$C(10)_"BTI - Stress Title 1170"_$C(10)_"AU - Tester, Ann"_$C(10)_"MH - Diabetes Mellitus."_$C(10)_"MH - Quantum Bibliography"_$C(10)_"MH - Public Health")
 S ^ILS("TMP","J",k)="CREATE|90001170|"_$G(^ILS("TMP","CNT"))
 S k=(k)+1
 S r=$$DISPATCH^ILSTUI("SHOW CAT 7703942")
 S ^ILS("TMP","J",k)="SEARCH|SHOW_CAT_7703942|"_($L(r))_"|"_($E(r,1,40))
 S k=(k)+1
 D SEQPUT^ILSREC("90001172","CAT","MH","Stress Heading 1172")
 S ^ILS("TMP","J",k)="SEQPUT|90001172"
 S k=(k)+1
 D PARSE^ILSREC("90001173","CAT","ID - 90001173"_$C(10)_"BTI - Stress Title 1173"_$C(10)_"AU - Tester, Ann"_$C(10)_"MH - Diabetes Mellitus."_$C(10)_"MH - Medical Informatics"_$C(10)_"MH - Quantum Bibliography")
 S ^ILS("TMP","J",k)="CREATE|90001173|"_$G(^ILS("TMP","CNT"))
 S k=(k)+1
 S p=$D(^ILS("CAT","90001174"))
 D KILLREC^ILSREC("90001174","CAT")
 S ^ILS("TMP","J",k)="DEL|90001174|"_(p)_"->"_($D(^ILS("CAT","90001174")))
 S k=(k)+1
 D PARSE^ILSREC("90001175","CAT","ID - 90001175"_$C(10)_"BTI - Stress Title 1175"_$C(10)_"AU - Tester, Ann"_$C(10)_"MH - Public Health"_$C(10)_"MH - Diabetes Mellitus.")
 S ^ILS("TMP","J",k)="CREATE|90001175|"_$G(^ILS("TMP","CNT"))
 S k=(k)+1
 S r=$G(^ILS("CAT","7807107","AU",1))
 S ^ILS("TMP","J",k)="READ|CAT|7807107|AU|"_($L(r))_"|"_($E(r,1,24))
 S k=(k)+1
 S r=$$DISPATCH^ILSTUI("LIST")
 S ^ILS("TMP","J",k)="SEARCH|LIST|"_($L(r))_"|"_($E(r,1,40))
 S k=(k)+1
 D PARSE^ILSREC("90001178","CAT","ID - 90001178"_$C(10)_"BTI - Stress Title 1178"_$C(10)_"AU - Tester, Ann"_$C(10)_"MH - Quantum Bibliography"_$C(10)_"MH - Medical Informatics")
 S ^ILS("TMP","J",k)="CREATE|90001178|"_$G(^ILS("TMP","CNT"))
 S k=(k)+1
 S r=$G(^ILS("SER","1260665","ISS",1))
 S ^ILS("TMP","J",k)="READ|SER|1260665|ISS|"_($L(r))_"|"_($E(r,1,24))
 S k=(k)+1
 D PARSE^ILSREC("90001180","CAT","ID - 90001180"_$C(10)_"BTI - Stress Title 1180"_$C(10)_"AU - Tester, Ann"_$C(10)_"MH - Genomics"_$C(10)_"MH - Genomics")
 S ^ILS("TMP","J",k)="CREATE|90001180|"_$G(^ILS("TMP","CNT"))
 S k=(k)+1
 S r=$G(^ILS("CAT","7808791","BTI",1))
 S ^ILS("TMP","J",k)="READ|CAT|7808791|BTI|"_($L(r))_"|"_($E(r,1,24))
 S k=(k)+1
 D SEQPUT^ILSREC("90001182","CAT","MH","Stress Heading 1182")
 S ^ILS("TMP","J",k)="SEQPUT|90001182"
 S k=(k)+1
 S r=$$DISPATCH^ILSTUI("RELATED D003920")
 S ^ILS("TMP","J",k)="SEARCH|RELATED_D003920|"_($L(r))_"|"_($E(r,1,40))
 S k=(k)+1
 S r=$$DISPATCH^ILSTUI("LEDGER")
 S ^ILS("TMP","J",k)="SEARCH|LEDGER|"_($L(r))_"|"_($E(r,1,40))
 S k=(k)+1
 D SEQPUT^ILSREC("90001185","CAT","MH","Stress Heading 1185")
 S ^ILS("TMP","J",k)="SEQPUT|90001185"
 S k=(k)+1
 S r=$G(^ILS("SER","1261010","ISS",1))
 S ^ILS("TMP","J",k)="READ|SER|1261010|ISS|"_($L(r))_"|"_($E(r,1,24))
 S k=(k)+1
 D PUT^ILSREC("7802251","CAT","DP",1,"2026")
 S ^ILS("TMP","J",k)="UPD|7802251|"_($D(^ILS("CAT","7802251","DP",1)))
 S k=(k)+1
 D PUT^ILSREC("7605530","CAT","DP",1,"2026")
 S ^ILS("TMP","J",k)="UPD|7605530|"_($D(^ILS("CAT","7605530","DP",1)))
 S k=(k)+1
 S r=$$DISPATCH^ILSTUI("ISSN 0742-3071")
 S ^ILS("TMP","J",k)="SEARCH|ISSN_0742-3071|"_($L(r))_"|"_($E(r,1,40))
 S k=(k)+1
 S r=$G(^ILS("CAT","7502500","DP",1))
 S ^ILS("TMP","J",k)="READ|CAT|7502500|DP|"_($L(r))_"|"_($E(r,1,24))
 S k=(k)+1
 D PARSE^ILSREC("90001191","CAT","ID - 90001191"_$C(10)_"BTI - Stress Title 1191"_$C(10)_"AU - Tester, Ann"_$C(10)_"MH - Quantum Bibliography"_$C(10)_"MH - Genomics"_$C(10)_"MH - Public Health")
 S ^ILS("TMP","J",k)="CREATE|90001191|"_$G(^ILS("TMP","CNT"))
 S k=(k)+1
 S r=$$DISPATCH^ILSTUI("FIND HEALTH")
 S ^ILS("TMP","J",k)="SEARCH|FIND_HEALTH|"_($L(r))_"|"_($E(r,1,40))
 S k=(k)+1
 S p=$D(^ILS("CAT","7503289"))
 D KILLREC^ILSREC("7503289","CAT")
 S ^ILS("TMP","J",k)="DEL|7503289|"_(p)_"->"_($D(^ILS("CAT","7503289")))
 S k=(k)+1
 D PUT^ILSREC("7705180","CAT","DP",1,"2026")
 S ^ILS("TMP","J",k)="UPD|7705180|"_($D(^ILS("CAT","7705180","DP",1)))
 S k=(k)+1
 S r=$$DISPATCH^ILSTUI("SHOW CAT 7901827")
 S ^ILS("TMP","J",k)="SEARCH|SHOW_CAT_7901827|"_($L(r))_"|"_($E(r,1,40))
 S k=(k)+1
 D SEQPUT^ILSREC("8000583","CAT","MH","Stress Heading 1196")
 S ^ILS("TMP","J",k)="SEQPUT|8000583"
 S k=(k)+1
 S r=$$DISPATCH^ILSTUI("LEDGER")
 S ^ILS("TMP","J",k)="SEARCH|LEDGER|"_($L(r))_"|"_($E(r,1,40))
 S k=(k)+1
 D PUT^ILSREC("90001198","CAT","DP",1,"2026")
 S ^ILS("TMP","J",k)="UPD|90001198|"_($D(^ILS("CAT","90001198","DP",1)))
 S k=(k)+1
 S r=$$DISPATCH^ILSTUI("RELATED D003920")
 S ^ILS("TMP","J",k)="SEARCH|RELATED_D003920|"_($L(r))_"|"_($E(r,1,40))
 S k=(k)+1
 S p=$D(^ILS("CAT","90001200"))
 D KILLREC^ILSREC("90001200","CAT")
 S ^ILS("TMP","J",k)="DEL|90001200|"_(p)_"->"_($D(^ILS("CAT","90001200")))
 S k=(k)+1
 D PARSE^ILSREC("90001201","CAT","ID - 90001201"_$C(10)_"BTI - Stress Title 1201"_$C(10)_"AU - Tester, Ann"_$C(10)_"MH - Genomics")
 S ^ILS("TMP","J",k)="CREATE|90001201|"_$G(^ILS("TMP","CNT"))
 S k=(k)+1
 S r=$G(^ILS("CAT","7605530","MH",1))
 S ^ILS("TMP","J",k)="READ|CAT|7605530|MH|"_($L(r))_"|"_($E(r,1,24))
 S k=(k)+1
 S p=$D(^ILS("CAT","7909441"))
 D KILLREC^ILSREC("7909441","CAT")
 S ^ILS("TMP","J",k)="DEL|7909441|"_(p)_"->"_($D(^ILS("CAT","7909441")))
 S k=(k)+1
 S p=$D(^ILS("CAT","90001204"))
 D KILLREC^ILSREC("90001204","CAT")
 S ^ILS("TMP","J",k)="DEL|90001204|"_(p)_"->"_($D(^ILS("CAT","90001204")))
 S k=(k)+1
 D AUTHADD^ILSAUTH("D991205","Stress Heading 1205","Z99.205")
 S ^ILS("TMP","J",k)="AUTHADD|D991205|"_($D(^ILS("ANAME","STRESS HEADING 1205","D991205")))
 S k=(k)+1
 S r=$$VALIDATE^ILSAUTH("90001206","CAT")
 S ^ILS("TMP","J",k)="VAL|90001206|"_(r)
 S k=(k)+1
 S r=$G(^ILS("CAT","7705180","MH",1))
 S ^ILS("TMP","J",k)="READ|CAT|7705180|MH|"_($L(r))_"|"_($E(r,1,24))
 S k=(k)+1
 D PUT^ILSREC("90001208","CAT","DP",1,"2026")
 S ^ILS("TMP","J",k)="UPD|90001208|"_($D(^ILS("CAT","90001208","DP",1)))
 S k=(k)+1
 D SEQPUT^ILSREC("90001209","CAT","MH","Stress Heading 1209")
 S ^ILS("TMP","J",k)="SEQPUT|90001209"
 S k=(k)+1
 S p=$D(^ILS("CAT","90001210"))
 D KILLREC^ILSREC("90001210","CAT")
 S ^ILS("TMP","J",k)="DEL|90001210|"_(p)_"->"_($D(^ILS("CAT","90001210")))
 S k=(k)+1
 D PARSE^ILSREC("90001211","CAT","ID - 90001211"_$C(10)_"BTI - Stress Title 1211"_$C(10)_"AU - Tester, Ann"_$C(10)_"MH - Public Health"_$C(10)_"MH - Public Health"_$C(10)_"MH - Diabetes Mellitus.")
 S ^ILS("TMP","J",k)="CREATE|90001211|"_$G(^ILS("TMP","CNT"))
 S k=(k)+1
 S r=$$VALIDATE^ILSAUTH("7502500","CAT")
 S ^ILS("TMP","J",k)="VAL|7502500|"_(r)
 S k=(k)+1
 S r=$$DISPATCH^ILSTUI("SHOW SER 1260223")
 S ^ILS("TMP","J",k)="SEARCH|SHOW_SER_1260223|"_($L(r))_"|"_($E(r,1,40))
 S k=(k)+1
 D SEQPUT^ILSREC("90001214","CAT","MH","Stress Heading 1214")
 S ^ILS("TMP","J",k)="SEQPUT|90001214"
 S k=(k)+1
 S r=$$DISPATCH^ILSTUI("SHOW CAT 8003963")
 S ^ILS("TMP","J",k)="SEARCH|SHOW_CAT_8003963|"_($L(r))_"|"_($E(r,1,40))
 S k=(k)+1
 S r=$$DISPATCH^ILSTUI("RELATED D003920")
 S ^ILS("TMP","J",k)="SEARCH|RELATED_D003920|"_($L(r))_"|"_($E(r,1,40))
 S k=(k)+1
 D SEQPUT^ILSREC("90001217","CAT","MH","Stress Heading 1217")
 S ^ILS("TMP","J",k)="SEQPUT|90001217"
 S k=(k)+1
 D PARSE^ILSREC("90001218","CAT","ID - 90001218"_$C(10)_"BTI - Stress Title 1218"_$C(10)_"AU - Tester, Ann"_$C(10)_"MH - Genomics")
 S ^ILS("TMP","J",k)="CREATE|90001218|"_$G(^ILS("TMP","CNT"))
 S k=(k)+1
 S r=$$DISPATCH^ILSTUI("FIND HEALTH")
 S ^ILS("TMP","J",k)="SEARCH|FIND_HEALTH|"_($L(r))_"|"_($E(r,1,40))
 S k=(k)+1
 D SEQPUT^ILSREC("90001220","CAT","MH","Stress Heading 1220")
 S ^ILS("TMP","J",k)="SEQPUT|90001220"
 S k=(k)+1
 D PARSE^ILSREC("90001221","CAT","ID - 90001221"_$C(10)_"BTI - Stress Title 1221"_$C(10)_"AU - Tester, Ann"_$C(10)_"MH - Public Health")
 S ^ILS("TMP","J",k)="CREATE|90001221|"_$G(^ILS("TMP","CNT"))
 S k=(k)+1
 D PARSE^ILSREC("90001222","CAT","ID - 90001222"_$C(10)_"BTI - Stress Title 1222"_$C(10)_"AU - Tester, Ann"_$C(10)_"MH - Genomics"_$C(10)_"MH - Public Health"_$C(10)_"MH - Quantum Bibliography")
 S ^ILS("TMP","J",k)="CREATE|90001222|"_$G(^ILS("TMP","CNT"))
 S k=(k)+1
 D PARSE^ILSREC("90001223","CAT","ID - 90001223"_$C(10)_"BTI - Stress Title 1223"_$C(10)_"AU - Tester, Ann"_$C(10)_"MH - Medical Informatics"_$C(10)_"MH - Diabetes Mellitus."_$C(10)_"MH - Medical Informatics")
 S ^ILS("TMP","J",k)="CREATE|90001223|"_$G(^ILS("TMP","CNT"))
 S k=(k)+1
 S r=$G(^ILS("CAT","8003963","PB",1))
 S ^ILS("TMP","J",k)="READ|CAT|8003963|PB|"_($L(r))_"|"_($E(r,1,24))
 S k=(k)+1
 S r=$$DISPATCH^ILSTUI("MH GENOMICS")
 S ^ILS("TMP","J",k)="SEARCH|MH_GENOMICS|"_($L(r))_"|"_($E(r,1,40))
 S k=(k)+1
 S r=$G(^ILS("SER","1262006","ISS",1))
 S ^ILS("TMP","J",k)="READ|SER|1262006|ISS|"_($L(r))_"|"_($E(r,1,24))
 S k=(k)+1
 S r=$$VALIDATE^ILSAUTH("8007202","CAT")
 S ^ILS("TMP","J",k)="VAL|8007202|"_(r)
 S k=(k)+1
 D AUTHADD^ILSAUTH("D991228","Stress Heading 1228","Z99.228")
 S ^ILS("TMP","J",k)="AUTHADD|D991228|"_($D(^ILS("ANAME","STRESS HEADING 1228","D991228")))
 S k=(k)+1
 S r=$$DISPATCH^ILSTUI("LEDGER")
 S ^ILS("TMP","J",k)="SEARCH|LEDGER|"_($L(r))_"|"_($E(r,1,40))
 S k=(k)+1
 S r=$$DISPATCH^ILSTUI("SHOW SER 1260223")
 S ^ILS("TMP","J",k)="SEARCH|SHOW_SER_1260223|"_($L(r))_"|"_($E(r,1,40))
 S k=(k)+1
 D SEQPUT^ILSREC("90001231","CAT","MH","Stress Heading 1231")
 S ^ILS("TMP","J",k)="SEQPUT|90001231"
 S k=(k)+1
 D PUT^ILSREC("90001232","CAT","DP",1,"2026")
 S ^ILS("TMP","J",k)="UPD|90001232|"_($D(^ILS("CAT","90001232","DP",1)))
 S k=(k)+1
 D PARSE^ILSREC("90001233","CAT","ID - 90001233"_$C(10)_"BTI - Stress Title 1233"_$C(10)_"AU - Tester, Ann"_$C(10)_"MH - Genomics"_$C(10)_"MH - Diabetes Mellitus."_$C(10)_"MH - Diabetes Mellitus.")
 S ^ILS("TMP","J",k)="CREATE|90001233|"_$G(^ILS("TMP","CNT"))
 S k=(k)+1
 D PUT^ILSREC("1267066","CAT","DP",1,"2026")
 S ^ILS("TMP","J",k)="UPD|1267066|"_($D(^ILS("CAT","1267066","DP",1)))
 S k=(k)+1
 S r=$$DISPATCH^ILSTUI("FIND DIABETES")
 S ^ILS("TMP","J",k)="SEARCH|FIND_DIABETES|"_($L(r))_"|"_($E(r,1,40))
 S k=(k)+1
 D SEQPUT^ILSREC("7802251","CAT","MH","Stress Heading 1236")
 S ^ILS("TMP","J",k)="SEQPUT|7802251"
 S k=(k)+1
 D PARSE^ILSREC("90001237","CAT","ID - 90001237"_$C(10)_"BTI - Stress Title 1237"_$C(10)_"AU - Tester, Ann"_$C(10)_"MH - Public Health")
 S ^ILS("TMP","J",k)="CREATE|90001237|"_$G(^ILS("TMP","CNT"))
 S k=(k)+1
 S r=$$DISPATCH^ILSTUI("SHOW CAT 7909441")
 S ^ILS("TMP","J",k)="SEARCH|SHOW_CAT_7909441|"_($L(r))_"|"_($E(r,1,40))
 S k=(k)+1
 S r=$$DISPATCH^ILSTUI("LEDGER")
 S ^ILS("TMP","J",k)="SEARCH|LEDGER|"_($L(r))_"|"_($E(r,1,40))
 S k=(k)+1
 S r=$G(^ILS("SER","1260223","MH",1))
 S ^ILS("TMP","J",k)="READ|SER|1260223|MH|"_($L(r))_"|"_($E(r,1,24))
 S k=(k)+1
 D PARSE^ILSREC("90001241","CAT","ID - 90001241"_$C(10)_"BTI - Stress Title 1241"_$C(10)_"AU - Tester, Ann"_$C(10)_"MH - Medical Informatics")
 S ^ILS("TMP","J",k)="CREATE|90001241|"_$G(^ILS("TMP","CNT"))
 S k=(k)+1
 D PARSE^ILSREC("90001242","CAT","ID - 90001242"_$C(10)_"BTI - Stress Title 1242"_$C(10)_"AU - Tester, Ann"_$C(10)_"MH - Diabetes Mellitus."_$C(10)_"MH - Quantum Bibliography"_$C(10)_"MH - Medical Informatics")
 S ^ILS("TMP","J",k)="CREATE|90001242|"_$G(^ILS("TMP","CNT"))
 S k=(k)+1
 S r=$$DISPATCH^ILSTUI("MH DIABETES MELLITUS.")
 S ^ILS("TMP","J",k)="SEARCH|MH_DIABETES_MELLITUS.|"_($L(r))_"|"_($E(r,1,40))
 S k=(k)+1
 S p=$D(^ILS("CAT","90001244"))
 D KILLREC^ILSREC("90001244","CAT")
 S ^ILS("TMP","J",k)="DEL|90001244|"_(p)_"->"_($D(^ILS("CAT","90001244")))
 S k=(k)+1
 S r=$G(^ILS("CAT","8101154","MH",1))
 S ^ILS("TMP","J",k)="READ|CAT|8101154|MH|"_($L(r))_"|"_($E(r,1,24))
 S k=(k)+1
 S r=$$DISPATCH^ILSTUI("RELATED D003920")
 S ^ILS("TMP","J",k)="SEARCH|RELATED_D003920|"_($L(r))_"|"_($E(r,1,40))
 S k=(k)+1
 D PARSE^ILSREC("90001247","CAT","ID - 90001247"_$C(10)_"BTI - Stress Title 1247"_$C(10)_"AU - Tester, Ann"_$C(10)_"MH - Public Health"_$C(10)_"MH - Quantum Bibliography"_$C(10)_"MH - Diabetes Mellitus.")
 S ^ILS("TMP","J",k)="CREATE|90001247|"_$G(^ILS("TMP","CNT"))
 S k=(k)+1
 S p=$D(^ILS("CAT","90001248"))
 D KILLREC^ILSREC("90001248","CAT")
 S ^ILS("TMP","J",k)="DEL|90001248|"_(p)_"->"_($D(^ILS("CAT","90001248")))
 S k=(k)+1
 S r=$$DISPATCH^ILSTUI("MH GENOMICS")
 S ^ILS("TMP","J",k)="SEARCH|MH_GENOMICS|"_($L(r))_"|"_($E(r,1,40))
 S k=(k)+1
 S r=$G(^ILS("SER","1257757","ISS",1))
 S ^ILS("TMP","J",k)="READ|SER|1257757|ISS|"_($L(r))_"|"_($E(r,1,24))
 S k=(k)+1
 D AUTHADD^ILSAUTH("D991251","Stress Heading 1251","Z99.251")
 S ^ILS("TMP","J",k)="AUTHADD|D991251|"_($D(^ILS("ANAME","STRESS HEADING 1251","D991251")))
 S k=(k)+1
 D SEQPUT^ILSREC("7807107","CAT","MH","Stress Heading 1252")
 S ^ILS("TMP","J",k)="SEQPUT|7807107"
 S k=(k)+1
 S r=$G(^ILS("SER","1260665","ISS",1))
 S ^ILS("TMP","J",k)="READ|SER|1260665|ISS|"_($L(r))_"|"_($E(r,1,24))
 S k=(k)+1
 D PARSE^ILSREC("90001254","CAT","ID - 90001254"_$C(10)_"BTI - Stress Title 1254"_$C(10)_"AU - Tester, Ann"_$C(10)_"MH - Diabetes Mellitus."_$C(10)_"MH - Public Health"_$C(10)_"MH - Medical Informatics")
 S ^ILS("TMP","J",k)="CREATE|90001254|"_$G(^ILS("TMP","CNT"))
 S k=(k)+1
 D PARSE^ILSREC("90001255","CAT","ID - 90001255"_$C(10)_"BTI - Stress Title 1255"_$C(10)_"AU - Tester, Ann"_$C(10)_"MH - Diabetes Mellitus.")
 S ^ILS("TMP","J",k)="CREATE|90001255|"_$G(^ILS("TMP","CNT"))
 S k=(k)+1
 S r=$$VALIDATE^ILSAUTH("90001256","CAT")
 S ^ILS("TMP","J",k)="VAL|90001256|"_(r)
 S k=(k)+1
 S r=$$DISPATCH^ILSTUI("SHOW CAT 1267372")
 S ^ILS("TMP","J",k)="SEARCH|SHOW_CAT_1267372|"_($L(r))_"|"_($E(r,1,40))
 S k=(k)+1
 S r=$$DISPATCH^ILSTUI("FIND HEALTH")
 S ^ILS("TMP","J",k)="SEARCH|FIND_HEALTH|"_($L(r))_"|"_($E(r,1,40))
 S k=(k)+1
 D SEQPUT^ILSREC("8003963","CAT","MH","Stress Heading 1259")
 S ^ILS("TMP","J",k)="SEQPUT|8003963"
 S k=(k)+1
 D SEQPUT^ILSREC("1267372","CAT","MH","Stress Heading 1260")
 S ^ILS("TMP","J",k)="SEQPUT|1267372"
 S k=(k)+1
 D PARSE^ILSREC("90001261","CAT","ID - 90001261"_$C(10)_"BTI - Stress Title 1261"_$C(10)_"AU - Tester, Ann"_$C(10)_"MH - Public Health"_$C(10)_"MH - Genomics")
 S ^ILS("TMP","J",k)="CREATE|90001261|"_$G(^ILS("TMP","CNT"))
 S k=(k)+1
 D PARSE^ILSREC("90001262","CAT","ID - 90001262"_$C(10)_"BTI - Stress Title 1262"_$C(10)_"AU - Tester, Ann"_$C(10)_"MH - Diabetes Mellitus.")
 S ^ILS("TMP","J",k)="CREATE|90001262|"_$G(^ILS("TMP","CNT"))
 S k=(k)+1
 D SEQPUT^ILSREC("90001263","CAT","MH","Stress Heading 1263")
 S ^ILS("TMP","J",k)="SEQPUT|90001263"
 S k=(k)+1
 D PARSE^ILSREC("90001264","CAT","ID - 90001264"_$C(10)_"BTI - Stress Title 1264"_$C(10)_"AU - Tester, Ann"_$C(10)_"MH - Quantum Bibliography"_$C(10)_"MH - Quantum Bibliography")
 S ^ILS("TMP","J",k)="CREATE|90001264|"_$G(^ILS("TMP","CNT"))
 S k=(k)+1
 S r=$G(^ILS("CAT","7605530","BTI",1))
 S ^ILS("TMP","J",k)="READ|CAT|7605530|BTI|"_($L(r))_"|"_($E(r,1,24))
 S k=(k)+1
 S r=$G(^ILS("CAT","1264327","MH",1))
 S ^ILS("TMP","J",k)="READ|CAT|1264327|MH|"_($L(r))_"|"_($E(r,1,24))
 S k=(k)+1
 D PARSE^ILSREC("90001267","CAT","ID - 90001267"_$C(10)_"BTI - Stress Title 1267"_$C(10)_"AU - Tester, Ann"_$C(10)_"MH - Medical Informatics"_$C(10)_"MH - Genomics"_$C(10)_"MH - Genomics")
 S ^ILS("TMP","J",k)="CREATE|90001267|"_$G(^ILS("TMP","CNT"))
 S k=(k)+1
 S r=$G(^ILS("CAT","7508397","PB",1))
 S ^ILS("TMP","J",k)="READ|CAT|7508397|PB|"_($L(r))_"|"_($E(r,1,24))
 S k=(k)+1
 S r=$$DISPATCH^ILSTUI("ISSN 0742-3071")
 S ^ILS("TMP","J",k)="SEARCH|ISSN_0742-3071|"_($L(r))_"|"_($E(r,1,40))
 S k=(k)+1
 S r=$G(^ILS("CAT","8000583","BTI",1))
 S ^ILS("TMP","J",k)="READ|CAT|8000583|BTI|"_($L(r))_"|"_($E(r,1,24))
 S k=(k)+1
 S r=$G(^ILS("CAT","1302032","DP",1))
 S ^ILS("TMP","J",k)="READ|CAT|1302032|DP|"_($L(r))_"|"_($E(r,1,24))
 S k=(k)+1
 D PUT^ILSREC("90001272","CAT","DP",1,"2026")
 S ^ILS("TMP","J",k)="UPD|90001272|"_($D(^ILS("CAT","90001272","DP",1)))
 S k=(k)+1
 S r=$$DISPATCH^ILSTUI("ISSN 0742-3071")
 S ^ILS("TMP","J",k)="SEARCH|ISSN_0742-3071|"_($L(r))_"|"_($E(r,1,40))
 S k=(k)+1
 S p=$D(^ILS("CAT","90001274"))
 D KILLREC^ILSREC("90001274","CAT")
 S ^ILS("TMP","J",k)="DEL|90001274|"_(p)_"->"_($D(^ILS("CAT","90001274")))
 S k=(k)+1
 D SEQPUT^ILSREC("1264327","CAT","MH","Stress Heading 1275")
 S ^ILS("TMP","J",k)="SEQPUT|1264327"
 S k=(k)+1
 S r=$$DISPATCH^ILSTUI("MH DIABETES MELLITUS.")
 S ^ILS("TMP","J",k)="SEARCH|MH_DIABETES_MELLITUS.|"_($L(r))_"|"_($E(r,1,40))
 S k=(k)+1
 S r=$$DISPATCH^ILSTUI("LIST")
 S ^ILS("TMP","J",k)="SEARCH|LIST|"_($L(r))_"|"_($E(r,1,40))
 S k=(k)+1
 S p=$D(^ILS("CAT","8007202"))
 D KILLREC^ILSREC("8007202","CAT")
 S ^ILS("TMP","J",k)="DEL|8007202|"_(p)_"->"_($D(^ILS("CAT","8007202")))
 S k=(k)+1
 D PUT^ILSREC("90001279","CAT","DP",1,"2026")
 S ^ILS("TMP","J",k)="UPD|90001279|"_($D(^ILS("CAT","90001279","DP",1)))
 S k=(k)+1
 S p=$D(^ILS("CAT","90001280"))
 D KILLREC^ILSREC("90001280","CAT")
 S ^ILS("TMP","J",k)="DEL|90001280|"_(p)_"->"_($D(^ILS("CAT","90001280")))
 S k=(k)+1
 D PARSE^ILSREC("90001281","CAT","ID - 90001281"_$C(10)_"BTI - Stress Title 1281"_$C(10)_"AU - Tester, Ann"_$C(10)_"MH - Diabetes Mellitus.")
 S ^ILS("TMP","J",k)="CREATE|90001281|"_$G(^ILS("TMP","CNT"))
 S k=(k)+1
 S r=$$DISPATCH^ILSTUI("ISSN 0742-3071")
 S ^ILS("TMP","J",k)="SEARCH|ISSN_0742-3071|"_($L(r))_"|"_($E(r,1,40))
 S k=(k)+1
 D PARSE^ILSREC("90001283","CAT","ID - 90001283"_$C(10)_"BTI - Stress Title 1283"_$C(10)_"AU - Tester, Ann"_$C(10)_"MH - Genomics"_$C(10)_"MH - Medical Informatics"_$C(10)_"MH - Quantum Bibliography")
 S ^ILS("TMP","J",k)="CREATE|90001283|"_$G(^ILS("TMP","CNT"))
 S k=(k)+1
 S r=$$DISPATCH^ILSTUI("MH DIABETES MELLITUS.")
 S ^ILS("TMP","J",k)="SEARCH|MH_DIABETES_MELLITUS.|"_($L(r))_"|"_($E(r,1,40))
 S k=(k)+1
 D PARSE^ILSREC("90001285","CAT","ID - 90001285"_$C(10)_"BTI - Stress Title 1285"_$C(10)_"AU - Tester, Ann"_$C(10)_"MH - Diabetes Mellitus.")
 S ^ILS("TMP","J",k)="CREATE|90001285|"_$G(^ILS("TMP","CNT"))
 S k=(k)+1
 D PUT^ILSREC("7605530","CAT","DP",1,"2026")
 S ^ILS("TMP","J",k)="UPD|7605530|"_($D(^ILS("CAT","7605530","DP",1)))
 S k=(k)+1
 S r=$$DISPATCH^ILSTUI("FIND HEALTH")
 S ^ILS("TMP","J",k)="SEARCH|FIND_HEALTH|"_($L(r))_"|"_($E(r,1,40))
 S k=(k)+1
 S r=$$DISPATCH^ILSTUI("FIND HEALTH")
 S ^ILS("TMP","J",k)="SEARCH|FIND_HEALTH|"_($L(r))_"|"_($E(r,1,40))
 S k=(k)+1
 S r=$G(^ILS("CAT","7508397","MH",1))
 S ^ILS("TMP","J",k)="READ|CAT|7508397|MH|"_($L(r))_"|"_($E(r,1,24))
 S k=(k)+1
 D PARSE^ILSREC("90001290","CAT","ID - 90001290"_$C(10)_"BTI - Stress Title 1290"_$C(10)_"AU - Tester, Ann"_$C(10)_"MH - Public Health"_$C(10)_"MH - Public Health"_$C(10)_"MH - Quantum Bibliography")
 S ^ILS("TMP","J",k)="CREATE|90001290|"_$G(^ILS("TMP","CNT"))
 S k=(k)+1
 D PARSE^ILSREC("90001291","CAT","ID - 90001291"_$C(10)_"BTI - Stress Title 1291"_$C(10)_"AU - Tester, Ann"_$C(10)_"MH - Diabetes Mellitus."_$C(10)_"MH - Diabetes Mellitus.")
 S ^ILS("TMP","J",k)="CREATE|90001291|"_$G(^ILS("TMP","CNT"))
 S k=(k)+1
 D PUT^ILSREC("90001292","CAT","DP",1,"2026")
 S ^ILS("TMP","J",k)="UPD|90001292|"_($D(^ILS("CAT","90001292","DP",1)))
 S k=(k)+1
 S r=$G(^ILS("CAT","7605530","DP",1))
 S ^ILS("TMP","J",k)="READ|CAT|7605530|DP|"_($L(r))_"|"_($E(r,1,24))
 S k=(k)+1
 S r=$G(^ILS("CAT","7508397","DP",1))
 S ^ILS("TMP","J",k)="READ|CAT|7508397|DP|"_($L(r))_"|"_($E(r,1,24))
 S k=(k)+1
 S r=$$DISPATCH^ILSTUI("FIND DIABETES")
 S ^ILS("TMP","J",k)="SEARCH|FIND_DIABETES|"_($L(r))_"|"_($E(r,1,40))
 S k=(k)+1
 D PARSE^ILSREC("90001296","CAT","ID - 90001296"_$C(10)_"BTI - Stress Title 1296"_$C(10)_"AU - Tester, Ann"_$C(10)_"MH - Diabetes Mellitus."_$C(10)_"MH - Medical Informatics")
 S ^ILS("TMP","J",k)="CREATE|90001296|"_$G(^ILS("TMP","CNT"))
 S k=(k)+1
 D PARSE^ILSREC("90001297","CAT","ID - 90001297"_$C(10)_"BTI - Stress Title 1297"_$C(10)_"AU - Tester, Ann"_$C(10)_"MH - Genomics"_$C(10)_"MH - Genomics"_$C(10)_"MH - Genomics")
 S ^ILS("TMP","J",k)="CREATE|90001297|"_$G(^ILS("TMP","CNT"))
 S k=(k)+1
 D SEQPUT^ILSREC("90001298","CAT","MH","Stress Heading 1298")
 S ^ILS("TMP","J",k)="SEQPUT|90001298"
 S k=(k)+1
 S r=$$DISPATCH^ILSTUI("HELP")
 S ^ILS("TMP","J",k)="SEARCH|HELP|"_($L(r))_"|"_($E(r,1,40))
 S k=(k)+1
 D PARSE^ILSREC("90001300","CAT","ID - 90001300"_$C(10)_"BTI - Stress Title 1300"_$C(10)_"AU - Tester, Ann"_$C(10)_"MH - Medical Informatics"_$C(10)_"MH - Medical Informatics")
 S ^ILS("TMP","J",k)="CREATE|90001300|"_$G(^ILS("TMP","CNT"))
 S k=(k)+1
 S r=$G(^ILS("SER","1260223","ISS",1))
 S ^ILS("TMP","J",k)="READ|SER|1260223|ISS|"_($L(r))_"|"_($E(r,1,24))
 S k=(k)+1
 D PARSE^ILSREC("90001302","CAT","ID - 90001302"_$C(10)_"BTI - Stress Title 1302"_$C(10)_"AU - Tester, Ann"_$C(10)_"MH - Public Health"_$C(10)_"MH - Diabetes Mellitus."_$C(10)_"MH - Quantum Bibliography")
 S ^ILS("TMP","J",k)="CREATE|90001302|"_$G(^ILS("TMP","CNT"))
 S k=(k)+1
 S r=$$DISPATCH^ILSTUI("MH DIABETES MELLITUS.")
 S ^ILS("TMP","J",k)="SEARCH|MH_DIABETES_MELLITUS.|"_($L(r))_"|"_($E(r,1,40))
 S k=(k)+1
 S r=$$DISPATCH^ILSTUI("SHOW CAT 7505764")
 S ^ILS("TMP","J",k)="SEARCH|SHOW_CAT_7505764|"_($L(r))_"|"_($E(r,1,40))
 S k=(k)+1
 S r=$$VALIDATE^ILSAUTH("90001305","CAT")
 S ^ILS("TMP","J",k)="VAL|90001305|"_(r)
 S k=(k)+1
 S r=$$DISPATCH^ILSTUI("RELATED D003920")
 S ^ILS("TMP","J",k)="SEARCH|RELATED_D003920|"_($L(r))_"|"_($E(r,1,40))
 S k=(k)+1
 D PARSE^ILSREC("90001307","CAT","ID - 90001307"_$C(10)_"BTI - Stress Title 1307"_$C(10)_"AU - Tester, Ann"_$C(10)_"MH - Medical Informatics"_$C(10)_"MH - Diabetes Mellitus."_$C(10)_"MH - Quantum Bibliography")
 S ^ILS("TMP","J",k)="CREATE|90001307|"_$G(^ILS("TMP","CNT"))
 S k=(k)+1
 S p=$D(^ILS("CAT","8101154"))
 D KILLREC^ILSREC("8101154","CAT")
 S ^ILS("TMP","J",k)="DEL|8101154|"_(p)_"->"_($D(^ILS("CAT","8101154")))
 S k=(k)+1
 S r=$G(^ILS("CAT","7609600","AU",1))
 S ^ILS("TMP","J",k)="READ|CAT|7609600|AU|"_($L(r))_"|"_($E(r,1,24))
 S k=(k)+1
 D PARSE^ILSREC("90001310","CAT","ID - 90001310"_$C(10)_"BTI - Stress Title 1310"_$C(10)_"AU - Tester, Ann"_$C(10)_"MH - Medical Informatics")
 S ^ILS("TMP","J",k)="CREATE|90001310|"_$G(^ILS("TMP","CNT"))
 S k=(k)+1
 S p=$D(^ILS("CAT","7803530"))
 D KILLREC^ILSREC("7803530","CAT")
 S ^ILS("TMP","J",k)="DEL|7803530|"_(p)_"->"_($D(^ILS("CAT","7803530")))
 S k=(k)+1
 S p=$D(^ILS("CAT","90001312"))
 D KILLREC^ILSREC("90001312","CAT")
 S ^ILS("TMP","J",k)="DEL|90001312|"_(p)_"->"_($D(^ILS("CAT","90001312")))
 S k=(k)+1
 D PARSE^ILSREC("90001313","CAT","ID - 90001313"_$C(10)_"BTI - Stress Title 1313"_$C(10)_"AU - Tester, Ann"_$C(10)_"MH - Public Health"_$C(10)_"MH - Genomics"_$C(10)_"MH - Medical Informatics")
 S ^ILS("TMP","J",k)="CREATE|90001313|"_$G(^ILS("TMP","CNT"))
 S k=(k)+1
 S r=$$DISPATCH^ILSTUI("ISSN 0742-3071")
 S ^ILS("TMP","J",k)="SEARCH|ISSN_0742-3071|"_($L(r))_"|"_($E(r,1,40))
 S k=(k)+1
 S r=$$DISPATCH^ILSTUI("HELP")
 S ^ILS("TMP","J",k)="SEARCH|HELP|"_($L(r))_"|"_($E(r,1,40))
 S k=(k)+1
 S r=$$DISPATCH^ILSTUI("AUTH D003920")
 S ^ILS("TMP","J",k)="SEARCH|AUTH_D003920|"_($L(r))_"|"_($E(r,1,40))
 S k=(k)+1
 S p=$D(^ILS("CAT","7506781"))
 D KILLREC^ILSREC("7506781","CAT")
 S ^ILS("TMP","J",k)="DEL|7506781|"_(p)_"->"_($D(^ILS("CAT","7506781")))
 S k=(k)+1
 S r=$G(^ILS("SER","1260767","ISS",1))
 S ^ILS("TMP","J",k)="READ|SER|1260767|ISS|"_($L(r))_"|"_($E(r,1,24))
 S k=(k)+1
 S r=$G(^ILS("SER","1260665","ISS",1))
 S ^ILS("TMP","J",k)="READ|SER|1260665|ISS|"_($L(r))_"|"_($E(r,1,24))
 S k=(k)+1
 S p=$D(^ILS("CAT","1302032"))
 D KILLREC^ILSREC("1302032","CAT")
 S ^ILS("TMP","J",k)="DEL|1302032|"_(p)_"->"_($D(^ILS("CAT","1302032")))
 S k=(k)+1
 S r=$G(^ILS("CAT","7807107","PB",1))
 S ^ILS("TMP","J",k)="READ|CAT|7807107|PB|"_($L(r))_"|"_($E(r,1,24))
 S k=(k)+1
 D PARSE^ILSREC("90001322","CAT","ID - 90001322"_$C(10)_"BTI - Stress Title 1322"_$C(10)_"AU - Tester, Ann"_$C(10)_"MH - Diabetes Mellitus.")
 S ^ILS("TMP","J",k)="CREATE|90001322|"_$G(^ILS("TMP","CNT"))
 S k=(k)+1
 S r=$G(^ILS("SER","1257757","MH",1))
 S ^ILS("TMP","J",k)="READ|SER|1257757|MH|"_($L(r))_"|"_($E(r,1,24))
 S k=(k)+1
 D PARSE^ILSREC("90001324","CAT","ID - 90001324"_$C(10)_"BTI - Stress Title 1324"_$C(10)_"AU - Tester, Ann"_$C(10)_"MH - Genomics"_$C(10)_"MH - Quantum Bibliography")
 S ^ILS("TMP","J",k)="CREATE|90001324|"_$G(^ILS("TMP","CNT"))
 S k=(k)+1
 S r=$$DISPATCH^ILSTUI("LEDGER")
 S ^ILS("TMP","J",k)="SEARCH|LEDGER|"_($L(r))_"|"_($E(r,1,40))
 S k=(k)+1
 D PARSE^ILSREC("90001326","CAT","ID - 90001326"_$C(10)_"BTI - Stress Title 1326"_$C(10)_"AU - Tester, Ann"_$C(10)_"MH - Genomics"_$C(10)_"MH - Diabetes Mellitus.")
 S ^ILS("TMP","J",k)="CREATE|90001326|"_$G(^ILS("TMP","CNT"))
 S k=(k)+1
 D PARSE^ILSREC("90001327","CAT","ID - 90001327"_$C(10)_"BTI - Stress Title 1327"_$C(10)_"AU - Tester, Ann"_$C(10)_"MH - Medical Informatics"_$C(10)_"MH - Diabetes Mellitus."_$C(10)_"MH - Diabetes Mellitus.")
 S ^ILS("TMP","J",k)="CREATE|90001327|"_$G(^ILS("TMP","CNT"))
 S k=(k)+1
 S r=$$DISPATCH^ILSTUI("MH GENOMICS")
 S ^ILS("TMP","J",k)="SEARCH|MH_GENOMICS|"_($L(r))_"|"_($E(r,1,40))
 S k=(k)+1
 D PARSE^ILSREC("90001329","CAT","ID - 90001329"_$C(10)_"BTI - Stress Title 1329"_$C(10)_"AU - Tester, Ann"_$C(10)_"MH - Diabetes Mellitus."_$C(10)_"MH - Medical Informatics")
 S ^ILS("TMP","J",k)="CREATE|90001329|"_$G(^ILS("TMP","CNT"))
 S k=(k)+1
 S r=$$VALIDATE^ILSAUTH("7901827","CAT")
 S ^ILS("TMP","J",k)="VAL|7901827|"_(r)
 S k=(k)+1
 S r=$$DISPATCH^ILSTUI("SHOW SER 1262006")
 S ^ILS("TMP","J",k)="SEARCH|SHOW_SER_1262006|"_($L(r))_"|"_($E(r,1,40))
 S k=(k)+1
 D PUT^ILSREC("90001332","CAT","DP",1,"2026")
 S ^ILS("TMP","J",k)="UPD|90001332|"_($D(^ILS("CAT","90001332","DP",1)))
 S k=(k)+1
 S r=$$DISPATCH^ILSTUI("LEDGER")
 S ^ILS("TMP","J",k)="SEARCH|LEDGER|"_($L(r))_"|"_($E(r,1,40))
 S k=(k)+1
 D PARSE^ILSREC("90001334","CAT","ID - 90001334"_$C(10)_"BTI - Stress Title 1334"_$C(10)_"AU - Tester, Ann"_$C(10)_"MH - Medical Informatics"_$C(10)_"MH - Diabetes Mellitus.")
 S ^ILS("TMP","J",k)="CREATE|90001334|"_$G(^ILS("TMP","CNT"))
 S k=(k)+1
 D PUT^ILSREC("90001335","CAT","DP",1,"2026")
 S ^ILS("TMP","J",k)="UPD|90001335|"_($D(^ILS("CAT","90001335","DP",1)))
 S k=(k)+1
 S r=$$DISPATCH^ILSTUI("ISSN 0742-3071")
 S ^ILS("TMP","J",k)="SEARCH|ISSN_0742-3071|"_($L(r))_"|"_($E(r,1,40))
 S k=(k)+1
 S r=$$DISPATCH^ILSTUI("LEDGER")
 S ^ILS("TMP","J",k)="SEARCH|LEDGER|"_($L(r))_"|"_($E(r,1,40))
 S k=(k)+1
 D PARSE^ILSREC("90001338","CAT","ID - 90001338"_$C(10)_"BTI - Stress Title 1338"_$C(10)_"AU - Tester, Ann"_$C(10)_"MH - Quantum Bibliography"_$C(10)_"MH - Diabetes Mellitus.")
 S ^ILS("TMP","J",k)="CREATE|90001338|"_$G(^ILS("TMP","CNT"))
 S k=(k)+1
 D PARSE^ILSREC("90001339","CAT","ID - 90001339"_$C(10)_"BTI - Stress Title 1339"_$C(10)_"AU - Tester, Ann"_$C(10)_"MH - Medical Informatics")
 S ^ILS("TMP","J",k)="CREATE|90001339|"_$G(^ILS("TMP","CNT"))
 S k=(k)+1
 S p=$D(^ILS("CAT","90001340"))
 D KILLREC^ILSREC("90001340","CAT")
 S ^ILS("TMP","J",k)="DEL|90001340|"_(p)_"->"_($D(^ILS("CAT","90001340")))
 S k=(k)+1
 S r=$G(^ILS("CAT","1275455","AU",1))
 S ^ILS("TMP","J",k)="READ|CAT|1275455|AU|"_($L(r))_"|"_($E(r,1,24))
 S k=(k)+1
 S r=$G(^ILS("CAT","1267066","MH",1))
 S ^ILS("TMP","J",k)="READ|CAT|1267066|MH|"_($L(r))_"|"_($E(r,1,24))
 S k=(k)+1
 S r=$$DISPATCH^ILSTUI("MH DIABETES MELLITUS.")
 S ^ILS("TMP","J",k)="SEARCH|MH_DIABETES_MELLITUS.|"_($L(r))_"|"_($E(r,1,40))
 S k=(k)+1
 S r=$$DISPATCH^ILSTUI("HELP")
 S ^ILS("TMP","J",k)="SEARCH|HELP|"_($L(r))_"|"_($E(r,1,40))
 S k=(k)+1
 D PARSE^ILSREC("90001345","CAT","ID - 90001345"_$C(10)_"BTI - Stress Title 1345"_$C(10)_"AU - Tester, Ann"_$C(10)_"MH - Quantum Bibliography"_$C(10)_"MH - Medical Informatics"_$C(10)_"MH - Quantum Bibliography")
 S ^ILS("TMP","J",k)="CREATE|90001345|"_$G(^ILS("TMP","CNT"))
 S k=(k)+1
 S r=$G(^ILS("CAT","7807107","DP",1))
 S ^ILS("TMP","J",k)="READ|CAT|7807107|DP|"_($L(r))_"|"_($E(r,1,24))
 S k=(k)+1
 D PARSE^ILSREC("90001347","CAT","ID - 90001347"_$C(10)_"BTI - Stress Title 1347"_$C(10)_"AU - Tester, Ann"_$C(10)_"MH - Quantum Bibliography"_$C(10)_"MH - Public Health")
 S ^ILS("TMP","J",k)="CREATE|90001347|"_$G(^ILS("TMP","CNT"))
 S k=(k)+1
 S r=$$DISPATCH^ILSTUI("SHOW SER 1262373")
 S ^ILS("TMP","J",k)="SEARCH|SHOW_SER_1262373|"_($L(r))_"|"_($E(r,1,40))
 S k=(k)+1
 S r=$$DISPATCH^ILSTUI("MH DIABETES MELLITUS.")
 S ^ILS("TMP","J",k)="SEARCH|MH_DIABETES_MELLITUS.|"_($L(r))_"|"_($E(r,1,40))
 S k=(k)+1
 D AUTHADD^ILSAUTH("D991350","Stress Heading 1350","Z99.350")
 S ^ILS("TMP","J",k)="AUTHADD|D991350|"_($D(^ILS("ANAME","STRESS HEADING 1350","D991350")))
 S k=(k)+1
 D PUT^ILSREC("90001351","CAT","DP",1,"2026")
 S ^ILS("TMP","J",k)="UPD|90001351|"_($D(^ILS("CAT","90001351","DP",1)))
 S k=(k)+1
 S r=$$DISPATCH^ILSTUI("RELATED D003920")
 S ^ILS("TMP","J",k)="SEARCH|RELATED_D003920|"_($L(r))_"|"_($E(r,1,40))
 S k=(k)+1
 D PARSE^ILSREC("90001353","CAT","ID - 90001353"_$C(10)_"BTI - Stress Title 1353"_$C(10)_"AU - Tester, Ann"_$C(10)_"MH - Genomics"_$C(10)_"MH - Medical Informatics"_$C(10)_"MH - Medical Informatics")
 S ^ILS("TMP","J",k)="CREATE|90001353|"_$G(^ILS("TMP","CNT"))
 S k=(k)+1
 D PARSE^ILSREC("90001354","CAT","ID - 90001354"_$C(10)_"BTI - Stress Title 1354"_$C(10)_"AU - Tester, Ann"_$C(10)_"MH - Quantum Bibliography")
 S ^ILS("TMP","J",k)="CREATE|90001354|"_$G(^ILS("TMP","CNT"))
 S k=(k)+1
 S r=$$DISPATCH^ILSTUI("SHOW SER 1260300")
 S ^ILS("TMP","J",k)="SEARCH|SHOW_SER_1260300|"_($L(r))_"|"_($E(r,1,40))
 S k=(k)+1
 S r=$G(^ILS("CAT","7911752","MH",1))
 S ^ILS("TMP","J",k)="READ|CAT|7911752|MH|"_($L(r))_"|"_($E(r,1,24))
 S k=(k)+1
 D AUTHADD^ILSAUTH("D991357","Stress Heading 1357","Z99.357")
 S ^ILS("TMP","J",k)="AUTHADD|D991357|"_($D(^ILS("ANAME","STRESS HEADING 1357","D991357")))
 S k=(k)+1
 S p=$D(^ILS("CAT","7609600"))
 D KILLREC^ILSREC("7609600","CAT")
 S ^ILS("TMP","J",k)="DEL|7609600|"_(p)_"->"_($D(^ILS("CAT","7609600")))
 S k=(k)+1
 S r=$$DISPATCH^ILSTUI("SHOW CAT 7703942")
 S ^ILS("TMP","J",k)="SEARCH|SHOW_CAT_7703942|"_($L(r))_"|"_($E(r,1,40))
 S k=(k)+1
 D PARSE^ILSREC("90001360","CAT","ID - 90001360"_$C(10)_"BTI - Stress Title 1360"_$C(10)_"AU - Tester, Ann"_$C(10)_"MH - Medical Informatics"_$C(10)_"MH - Quantum Bibliography"_$C(10)_"MH - Diabetes Mellitus.")
 S ^ILS("TMP","J",k)="CREATE|90001360|"_$G(^ILS("TMP","CNT"))
 S k=(k)+1
 S r=$G(^ILS("CAT","7506781","PB",1))
 S ^ILS("TMP","J",k)="READ|CAT|7506781|PB|"_($L(r))_"|"_($E(r,1,24))
 S k=(k)+1
 S r=$$DISPATCH^ILSTUI("SHOW SER 1262011")
 S ^ILS("TMP","J",k)="SEARCH|SHOW_SER_1262011|"_($L(r))_"|"_($E(r,1,40))
 S k=(k)+1
 D PARSE^ILSREC("90001363","CAT","ID - 90001363"_$C(10)_"BTI - Stress Title 1363"_$C(10)_"AU - Tester, Ann"_$C(10)_"MH - Genomics"_$C(10)_"MH - Diabetes Mellitus."_$C(10)_"MH - Quantum Bibliography")
 S ^ILS("TMP","J",k)="CREATE|90001363|"_$G(^ILS("TMP","CNT"))
 S k=(k)+1
 D PUT^ILSREC("90001364","CAT","DP",1,"2026")
 S ^ILS("TMP","J",k)="UPD|90001364|"_($D(^ILS("CAT","90001364","DP",1)))
 S k=(k)+1
 S r=$$DISPATCH^ILSTUI("AUTH D003920")
 S ^ILS("TMP","J",k)="SEARCH|AUTH_D003920|"_($L(r))_"|"_($E(r,1,40))
 S k=(k)+1
 S r=$$DISPATCH^ILSTUI("SHOW SER 1260024")
 S ^ILS("TMP","J",k)="SEARCH|SHOW_SER_1260024|"_($L(r))_"|"_($E(r,1,40))
 S k=(k)+1
 S r=$G(^ILS("CAT","1267372","AU",1))
 S ^ILS("TMP","J",k)="READ|CAT|1267372|AU|"_($L(r))_"|"_($E(r,1,24))
 S k=(k)+1
 S r=$G(^ILS("CAT","1267372","BTI",1))
 S ^ILS("TMP","J",k)="READ|CAT|1267372|BTI|"_($L(r))_"|"_($E(r,1,24))
 S k=(k)+1
 D AUTHADD^ILSAUTH("D991369","Stress Heading 1369","Z99.369")
 S ^ILS("TMP","J",k)="AUTHADD|D991369|"_($D(^ILS("ANAME","STRESS HEADING 1369","D991369")))
 S k=(k)+1
 S r=$G(^ILS("CAT","8007202","DP",1))
 S ^ILS("TMP","J",k)="READ|CAT|8007202|DP|"_($L(r))_"|"_($E(r,1,24))
 S k=(k)+1
 S p=$D(^ILS("CAT","7911752"))
 D KILLREC^ILSREC("7911752","CAT")
 S ^ILS("TMP","J",k)="DEL|7911752|"_(p)_"->"_($D(^ILS("CAT","7911752")))
 S k=(k)+1
 S r=$$DISPATCH^ILSTUI("SHOW SER 1256232")
 S ^ILS("TMP","J",k)="SEARCH|SHOW_SER_1256232|"_($L(r))_"|"_($E(r,1,40))
 S k=(k)+1
 S p=$D(^ILS("CAT","90001373"))
 D KILLREC^ILSREC("90001373","CAT")
 S ^ILS("TMP","J",k)="DEL|90001373|"_(p)_"->"_($D(^ILS("CAT","90001373")))
 S k=(k)+1
 S r=$$DISPATCH^ILSTUI("LEDGER")
 S ^ILS("TMP","J",k)="SEARCH|LEDGER|"_($L(r))_"|"_($E(r,1,40))
 S k=(k)+1
 S p=$D(^ILS("CAT","90001375"))
 D KILLREC^ILSREC("90001375","CAT")
 S ^ILS("TMP","J",k)="DEL|90001375|"_(p)_"->"_($D(^ILS("CAT","90001375")))
 S k=(k)+1
 S r=$$DISPATCH^ILSTUI("FIND HEALTH")
 S ^ILS("TMP","J",k)="SEARCH|FIND_HEALTH|"_($L(r))_"|"_($E(r,1,40))
 S k=(k)+1
 S r=$$DISPATCH^ILSTUI("RELATED D003920")
 S ^ILS("TMP","J",k)="SEARCH|RELATED_D003920|"_($L(r))_"|"_($E(r,1,40))
 S k=(k)+1
 S r=$$DISPATCH^ILSTUI("SHOW CAT 1267066")
 S ^ILS("TMP","J",k)="SEARCH|SHOW_CAT_1267066|"_($L(r))_"|"_($E(r,1,40))
 S k=(k)+1
 D PARSE^ILSREC("90001379","CAT","ID - 90001379"_$C(10)_"BTI - Stress Title 1379"_$C(10)_"AU - Tester, Ann"_$C(10)_"MH - Diabetes Mellitus.")
 S ^ILS("TMP","J",k)="CREATE|90001379|"_$G(^ILS("TMP","CNT"))
 S k=(k)+1
 D PARSE^ILSREC("90001380","CAT","ID - 90001380"_$C(10)_"BTI - Stress Title 1380"_$C(10)_"AU - Tester, Ann"_$C(10)_"MH - Quantum Bibliography"_$C(10)_"MH - Public Health")
 S ^ILS("TMP","J",k)="CREATE|90001380|"_$G(^ILS("TMP","CNT"))
 S k=(k)+1
 S r=$$DISPATCH^ILSTUI("LIST")
 S ^ILS("TMP","J",k)="SEARCH|LIST|"_($L(r))_"|"_($E(r,1,40))
 S k=(k)+1
 S r=$$DISPATCH^ILSTUI("SHOW SER 1257757")
 S ^ILS("TMP","J",k)="SEARCH|SHOW_SER_1257757|"_($L(r))_"|"_($E(r,1,40))
 S k=(k)+1
 S p=$D(^ILS("CAT","90001383"))
 D KILLREC^ILSREC("90001383","CAT")
 S ^ILS("TMP","J",k)="DEL|90001383|"_(p)_"->"_($D(^ILS("CAT","90001383")))
 S k=(k)+1
 D SEQPUT^ILSREC("90001384","CAT","MH","Stress Heading 1384")
 S ^ILS("TMP","J",k)="SEQPUT|90001384"
 S k=(k)+1
 S r=$G(^ILS("SER","1260056","MH",1))
 S ^ILS("TMP","J",k)="READ|SER|1260056|MH|"_($L(r))_"|"_($E(r,1,24))
 S k=(k)+1
 S r=$$VALIDATE^ILSAUTH("7703942","CAT")
 S ^ILS("TMP","J",k)="VAL|7703942|"_(r)
 S k=(k)+1
 S r=$$DISPATCH^ILSTUI("ISSN 0742-3071")
 S ^ILS("TMP","J",k)="SEARCH|ISSN_0742-3071|"_($L(r))_"|"_($E(r,1,40))
 S k=(k)+1
 S r=$$DISPATCH^ILSTUI("RELATED D003920")
 S ^ILS("TMP","J",k)="SEARCH|RELATED_D003920|"_($L(r))_"|"_($E(r,1,40))
 S k=(k)+1
 D AUTHADD^ILSAUTH("D991389","Stress Heading 1389","Z99.389")
 S ^ILS("TMP","J",k)="AUTHADD|D991389|"_($D(^ILS("ANAME","STRESS HEADING 1389","D991389")))
 S k=(k)+1
 S p=$D(^ILS("CAT","90001390"))
 D KILLREC^ILSREC("90001390","CAT")
 S ^ILS("TMP","J",k)="DEL|90001390|"_(p)_"->"_($D(^ILS("CAT","90001390")))
 S k=(k)+1
 S r=$$VALIDATE^ILSAUTH("90001391","CAT")
 S ^ILS("TMP","J",k)="VAL|90001391|"_(r)
 S k=(k)+1
 D SEQPUT^ILSREC("90001392","CAT","MH","Stress Heading 1392")
 S ^ILS("TMP","J",k)="SEQPUT|90001392"
 S k=(k)+1
 S r=$$VALIDATE^ILSAUTH("8101154","CAT")
 S ^ILS("TMP","J",k)="VAL|8101154|"_(r)
 S k=(k)+1
 D PARSE^ILSREC("90001394","CAT","ID - 90001394"_$C(10)_"BTI - Stress Title 1394"_$C(10)_"AU - Tester, Ann"_$C(10)_"MH - Quantum Bibliography"_$C(10)_"MH - Quantum Bibliography")
 S ^ILS("TMP","J",k)="CREATE|90001394|"_$G(^ILS("TMP","CNT"))
 S k=(k)+1
 S p=$D(^ILS("CAT","90001395"))
 D KILLREC^ILSREC("90001395","CAT")
 S ^ILS("TMP","J",k)="DEL|90001395|"_(p)_"->"_($D(^ILS("CAT","90001395")))
 S k=(k)+1
 S r=$G(^ILS("CAT","7703942","AU",1))
 S ^ILS("TMP","J",k)="READ|CAT|7703942|AU|"_($L(r))_"|"_($E(r,1,24))
 S k=(k)+1
 S r=$$DISPATCH^ILSTUI("FIND HEALTH")
 S ^ILS("TMP","J",k)="SEARCH|FIND_HEALTH|"_($L(r))_"|"_($E(r,1,40))
 S k=(k)+1
 S r=$$VALIDATE^ILSAUTH("1264327","CAT")
 S ^ILS("TMP","J",k)="VAL|1264327|"_(r)
 S k=(k)+1
 D PUT^ILSREC("7508397","CAT","DP",1,"2026")
 S ^ILS("TMP","J",k)="UPD|7508397|"_($D(^ILS("CAT","7508397","DP",1)))
 S k=(k)+1
 S r=$$DISPATCH^ILSTUI("AUTH D003920")
 S ^ILS("TMP","J",k)="SEARCH|AUTH_D003920|"_($L(r))_"|"_($E(r,1,40))
 S k=(k)+1
 S p=$D(^ILS("CAT","7609600"))
 D KILLREC^ILSREC("7609600","CAT")
 S ^ILS("TMP","J",k)="DEL|7609600|"_(p)_"->"_($D(^ILS("CAT","7609600")))
 S k=(k)+1
 D PARSE^ILSREC("90001402","CAT","ID - 90001402"_$C(10)_"BTI - Stress Title 1402"_$C(10)_"AU - Tester, Ann"_$C(10)_"MH - Public Health"_$C(10)_"MH - Diabetes Mellitus."_$C(10)_"MH - Diabetes Mellitus.")
 S ^ILS("TMP","J",k)="CREATE|90001402|"_$G(^ILS("TMP","CNT"))
 S k=(k)+1
 S r=$G(^ILS("CAT","8007202","AU",1))
 S ^ILS("TMP","J",k)="READ|CAT|8007202|AU|"_($L(r))_"|"_($E(r,1,24))
 S k=(k)+1
 S p=$D(^ILS("CAT","7503289"))
 D KILLREC^ILSREC("7503289","CAT")
 S ^ILS("TMP","J",k)="DEL|7503289|"_(p)_"->"_($D(^ILS("CAT","7503289")))
 S k=(k)+1
 D PUT^ILSREC("90001405","CAT","DP",1,"2026")
 S ^ILS("TMP","J",k)="UPD|90001405|"_($D(^ILS("CAT","90001405","DP",1)))
 S k=(k)+1
 D SEQPUT^ILSREC("1267372","CAT","MH","Stress Heading 1406")
 S ^ILS("TMP","J",k)="SEQPUT|1267372"
 S k=(k)+1
 S r=$$DISPATCH^ILSTUI("HELP")
 S ^ILS("TMP","J",k)="SEARCH|HELP|"_($L(r))_"|"_($E(r,1,40))
 S k=(k)+1
 S p=$D(^ILS("CAT","90001408"))
 D KILLREC^ILSREC("90001408","CAT")
 S ^ILS("TMP","J",k)="DEL|90001408|"_(p)_"->"_($D(^ILS("CAT","90001408")))
 S k=(k)+1
 D PUT^ILSREC("7605530","CAT","DP",1,"2026")
 S ^ILS("TMP","J",k)="UPD|7605530|"_($D(^ILS("CAT","7605530","DP",1)))
 S k=(k)+1
 S r=$$VALIDATE^ILSAUTH("90001410","CAT")
 S ^ILS("TMP","J",k)="VAL|90001410|"_(r)
 S k=(k)+1
 S p=$D(^ILS("CAT","8101154"))
 D KILLREC^ILSREC("8101154","CAT")
 S ^ILS("TMP","J",k)="DEL|8101154|"_(p)_"->"_($D(^ILS("CAT","8101154")))
 S k=(k)+1
 S p=$D(^ILS("CAT","7505764"))
 D KILLREC^ILSREC("7505764","CAT")
 S ^ILS("TMP","J",k)="DEL|7505764|"_(p)_"->"_($D(^ILS("CAT","7505764")))
 S k=(k)+1
 D SEQPUT^ILSREC("7807107","CAT","MH","Stress Heading 1413")
 S ^ILS("TMP","J",k)="SEQPUT|7807107"
 S k=(k)+1
 S r=$G(^ILS("CAT","7807107","PB",1))
 S ^ILS("TMP","J",k)="READ|CAT|7807107|PB|"_($L(r))_"|"_($E(r,1,24))
 S k=(k)+1
 S r=$G(^ILS("CAT","7502500","DP",1))
 S ^ILS("TMP","J",k)="READ|CAT|7502500|DP|"_($L(r))_"|"_($E(r,1,24))
 S k=(k)+1
 S r=$$VALIDATE^ILSAUTH("7802251","CAT")
 S ^ILS("TMP","J",k)="VAL|7802251|"_(r)
 S k=(k)+1
 S r=$G(^ILS("CAT","8000583","AU",1))
 S ^ILS("TMP","J",k)="READ|CAT|8000583|AU|"_($L(r))_"|"_($E(r,1,24))
 S k=(k)+1
 S r=$G(^ILS("CAT","7609600","MH",1))
 S ^ILS("TMP","J",k)="READ|CAT|7609600|MH|"_($L(r))_"|"_($E(r,1,24))
 S k=(k)+1
 S p=$D(^ILS("CAT","7506781"))
 D KILLREC^ILSREC("7506781","CAT")
 S ^ILS("TMP","J",k)="DEL|7506781|"_(p)_"->"_($D(^ILS("CAT","7506781")))
 S k=(k)+1
 D PARSE^ILSREC("90001420","CAT","ID - 90001420"_$C(10)_"BTI - Stress Title 1420"_$C(10)_"AU - Tester, Ann"_$C(10)_"MH - Medical Informatics"_$C(10)_"MH - Public Health")
 S ^ILS("TMP","J",k)="CREATE|90001420|"_$G(^ILS("TMP","CNT"))
 S k=(k)+1
 S r=$G(^ILS("CAT","7503289","DP",1))
 S ^ILS("TMP","J",k)="READ|CAT|7503289|DP|"_($L(r))_"|"_($E(r,1,24))
 S k=(k)+1
 D PUT^ILSREC("7703942","CAT","DP",1,"2026")
 S ^ILS("TMP","J",k)="UPD|7703942|"_($D(^ILS("CAT","7703942","DP",1)))
 S k=(k)+1
 D PARSE^ILSREC("90001423","CAT","ID - 90001423"_$C(10)_"BTI - Stress Title 1423"_$C(10)_"AU - Tester, Ann"_$C(10)_"MH - Medical Informatics")
 S ^ILS("TMP","J",k)="CREATE|90001423|"_$G(^ILS("TMP","CNT"))
 S k=(k)+1
 S r=$$DISPATCH^ILSTUI("MH DIABETES MELLITUS.")
 S ^ILS("TMP","J",k)="SEARCH|MH_DIABETES_MELLITUS.|"_($L(r))_"|"_($E(r,1,40))
 S k=(k)+1
 D SEQPUT^ILSREC("90001425","CAT","MH","Stress Heading 1425")
 S ^ILS("TMP","J",k)="SEQPUT|90001425"
 S k=(k)+1
 D PARSE^ILSREC("90001426","CAT","ID - 90001426"_$C(10)_"BTI - Stress Title 1426"_$C(10)_"AU - Tester, Ann"_$C(10)_"MH - Diabetes Mellitus."_$C(10)_"MH - Quantum Bibliography"_$C(10)_"MH - Genomics")
 S ^ILS("TMP","J",k)="CREATE|90001426|"_$G(^ILS("TMP","CNT"))
 S k=(k)+1
 D PARSE^ILSREC("90001427","CAT","ID - 90001427"_$C(10)_"BTI - Stress Title 1427"_$C(10)_"AU - Tester, Ann"_$C(10)_"MH - Diabetes Mellitus."_$C(10)_"MH - Medical Informatics")
 S ^ILS("TMP","J",k)="CREATE|90001427|"_$G(^ILS("TMP","CNT"))
 S k=(k)+1
 S r=$$DISPATCH^ILSTUI("AUTH D003920")
 S ^ILS("TMP","J",k)="SEARCH|AUTH_D003920|"_($L(r))_"|"_($E(r,1,40))
 S k=(k)+1
 D AUTHADD^ILSAUTH("D991429","Stress Heading 1429","Z99.429")
 S ^ILS("TMP","J",k)="AUTHADD|D991429|"_($D(^ILS("ANAME","STRESS HEADING 1429","D991429")))
 S k=(k)+1
 S p=$D(^ILS("CAT","1275455"))
 D KILLREC^ILSREC("1275455","CAT")
 S ^ILS("TMP","J",k)="DEL|1275455|"_(p)_"->"_($D(^ILS("CAT","1275455")))
 S k=(k)+1
 S r=$$DISPATCH^ILSTUI("MH GENOMICS")
 S ^ILS("TMP","J",k)="SEARCH|MH_GENOMICS|"_($L(r))_"|"_($E(r,1,40))
 S k=(k)+1
 D AUTHADD^ILSAUTH("D991432","Stress Heading 1432","Z99.432")
 S ^ILS("TMP","J",k)="AUTHADD|D991432|"_($D(^ILS("ANAME","STRESS HEADING 1432","D991432")))
 S k=(k)+1
 D PUT^ILSREC("8007202","CAT","DP",1,"2026")
 S ^ILS("TMP","J",k)="UPD|8007202|"_($D(^ILS("CAT","8007202","DP",1)))
 S k=(k)+1
 S r=$G(^ILS("CAT","7506781","PB",1))
 S ^ILS("TMP","J",k)="READ|CAT|7506781|PB|"_($L(r))_"|"_($E(r,1,24))
 S k=(k)+1
 D PARSE^ILSREC("90001435","CAT","ID - 90001435"_$C(10)_"BTI - Stress Title 1435"_$C(10)_"AU - Tester, Ann"_$C(10)_"MH - Public Health")
 S ^ILS("TMP","J",k)="CREATE|90001435|"_$G(^ILS("TMP","CNT"))
 S k=(k)+1
 S p=$D(^ILS("CAT","90001436"))
 D KILLREC^ILSREC("90001436","CAT")
 S ^ILS("TMP","J",k)="DEL|90001436|"_(p)_"->"_($D(^ILS("CAT","90001436")))
 S k=(k)+1
 D PARSE^ILSREC("90001437","CAT","ID - 90001437"_$C(10)_"BTI - Stress Title 1437"_$C(10)_"AU - Tester, Ann"_$C(10)_"MH - Medical Informatics"_$C(10)_"MH - Diabetes Mellitus."_$C(10)_"MH - Public Health")
 S ^ILS("TMP","J",k)="CREATE|90001437|"_$G(^ILS("TMP","CNT"))
 S k=(k)+1
 S r=$G(^ILS("CAT","7803530","DP",1))
 S ^ILS("TMP","J",k)="READ|CAT|7803530|DP|"_($L(r))_"|"_($E(r,1,24))
 S k=(k)+1
 S p=$D(^ILS("CAT","7508397"))
 D KILLREC^ILSREC("7508397","CAT")
 S ^ILS("TMP","J",k)="DEL|7508397|"_(p)_"->"_($D(^ILS("CAT","7508397")))
 S k=(k)+1
 S r=$G(^ILS("SER","1262373","STI",1))
 S ^ILS("TMP","J",k)="READ|SER|1262373|STI|"_($L(r))_"|"_($E(r,1,24))
 S k=(k)+1
 S r=$$DISPATCH^ILSTUI("AUTH D003920")
 S ^ILS("TMP","J",k)="SEARCH|AUTH_D003920|"_($L(r))_"|"_($E(r,1,40))
 S k=(k)+1
 S r=$$DISPATCH^ILSTUI("LIST")
 S ^ILS("TMP","J",k)="SEARCH|LIST|"_($L(r))_"|"_($E(r,1,40))
 S k=(k)+1
 D PARSE^ILSREC("90001443","CAT","ID - 90001443"_$C(10)_"BTI - Stress Title 1443"_$C(10)_"AU - Tester, Ann"_$C(10)_"MH - Public Health")
 S ^ILS("TMP","J",k)="CREATE|90001443|"_$G(^ILS("TMP","CNT"))
 S k=(k)+1
 S r=$G(^ILS("CAT","7506781","MH",1))
 S ^ILS("TMP","J",k)="READ|CAT|7506781|MH|"_($L(r))_"|"_($E(r,1,24))
 S k=(k)+1
 S r=$$DISPATCH^ILSTUI("ISSN 0742-3071")
 S ^ILS("TMP","J",k)="SEARCH|ISSN_0742-3071|"_($L(r))_"|"_($E(r,1,40))
 S k=(k)+1
 S p=$D(^ILS("CAT","7901827"))
 D KILLREC^ILSREC("7901827","CAT")
 S ^ILS("TMP","J",k)="DEL|7901827|"_(p)_"->"_($D(^ILS("CAT","7901827")))
 S k=(k)+1
 S r=$$DISPATCH^ILSTUI("LEDGER")
 S ^ILS("TMP","J",k)="SEARCH|LEDGER|"_($L(r))_"|"_($E(r,1,40))
 S k=(k)+1
 D PARSE^ILSREC("90001448","CAT","ID - 90001448"_$C(10)_"BTI - Stress Title 1448"_$C(10)_"AU - Tester, Ann"_$C(10)_"MH - Diabetes Mellitus.")
 S ^ILS("TMP","J",k)="CREATE|90001448|"_$G(^ILS("TMP","CNT"))
 S k=(k)+1
 D SEQPUT^ILSREC("90001449","CAT","MH","Stress Heading 1449")
 S ^ILS("TMP","J",k)="SEQPUT|90001449"
 S k=(k)+1
 D PUT^ILSREC("7502500","CAT","DP",1,"2026")
 S ^ILS("TMP","J",k)="UPD|7502500|"_($D(^ILS("CAT","7502500","DP",1)))
 S k=(k)+1
 D PARSE^ILSREC("90001451","CAT","ID - 90001451"_$C(10)_"BTI - Stress Title 1451"_$C(10)_"AU - Tester, Ann"_$C(10)_"MH - Medical Informatics"_$C(10)_"MH - Genomics")
 S ^ILS("TMP","J",k)="CREATE|90001451|"_$G(^ILS("TMP","CNT"))
 S k=(k)+1
 D PARSE^ILSREC("90001452","CAT","ID - 90001452"_$C(10)_"BTI - Stress Title 1452"_$C(10)_"AU - Tester, Ann"_$C(10)_"MH - Medical Informatics"_$C(10)_"MH - Genomics")
 S ^ILS("TMP","J",k)="CREATE|90001452|"_$G(^ILS("TMP","CNT"))
 S k=(k)+1
 D PARSE^ILSREC("90001453","CAT","ID - 90001453"_$C(10)_"BTI - Stress Title 1453"_$C(10)_"AU - Tester, Ann"_$C(10)_"MH - Diabetes Mellitus."_$C(10)_"MH - Genomics"_$C(10)_"MH - Quantum Bibliography")
 S ^ILS("TMP","J",k)="CREATE|90001453|"_$G(^ILS("TMP","CNT"))
 S k=(k)+1
 S r=$G(^ILS("CAT","7508397","DP",1))
 S ^ILS("TMP","J",k)="READ|CAT|7508397|DP|"_($L(r))_"|"_($E(r,1,24))
 S k=(k)+1
 S r=$$DISPATCH^ILSTUI("FIND DIABETES")
 S ^ILS("TMP","J",k)="SEARCH|FIND_DIABETES|"_($L(r))_"|"_($E(r,1,40))
 S k=(k)+1
 D PARSE^ILSREC("90001456","CAT","ID - 90001456"_$C(10)_"BTI - Stress Title 1456"_$C(10)_"AU - Tester, Ann"_$C(10)_"MH - Public Health")
 S ^ILS("TMP","J",k)="CREATE|90001456|"_$G(^ILS("TMP","CNT"))
 S k=(k)+1
 S p=$D(^ILS("CAT","7803530"))
 D KILLREC^ILSREC("7803530","CAT")
 S ^ILS("TMP","J",k)="DEL|7803530|"_(p)_"->"_($D(^ILS("CAT","7803530")))
 S k=(k)+1
 S r=$G(^ILS("SER","1263300","ISS",1))
 S ^ILS("TMP","J",k)="READ|SER|1263300|ISS|"_($L(r))_"|"_($E(r,1,24))
 S k=(k)+1
 S r=$$DISPATCH^ILSTUI("FIND DIABETES")
 S ^ILS("TMP","J",k)="SEARCH|FIND_DIABETES|"_($L(r))_"|"_($E(r,1,40))
 S k=(k)+1
 D PARSE^ILSREC("90001460","CAT","ID - 90001460"_$C(10)_"BTI - Stress Title 1460"_$C(10)_"AU - Tester, Ann"_$C(10)_"MH - Quantum Bibliography"_$C(10)_"MH - Medical Informatics"_$C(10)_"MH - Quantum Bibliography")
 S ^ILS("TMP","J",k)="CREATE|90001460|"_$G(^ILS("TMP","CNT"))
 S k=(k)+1
 S r=$$DISPATCH^ILSTUI("SHOW CAT 7808791")
 S ^ILS("TMP","J",k)="SEARCH|SHOW_CAT_7808791|"_($L(r))_"|"_($E(r,1,40))
 S k=(k)+1
 S p=$D(^ILS("CAT","7505764"))
 D KILLREC^ILSREC("7505764","CAT")
 S ^ILS("TMP","J",k)="DEL|7505764|"_(p)_"->"_($D(^ILS("CAT","7505764")))
 S k=(k)+1
 D PUT^ILSREC("7609600","CAT","DP",1,"2026")
 S ^ILS("TMP","J",k)="UPD|7609600|"_($D(^ILS("CAT","7609600","DP",1)))
 S k=(k)+1
 D PARSE^ILSREC("90001464","CAT","ID - 90001464"_$C(10)_"BTI - Stress Title 1464"_$C(10)_"AU - Tester, Ann"_$C(10)_"MH - Genomics")
 S ^ILS("TMP","J",k)="CREATE|90001464|"_$G(^ILS("TMP","CNT"))
 S k=(k)+1
 S r=$$DISPATCH^ILSTUI("FIND DIABETES")
 S ^ILS("TMP","J",k)="SEARCH|FIND_DIABETES|"_($L(r))_"|"_($E(r,1,40))
 S k=(k)+1
 S r=$G(^ILS("CAT","7803530","DP",1))
 S ^ILS("TMP","J",k)="READ|CAT|7803530|DP|"_($L(r))_"|"_($E(r,1,24))
 S k=(k)+1
 D AUTHADD^ILSAUTH("D991467","Stress Heading 1467","Z99.467")
 S ^ILS("TMP","J",k)="AUTHADD|D991467|"_($D(^ILS("ANAME","STRESS HEADING 1467","D991467")))
 S k=(k)+1
 D SEQPUT^ILSREC("90001468","CAT","MH","Stress Heading 1468")
 S ^ILS("TMP","J",k)="SEQPUT|90001468"
 S k=(k)+1
 D PUT^ILSREC("90001469","CAT","DP",1,"2026")
 S ^ILS("TMP","J",k)="UPD|90001469|"_($D(^ILS("CAT","90001469","DP",1)))
 S k=(k)+1
 S p=$D(^ILS("CAT","7505764"))
 D KILLREC^ILSREC("7505764","CAT")
 S ^ILS("TMP","J",k)="DEL|7505764|"_(p)_"->"_($D(^ILS("CAT","7505764")))
 S k=(k)+1
 D PARSE^ILSREC("90001471","CAT","ID - 90001471"_$C(10)_"BTI - Stress Title 1471"_$C(10)_"AU - Tester, Ann"_$C(10)_"MH - Quantum Bibliography"_$C(10)_"MH - Quantum Bibliography"_$C(10)_"MH - Diabetes Mellitus.")
 S ^ILS("TMP","J",k)="CREATE|90001471|"_$G(^ILS("TMP","CNT"))
 S k=(k)+1
 D AUTHADD^ILSAUTH("D991472","Stress Heading 1472","Z99.472")
 S ^ILS("TMP","J",k)="AUTHADD|D991472|"_($D(^ILS("ANAME","STRESS HEADING 1472","D991472")))
 S k=(k)+1
 S r=$G(^ILS("CAT","8101154","MH",1))
 S ^ILS("TMP","J",k)="READ|CAT|8101154|MH|"_($L(r))_"|"_($E(r,1,24))
 S k=(k)+1
 D PUT^ILSREC("90001474","CAT","DP",1,"2026")
 S ^ILS("TMP","J",k)="UPD|90001474|"_($D(^ILS("CAT","90001474","DP",1)))
 S k=(k)+1
 D PUT^ILSREC("90001475","CAT","DP",1,"2026")
 S ^ILS("TMP","J",k)="UPD|90001475|"_($D(^ILS("CAT","90001475","DP",1)))
 S k=(k)+1
 S p=$D(^ILS("CAT","7508397"))
 D KILLREC^ILSREC("7508397","CAT")
 S ^ILS("TMP","J",k)="DEL|7508397|"_(p)_"->"_($D(^ILS("CAT","7508397")))
 S k=(k)+1
 D PARSE^ILSREC("90001477","CAT","ID - 90001477"_$C(10)_"BTI - Stress Title 1477"_$C(10)_"AU - Tester, Ann"_$C(10)_"MH - Medical Informatics"_$C(10)_"MH - Quantum Bibliography")
 S ^ILS("TMP","J",k)="CREATE|90001477|"_$G(^ILS("TMP","CNT"))
 S k=(k)+1
 D AUTHADD^ILSAUTH("D991478","Stress Heading 1478","Z99.478")
 S ^ILS("TMP","J",k)="AUTHADD|D991478|"_($D(^ILS("ANAME","STRESS HEADING 1478","D991478")))
 S k=(k)+1
 S r=$$DISPATCH^ILSTUI("FIND HEALTH")
 S ^ILS("TMP","J",k)="SEARCH|FIND_HEALTH|"_($L(r))_"|"_($E(r,1,40))
 S k=(k)+1
 D PARSE^ILSREC("90001480","CAT","ID - 90001480"_$C(10)_"BTI - Stress Title 1480"_$C(10)_"AU - Tester, Ann"_$C(10)_"MH - Genomics"_$C(10)_"MH - Diabetes Mellitus."_$C(10)_"MH - Genomics")
 S ^ILS("TMP","J",k)="CREATE|90001480|"_$G(^ILS("TMP","CNT"))
 S k=(k)+1
 D AUTHADD^ILSAUTH("D991481","Stress Heading 1481","Z99.481")
 S ^ILS("TMP","J",k)="AUTHADD|D991481|"_($D(^ILS("ANAME","STRESS HEADING 1481","D991481")))
 S k=(k)+1
 D PARSE^ILSREC("90001482","CAT","ID - 90001482"_$C(10)_"BTI - Stress Title 1482"_$C(10)_"AU - Tester, Ann"_$C(10)_"MH - Genomics"_$C(10)_"MH - Diabetes Mellitus.")
 S ^ILS("TMP","J",k)="CREATE|90001482|"_$G(^ILS("TMP","CNT"))
 S k=(k)+1
 D PARSE^ILSREC("90001483","CAT","ID - 90001483"_$C(10)_"BTI - Stress Title 1483"_$C(10)_"AU - Tester, Ann"_$C(10)_"MH - Quantum Bibliography")
 S ^ILS("TMP","J",k)="CREATE|90001483|"_$G(^ILS("TMP","CNT"))
 S k=(k)+1
 D PARSE^ILSREC("90001484","CAT","ID - 90001484"_$C(10)_"BTI - Stress Title 1484"_$C(10)_"AU - Tester, Ann"_$C(10)_"MH - Public Health"_$C(10)_"MH - Quantum Bibliography")
 S ^ILS("TMP","J",k)="CREATE|90001484|"_$G(^ILS("TMP","CNT"))
 S k=(k)+1
 S r=$$VALIDATE^ILSAUTH("1267066","CAT")
 S ^ILS("TMP","J",k)="VAL|1267066|"_(r)
 S k=(k)+1
 S r=$G(^ILS("SER","1260024","STI",1))
 S ^ILS("TMP","J",k)="READ|SER|1260024|STI|"_($L(r))_"|"_($E(r,1,24))
 S k=(k)+1
 D AUTHADD^ILSAUTH("D991487","Stress Heading 1487","Z99.487")
 S ^ILS("TMP","J",k)="AUTHADD|D991487|"_($D(^ILS("ANAME","STRESS HEADING 1487","D991487")))
 S k=(k)+1
 S r=$G(^ILS("CAT","7502500","AU",1))
 S ^ILS("TMP","J",k)="READ|CAT|7502500|AU|"_($L(r))_"|"_($E(r,1,24))
 S k=(k)+1
 S p=$D(^ILS("CAT","7703942"))
 D KILLREC^ILSREC("7703942","CAT")
 S ^ILS("TMP","J",k)="DEL|7703942|"_(p)_"->"_($D(^ILS("CAT","7703942")))
 S k=(k)+1
 D SEQPUT^ILSREC("8101154","CAT","MH","Stress Heading 1490")
 S ^ILS("TMP","J",k)="SEQPUT|8101154"
 S k=(k)+1
 S r=$G(^ILS("SER","1260056","MH",1))
 S ^ILS("TMP","J",k)="READ|SER|1260056|MH|"_($L(r))_"|"_($E(r,1,24))
 S k=(k)+1
 S r=$$VALIDATE^ILSAUTH("8007202","CAT")
 S ^ILS("TMP","J",k)="VAL|8007202|"_(r)
 S k=(k)+1
 D SEQPUT^ILSREC("90001493","CAT","MH","Stress Heading 1493")
 S ^ILS("TMP","J",k)="SEQPUT|90001493"
 S k=(k)+1
 S r=$G(^ILS("CAT","7508397","PB",1))
 S ^ILS("TMP","J",k)="READ|CAT|7508397|PB|"_($L(r))_"|"_($E(r,1,24))
 S k=(k)+1
 D PARSE^ILSREC("90001495","CAT","ID - 90001495"_$C(10)_"BTI - Stress Title 1495"_$C(10)_"AU - Tester, Ann"_$C(10)_"MH - Genomics"_$C(10)_"MH - Medical Informatics"_$C(10)_"MH - Medical Informatics")
 S ^ILS("TMP","J",k)="CREATE|90001495|"_$G(^ILS("TMP","CNT"))
 S k=(k)+1
 D PARSE^ILSREC("90001496","CAT","ID - 90001496"_$C(10)_"BTI - Stress Title 1496"_$C(10)_"AU - Tester, Ann"_$C(10)_"MH - Public Health"_$C(10)_"MH - Diabetes Mellitus.")
 S ^ILS("TMP","J",k)="CREATE|90001496|"_$G(^ILS("TMP","CNT"))
 S k=(k)+1
 S r=$G(^ILS("CAT","8000583","AU",1))
 S ^ILS("TMP","J",k)="READ|CAT|8000583|AU|"_($L(r))_"|"_($E(r,1,24))
 S k=(k)+1
 S r=$$VALIDATE^ILSAUTH("7705180","CAT")
 S ^ILS("TMP","J",k)="VAL|7705180|"_(r)
 S k=(k)+1
 S r=$G(^ILS("CAT","7506781","MH",1))
 S ^ILS("TMP","J",k)="READ|CAT|7506781|MH|"_($L(r))_"|"_($E(r,1,24))
 S k=(k)+1
 D PARSE^ILSREC("90001500","CAT","ID - 90001500"_$C(10)_"BTI - Stress Title 1500"_$C(10)_"AU - Tester, Ann"_$C(10)_"MH - Genomics")
 S ^ILS("TMP","J",k)="CREATE|90001500|"_$G(^ILS("TMP","CNT"))
 S k=(k)+1
 S r=$$VALIDATE^ILSAUTH("8003963","CAT")
 S ^ILS("TMP","J",k)="VAL|8003963|"_(r)
 S k=(k)+1
 S r=$G(^ILS("CAT","7609600","BTI",1))
 S ^ILS("TMP","J",k)="READ|CAT|7609600|BTI|"_($L(r))_"|"_($E(r,1,24))
 S k=(k)+1
 D PARSE^ILSREC("90001503","CAT","ID - 90001503"_$C(10)_"BTI - Stress Title 1503"_$C(10)_"AU - Tester, Ann"_$C(10)_"MH - Genomics"_$C(10)_"MH - Medical Informatics")
 S ^ILS("TMP","J",k)="CREATE|90001503|"_$G(^ILS("TMP","CNT"))
 S k=(k)+1
 S r=$G(^ILS("SER","1262226","MH",1))
 S ^ILS("TMP","J",k)="READ|SER|1262226|MH|"_($L(r))_"|"_($E(r,1,24))
 S k=(k)+1
 D PARSE^ILSREC("90001505","CAT","ID - 90001505"_$C(10)_"BTI - Stress Title 1505"_$C(10)_"AU - Tester, Ann"_$C(10)_"MH - Diabetes Mellitus."_$C(10)_"MH - Medical Informatics")
 S ^ILS("TMP","J",k)="CREATE|90001505|"_$G(^ILS("TMP","CNT"))
 S k=(k)+1
 D PUT^ILSREC("7505764","CAT","DP",1,"2026")
 S ^ILS("TMP","J",k)="UPD|7505764|"_($D(^ILS("CAT","7505764","DP",1)))
 S k=(k)+1
 S r=$$DISPATCH^ILSTUI("SHOW CAT 8101154")
 S ^ILS("TMP","J",k)="SEARCH|SHOW_CAT_8101154|"_($L(r))_"|"_($E(r,1,40))
 S k=(k)+1
 D PUT^ILSREC("7503289","CAT","DP",1,"2026")
 S ^ILS("TMP","J",k)="UPD|7503289|"_($D(^ILS("CAT","7503289","DP",1)))
 S k=(k)+1
 S r=$G(^ILS("SER","1260134","STI",1))
 S ^ILS("TMP","J",k)="READ|SER|1260134|STI|"_($L(r))_"|"_($E(r,1,24))
 S k=(k)+1
 S r=$G(^ILS("CAT","7508397","MH",1))
 S ^ILS("TMP","J",k)="READ|CAT|7508397|MH|"_($L(r))_"|"_($E(r,1,24))
 S k=(k)+1
 S r=$$DISPATCH^ILSTUI("FIND HEALTH")
 S ^ILS("TMP","J",k)="SEARCH|FIND_HEALTH|"_($L(r))_"|"_($E(r,1,40))
 S k=(k)+1
 S r=$$DISPATCH^ILSTUI("AUTH D003920")
 S ^ILS("TMP","J",k)="SEARCH|AUTH_D003920|"_($L(r))_"|"_($E(r,1,40))
 S k=(k)+1
 D AUTHADD^ILSAUTH("D991513","Stress Heading 1513","Z99.513")
 S ^ILS("TMP","J",k)="AUTHADD|D991513|"_($D(^ILS("ANAME","STRESS HEADING 1513","D991513")))
 S k=(k)+1
 D SEQPUT^ILSREC("90001514","CAT","MH","Stress Heading 1514")
 S ^ILS("TMP","J",k)="SEQPUT|90001514"
 S k=(k)+1
 D PARSE^ILSREC("90001515","CAT","ID - 90001515"_$C(10)_"BTI - Stress Title 1515"_$C(10)_"AU - Tester, Ann"_$C(10)_"MH - Quantum Bibliography")
 S ^ILS("TMP","J",k)="CREATE|90001515|"_$G(^ILS("TMP","CNT"))
 S k=(k)+1
 D AUTHADD^ILSAUTH("D991516","Stress Heading 1516","Z99.516")
 S ^ILS("TMP","J",k)="AUTHADD|D991516|"_($D(^ILS("ANAME","STRESS HEADING 1516","D991516")))
 S k=(k)+1
 D AUTHADD^ILSAUTH("D991517","Stress Heading 1517","Z99.517")
 S ^ILS("TMP","J",k)="AUTHADD|D991517|"_($D(^ILS("ANAME","STRESS HEADING 1517","D991517")))
 S k=(k)+1
 S r=$G(^ILS("CAT","7911752","MH",1))
 S ^ILS("TMP","J",k)="READ|CAT|7911752|MH|"_($L(r))_"|"_($E(r,1,24))
 S k=(k)+1
 S r=$G(^ILS("CAT","1264327","MH",1))
 S ^ILS("TMP","J",k)="READ|CAT|1264327|MH|"_($L(r))_"|"_($E(r,1,24))
 S k=(k)+1
 S p=$D(^ILS("CAT","90001520"))
 D KILLREC^ILSREC("90001520","CAT")
 S ^ILS("TMP","J",k)="DEL|90001520|"_(p)_"->"_($D(^ILS("CAT","90001520")))
 S k=(k)+1
 D PARSE^ILSREC("90001521","CAT","ID - 90001521"_$C(10)_"BTI - Stress Title 1521"_$C(10)_"AU - Tester, Ann"_$C(10)_"MH - Genomics"_$C(10)_"MH - Medical Informatics"_$C(10)_"MH - Quantum Bibliography")
 S ^ILS("TMP","J",k)="CREATE|90001521|"_$G(^ILS("TMP","CNT"))
 S k=(k)+1
 D PARSE^ILSREC("90001522","CAT","ID - 90001522"_$C(10)_"BTI - Stress Title 1522"_$C(10)_"AU - Tester, Ann"_$C(10)_"MH - Quantum Bibliography"_$C(10)_"MH - Medical Informatics"_$C(10)_"MH - Diabetes Mellitus.")
 S ^ILS("TMP","J",k)="CREATE|90001522|"_$G(^ILS("TMP","CNT"))
 S k=(k)+1
 S r=$$DISPATCH^ILSTUI("AUTH D003920")
 S ^ILS("TMP","J",k)="SEARCH|AUTH_D003920|"_($L(r))_"|"_($E(r,1,40))
 S k=(k)+1
 S r=$G(^ILS("CAT","8000583","BTI",1))
 S ^ILS("TMP","J",k)="READ|CAT|8000583|BTI|"_($L(r))_"|"_($E(r,1,24))
 S k=(k)+1
 D PARSE^ILSREC("90001525","CAT","ID - 90001525"_$C(10)_"BTI - Stress Title 1525"_$C(10)_"AU - Tester, Ann"_$C(10)_"MH - Diabetes Mellitus.")
 S ^ILS("TMP","J",k)="CREATE|90001525|"_$G(^ILS("TMP","CNT"))
 S k=(k)+1
 S p=$D(^ILS("CAT","7803530"))
 D KILLREC^ILSREC("7803530","CAT")
 S ^ILS("TMP","J",k)="DEL|7803530|"_(p)_"->"_($D(^ILS("CAT","7803530")))
 S k=(k)+1
 D PARSE^ILSREC("90001527","CAT","ID - 90001527"_$C(10)_"BTI - Stress Title 1527"_$C(10)_"AU - Tester, Ann"_$C(10)_"MH - Medical Informatics")
 S ^ILS("TMP","J",k)="CREATE|90001527|"_$G(^ILS("TMP","CNT"))
 S k=(k)+1
 S r=$$DISPATCH^ILSTUI("LIST")
 S ^ILS("TMP","J",k)="SEARCH|LIST|"_($L(r))_"|"_($E(r,1,40))
 S k=(k)+1
 S r=$$DISPATCH^ILSTUI("SHOW SER 1260134")
 S ^ILS("TMP","J",k)="SEARCH|SHOW_SER_1260134|"_($L(r))_"|"_($E(r,1,40))
 S k=(k)+1
 D PARSE^ILSREC("90001530","CAT","ID - 90001530"_$C(10)_"BTI - Stress Title 1530"_$C(10)_"AU - Tester, Ann"_$C(10)_"MH - Medical Informatics")
 S ^ILS("TMP","J",k)="CREATE|90001530|"_$G(^ILS("TMP","CNT"))
 S k=(k)+1
 D SEQPUT^ILSREC("7503289","CAT","MH","Stress Heading 1531")
 S ^ILS("TMP","J",k)="SEQPUT|7503289"
 S k=(k)+1
 S p=$D(^ILS("CAT","90001532"))
 D KILLREC^ILSREC("90001532","CAT")
 S ^ILS("TMP","J",k)="DEL|90001532|"_(p)_"->"_($D(^ILS("CAT","90001532")))
 S k=(k)+1
 S r=$G(^ILS("CAT","7609600","MH",1))
 S ^ILS("TMP","J",k)="READ|CAT|7609600|MH|"_($L(r))_"|"_($E(r,1,24))
 S k=(k)+1
 D SEQPUT^ILSREC("90001534","CAT","MH","Stress Heading 1534")
 S ^ILS("TMP","J",k)="SEQPUT|90001534"
 S k=(k)+1
 D PUT^ILSREC("7909441","CAT","DP",1,"2026")
 S ^ILS("TMP","J",k)="UPD|7909441|"_($D(^ILS("CAT","7909441","DP",1)))
 S k=(k)+1
 D PARSE^ILSREC("90001536","CAT","ID - 90001536"_$C(10)_"BTI - Stress Title 1536"_$C(10)_"AU - Tester, Ann"_$C(10)_"MH - Public Health")
 S ^ILS("TMP","J",k)="CREATE|90001536|"_$G(^ILS("TMP","CNT"))
 S k=(k)+1
 D PARSE^ILSREC("90001537","CAT","ID - 90001537"_$C(10)_"BTI - Stress Title 1537"_$C(10)_"AU - Tester, Ann"_$C(10)_"MH - Medical Informatics")
 S ^ILS("TMP","J",k)="CREATE|90001537|"_$G(^ILS("TMP","CNT"))
 S k=(k)+1
 D PARSE^ILSREC("90001538","CAT","ID - 90001538"_$C(10)_"BTI - Stress Title 1538"_$C(10)_"AU - Tester, Ann"_$C(10)_"MH - Diabetes Mellitus."_$C(10)_"MH - Medical Informatics"_$C(10)_"MH - Quantum Bibliography")
 S ^ILS("TMP","J",k)="CREATE|90001538|"_$G(^ILS("TMP","CNT"))
 S k=(k)+1
 D PARSE^ILSREC("90001539","CAT","ID - 90001539"_$C(10)_"BTI - Stress Title 1539"_$C(10)_"AU - Tester, Ann"_$C(10)_"MH - Diabetes Mellitus."_$C(10)_"MH - Medical Informatics"_$C(10)_"MH - Diabetes Mellitus.")
 S ^ILS("TMP","J",k)="CREATE|90001539|"_$G(^ILS("TMP","CNT"))
 S k=(k)+1
 S r=$$DISPATCH^ILSTUI("RELATED D003920")
 S ^ILS("TMP","J",k)="SEARCH|RELATED_D003920|"_($L(r))_"|"_($E(r,1,40))
 S k=(k)+1
 D PARSE^ILSREC("90001541","CAT","ID - 90001541"_$C(10)_"BTI - Stress Title 1541"_$C(10)_"AU - Tester, Ann"_$C(10)_"MH - Medical Informatics"_$C(10)_"MH - Public Health"_$C(10)_"MH - Quantum Bibliography")
 S ^ILS("TMP","J",k)="CREATE|90001541|"_$G(^ILS("TMP","CNT"))
 S k=(k)+1
 D PUT^ILSREC("1275455","CAT","DP",1,"2026")
 S ^ILS("TMP","J",k)="UPD|1275455|"_($D(^ILS("CAT","1275455","DP",1)))
 S k=(k)+1
 D PARSE^ILSREC("90001543","CAT","ID - 90001543"_$C(10)_"BTI - Stress Title 1543"_$C(10)_"AU - Tester, Ann"_$C(10)_"MH - Medical Informatics"_$C(10)_"MH - Public Health")
 S ^ILS("TMP","J",k)="CREATE|90001543|"_$G(^ILS("TMP","CNT"))
 S k=(k)+1
 S r=$$DISPATCH^ILSTUI("RELATED D003920")
 S ^ILS("TMP","J",k)="SEARCH|RELATED_D003920|"_($L(r))_"|"_($E(r,1,40))
 S k=(k)+1
 S p=$D(^ILS("CAT","90001545"))
 D KILLREC^ILSREC("90001545","CAT")
 S ^ILS("TMP","J",k)="DEL|90001545|"_(p)_"->"_($D(^ILS("CAT","90001545")))
 S k=(k)+1
 S r=$$DISPATCH^ILSTUI("AUTH D003920")
 S ^ILS("TMP","J",k)="SEARCH|AUTH_D003920|"_($L(r))_"|"_($E(r,1,40))
 S k=(k)+1
 D PUT^ILSREC("8007202","CAT","DP",1,"2026")
 S ^ILS("TMP","J",k)="UPD|8007202|"_($D(^ILS("CAT","8007202","DP",1)))
 S k=(k)+1
 D PARSE^ILSREC("90001548","CAT","ID - 90001548"_$C(10)_"BTI - Stress Title 1548"_$C(10)_"AU - Tester, Ann"_$C(10)_"MH - Diabetes Mellitus."_$C(10)_"MH - Quantum Bibliography"_$C(10)_"MH - Medical Informatics")
 S ^ILS("TMP","J",k)="CREATE|90001548|"_$G(^ILS("TMP","CNT"))
 S k=(k)+1
 S p=$D(^ILS("CAT","7802251"))
 D KILLREC^ILSREC("7802251","CAT")
 S ^ILS("TMP","J",k)="DEL|7802251|"_(p)_"->"_($D(^ILS("CAT","7802251")))
 S k=(k)+1
 S r=$G(^ILS("CAT","8007202","BTI",1))
 S ^ILS("TMP","J",k)="READ|CAT|8007202|BTI|"_($L(r))_"|"_($E(r,1,24))
 S k=(k)+1
 S r=$$VALIDATE^ILSAUTH("7807107","CAT")
 S ^ILS("TMP","J",k)="VAL|7807107|"_(r)
 S k=(k)+1
 D PARSE^ILSREC("90001552","CAT","ID - 90001552"_$C(10)_"BTI - Stress Title 1552"_$C(10)_"AU - Tester, Ann"_$C(10)_"MH - Genomics"_$C(10)_"MH - Public Health")
 S ^ILS("TMP","J",k)="CREATE|90001552|"_$G(^ILS("TMP","CNT"))
 S k=(k)+1
 S r=$$VALIDATE^ILSAUTH("7605530","CAT")
 S ^ILS("TMP","J",k)="VAL|7605530|"_(r)
 S k=(k)+1
 D PARSE^ILSREC("90001554","CAT","ID - 90001554"_$C(10)_"BTI - Stress Title 1554"_$C(10)_"AU - Tester, Ann"_$C(10)_"MH - Public Health"_$C(10)_"MH - Medical Informatics"_$C(10)_"MH - Medical Informatics")
 S ^ILS("TMP","J",k)="CREATE|90001554|"_$G(^ILS("TMP","CNT"))
 S k=(k)+1
 S r=$$DISPATCH^ILSTUI("HELP")
 S ^ILS("TMP","J",k)="SEARCH|HELP|"_($L(r))_"|"_($E(r,1,40))
 S k=(k)+1
 D PARSE^ILSREC("90001556","CAT","ID - 90001556"_$C(10)_"BTI - Stress Title 1556"_$C(10)_"AU - Tester, Ann"_$C(10)_"MH - Diabetes Mellitus."_$C(10)_"MH - Diabetes Mellitus.")
 S ^ILS("TMP","J",k)="CREATE|90001556|"_$G(^ILS("TMP","CNT"))
 S k=(k)+1
 D AUTHADD^ILSAUTH("D991557","Stress Heading 1557","Z99.557")
 S ^ILS("TMP","J",k)="AUTHADD|D991557|"_($D(^ILS("ANAME","STRESS HEADING 1557","D991557")))
 S k=(k)+1
 S p=$D(^ILS("CAT","7506781"))
 D KILLREC^ILSREC("7506781","CAT")
 S ^ILS("TMP","J",k)="DEL|7506781|"_(p)_"->"_($D(^ILS("CAT","7506781")))
 S k=(k)+1
 D SEQPUT^ILSREC("7703942","CAT","MH","Stress Heading 1559")
 S ^ILS("TMP","J",k)="SEQPUT|7703942"
 S k=(k)+1
 D PARSE^ILSREC("90001560","CAT","ID - 90001560"_$C(10)_"BTI - Stress Title 1560"_$C(10)_"AU - Tester, Ann"_$C(10)_"MH - Public Health")
 S ^ILS("TMP","J",k)="CREATE|90001560|"_$G(^ILS("TMP","CNT"))
 S k=(k)+1
 D SEQPUT^ILSREC("8003963","CAT","MH","Stress Heading 1561")
 S ^ILS("TMP","J",k)="SEQPUT|8003963"
 S k=(k)+1
 D PUT^ILSREC("7911752","CAT","DP",1,"2026")
 S ^ILS("TMP","J",k)="UPD|7911752|"_($D(^ILS("CAT","7911752","DP",1)))
 S k=(k)+1
 D PUT^ILSREC("90001563","CAT","DP",1,"2026")
 S ^ILS("TMP","J",k)="UPD|90001563|"_($D(^ILS("CAT","90001563","DP",1)))
 S k=(k)+1
 D PARSE^ILSREC("90001564","CAT","ID - 90001564"_$C(10)_"BTI - Stress Title 1564"_$C(10)_"AU - Tester, Ann"_$C(10)_"MH - Public Health"_$C(10)_"MH - Quantum Bibliography")
 S ^ILS("TMP","J",k)="CREATE|90001564|"_$G(^ILS("TMP","CNT"))
 S k=(k)+1
 S r=$G(^ILS("SER","1262373","STI",1))
 S ^ILS("TMP","J",k)="READ|SER|1262373|STI|"_($L(r))_"|"_($E(r,1,24))
 S k=(k)+1
 D SEQPUT^ILSREC("90001566","CAT","MH","Stress Heading 1566")
 S ^ILS("TMP","J",k)="SEQPUT|90001566"
 S k=(k)+1
 S r=$$DISPATCH^ILSTUI("SHOW CAT 7703942")
 S ^ILS("TMP","J",k)="SEARCH|SHOW_CAT_7703942|"_($L(r))_"|"_($E(r,1,40))
 S k=(k)+1
 S r=$G(^ILS("CAT","7808791","MH",1))
 S ^ILS("TMP","J",k)="READ|CAT|7808791|MH|"_($L(r))_"|"_($E(r,1,24))
 S k=(k)+1
 D PARSE^ILSREC("90001569","CAT","ID - 90001569"_$C(10)_"BTI - Stress Title 1569"_$C(10)_"AU - Tester, Ann"_$C(10)_"MH - Diabetes Mellitus."_$C(10)_"MH - Diabetes Mellitus."_$C(10)_"MH - Genomics")
 S ^ILS("TMP","J",k)="CREATE|90001569|"_$G(^ILS("TMP","CNT"))
 S k=(k)+1
 S r=$$DISPATCH^ILSTUI("LIST")
 S ^ILS("TMP","J",k)="SEARCH|LIST|"_($L(r))_"|"_($E(r,1,40))
 S k=(k)+1
 S r=$$DISPATCH^ILSTUI("RELATED D003920")
 S ^ILS("TMP","J",k)="SEARCH|RELATED_D003920|"_($L(r))_"|"_($E(r,1,40))
 S k=(k)+1
 S r=$G(^ILS("SER","1260024","STI",1))
 S ^ILS("TMP","J",k)="READ|SER|1260024|STI|"_($L(r))_"|"_($E(r,1,24))
 S k=(k)+1
 S r=$G(^ILS("CAT","8007202","BTI",1))
 S ^ILS("TMP","J",k)="READ|CAT|8007202|BTI|"_($L(r))_"|"_($E(r,1,24))
 S k=(k)+1
 S r=$$DISPATCH^ILSTUI("ISSN 0742-3071")
 S ^ILS("TMP","J",k)="SEARCH|ISSN_0742-3071|"_($L(r))_"|"_($E(r,1,40))
 S k=(k)+1
 S r=$$DISPATCH^ILSTUI("SHOW SER 1262226")
 S ^ILS("TMP","J",k)="SEARCH|SHOW_SER_1262226|"_($L(r))_"|"_($E(r,1,40))
 S k=(k)+1
 D PARSE^ILSREC("90001576","CAT","ID - 90001576"_$C(10)_"BTI - Stress Title 1576"_$C(10)_"AU - Tester, Ann"_$C(10)_"MH - Diabetes Mellitus."_$C(10)_"MH - Quantum Bibliography"_$C(10)_"MH - Quantum Bibliography")
 S ^ILS("TMP","J",k)="CREATE|90001576|"_$G(^ILS("TMP","CNT"))
 S k=(k)+1
 S r=$$DISPATCH^ILSTUI("FIND HEALTH")
 S ^ILS("TMP","J",k)="SEARCH|FIND_HEALTH|"_($L(r))_"|"_($E(r,1,40))
 S k=(k)+1
 S r=$$VALIDATE^ILSAUTH("7505764","CAT")
 S ^ILS("TMP","J",k)="VAL|7505764|"_(r)
 S k=(k)+1
 D PARSE^ILSREC("90001579","CAT","ID - 90001579"_$C(10)_"BTI - Stress Title 1579"_$C(10)_"AU - Tester, Ann"_$C(10)_"MH - Public Health"_$C(10)_"MH - Medical Informatics")
 S ^ILS("TMP","J",k)="CREATE|90001579|"_$G(^ILS("TMP","CNT"))
 S k=(k)+1
 D PARSE^ILSREC("90001580","CAT","ID - 90001580"_$C(10)_"BTI - Stress Title 1580"_$C(10)_"AU - Tester, Ann"_$C(10)_"MH - Quantum Bibliography"_$C(10)_"MH - Quantum Bibliography"_$C(10)_"MH - Public Health")
 S ^ILS("TMP","J",k)="CREATE|90001580|"_$G(^ILS("TMP","CNT"))
 S k=(k)+1
 S r=$G(^ILS("CAT","7909441","BTI",1))
 S ^ILS("TMP","J",k)="READ|CAT|7909441|BTI|"_($L(r))_"|"_($E(r,1,24))
 S k=(k)+1
 D SEQPUT^ILSREC("7609600","CAT","MH","Stress Heading 1582")
 S ^ILS("TMP","J",k)="SEQPUT|7609600"
 S k=(k)+1
 S r=$$VALIDATE^ILSAUTH("1302032","CAT")
 S ^ILS("TMP","J",k)="VAL|1302032|"_(r)
 S k=(k)+1
 S r=$G(^ILS("SER","1260056","STI",1))
 S ^ILS("TMP","J",k)="READ|SER|1260056|STI|"_($L(r))_"|"_($E(r,1,24))
 S k=(k)+1
 S r=$$DISPATCH^ILSTUI("FIND DIABETES")
 S ^ILS("TMP","J",k)="SEARCH|FIND_DIABETES|"_($L(r))_"|"_($E(r,1,40))
 S k=(k)+1
 S p=$D(^ILS("CAT","1267066"))
 D KILLREC^ILSREC("1267066","CAT")
 S ^ILS("TMP","J",k)="DEL|1267066|"_(p)_"->"_($D(^ILS("CAT","1267066")))
 S k=(k)+1
 D PARSE^ILSREC("90001587","CAT","ID - 90001587"_$C(10)_"BTI - Stress Title 1587"_$C(10)_"AU - Tester, Ann"_$C(10)_"MH - Diabetes Mellitus."_$C(10)_"MH - Public Health"_$C(10)_"MH - Genomics")
 S ^ILS("TMP","J",k)="CREATE|90001587|"_$G(^ILS("TMP","CNT"))
 S k=(k)+1
 S r=$G(^ILS("SER","1260134","ISS",1))
 S ^ILS("TMP","J",k)="READ|SER|1260134|ISS|"_($L(r))_"|"_($E(r,1,24))
 S k=(k)+1
 S r=$G(^ILS("CAT","8007202","MH",1))
 S ^ILS("TMP","J",k)="READ|CAT|8007202|MH|"_($L(r))_"|"_($E(r,1,24))
 S k=(k)+1
 D PARSE^ILSREC("90001590","CAT","ID - 90001590"_$C(10)_"BTI - Stress Title 1590"_$C(10)_"AU - Tester, Ann"_$C(10)_"MH - Medical Informatics"_$C(10)_"MH - Public Health"_$C(10)_"MH - Medical Informatics")
 S ^ILS("TMP","J",k)="CREATE|90001590|"_$G(^ILS("TMP","CNT"))
 S k=(k)+1
 S r=$G(^ILS("SER","1260024","MH",1))
 S ^ILS("TMP","J",k)="READ|SER|1260024|MH|"_($L(r))_"|"_($E(r,1,24))
 S k=(k)+1
 S r=$$DISPATCH^ILSTUI("MH GENOMICS")
 S ^ILS("TMP","J",k)="SEARCH|MH_GENOMICS|"_($L(r))_"|"_($E(r,1,40))
 S k=(k)+1
 S p=$D(^ILS("CAT","90001593"))
 D KILLREC^ILSREC("90001593","CAT")
 S ^ILS("TMP","J",k)="DEL|90001593|"_(p)_"->"_($D(^ILS("CAT","90001593")))
 S k=(k)+1
 D AUTHADD^ILSAUTH("D991594","Stress Heading 1594","Z99.594")
 S ^ILS("TMP","J",k)="AUTHADD|D991594|"_($D(^ILS("ANAME","STRESS HEADING 1594","D991594")))
 S k=(k)+1
 D PARSE^ILSREC("90001595","CAT","ID - 90001595"_$C(10)_"BTI - Stress Title 1595"_$C(10)_"AU - Tester, Ann"_$C(10)_"MH - Medical Informatics")
 S ^ILS("TMP","J",k)="CREATE|90001595|"_$G(^ILS("TMP","CNT"))
 S k=(k)+1
 D AUTHADD^ILSAUTH("D991596","Stress Heading 1596","Z99.596")
 S ^ILS("TMP","J",k)="AUTHADD|D991596|"_($D(^ILS("ANAME","STRESS HEADING 1596","D991596")))
 S k=(k)+1
 S r=$G(^ILS("SER","1257757","ISS",1))
 S ^ILS("TMP","J",k)="READ|SER|1257757|ISS|"_($L(r))_"|"_($E(r,1,24))
 S k=(k)+1
 S r=$$DISPATCH^ILSTUI("SHOW CAT 8000583")
 S ^ILS("TMP","J",k)="SEARCH|SHOW_CAT_8000583|"_($L(r))_"|"_($E(r,1,40))
 S k=(k)+1
 S p=$D(^ILS("CAT","7911752"))
 D KILLREC^ILSREC("7911752","CAT")
 S ^ILS("TMP","J",k)="DEL|7911752|"_(p)_"->"_($D(^ILS("CAT","7911752")))
 S k=(k)+1
 S r=$G(^ILS("SER","1260767","MH",1))
 S ^ILS("TMP","J",k)="READ|SER|1260767|MH|"_($L(r))_"|"_($E(r,1,24))
 S k=(k)+1
 D PARSE^ILSREC("90001601","CAT","ID - 90001601"_$C(10)_"BTI - Stress Title 1601"_$C(10)_"AU - Tester, Ann"_$C(10)_"MH - Quantum Bibliography"_$C(10)_"MH - Medical Informatics")
 S ^ILS("TMP","J",k)="CREATE|90001601|"_$G(^ILS("TMP","CNT"))
 S k=(k)+1
 S r=$$DISPATCH^ILSTUI("FIND DIABETES")
 S ^ILS("TMP","J",k)="SEARCH|FIND_DIABETES|"_($L(r))_"|"_($E(r,1,40))
 S k=(k)+1
 S r=$$VALIDATE^ILSAUTH("8003963","CAT")
 S ^ILS("TMP","J",k)="VAL|8003963|"_(r)
 S k=(k)+1
 D PARSE^ILSREC("90001604","CAT","ID - 90001604"_$C(10)_"BTI - Stress Title 1604"_$C(10)_"AU - Tester, Ann"_$C(10)_"MH - Medical Informatics")
 S ^ILS("TMP","J",k)="CREATE|90001604|"_$G(^ILS("TMP","CNT"))
 S k=(k)+1
 S r=$G(^ILS("CAT","8007202","AU",1))
 S ^ILS("TMP","J",k)="READ|CAT|8007202|AU|"_($L(r))_"|"_($E(r,1,24))
 S k=(k)+1
 D PARSE^ILSREC("90001606","CAT","ID - 90001606"_$C(10)_"BTI - Stress Title 1606"_$C(10)_"AU - Tester, Ann"_$C(10)_"MH - Public Health"_$C(10)_"MH - Public Health"_$C(10)_"MH - Public Health")
 S ^ILS("TMP","J",k)="CREATE|90001606|"_$G(^ILS("TMP","CNT"))
 S k=(k)+1
 D PARSE^ILSREC("90001607","CAT","ID - 90001607"_$C(10)_"BTI - Stress Title 1607"_$C(10)_"AU - Tester, Ann"_$C(10)_"MH - Public Health"_$C(10)_"MH - Genomics"_$C(10)_"MH - Public Health")
 S ^ILS("TMP","J",k)="CREATE|90001607|"_$G(^ILS("TMP","CNT"))
 S k=(k)+1
 S p=$D(^ILS("CAT","90001608"))
 D KILLREC^ILSREC("90001608","CAT")
 S ^ILS("TMP","J",k)="DEL|90001608|"_(p)_"->"_($D(^ILS("CAT","90001608")))
 S k=(k)+1
 D SEQPUT^ILSREC("7808791","CAT","MH","Stress Heading 1609")
 S ^ILS("TMP","J",k)="SEQPUT|7808791"
 S k=(k)+1
 D PARSE^ILSREC("90001610","CAT","ID - 90001610"_$C(10)_"BTI - Stress Title 1610"_$C(10)_"AU - Tester, Ann"_$C(10)_"MH - Quantum Bibliography"_$C(10)_"MH - Diabetes Mellitus.")
 S ^ILS("TMP","J",k)="CREATE|90001610|"_$G(^ILS("TMP","CNT"))
 S k=(k)+1
 D PARSE^ILSREC("90001611","CAT","ID - 90001611"_$C(10)_"BTI - Stress Title 1611"_$C(10)_"AU - Tester, Ann"_$C(10)_"MH - Medical Informatics"_$C(10)_"MH - Medical Informatics")
 S ^ILS("TMP","J",k)="CREATE|90001611|"_$G(^ILS("TMP","CNT"))
 S k=(k)+1
 S p=$D(^ILS("CAT","90001612"))
 D KILLREC^ILSREC("90001612","CAT")
 S ^ILS("TMP","J",k)="DEL|90001612|"_(p)_"->"_($D(^ILS("CAT","90001612")))
 S k=(k)+1
 S r=$G(^ILS("CAT","7705180","PB",1))
 S ^ILS("TMP","J",k)="READ|CAT|7705180|PB|"_($L(r))_"|"_($E(r,1,24))
 S k=(k)+1
 S p=$D(^ILS("CAT","7808791"))
 D KILLREC^ILSREC("7808791","CAT")
 S ^ILS("TMP","J",k)="DEL|7808791|"_(p)_"->"_($D(^ILS("CAT","7808791")))
 S k=(k)+1
 D PARSE^ILSREC("90001615","CAT","ID - 90001615"_$C(10)_"BTI - Stress Title 1615"_$C(10)_"AU - Tester, Ann"_$C(10)_"MH - Diabetes Mellitus."_$C(10)_"MH - Medical Informatics"_$C(10)_"MH - Medical Informatics")
 S ^ILS("TMP","J",k)="CREATE|90001615|"_$G(^ILS("TMP","CNT"))
 S k=(k)+1
 S r=$$DISPATCH^ILSTUI("FIND HEALTH")
 S ^ILS("TMP","J",k)="SEARCH|FIND_HEALTH|"_($L(r))_"|"_($E(r,1,40))
 S k=(k)+1
 S r=$$DISPATCH^ILSTUI("RELATED D003920")
 S ^ILS("TMP","J",k)="SEARCH|RELATED_D003920|"_($L(r))_"|"_($E(r,1,40))
 S k=(k)+1
 S r=$$VALIDATE^ILSAUTH("90001618","CAT")
 S ^ILS("TMP","J",k)="VAL|90001618|"_(r)
 S k=(k)+1
 D PARSE^ILSREC("90001619","CAT","ID - 90001619"_$C(10)_"BTI - Stress Title 1619"_$C(10)_"AU - Tester, Ann"_$C(10)_"MH - Diabetes Mellitus."_$C(10)_"MH - Public Health"_$C(10)_"MH - Genomics")
 S ^ILS("TMP","J",k)="CREATE|90001619|"_$G(^ILS("TMP","CNT"))
 S k=(k)+1
 S r=$$DISPATCH^ILSTUI("SHOW SER 1260024")
 S ^ILS("TMP","J",k)="SEARCH|SHOW_SER_1260024|"_($L(r))_"|"_($E(r,1,40))
 S k=(k)+1
 S r=$G(^ILS("SER","1262011","STI",1))
 S ^ILS("TMP","J",k)="READ|SER|1262011|STI|"_($L(r))_"|"_($E(r,1,24))
 S k=(k)+1
 D PUT^ILSREC("90001622","CAT","DP",1,"2026")
 S ^ILS("TMP","J",k)="UPD|90001622|"_($D(^ILS("CAT","90001622","DP",1)))
 S k=(k)+1
 S r=$G(^ILS("CAT","7911752","PB",1))
 S ^ILS("TMP","J",k)="READ|CAT|7911752|PB|"_($L(r))_"|"_($E(r,1,24))
 S k=(k)+1
 D PARSE^ILSREC("90001624","CAT","ID - 90001624"_$C(10)_"BTI - Stress Title 1624"_$C(10)_"AU - Tester, Ann"_$C(10)_"MH - Genomics")
 S ^ILS("TMP","J",k)="CREATE|90001624|"_$G(^ILS("TMP","CNT"))
 S k=(k)+1
 D PARSE^ILSREC("90001625","CAT","ID - 90001625"_$C(10)_"BTI - Stress Title 1625"_$C(10)_"AU - Tester, Ann"_$C(10)_"MH - Medical Informatics")
 S ^ILS("TMP","J",k)="CREATE|90001625|"_$G(^ILS("TMP","CNT"))
 S k=(k)+1
 S r=$$DISPATCH^ILSTUI("HELP")
 S ^ILS("TMP","J",k)="SEARCH|HELP|"_($L(r))_"|"_($E(r,1,40))
 S k=(k)+1
 D PARSE^ILSREC("90001627","CAT","ID - 90001627"_$C(10)_"BTI - Stress Title 1627"_$C(10)_"AU - Tester, Ann"_$C(10)_"MH - Diabetes Mellitus.")
 S ^ILS("TMP","J",k)="CREATE|90001627|"_$G(^ILS("TMP","CNT"))
 S k=(k)+1
 S r=$$DISPATCH^ILSTUI("AUTH D003920")
 S ^ILS("TMP","J",k)="SEARCH|AUTH_D003920|"_($L(r))_"|"_($E(r,1,40))
 S k=(k)+1
 D PUT^ILSREC("7909441","CAT","DP",1,"2026")
 S ^ILS("TMP","J",k)="UPD|7909441|"_($D(^ILS("CAT","7909441","DP",1)))
 S k=(k)+1
 S r=$$DISPATCH^ILSTUI("FIND DIABETES")
 S ^ILS("TMP","J",k)="SEARCH|FIND_DIABETES|"_($L(r))_"|"_($E(r,1,40))
 S k=(k)+1
 S r=$G(^ILS("CAT","7505764","BTI",1))
 S ^ILS("TMP","J",k)="READ|CAT|7505764|BTI|"_($L(r))_"|"_($E(r,1,24))
 S k=(k)+1
 S r=$G(^ILS("SER","1263300","ISS",1))
 S ^ILS("TMP","J",k)="READ|SER|1263300|ISS|"_($L(r))_"|"_($E(r,1,24))
 S k=(k)+1
 S r=$$VALIDATE^ILSAUTH("8000583","CAT")
 S ^ILS("TMP","J",k)="VAL|8000583|"_(r)
 S k=(k)+1
 S r=$$VALIDATE^ILSAUTH("90001634","CAT")
 S ^ILS("TMP","J",k)="VAL|90001634|"_(r)
 S k=(k)+1
 D PARSE^ILSREC("90001635","CAT","ID - 90001635"_$C(10)_"BTI - Stress Title 1635"_$C(10)_"AU - Tester, Ann"_$C(10)_"MH - Medical Informatics"_$C(10)_"MH - Quantum Bibliography")
 S ^ILS("TMP","J",k)="CREATE|90001635|"_$G(^ILS("TMP","CNT"))
 S k=(k)+1
 S r=$$DISPATCH^ILSTUI("LEDGER")
 S ^ILS("TMP","J",k)="SEARCH|LEDGER|"_($L(r))_"|"_($E(r,1,40))
 S k=(k)+1
 S r=$G(^ILS("CAT","8007202","DP",1))
 S ^ILS("TMP","J",k)="READ|CAT|8007202|DP|"_($L(r))_"|"_($E(r,1,24))
 S k=(k)+1
 D SEQPUT^ILSREC("8007202","CAT","MH","Stress Heading 1638")
 S ^ILS("TMP","J",k)="SEQPUT|8007202"
 S k=(k)+1
 S r=$$DISPATCH^ILSTUI("SHOW CAT 8003963")
 S ^ILS("TMP","J",k)="SEARCH|SHOW_CAT_8003963|"_($L(r))_"|"_($E(r,1,40))
 S k=(k)+1
 D PARSE^ILSREC("90001640","CAT","ID - 90001640"_$C(10)_"BTI - Stress Title 1640"_$C(10)_"AU - Tester, Ann"_$C(10)_"MH - Quantum Bibliography")
 S ^ILS("TMP","J",k)="CREATE|90001640|"_$G(^ILS("TMP","CNT"))
 S k=(k)+1
 S r=$G(^ILS("SER","1263300","STI",1))
 S ^ILS("TMP","J",k)="READ|SER|1263300|STI|"_($L(r))_"|"_($E(r,1,24))
 S k=(k)+1
 S r=$$DISPATCH^ILSTUI("LIST")
 S ^ILS("TMP","J",k)="SEARCH|LIST|"_($L(r))_"|"_($E(r,1,40))
 S k=(k)+1
 S r=$$DISPATCH^ILSTUI("RELATED D003920")
 S ^ILS("TMP","J",k)="SEARCH|RELATED_D003920|"_($L(r))_"|"_($E(r,1,40))
 S k=(k)+1
 S r=$$VALIDATE^ILSAUTH("7802251","CAT")
 S ^ILS("TMP","J",k)="VAL|7802251|"_(r)
 S k=(k)+1
 S r=$G(^ILS("CAT","7508397","DP",1))
 S ^ILS("TMP","J",k)="READ|CAT|7508397|DP|"_($L(r))_"|"_($E(r,1,24))
 S k=(k)+1
 D PARSE^ILSREC("90001646","CAT","ID - 90001646"_$C(10)_"BTI - Stress Title 1646"_$C(10)_"AU - Tester, Ann"_$C(10)_"MH - Medical Informatics"_$C(10)_"MH - Genomics")
 S ^ILS("TMP","J",k)="CREATE|90001646|"_$G(^ILS("TMP","CNT"))
 S k=(k)+1
 S r=$$DISPATCH^ILSTUI("FIND DIABETES")
 S ^ILS("TMP","J",k)="SEARCH|FIND_DIABETES|"_($L(r))_"|"_($E(r,1,40))
 S k=(k)+1
 S r=$$DISPATCH^ILSTUI("MH DIABETES MELLITUS.")
 S ^ILS("TMP","J",k)="SEARCH|MH_DIABETES_MELLITUS.|"_($L(r))_"|"_($E(r,1,40))
 S k=(k)+1
 D PARSE^ILSREC("90001649","CAT","ID - 90001649"_$C(10)_"BTI - Stress Title 1649"_$C(10)_"AU - Tester, Ann"_$C(10)_"MH - Medical Informatics"_$C(10)_"MH - Diabetes Mellitus."_$C(10)_"MH - Quantum Bibliography")
 S ^ILS("TMP","J",k)="CREATE|90001649|"_$G(^ILS("TMP","CNT"))
 S k=(k)+1
 S r=$G(^ILS("CAT","7502500","DP",1))
 S ^ILS("TMP","J",k)="READ|CAT|7502500|DP|"_($L(r))_"|"_($E(r,1,24))
 S k=(k)+1
 S r=$$DISPATCH^ILSTUI("SHOW SER 1263300")
 S ^ILS("TMP","J",k)="SEARCH|SHOW_SER_1263300|"_($L(r))_"|"_($E(r,1,40))
 S k=(k)+1
 S r=$G(^ILS("CAT","8003963","AU",1))
 S ^ILS("TMP","J",k)="READ|CAT|8003963|AU|"_($L(r))_"|"_($E(r,1,24))
 S k=(k)+1
 D SEQPUT^ILSREC("1275455","CAT","MH","Stress Heading 1653")
 S ^ILS("TMP","J",k)="SEQPUT|1275455"
 S k=(k)+1
 S r=$$DISPATCH^ILSTUI("MH DIABETES MELLITUS.")
 S ^ILS("TMP","J",k)="SEARCH|MH_DIABETES_MELLITUS.|"_($L(r))_"|"_($E(r,1,40))
 S k=(k)+1
 S r=$G(^ILS("SER","1260767","MH",1))
 S ^ILS("TMP","J",k)="READ|SER|1260767|MH|"_($L(r))_"|"_($E(r,1,24))
 S k=(k)+1
 S p=$D(^ILS("CAT","7703942"))
 D KILLREC^ILSREC("7703942","CAT")
 S ^ILS("TMP","J",k)="DEL|7703942|"_(p)_"->"_($D(^ILS("CAT","7703942")))
 S k=(k)+1
 D PARSE^ILSREC("90001657","CAT","ID - 90001657"_$C(10)_"BTI - Stress Title 1657"_$C(10)_"AU - Tester, Ann"_$C(10)_"MH - Public Health")
 S ^ILS("TMP","J",k)="CREATE|90001657|"_$G(^ILS("TMP","CNT"))
 S k=(k)+1
 S r=$$DISPATCH^ILSTUI("SHOW CAT 1302032")
 S ^ILS("TMP","J",k)="SEARCH|SHOW_CAT_1302032|"_($L(r))_"|"_($E(r,1,40))
 S k=(k)+1
 S p=$D(^ILS("CAT","8003963"))
 D KILLREC^ILSREC("8003963","CAT")
 S ^ILS("TMP","J",k)="DEL|8003963|"_(p)_"->"_($D(^ILS("CAT","8003963")))
 S k=(k)+1
 D PARSE^ILSREC("90001660","CAT","ID - 90001660"_$C(10)_"BTI - Stress Title 1660"_$C(10)_"AU - Tester, Ann"_$C(10)_"MH - Public Health"_$C(10)_"MH - Quantum Bibliography")
 S ^ILS("TMP","J",k)="CREATE|90001660|"_$G(^ILS("TMP","CNT"))
 S k=(k)+1
 D AUTHADD^ILSAUTH("D991661","Stress Heading 1661","Z99.661")
 S ^ILS("TMP","J",k)="AUTHADD|D991661|"_($D(^ILS("ANAME","STRESS HEADING 1661","D991661")))
 S k=(k)+1
 D PARSE^ILSREC("90001662","CAT","ID - 90001662"_$C(10)_"BTI - Stress Title 1662"_$C(10)_"AU - Tester, Ann"_$C(10)_"MH - Diabetes Mellitus.")
 S ^ILS("TMP","J",k)="CREATE|90001662|"_$G(^ILS("TMP","CNT"))
 S k=(k)+1
 D PARSE^ILSREC("90001663","CAT","ID - 90001663"_$C(10)_"BTI - Stress Title 1663"_$C(10)_"AU - Tester, Ann"_$C(10)_"MH - Genomics"_$C(10)_"MH - Quantum Bibliography")
 S ^ILS("TMP","J",k)="CREATE|90001663|"_$G(^ILS("TMP","CNT"))
 S k=(k)+1
 S r=$G(^ILS("CAT","1264327","MH",1))
 S ^ILS("TMP","J",k)="READ|CAT|1264327|MH|"_($L(r))_"|"_($E(r,1,24))
 S k=(k)+1
 S p=$D(^ILS("CAT","7901827"))
 D KILLREC^ILSREC("7901827","CAT")
 S ^ILS("TMP","J",k)="DEL|7901827|"_(p)_"->"_($D(^ILS("CAT","7901827")))
 S k=(k)+1
 S r=$$DISPATCH^ILSTUI("LEDGER")
 S ^ILS("TMP","J",k)="SEARCH|LEDGER|"_($L(r))_"|"_($E(r,1,40))
 S k=(k)+1
 D PARSE^ILSREC("90001667","CAT","ID - 90001667"_$C(10)_"BTI - Stress Title 1667"_$C(10)_"AU - Tester, Ann"_$C(10)_"MH - Genomics"_$C(10)_"MH - Diabetes Mellitus."_$C(10)_"MH - Medical Informatics")
 S ^ILS("TMP","J",k)="CREATE|90001667|"_$G(^ILS("TMP","CNT"))
 S k=(k)+1
 D AUTHADD^ILSAUTH("D991668","Stress Heading 1668","Z99.668")
 S ^ILS("TMP","J",k)="AUTHADD|D991668|"_($D(^ILS("ANAME","STRESS HEADING 1668","D991668")))
 S k=(k)+1
 S r=$$DISPATCH^ILSTUI("FIND HEALTH")
 S ^ILS("TMP","J",k)="SEARCH|FIND_HEALTH|"_($L(r))_"|"_($E(r,1,40))
 S k=(k)+1
 D PARSE^ILSREC("90001670","CAT","ID - 90001670"_$C(10)_"BTI - Stress Title 1670"_$C(10)_"AU - Tester, Ann"_$C(10)_"MH - Public Health"_$C(10)_"MH - Genomics"_$C(10)_"MH - Diabetes Mellitus.")
 S ^ILS("TMP","J",k)="CREATE|90001670|"_$G(^ILS("TMP","CNT"))
 S k=(k)+1
 S p=$D(^ILS("CAT","90001671"))
 D KILLREC^ILSREC("90001671","CAT")
 S ^ILS("TMP","J",k)="DEL|90001671|"_(p)_"->"_($D(^ILS("CAT","90001671")))
 S k=(k)+1
 D PUT^ILSREC("1267372","CAT","DP",1,"2026")
 S ^ILS("TMP","J",k)="UPD|1267372|"_($D(^ILS("CAT","1267372","DP",1)))
 S k=(k)+1
 S r=$G(^ILS("CAT","8000583","PB",1))
 S ^ILS("TMP","J",k)="READ|CAT|8000583|PB|"_($L(r))_"|"_($E(r,1,24))
 S k=(k)+1
 S r=$$DISPATCH^ILSTUI("SHOW SER 1261010")
 S ^ILS("TMP","J",k)="SEARCH|SHOW_SER_1261010|"_($L(r))_"|"_($E(r,1,40))
 S k=(k)+1
 S r=$$DISPATCH^ILSTUI("RELATED D003920")
 S ^ILS("TMP","J",k)="SEARCH|RELATED_D003920|"_($L(r))_"|"_($E(r,1,40))
 S k=(k)+1
 D PUT^ILSREC("1267066","CAT","DP",1,"2026")
 S ^ILS("TMP","J",k)="UPD|1267066|"_($D(^ILS("CAT","1267066","DP",1)))
 S k=(k)+1
 D AUTHADD^ILSAUTH("D991677","Stress Heading 1677","Z99.677")
 S ^ILS("TMP","J",k)="AUTHADD|D991677|"_($D(^ILS("ANAME","STRESS HEADING 1677","D991677")))
 S k=(k)+1
 S r=$G(^ILS("CAT","1267372","DP",1))
 S ^ILS("TMP","J",k)="READ|CAT|1267372|DP|"_($L(r))_"|"_($E(r,1,24))
 S k=(k)+1
 D PUT^ILSREC("7803530","CAT","DP",1,"2026")
 S ^ILS("TMP","J",k)="UPD|7803530|"_($D(^ILS("CAT","7803530","DP",1)))
 S k=(k)+1
 S r=$$DISPATCH^ILSTUI("ISSN 0742-3071")
 S ^ILS("TMP","J",k)="SEARCH|ISSN_0742-3071|"_($L(r))_"|"_($E(r,1,40))
 S k=(k)+1
 S r=$G(^ILS("CAT","7503289","MH",1))
 S ^ILS("TMP","J",k)="READ|CAT|7503289|MH|"_($L(r))_"|"_($E(r,1,24))
 S k=(k)+1
 D PARSE^ILSREC("90001682","CAT","ID - 90001682"_$C(10)_"BTI - Stress Title 1682"_$C(10)_"AU - Tester, Ann"_$C(10)_"MH - Medical Informatics"_$C(10)_"MH - Genomics"_$C(10)_"MH - Quantum Bibliography")
 S ^ILS("TMP","J",k)="CREATE|90001682|"_$G(^ILS("TMP","CNT"))
 S k=(k)+1
 D SEQPUT^ILSREC("90001683","CAT","MH","Stress Heading 1683")
 S ^ILS("TMP","J",k)="SEQPUT|90001683"
 S k=(k)+1
 D PUT^ILSREC("7605530","CAT","DP",1,"2026")
 S ^ILS("TMP","J",k)="UPD|7605530|"_($D(^ILS("CAT","7605530","DP",1)))
 S k=(k)+1
 S r=$$DISPATCH^ILSTUI("HELP")
 S ^ILS("TMP","J",k)="SEARCH|HELP|"_($L(r))_"|"_($E(r,1,40))
 S k=(k)+1
 D PARSE^ILSREC("90001686","CAT","ID - 90001686"_$C(10)_"BTI - Stress Title 1686"_$C(10)_"AU - Tester, Ann"_$C(10)_"MH - Quantum Bibliography"_$C(10)_"MH - Medical Informatics"_$C(10)_"MH - Quantum Bibliography")
 S ^ILS("TMP","J",k)="CREATE|90001686|"_$G(^ILS("TMP","CNT"))
 S k=(k)+1
 S r=$G(^ILS("CAT","7909441","AU",1))
 S ^ILS("TMP","J",k)="READ|CAT|7909441|AU|"_($L(r))_"|"_($E(r,1,24))
 S k=(k)+1
 D PUT^ILSREC("90001688","CAT","DP",1,"2026")
 S ^ILS("TMP","J",k)="UPD|90001688|"_($D(^ILS("CAT","90001688","DP",1)))
 S k=(k)+1
 D PARSE^ILSREC("90001689","CAT","ID - 90001689"_$C(10)_"BTI - Stress Title 1689"_$C(10)_"AU - Tester, Ann"_$C(10)_"MH - Genomics"_$C(10)_"MH - Diabetes Mellitus."_$C(10)_"MH - Medical Informatics")
 S ^ILS("TMP","J",k)="CREATE|90001689|"_$G(^ILS("TMP","CNT"))
 S k=(k)+1
 S r=$$VALIDATE^ILSAUTH("7605530","CAT")
 S ^ILS("TMP","J",k)="VAL|7605530|"_(r)
 S k=(k)+1
 S r=$G(^ILS("SER","1260056","STI",1))
 S ^ILS("TMP","J",k)="READ|SER|1260056|STI|"_($L(r))_"|"_($E(r,1,24))
 S k=(k)+1
 S r=$$DISPATCH^ILSTUI("SHOW SER 1260134")
 S ^ILS("TMP","J",k)="SEARCH|SHOW_SER_1260134|"_($L(r))_"|"_($E(r,1,40))
 S k=(k)+1
 D SEQPUT^ILSREC("7807107","CAT","MH","Stress Heading 1693")
 S ^ILS("TMP","J",k)="SEQPUT|7807107"
 S k=(k)+1
 D PUT^ILSREC("7605530","CAT","DP",1,"2026")
 S ^ILS("TMP","J",k)="UPD|7605530|"_($D(^ILS("CAT","7605530","DP",1)))
 S k=(k)+1
 D PUT^ILSREC("90001695","CAT","DP",1,"2026")
 S ^ILS("TMP","J",k)="UPD|90001695|"_($D(^ILS("CAT","90001695","DP",1)))
 S k=(k)+1
 D PARSE^ILSREC("90001696","CAT","ID - 90001696"_$C(10)_"BTI - Stress Title 1696"_$C(10)_"AU - Tester, Ann"_$C(10)_"MH - Public Health"_$C(10)_"MH - Quantum Bibliography")
 S ^ILS("TMP","J",k)="CREATE|90001696|"_$G(^ILS("TMP","CNT"))
 S k=(k)+1
 S p=$D(^ILS("CAT","90001697"))
 D KILLREC^ILSREC("90001697","CAT")
 S ^ILS("TMP","J",k)="DEL|90001697|"_(p)_"->"_($D(^ILS("CAT","90001697")))
 S k=(k)+1
 S r=$$DISPATCH^ILSTUI("LEDGER")
 S ^ILS("TMP","J",k)="SEARCH|LEDGER|"_($L(r))_"|"_($E(r,1,40))
 S k=(k)+1
 S r=$G(^ILS("SER","1263300","ISS",1))
 S ^ILS("TMP","J",k)="READ|SER|1263300|ISS|"_($L(r))_"|"_($E(r,1,24))
 S k=(k)+1
 S r=$G(^ILS("SER","1263300","MH",1))
 S ^ILS("TMP","J",k)="READ|SER|1263300|MH|"_($L(r))_"|"_($E(r,1,24))
 S k=(k)+1
 D PARSE^ILSREC("90001701","CAT","ID - 90001701"_$C(10)_"BTI - Stress Title 1701"_$C(10)_"AU - Tester, Ann"_$C(10)_"MH - Public Health"_$C(10)_"MH - Medical Informatics"_$C(10)_"MH - Public Health")
 S ^ILS("TMP","J",k)="CREATE|90001701|"_$G(^ILS("TMP","CNT"))
 S k=(k)+1
 S r=$$DISPATCH^ILSTUI("MH GENOMICS")
 S ^ILS("TMP","J",k)="SEARCH|MH_GENOMICS|"_($L(r))_"|"_($E(r,1,40))
 S k=(k)+1
 S r=$$DISPATCH^ILSTUI("AUTH D003920")
 S ^ILS("TMP","J",k)="SEARCH|AUTH_D003920|"_($L(r))_"|"_($E(r,1,40))
 S k=(k)+1
 D AUTHADD^ILSAUTH("D991704","Stress Heading 1704","Z99.704")
 S ^ILS("TMP","J",k)="AUTHADD|D991704|"_($D(^ILS("ANAME","STRESS HEADING 1704","D991704")))
 S k=(k)+1
 D PARSE^ILSREC("90001705","CAT","ID - 90001705"_$C(10)_"BTI - Stress Title 1705"_$C(10)_"AU - Tester, Ann"_$C(10)_"MH - Medical Informatics"_$C(10)_"MH - Diabetes Mellitus.")
 S ^ILS("TMP","J",k)="CREATE|90001705|"_$G(^ILS("TMP","CNT"))
 S k=(k)+1
 S r=$$DISPATCH^ILSTUI("LIST")
 S ^ILS("TMP","J",k)="SEARCH|LIST|"_($L(r))_"|"_($E(r,1,40))
 S k=(k)+1
 D PARSE^ILSREC("90001707","CAT","ID - 90001707"_$C(10)_"BTI - Stress Title 1707"_$C(10)_"AU - Tester, Ann"_$C(10)_"MH - Public Health"_$C(10)_"MH - Genomics")
 S ^ILS("TMP","J",k)="CREATE|90001707|"_$G(^ILS("TMP","CNT"))
 S k=(k)+1
 D AUTHADD^ILSAUTH("D991708","Stress Heading 1708","Z99.708")
 S ^ILS("TMP","J",k)="AUTHADD|D991708|"_($D(^ILS("ANAME","STRESS HEADING 1708","D991708")))
 S k=(k)+1
 D PARSE^ILSREC("90001709","CAT","ID - 90001709"_$C(10)_"BTI - Stress Title 1709"_$C(10)_"AU - Tester, Ann"_$C(10)_"MH - Public Health")
 S ^ILS("TMP","J",k)="CREATE|90001709|"_$G(^ILS("TMP","CNT"))
 S k=(k)+1
 S r=$G(^ILS("SER","1260056","MH",1))
 S ^ILS("TMP","J",k)="READ|SER|1260056|MH|"_($L(r))_"|"_($E(r,1,24))
 S k=(k)+1
 S r=$G(^ILS("CAT","1267066","AU",1))
 S ^ILS("TMP","J",k)="READ|CAT|1267066|AU|"_($L(r))_"|"_($E(r,1,24))
 S k=(k)+1
 S p=$D(^ILS("CAT","1264327"))
 D KILLREC^ILSREC("1264327","CAT")
 S ^ILS("TMP","J",k)="DEL|1264327|"_(p)_"->"_($D(^ILS("CAT","1264327")))
 S k=(k)+1
 D PUT^ILSREC("90001713","CAT","DP",1,"2026")
 S ^ILS("TMP","J",k)="UPD|90001713|"_($D(^ILS("CAT","90001713","DP",1)))
 S k=(k)+1
 S r=$G(^ILS("CAT","7807107","PB",1))
 S ^ILS("TMP","J",k)="READ|CAT|7807107|PB|"_($L(r))_"|"_($E(r,1,24))
 S k=(k)+1
 D SEQPUT^ILSREC("1275455","CAT","MH","Stress Heading 1715")
 S ^ILS("TMP","J",k)="SEQPUT|1275455"
 S k=(k)+1
 S p=$D(^ILS("CAT","90001716"))
 D KILLREC^ILSREC("90001716","CAT")
 S ^ILS("TMP","J",k)="DEL|90001716|"_(p)_"->"_($D(^ILS("CAT","90001716")))
 S k=(k)+1
 D PARSE^ILSREC("90001717","CAT","ID - 90001717"_$C(10)_"BTI - Stress Title 1717"_$C(10)_"AU - Tester, Ann"_$C(10)_"MH - Genomics"_$C(10)_"MH - Quantum Bibliography"_$C(10)_"MH - Quantum Bibliography")
 S ^ILS("TMP","J",k)="CREATE|90001717|"_$G(^ILS("TMP","CNT"))
 S k=(k)+1
 D PUT^ILSREC("90001718","CAT","DP",1,"2026")
 S ^ILS("TMP","J",k)="UPD|90001718|"_($D(^ILS("CAT","90001718","DP",1)))
 S k=(k)+1
 S p=$D(^ILS("CAT","90001719"))
 D KILLREC^ILSREC("90001719","CAT")
 S ^ILS("TMP","J",k)="DEL|90001719|"_(p)_"->"_($D(^ILS("CAT","90001719")))
 S k=(k)+1
 S r=$$DISPATCH^ILSTUI("MH DIABETES MELLITUS.")
 S ^ILS("TMP","J",k)="SEARCH|MH_DIABETES_MELLITUS.|"_($L(r))_"|"_($E(r,1,40))
 S k=(k)+1
 S p=$D(^ILS("CAT","8101154"))
 D KILLREC^ILSREC("8101154","CAT")
 S ^ILS("TMP","J",k)="DEL|8101154|"_(p)_"->"_($D(^ILS("CAT","8101154")))
 S k=(k)+1
 S r=$$DISPATCH^ILSTUI("ISSN 0742-3071")
 S ^ILS("TMP","J",k)="SEARCH|ISSN_0742-3071|"_($L(r))_"|"_($E(r,1,40))
 S k=(k)+1
 D PUT^ILSREC("90001723","CAT","DP",1,"2026")
 S ^ILS("TMP","J",k)="UPD|90001723|"_($D(^ILS("CAT","90001723","DP",1)))
 S k=(k)+1
 D PARSE^ILSREC("90001724","CAT","ID - 90001724"_$C(10)_"BTI - Stress Title 1724"_$C(10)_"AU - Tester, Ann"_$C(10)_"MH - Public Health"_$C(10)_"MH - Medical Informatics")
 S ^ILS("TMP","J",k)="CREATE|90001724|"_$G(^ILS("TMP","CNT"))
 S k=(k)+1
 S r=$G(^ILS("CAT","1275455","PB",1))
 S ^ILS("TMP","J",k)="READ|CAT|1275455|PB|"_($L(r))_"|"_($E(r,1,24))
 S k=(k)+1
 D PARSE^ILSREC("90001726","CAT","ID - 90001726"_$C(10)_"BTI - Stress Title 1726"_$C(10)_"AU - Tester, Ann"_$C(10)_"MH - Genomics"_$C(10)_"MH - Genomics")
 S ^ILS("TMP","J",k)="CREATE|90001726|"_$G(^ILS("TMP","CNT"))
 S k=(k)+1
 S r=$$VALIDATE^ILSAUTH("1275455","CAT")
 S ^ILS("TMP","J",k)="VAL|1275455|"_(r)
 S k=(k)+1
 D PARSE^ILSREC("90001728","CAT","ID - 90001728"_$C(10)_"BTI - Stress Title 1728"_$C(10)_"AU - Tester, Ann"_$C(10)_"MH - Medical Informatics"_$C(10)_"MH - Public Health")
 S ^ILS("TMP","J",k)="CREATE|90001728|"_$G(^ILS("TMP","CNT"))
 S k=(k)+1
 D AUTHADD^ILSAUTH("D991729","Stress Heading 1729","Z99.729")
 S ^ILS("TMP","J",k)="AUTHADD|D991729|"_($D(^ILS("ANAME","STRESS HEADING 1729","D991729")))
 S k=(k)+1
 S p=$D(^ILS("CAT","90001730"))
 D KILLREC^ILSREC("90001730","CAT")
 S ^ILS("TMP","J",k)="DEL|90001730|"_(p)_"->"_($D(^ILS("CAT","90001730")))
 S k=(k)+1
 S r=$$DISPATCH^ILSTUI("FIND DIABETES")
 S ^ILS("TMP","J",k)="SEARCH|FIND_DIABETES|"_($L(r))_"|"_($E(r,1,40))
 S k=(k)+1
 S r=$$DISPATCH^ILSTUI("AUTH D003920")
 S ^ILS("TMP","J",k)="SEARCH|AUTH_D003920|"_($L(r))_"|"_($E(r,1,40))
 S k=(k)+1
 D PARSE^ILSREC("90001733","CAT","ID - 90001733"_$C(10)_"BTI - Stress Title 1733"_$C(10)_"AU - Tester, Ann"_$C(10)_"MH - Quantum Bibliography")
 S ^ILS("TMP","J",k)="CREATE|90001733|"_$G(^ILS("TMP","CNT"))
 S k=(k)+1
 S p=$D(^ILS("CAT","7703942"))
 D KILLREC^ILSREC("7703942","CAT")
 S ^ILS("TMP","J",k)="DEL|7703942|"_(p)_"->"_($D(^ILS("CAT","7703942")))
 S k=(k)+1
 D PARSE^ILSREC("90001735","CAT","ID - 90001735"_$C(10)_"BTI - Stress Title 1735"_$C(10)_"AU - Tester, Ann"_$C(10)_"MH - Quantum Bibliography"_$C(10)_"MH - Diabetes Mellitus.")
 S ^ILS("TMP","J",k)="CREATE|90001735|"_$G(^ILS("TMP","CNT"))
 S k=(k)+1
 D SEQPUT^ILSREC("90001736","CAT","MH","Stress Heading 1736")
 S ^ILS("TMP","J",k)="SEQPUT|90001736"
 S k=(k)+1
 S r=$$DISPATCH^ILSTUI("LEDGER")
 S ^ILS("TMP","J",k)="SEARCH|LEDGER|"_($L(r))_"|"_($E(r,1,40))
 S k=(k)+1
 S r=$G(^ILS("SER","1262011","MH",1))
 S ^ILS("TMP","J",k)="READ|SER|1262011|MH|"_($L(r))_"|"_($E(r,1,24))
 S k=(k)+1
 D SEQPUT^ILSREC("8101154","CAT","MH","Stress Heading 1739")
 S ^ILS("TMP","J",k)="SEQPUT|8101154"
 S k=(k)+1
 S r=$$DISPATCH^ILSTUI("MH DIABETES MELLITUS.")
 S ^ILS("TMP","J",k)="SEARCH|MH_DIABETES_MELLITUS.|"_($L(r))_"|"_($E(r,1,40))
 S k=(k)+1
 D PARSE^ILSREC("90001741","CAT","ID - 90001741"_$C(10)_"BTI - Stress Title 1741"_$C(10)_"AU - Tester, Ann"_$C(10)_"MH - Quantum Bibliography"_$C(10)_"MH - Quantum Bibliography")
 S ^ILS("TMP","J",k)="CREATE|90001741|"_$G(^ILS("TMP","CNT"))
 S k=(k)+1
 D PARSE^ILSREC("90001742","CAT","ID - 90001742"_$C(10)_"BTI - Stress Title 1742"_$C(10)_"AU - Tester, Ann"_$C(10)_"MH - Diabetes Mellitus.")
 S ^ILS("TMP","J",k)="CREATE|90001742|"_$G(^ILS("TMP","CNT"))
 S k=(k)+1
 S p=$D(^ILS("CAT","90001743"))
 D KILLREC^ILSREC("90001743","CAT")
 S ^ILS("TMP","J",k)="DEL|90001743|"_(p)_"->"_($D(^ILS("CAT","90001743")))
 S k=(k)+1
 S p=$D(^ILS("CAT","8003963"))
 D KILLREC^ILSREC("8003963","CAT")
 S ^ILS("TMP","J",k)="DEL|8003963|"_(p)_"->"_($D(^ILS("CAT","8003963")))
 S k=(k)+1
 S p=$D(^ILS("CAT","7605530"))
 D KILLREC^ILSREC("7605530","CAT")
 S ^ILS("TMP","J",k)="DEL|7605530|"_(p)_"->"_($D(^ILS("CAT","7605530")))
 S k=(k)+1
 S r=$G(^ILS("CAT","7803530","BTI",1))
 S ^ILS("TMP","J",k)="READ|CAT|7803530|BTI|"_($L(r))_"|"_($E(r,1,24))
 S k=(k)+1
 S r=$G(^ILS("CAT","7502500","PB",1))
 S ^ILS("TMP","J",k)="READ|CAT|7502500|PB|"_($L(r))_"|"_($E(r,1,24))
 S k=(k)+1
 D PUT^ILSREC("90001748","CAT","DP",1,"2026")
 S ^ILS("TMP","J",k)="UPD|90001748|"_($D(^ILS("CAT","90001748","DP",1)))
 S k=(k)+1
 D PARSE^ILSREC("90001749","CAT","ID - 90001749"_$C(10)_"BTI - Stress Title 1749"_$C(10)_"AU - Tester, Ann"_$C(10)_"MH - Genomics"_$C(10)_"MH - Public Health"_$C(10)_"MH - Medical Informatics")
 S ^ILS("TMP","J",k)="CREATE|90001749|"_$G(^ILS("TMP","CNT"))
 S k=(k)+1
 S r=$$DISPATCH^ILSTUI("ISSN 0742-3071")
 S ^ILS("TMP","J",k)="SEARCH|ISSN_0742-3071|"_($L(r))_"|"_($E(r,1,40))
 S k=(k)+1
 S r=$G(^ILS("CAT","7909441","AU",1))
 S ^ILS("TMP","J",k)="READ|CAT|7909441|AU|"_($L(r))_"|"_($E(r,1,24))
 S k=(k)+1
 S r=$$DISPATCH^ILSTUI("LEDGER")
 S ^ILS("TMP","J",k)="SEARCH|LEDGER|"_($L(r))_"|"_($E(r,1,40))
 S k=(k)+1
 S r=$G(^ILS("SER","1261010","ISS",1))
 S ^ILS("TMP","J",k)="READ|SER|1261010|ISS|"_($L(r))_"|"_($E(r,1,24))
 S k=(k)+1
 D SEQPUT^ILSREC("7605530","CAT","MH","Stress Heading 1754")
 S ^ILS("TMP","J",k)="SEQPUT|7605530"
 S k=(k)+1
 D PARSE^ILSREC("90001755","CAT","ID - 90001755"_$C(10)_"BTI - Stress Title 1755"_$C(10)_"AU - Tester, Ann"_$C(10)_"MH - Genomics"_$C(10)_"MH - Medical Informatics"_$C(10)_"MH - Quantum Bibliography")
 S ^ILS("TMP","J",k)="CREATE|90001755|"_$G(^ILS("TMP","CNT"))
 S k=(k)+1
 D PARSE^ILSREC("90001756","CAT","ID - 90001756"_$C(10)_"BTI - Stress Title 1756"_$C(10)_"AU - Tester, Ann"_$C(10)_"MH - Quantum Bibliography"_$C(10)_"MH - Public Health"_$C(10)_"MH - Medical Informatics")
 S ^ILS("TMP","J",k)="CREATE|90001756|"_$G(^ILS("TMP","CNT"))
 S k=(k)+1
 D PARSE^ILSREC("90001757","CAT","ID - 90001757"_$C(10)_"BTI - Stress Title 1757"_$C(10)_"AU - Tester, Ann"_$C(10)_"MH - Diabetes Mellitus."_$C(10)_"MH - Public Health")
 S ^ILS("TMP","J",k)="CREATE|90001757|"_$G(^ILS("TMP","CNT"))
 S k=(k)+1
 S r=$$VALIDATE^ILSAUTH("1275455","CAT")
 S ^ILS("TMP","J",k)="VAL|1275455|"_(r)
 S k=(k)+1
 S r=$$DISPATCH^ILSTUI("HELP")
 S ^ILS("TMP","J",k)="SEARCH|HELP|"_($L(r))_"|"_($E(r,1,40))
 S k=(k)+1
 S r=$G(^ILS("CAT","8000583","BTI",1))
 S ^ILS("TMP","J",k)="READ|CAT|8000583|BTI|"_($L(r))_"|"_($E(r,1,24))
 S k=(k)+1
 D PARSE^ILSREC("90001761","CAT","ID - 90001761"_$C(10)_"BTI - Stress Title 1761"_$C(10)_"AU - Tester, Ann"_$C(10)_"MH - Medical Informatics")
 S ^ILS("TMP","J",k)="CREATE|90001761|"_$G(^ILS("TMP","CNT"))
 S k=(k)+1
 S p=$D(^ILS("CAT","90001762"))
 D KILLREC^ILSREC("90001762","CAT")
 S ^ILS("TMP","J",k)="DEL|90001762|"_(p)_"->"_($D(^ILS("CAT","90001762")))
 S k=(k)+1
 D PARSE^ILSREC("90001763","CAT","ID - 90001763"_$C(10)_"BTI - Stress Title 1763"_$C(10)_"AU - Tester, Ann"_$C(10)_"MH - Diabetes Mellitus.")
 S ^ILS("TMP","J",k)="CREATE|90001763|"_$G(^ILS("TMP","CNT"))
 S k=(k)+1
 S r=$G(^ILS("CAT","7909441","MH",1))
 S ^ILS("TMP","J",k)="READ|CAT|7909441|MH|"_($L(r))_"|"_($E(r,1,24))
 S k=(k)+1
 S r=$G(^ILS("CAT","7605530","PB",1))
 S ^ILS("TMP","J",k)="READ|CAT|7605530|PB|"_($L(r))_"|"_($E(r,1,24))
 S k=(k)+1
 S r=$$DISPATCH^ILSTUI("SHOW CAT 7508397")
 S ^ILS("TMP","J",k)="SEARCH|SHOW_CAT_7508397|"_($L(r))_"|"_($E(r,1,40))
 S k=(k)+1
 S p=$D(^ILS("CAT","7609600"))
 D KILLREC^ILSREC("7609600","CAT")
 S ^ILS("TMP","J",k)="DEL|7609600|"_(p)_"->"_($D(^ILS("CAT","7609600")))
 S k=(k)+1
 S r=$$VALIDATE^ILSAUTH("7909441","CAT")
 S ^ILS("TMP","J",k)="VAL|7909441|"_(r)
 S k=(k)+1
 S r=$$VALIDATE^ILSAUTH("1302032","CAT")
 S ^ILS("TMP","J",k)="VAL|1302032|"_(r)
 S k=(k)+1
 S p=$D(^ILS("CAT","7808791"))
 D KILLREC^ILSREC("7808791","CAT")
 S ^ILS("TMP","J",k)="DEL|7808791|"_(p)_"->"_($D(^ILS("CAT","7808791")))
 S k=(k)+1
 S r=$$VALIDATE^ILSAUTH("7808791","CAT")
 S ^ILS("TMP","J",k)="VAL|7808791|"_(r)
 S k=(k)+1
 D SEQPUT^ILSREC("7508397","CAT","MH","Stress Heading 1772")
 S ^ILS("TMP","J",k)="SEQPUT|7508397"
 S k=(k)+1
 D PARSE^ILSREC("90001773","CAT","ID - 90001773"_$C(10)_"BTI - Stress Title 1773"_$C(10)_"AU - Tester, Ann"_$C(10)_"MH - Medical Informatics"_$C(10)_"MH - Quantum Bibliography"_$C(10)_"MH - Public Health")
 S ^ILS("TMP","J",k)="CREATE|90001773|"_$G(^ILS("TMP","CNT"))
 S k=(k)+1
 D SEQPUT^ILSREC("7705180","CAT","MH","Stress Heading 1774")
 S ^ILS("TMP","J",k)="SEQPUT|7705180"
 S k=(k)+1
 S r=$$DISPATCH^ILSTUI("LEDGER")
 S ^ILS("TMP","J",k)="SEARCH|LEDGER|"_($L(r))_"|"_($E(r,1,40))
 S k=(k)+1
 S r=$$DISPATCH^ILSTUI("AUTH D003920")
 S ^ILS("TMP","J",k)="SEARCH|AUTH_D003920|"_($L(r))_"|"_($E(r,1,40))
 S k=(k)+1
 D AUTHADD^ILSAUTH("D991777","Stress Heading 1777","Z99.777")
 S ^ILS("TMP","J",k)="AUTHADD|D991777|"_($D(^ILS("ANAME","STRESS HEADING 1777","D991777")))
 S k=(k)+1
 S p=$D(^ILS("CAT","1264327"))
 D KILLREC^ILSREC("1264327","CAT")
 S ^ILS("TMP","J",k)="DEL|1264327|"_(p)_"->"_($D(^ILS("CAT","1264327")))
 S k=(k)+1
 D PARSE^ILSREC("90001779","CAT","ID - 90001779"_$C(10)_"BTI - Stress Title 1779"_$C(10)_"AU - Tester, Ann"_$C(10)_"MH - Diabetes Mellitus.")
 S ^ILS("TMP","J",k)="CREATE|90001779|"_$G(^ILS("TMP","CNT"))
 S k=(k)+1
 D SEQPUT^ILSREC("7705180","CAT","MH","Stress Heading 1780")
 S ^ILS("TMP","J",k)="SEQPUT|7705180"
 S k=(k)+1
 D PARSE^ILSREC("90001781","CAT","ID - 90001781"_$C(10)_"BTI - Stress Title 1781"_$C(10)_"AU - Tester, Ann"_$C(10)_"MH - Quantum Bibliography")
 S ^ILS("TMP","J",k)="CREATE|90001781|"_$G(^ILS("TMP","CNT"))
 S k=(k)+1
 S p=$D(^ILS("CAT","90001782"))
 D KILLREC^ILSREC("90001782","CAT")
 S ^ILS("TMP","J",k)="DEL|90001782|"_(p)_"->"_($D(^ILS("CAT","90001782")))
 S k=(k)+1
 S r=$$DISPATCH^ILSTUI("LIST")
 S ^ILS("TMP","J",k)="SEARCH|LIST|"_($L(r))_"|"_($E(r,1,40))
 S k=(k)+1
 S r=$G(^ILS("CAT","7802251","DP",1))
 S ^ILS("TMP","J",k)="READ|CAT|7802251|DP|"_($L(r))_"|"_($E(r,1,24))
 S k=(k)+1
 S r=$G(^ILS("CAT","7909441","BTI",1))
 S ^ILS("TMP","J",k)="READ|CAT|7909441|BTI|"_($L(r))_"|"_($E(r,1,24))
 S k=(k)+1
 S r=$$DISPATCH^ILSTUI("SHOW SER 1262011")
 S ^ILS("TMP","J",k)="SEARCH|SHOW_SER_1262011|"_($L(r))_"|"_($E(r,1,40))
 S k=(k)+1
 S r=$$DISPATCH^ILSTUI("LIST")
 S ^ILS("TMP","J",k)="SEARCH|LIST|"_($L(r))_"|"_($E(r,1,40))
 S k=(k)+1
 S r=$G(^ILS("SER","1261010","ISS",1))
 S ^ILS("TMP","J",k)="READ|SER|1261010|ISS|"_($L(r))_"|"_($E(r,1,24))
 S k=(k)+1
 D SEQPUT^ILSREC("7803530","CAT","MH","Stress Heading 1789")
 S ^ILS("TMP","J",k)="SEQPUT|7803530"
 S k=(k)+1
 D PARSE^ILSREC("90001790","CAT","ID - 90001790"_$C(10)_"BTI - Stress Title 1790"_$C(10)_"AU - Tester, Ann"_$C(10)_"MH - Medical Informatics"_$C(10)_"MH - Public Health"_$C(10)_"MH - Quantum Bibliography")
 S ^ILS("TMP","J",k)="CREATE|90001790|"_$G(^ILS("TMP","CNT"))
 S k=(k)+1
 S r=$$DISPATCH^ILSTUI("RELATED D003920")
 S ^ILS("TMP","J",k)="SEARCH|RELATED_D003920|"_($L(r))_"|"_($E(r,1,40))
 S k=(k)+1
 D PARSE^ILSREC("90001792","CAT","ID - 90001792"_$C(10)_"BTI - Stress Title 1792"_$C(10)_"AU - Tester, Ann"_$C(10)_"MH - Genomics"_$C(10)_"MH - Medical Informatics"_$C(10)_"MH - Medical Informatics")
 S ^ILS("TMP","J",k)="CREATE|90001792|"_$G(^ILS("TMP","CNT"))
 S k=(k)+1
 S r=$G(^ILS("CAT","7605530","MH",1))
 S ^ILS("TMP","J",k)="READ|CAT|7605530|MH|"_($L(r))_"|"_($E(r,1,24))
 S k=(k)+1
 D SEQPUT^ILSREC("7807107","CAT","MH","Stress Heading 1794")
 S ^ILS("TMP","J",k)="SEQPUT|7807107"
 S k=(k)+1
 S r=$$DISPATCH^ILSTUI("AUTH D003920")
 S ^ILS("TMP","J",k)="SEARCH|AUTH_D003920|"_($L(r))_"|"_($E(r,1,40))
 S k=(k)+1
 S r=$$VALIDATE^ILSAUTH("90001796","CAT")
 S ^ILS("TMP","J",k)="VAL|90001796|"_(r)
 S k=(k)+1
 D AUTHADD^ILSAUTH("D991797","Stress Heading 1797","Z99.797")
 S ^ILS("TMP","J",k)="AUTHADD|D991797|"_($D(^ILS("ANAME","STRESS HEADING 1797","D991797")))
 S k=(k)+1
 D PARSE^ILSREC("90001798","CAT","ID - 90001798"_$C(10)_"BTI - Stress Title 1798"_$C(10)_"AU - Tester, Ann"_$C(10)_"MH - Public Health"_$C(10)_"MH - Medical Informatics"_$C(10)_"MH - Public Health")
 S ^ILS("TMP","J",k)="CREATE|90001798|"_$G(^ILS("TMP","CNT"))
 S k=(k)+1
 D PARSE^ILSREC("90001799","CAT","ID - 90001799"_$C(10)_"BTI - Stress Title 1799"_$C(10)_"AU - Tester, Ann"_$C(10)_"MH - Medical Informatics"_$C(10)_"MH - Diabetes Mellitus.")
 S ^ILS("TMP","J",k)="CREATE|90001799|"_$G(^ILS("TMP","CNT"))
 S k=(k)+1
 S r=$$DISPATCH^ILSTUI("SHOW CAT 7508397")
 S ^ILS("TMP","J",k)="SEARCH|SHOW_CAT_7508397|"_($L(r))_"|"_($E(r,1,40))
 S k=(k)+1
 D PUT^ILSREC("7803530","CAT","DP",1,"2026")
 S ^ILS("TMP","J",k)="UPD|7803530|"_($D(^ILS("CAT","7803530","DP",1)))
 S k=(k)+1
 S r=$$DISPATCH^ILSTUI("ISSN 0742-3071")
 S ^ILS("TMP","J",k)="SEARCH|ISSN_0742-3071|"_($L(r))_"|"_($E(r,1,40))
 S k=(k)+1
 S r=$$DISPATCH^ILSTUI("ISSN 0742-3071")
 S ^ILS("TMP","J",k)="SEARCH|ISSN_0742-3071|"_($L(r))_"|"_($E(r,1,40))
 S k=(k)+1
 D SEQPUT^ILSREC("90001804","CAT","MH","Stress Heading 1804")
 S ^ILS("TMP","J",k)="SEQPUT|90001804"
 S k=(k)+1
 D PUT^ILSREC("90001805","CAT","DP",1,"2026")
 S ^ILS("TMP","J",k)="UPD|90001805|"_($D(^ILS("CAT","90001805","DP",1)))
 S k=(k)+1
 D PARSE^ILSREC("90001806","CAT","ID - 90001806"_$C(10)_"BTI - Stress Title 1806"_$C(10)_"AU - Tester, Ann"_$C(10)_"MH - Diabetes Mellitus."_$C(10)_"MH - Quantum Bibliography"_$C(10)_"MH - Diabetes Mellitus.")
 S ^ILS("TMP","J",k)="CREATE|90001806|"_$G(^ILS("TMP","CNT"))
 S k=(k)+1
 D PUT^ILSREC("90001807","CAT","DP",1,"2026")
 S ^ILS("TMP","J",k)="UPD|90001807|"_($D(^ILS("CAT","90001807","DP",1)))
 S k=(k)+1
 D PARSE^ILSREC("90001808","CAT","ID - 90001808"_$C(10)_"BTI - Stress Title 1808"_$C(10)_"AU - Tester, Ann"_$C(10)_"MH - Medical Informatics")
 S ^ILS("TMP","J",k)="CREATE|90001808|"_$G(^ILS("TMP","CNT"))
 S k=(k)+1
 S p=$D(^ILS("CAT","7803530"))
 D KILLREC^ILSREC("7803530","CAT")
 S ^ILS("TMP","J",k)="DEL|7803530|"_(p)_"->"_($D(^ILS("CAT","7803530")))
 S k=(k)+1
 D PUT^ILSREC("7703942","CAT","DP",1,"2026")
 S ^ILS("TMP","J",k)="UPD|7703942|"_($D(^ILS("CAT","7703942","DP",1)))
 S k=(k)+1
 S r=$G(^ILS("CAT","7503289","MH",1))
 S ^ILS("TMP","J",k)="READ|CAT|7503289|MH|"_($L(r))_"|"_($E(r,1,24))
 S k=(k)+1
 D PUT^ILSREC("7911752","CAT","DP",1,"2026")
 S ^ILS("TMP","J",k)="UPD|7911752|"_($D(^ILS("CAT","7911752","DP",1)))
 S k=(k)+1
 D PUT^ILSREC("7802251","CAT","DP",1,"2026")
 S ^ILS("TMP","J",k)="UPD|7802251|"_($D(^ILS("CAT","7802251","DP",1)))
 S k=(k)+1
 S r=$G(^ILS("SER","1262226","MH",1))
 S ^ILS("TMP","J",k)="READ|SER|1262226|MH|"_($L(r))_"|"_($E(r,1,24))
 S k=(k)+1
 D PARSE^ILSREC("90001815","CAT","ID - 90001815"_$C(10)_"BTI - Stress Title 1815"_$C(10)_"AU - Tester, Ann"_$C(10)_"MH - Quantum Bibliography"_$C(10)_"MH - Quantum Bibliography"_$C(10)_"MH - Public Health")
 S ^ILS("TMP","J",k)="CREATE|90001815|"_$G(^ILS("TMP","CNT"))
 S k=(k)+1
 D PARSE^ILSREC("90001816","CAT","ID - 90001816"_$C(10)_"BTI - Stress Title 1816"_$C(10)_"AU - Tester, Ann"_$C(10)_"MH - Genomics"_$C(10)_"MH - Public Health")
 S ^ILS("TMP","J",k)="CREATE|90001816|"_$G(^ILS("TMP","CNT"))
 S k=(k)+1
 S p=$D(^ILS("CAT","8000583"))
 D KILLREC^ILSREC("8000583","CAT")
 S ^ILS("TMP","J",k)="DEL|8000583|"_(p)_"->"_($D(^ILS("CAT","8000583")))
 S k=(k)+1
 S r=$G(^ILS("CAT","1267066","BTI",1))
 S ^ILS("TMP","J",k)="READ|CAT|1267066|BTI|"_($L(r))_"|"_($E(r,1,24))
 S k=(k)+1
 S p=$D(^ILS("CAT","90001819"))
 D KILLREC^ILSREC("90001819","CAT")
 S ^ILS("TMP","J",k)="DEL|90001819|"_(p)_"->"_($D(^ILS("CAT","90001819")))
 S k=(k)+1
 S r=$$VALIDATE^ILSAUTH("7911752","CAT")
 S ^ILS("TMP","J",k)="VAL|7911752|"_(r)
 S k=(k)+1
 S p=$D(^ILS("CAT","7506781"))
 D KILLREC^ILSREC("7506781","CAT")
 S ^ILS("TMP","J",k)="DEL|7506781|"_(p)_"->"_($D(^ILS("CAT","7506781")))
 S k=(k)+1
 D PUT^ILSREC("7901827","CAT","DP",1,"2026")
 S ^ILS("TMP","J",k)="UPD|7901827|"_($D(^ILS("CAT","7901827","DP",1)))
 S k=(k)+1
 D SEQPUT^ILSREC("90001823","CAT","MH","Stress Heading 1823")
 S ^ILS("TMP","J",k)="SEQPUT|90001823"
 S k=(k)+1
 S r=$$DISPATCH^ILSTUI("FIND HEALTH")
 S ^ILS("TMP","J",k)="SEARCH|FIND_HEALTH|"_($L(r))_"|"_($E(r,1,40))
 S k=(k)+1
 S r=$$DISPATCH^ILSTUI("FIND DIABETES")
 S ^ILS("TMP","J",k)="SEARCH|FIND_DIABETES|"_($L(r))_"|"_($E(r,1,40))
 S k=(k)+1
 D PARSE^ILSREC("90001826","CAT","ID - 90001826"_$C(10)_"BTI - Stress Title 1826"_$C(10)_"AU - Tester, Ann"_$C(10)_"MH - Genomics")
 S ^ILS("TMP","J",k)="CREATE|90001826|"_$G(^ILS("TMP","CNT"))
 S k=(k)+1
 D PARSE^ILSREC("90001827","CAT","ID - 90001827"_$C(10)_"BTI - Stress Title 1827"_$C(10)_"AU - Tester, Ann"_$C(10)_"MH - Medical Informatics")
 S ^ILS("TMP","J",k)="CREATE|90001827|"_$G(^ILS("TMP","CNT"))
 S k=(k)+1
 D PARSE^ILSREC("90001828","CAT","ID - 90001828"_$C(10)_"BTI - Stress Title 1828"_$C(10)_"AU - Tester, Ann"_$C(10)_"MH - Public Health"_$C(10)_"MH - Diabetes Mellitus.")
 S ^ILS("TMP","J",k)="CREATE|90001828|"_$G(^ILS("TMP","CNT"))
 S k=(k)+1
 D PUT^ILSREC("1267066","CAT","DP",1,"2026")
 S ^ILS("TMP","J",k)="UPD|1267066|"_($D(^ILS("CAT","1267066","DP",1)))
 S k=(k)+1
 D PARSE^ILSREC("90001830","CAT","ID - 90001830"_$C(10)_"BTI - Stress Title 1830"_$C(10)_"AU - Tester, Ann"_$C(10)_"MH - Diabetes Mellitus."_$C(10)_"MH - Medical Informatics"_$C(10)_"MH - Genomics")
 S ^ILS("TMP","J",k)="CREATE|90001830|"_$G(^ILS("TMP","CNT"))
 S k=(k)+1
 D PUT^ILSREC("7909441","CAT","DP",1,"2026")
 S ^ILS("TMP","J",k)="UPD|7909441|"_($D(^ILS("CAT","7909441","DP",1)))
 S k=(k)+1
 S r=$$DISPATCH^ILSTUI("SHOW CAT 7901827")
 S ^ILS("TMP","J",k)="SEARCH|SHOW_CAT_7901827|"_($L(r))_"|"_($E(r,1,40))
 S k=(k)+1
 S r=$$VALIDATE^ILSAUTH("90001833","CAT")
 S ^ILS("TMP","J",k)="VAL|90001833|"_(r)
 S k=(k)+1
 S r=$$DISPATCH^ILSTUI("ISSN 0742-3071")
 S ^ILS("TMP","J",k)="SEARCH|ISSN_0742-3071|"_($L(r))_"|"_($E(r,1,40))
 S k=(k)+1
 S r=$$DISPATCH^ILSTUI("MH DIABETES MELLITUS.")
 S ^ILS("TMP","J",k)="SEARCH|MH_DIABETES_MELLITUS.|"_($L(r))_"|"_($E(r,1,40))
 S k=(k)+1
 S p=$D(^ILS("CAT","7705180"))
 D KILLREC^ILSREC("7705180","CAT")
 S ^ILS("TMP","J",k)="DEL|7705180|"_(p)_"->"_($D(^ILS("CAT","7705180")))
 S k=(k)+1
 S r=$$DISPATCH^ILSTUI("SHOW CAT 8101154")
 S ^ILS("TMP","J",k)="SEARCH|SHOW_CAT_8101154|"_($L(r))_"|"_($E(r,1,40))
 S k=(k)+1
 S r=$G(^ILS("CAT","1267372","PB",1))
 S ^ILS("TMP","J",k)="READ|CAT|1267372|PB|"_($L(r))_"|"_($E(r,1,24))
 S k=(k)+1
 D SEQPUT^ILSREC("7605530","CAT","MH","Stress Heading 1839")
 S ^ILS("TMP","J",k)="SEQPUT|7605530"
 S k=(k)+1
 D AUTHADD^ILSAUTH("D991840","Stress Heading 1840","Z99.840")
 S ^ILS("TMP","J",k)="AUTHADD|D991840|"_($D(^ILS("ANAME","STRESS HEADING 1840","D991840")))
 S k=(k)+1
 D PUT^ILSREC("1267372","CAT","DP",1,"2026")
 S ^ILS("TMP","J",k)="UPD|1267372|"_($D(^ILS("CAT","1267372","DP",1)))
 S k=(k)+1
 S p=$D(^ILS("CAT","90001842"))
 D KILLREC^ILSREC("90001842","CAT")
 S ^ILS("TMP","J",k)="DEL|90001842|"_(p)_"->"_($D(^ILS("CAT","90001842")))
 S k=(k)+1
 D PARSE^ILSREC("90001843","CAT","ID - 90001843"_$C(10)_"BTI - Stress Title 1843"_$C(10)_"AU - Tester, Ann"_$C(10)_"MH - Genomics"_$C(10)_"MH - Diabetes Mellitus.")
 S ^ILS("TMP","J",k)="CREATE|90001843|"_$G(^ILS("TMP","CNT"))
 S k=(k)+1
 S r=$$DISPATCH^ILSTUI("LIST")
 S ^ILS("TMP","J",k)="SEARCH|LIST|"_($L(r))_"|"_($E(r,1,40))
 S k=(k)+1
 S r=$$DISPATCH^ILSTUI("LEDGER")
 S ^ILS("TMP","J",k)="SEARCH|LEDGER|"_($L(r))_"|"_($E(r,1,40))
 S k=(k)+1
 D PARSE^ILSREC("90001846","CAT","ID - 90001846"_$C(10)_"BTI - Stress Title 1846"_$C(10)_"AU - Tester, Ann"_$C(10)_"MH - Genomics")
 S ^ILS("TMP","J",k)="CREATE|90001846|"_$G(^ILS("TMP","CNT"))
 S k=(k)+1
 S r=$$DISPATCH^ILSTUI("ISSN 0742-3071")
 S ^ILS("TMP","J",k)="SEARCH|ISSN_0742-3071|"_($L(r))_"|"_($E(r,1,40))
 S k=(k)+1
 D PARSE^ILSREC("90001848","CAT","ID - 90001848"_$C(10)_"BTI - Stress Title 1848"_$C(10)_"AU - Tester, Ann"_$C(10)_"MH - Diabetes Mellitus."_$C(10)_"MH - Genomics")
 S ^ILS("TMP","J",k)="CREATE|90001848|"_$G(^ILS("TMP","CNT"))
 S k=(k)+1
 S p=$D(^ILS("CAT","90001849"))
 D KILLREC^ILSREC("90001849","CAT")
 S ^ILS("TMP","J",k)="DEL|90001849|"_(p)_"->"_($D(^ILS("CAT","90001849")))
 S k=(k)+1
 D AUTHADD^ILSAUTH("D991850","Stress Heading 1850","Z99.850")
 S ^ILS("TMP","J",k)="AUTHADD|D991850|"_($D(^ILS("ANAME","STRESS HEADING 1850","D991850")))
 S k=(k)+1
 D SEQPUT^ILSREC("90001851","CAT","MH","Stress Heading 1851")
 S ^ILS("TMP","J",k)="SEQPUT|90001851"
 S k=(k)+1
 S r=$$DISPATCH^ILSTUI("LEDGER")
 S ^ILS("TMP","J",k)="SEARCH|LEDGER|"_($L(r))_"|"_($E(r,1,40))
 S k=(k)+1
 S r=$G(^ILS("SER","1262226","STI",1))
 S ^ILS("TMP","J",k)="READ|SER|1262226|STI|"_($L(r))_"|"_($E(r,1,24))
 S k=(k)+1
 S r=$$DISPATCH^ILSTUI("MH GENOMICS")
 S ^ILS("TMP","J",k)="SEARCH|MH_GENOMICS|"_($L(r))_"|"_($E(r,1,40))
 S k=(k)+1
 D SEQPUT^ILSREC("7901827","CAT","MH","Stress Heading 1855")
 S ^ILS("TMP","J",k)="SEQPUT|7901827"
 S k=(k)+1
 S r=$$VALIDATE^ILSAUTH("7508397","CAT")
 S ^ILS("TMP","J",k)="VAL|7508397|"_(r)
 S k=(k)+1
 S r=$G(^ILS("CAT","7911752","BTI",1))
 S ^ILS("TMP","J",k)="READ|CAT|7911752|BTI|"_($L(r))_"|"_($E(r,1,24))
 S k=(k)+1
 S r=$G(^ILS("SER","1260223","STI",1))
 S ^ILS("TMP","J",k)="READ|SER|1260223|STI|"_($L(r))_"|"_($E(r,1,24))
 S k=(k)+1
 D PUT^ILSREC("90001859","CAT","DP",1,"2026")
 S ^ILS("TMP","J",k)="UPD|90001859|"_($D(^ILS("CAT","90001859","DP",1)))
 S k=(k)+1
 D PARSE^ILSREC("90001860","CAT","ID - 90001860"_$C(10)_"BTI - Stress Title 1860"_$C(10)_"AU - Tester, Ann"_$C(10)_"MH - Genomics"_$C(10)_"MH - Quantum Bibliography"_$C(10)_"MH - Diabetes Mellitus.")
 S ^ILS("TMP","J",k)="CREATE|90001860|"_$G(^ILS("TMP","CNT"))
 S k=(k)+1
 D AUTHADD^ILSAUTH("D991861","Stress Heading 1861","Z99.861")
 S ^ILS("TMP","J",k)="AUTHADD|D991861|"_($D(^ILS("ANAME","STRESS HEADING 1861","D991861")))
 S k=(k)+1
 S r=$G(^ILS("CAT","8003963","PB",1))
 S ^ILS("TMP","J",k)="READ|CAT|8003963|PB|"_($L(r))_"|"_($E(r,1,24))
 S k=(k)+1
 S r=$G(^ILS("SER","1260665","MH",1))
 S ^ILS("TMP","J",k)="READ|SER|1260665|MH|"_($L(r))_"|"_($E(r,1,24))
 S k=(k)+1
 D PARSE^ILSREC("90001864","CAT","ID - 90001864"_$C(10)_"BTI - Stress Title 1864"_$C(10)_"AU - Tester, Ann"_$C(10)_"MH - Diabetes Mellitus.")
 S ^ILS("TMP","J",k)="CREATE|90001864|"_$G(^ILS("TMP","CNT"))
 S k=(k)+1
 D PARSE^ILSREC("90001865","CAT","ID - 90001865"_$C(10)_"BTI - Stress Title 1865"_$C(10)_"AU - Tester, Ann"_$C(10)_"MH - Diabetes Mellitus."_$C(10)_"MH - Quantum Bibliography"_$C(10)_"MH - Quantum Bibliography")
 S ^ILS("TMP","J",k)="CREATE|90001865|"_$G(^ILS("TMP","CNT"))
 S k=(k)+1
 D PARSE^ILSREC("90001866","CAT","ID - 90001866"_$C(10)_"BTI - Stress Title 1866"_$C(10)_"AU - Tester, Ann"_$C(10)_"MH - Public Health"_$C(10)_"MH - Quantum Bibliography"_$C(10)_"MH - Medical Informatics")
 S ^ILS("TMP","J",k)="CREATE|90001866|"_$G(^ILS("TMP","CNT"))
 S k=(k)+1
 S r=$$VALIDATE^ILSAUTH("90001867","CAT")
 S ^ILS("TMP","J",k)="VAL|90001867|"_(r)
 S k=(k)+1
 S r=$$VALIDATE^ILSAUTH("7605530","CAT")
 S ^ILS("TMP","J",k)="VAL|7605530|"_(r)
 S k=(k)+1
 D PARSE^ILSREC("90001869","CAT","ID - 90001869"_$C(10)_"BTI - Stress Title 1869"_$C(10)_"AU - Tester, Ann"_$C(10)_"MH - Genomics"_$C(10)_"MH - Quantum Bibliography"_$C(10)_"MH - Genomics")
 S ^ILS("TMP","J",k)="CREATE|90001869|"_$G(^ILS("TMP","CNT"))
 S k=(k)+1
 D PARSE^ILSREC("90001870","CAT","ID - 90001870"_$C(10)_"BTI - Stress Title 1870"_$C(10)_"AU - Tester, Ann"_$C(10)_"MH - Medical Informatics"_$C(10)_"MH - Quantum Bibliography"_$C(10)_"MH - Medical Informatics")
 S ^ILS("TMP","J",k)="CREATE|90001870|"_$G(^ILS("TMP","CNT"))
 S k=(k)+1
 D PARSE^ILSREC("90001871","CAT","ID - 90001871"_$C(10)_"BTI - Stress Title 1871"_$C(10)_"AU - Tester, Ann"_$C(10)_"MH - Diabetes Mellitus."_$C(10)_"MH - Genomics"_$C(10)_"MH - Genomics")
 S ^ILS("TMP","J",k)="CREATE|90001871|"_$G(^ILS("TMP","CNT"))
 S k=(k)+1
 D PUT^ILSREC("1264327","CAT","DP",1,"2026")
 S ^ILS("TMP","J",k)="UPD|1264327|"_($D(^ILS("CAT","1264327","DP",1)))
 S k=(k)+1
 S p=$D(^ILS("CAT","8003963"))
 D KILLREC^ILSREC("8003963","CAT")
 S ^ILS("TMP","J",k)="DEL|8003963|"_(p)_"->"_($D(^ILS("CAT","8003963")))
 S k=(k)+1
 S r=$$DISPATCH^ILSTUI("MH GENOMICS")
 S ^ILS("TMP","J",k)="SEARCH|MH_GENOMICS|"_($L(r))_"|"_($E(r,1,40))
 S k=(k)+1
 D PARSE^ILSREC("90001875","CAT","ID - 90001875"_$C(10)_"BTI - Stress Title 1875"_$C(10)_"AU - Tester, Ann"_$C(10)_"MH - Genomics"_$C(10)_"MH - Quantum Bibliography")
 S ^ILS("TMP","J",k)="CREATE|90001875|"_$G(^ILS("TMP","CNT"))
 S k=(k)+1
 S r=$$DISPATCH^ILSTUI("HELP")
 S ^ILS("TMP","J",k)="SEARCH|HELP|"_($L(r))_"|"_($E(r,1,40))
 S k=(k)+1
 D SEQPUT^ILSREC("7909441","CAT","MH","Stress Heading 1877")
 S ^ILS("TMP","J",k)="SEQPUT|7909441"
 S k=(k)+1
 D PARSE^ILSREC("90001878","CAT","ID - 90001878"_$C(10)_"BTI - Stress Title 1878"_$C(10)_"AU - Tester, Ann"_$C(10)_"MH - Quantum Bibliography")
 S ^ILS("TMP","J",k)="CREATE|90001878|"_$G(^ILS("TMP","CNT"))
 S k=(k)+1
 S r=$G(^ILS("SER","1262011","MH",1))
 S ^ILS("TMP","J",k)="READ|SER|1262011|MH|"_($L(r))_"|"_($E(r,1,24))
 S k=(k)+1
 S r=$G(^ILS("CAT","8000583","MH",1))
 S ^ILS("TMP","J",k)="READ|CAT|8000583|MH|"_($L(r))_"|"_($E(r,1,24))
 S k=(k)+1
 S r=$$DISPATCH^ILSTUI("AUTH D003920")
 S ^ILS("TMP","J",k)="SEARCH|AUTH_D003920|"_($L(r))_"|"_($E(r,1,40))
 S k=(k)+1
 D PARSE^ILSREC("90001882","CAT","ID - 90001882"_$C(10)_"BTI - Stress Title 1882"_$C(10)_"AU - Tester, Ann"_$C(10)_"MH - Public Health")
 S ^ILS("TMP","J",k)="CREATE|90001882|"_$G(^ILS("TMP","CNT"))
 S k=(k)+1
 D PARSE^ILSREC("90001883","CAT","ID - 90001883"_$C(10)_"BTI - Stress Title 1883"_$C(10)_"AU - Tester, Ann"_$C(10)_"MH - Diabetes Mellitus."_$C(10)_"MH - Quantum Bibliography")
 S ^ILS("TMP","J",k)="CREATE|90001883|"_$G(^ILS("TMP","CNT"))
 S k=(k)+1
 D PARSE^ILSREC("90001884","CAT","ID - 90001884"_$C(10)_"BTI - Stress Title 1884"_$C(10)_"AU - Tester, Ann"_$C(10)_"MH - Medical Informatics"_$C(10)_"MH - Diabetes Mellitus.")
 S ^ILS("TMP","J",k)="CREATE|90001884|"_$G(^ILS("TMP","CNT"))
 S k=(k)+1
 S r=$G(^ILS("SER","1256232","STI",1))
 S ^ILS("TMP","J",k)="READ|SER|1256232|STI|"_($L(r))_"|"_($E(r,1,24))
 S k=(k)+1
 D PARSE^ILSREC("90001886","CAT","ID - 90001886"_$C(10)_"BTI - Stress Title 1886"_$C(10)_"AU - Tester, Ann"_$C(10)_"MH - Medical Informatics"_$C(10)_"MH - Quantum Bibliography"_$C(10)_"MH - Diabetes Mellitus.")
 S ^ILS("TMP","J",k)="CREATE|90001886|"_$G(^ILS("TMP","CNT"))
 S k=(k)+1
 D PARSE^ILSREC("90001887","CAT","ID - 90001887"_$C(10)_"BTI - Stress Title 1887"_$C(10)_"AU - Tester, Ann"_$C(10)_"MH - Genomics"_$C(10)_"MH - Genomics")
 S ^ILS("TMP","J",k)="CREATE|90001887|"_$G(^ILS("TMP","CNT"))
 S k=(k)+1
 D PARSE^ILSREC("90001888","CAT","ID - 90001888"_$C(10)_"BTI - Stress Title 1888"_$C(10)_"AU - Tester, Ann"_$C(10)_"MH - Medical Informatics")
 S ^ILS("TMP","J",k)="CREATE|90001888|"_$G(^ILS("TMP","CNT"))
 S k=(k)+1
 S p=$D(^ILS("CAT","8101154"))
 D KILLREC^ILSREC("8101154","CAT")
 S ^ILS("TMP","J",k)="DEL|8101154|"_(p)_"->"_($D(^ILS("CAT","8101154")))
 S k=(k)+1
 S r=$G(^ILS("CAT","1302032","PB",1))
 S ^ILS("TMP","J",k)="READ|CAT|1302032|PB|"_($L(r))_"|"_($E(r,1,24))
 S k=(k)+1
 S r=$$DISPATCH^ILSTUI("LIST")
 S ^ILS("TMP","J",k)="SEARCH|LIST|"_($L(r))_"|"_($E(r,1,40))
 S k=(k)+1
 S r=$$DISPATCH^ILSTUI("MH GENOMICS")
 S ^ILS("TMP","J",k)="SEARCH|MH_GENOMICS|"_($L(r))_"|"_($E(r,1,40))
 S k=(k)+1
 D PUT^ILSREC("90001893","CAT","DP",1,"2026")
 S ^ILS("TMP","J",k)="UPD|90001893|"_($D(^ILS("CAT","90001893","DP",1)))
 S k=(k)+1
 D PUT^ILSREC("7705180","CAT","DP",1,"2026")
 S ^ILS("TMP","J",k)="UPD|7705180|"_($D(^ILS("CAT","7705180","DP",1)))
 S k=(k)+1
 D PARSE^ILSREC("90001895","CAT","ID - 90001895"_$C(10)_"BTI - Stress Title 1895"_$C(10)_"AU - Tester, Ann"_$C(10)_"MH - Medical Informatics")
 S ^ILS("TMP","J",k)="CREATE|90001895|"_$G(^ILS("TMP","CNT"))
 S k=(k)+1
 S r=$$VALIDATE^ILSAUTH("8101154","CAT")
 S ^ILS("TMP","J",k)="VAL|8101154|"_(r)
 S k=(k)+1
 S r=$$VALIDATE^ILSAUTH("7802251","CAT")
 S ^ILS("TMP","J",k)="VAL|7802251|"_(r)
 S k=(k)+1
 D PUT^ILSREC("90001898","CAT","DP",1,"2026")
 S ^ILS("TMP","J",k)="UPD|90001898|"_($D(^ILS("CAT","90001898","DP",1)))
 S k=(k)+1
 D PARSE^ILSREC("90001899","CAT","ID - 90001899"_$C(10)_"BTI - Stress Title 1899"_$C(10)_"AU - Tester, Ann"_$C(10)_"MH - Quantum Bibliography")
 S ^ILS("TMP","J",k)="CREATE|90001899|"_$G(^ILS("TMP","CNT"))
 S k=(k)+1
 S r=$G(^ILS("CAT","1267066","BTI",1))
 S ^ILS("TMP","J",k)="READ|CAT|1267066|BTI|"_($L(r))_"|"_($E(r,1,24))
 S k=(k)+1
 S r=$$DISPATCH^ILSTUI("ISSN 0742-3071")
 S ^ILS("TMP","J",k)="SEARCH|ISSN_0742-3071|"_($L(r))_"|"_($E(r,1,40))
 S k=(k)+1
 D AUTHADD^ILSAUTH("D991902","Stress Heading 1902","Z99.902")
 S ^ILS("TMP","J",k)="AUTHADD|D991902|"_($D(^ILS("ANAME","STRESS HEADING 1902","D991902")))
 S k=(k)+1
 S r=$$DISPATCH^ILSTUI("LEDGER")
 S ^ILS("TMP","J",k)="SEARCH|LEDGER|"_($L(r))_"|"_($E(r,1,40))
 S k=(k)+1
 D PUT^ILSREC("90001904","CAT","DP",1,"2026")
 S ^ILS("TMP","J",k)="UPD|90001904|"_($D(^ILS("CAT","90001904","DP",1)))
 S k=(k)+1
 D PUT^ILSREC("1275455","CAT","DP",1,"2026")
 S ^ILS("TMP","J",k)="UPD|1275455|"_($D(^ILS("CAT","1275455","DP",1)))
 S k=(k)+1
 D PARSE^ILSREC("90001906","CAT","ID - 90001906"_$C(10)_"BTI - Stress Title 1906"_$C(10)_"AU - Tester, Ann"_$C(10)_"MH - Medical Informatics"_$C(10)_"MH - Medical Informatics")
 S ^ILS("TMP","J",k)="CREATE|90001906|"_$G(^ILS("TMP","CNT"))
 S k=(k)+1
 S r=$G(^ILS("CAT","8000583","PB",1))
 S ^ILS("TMP","J",k)="READ|CAT|8000583|PB|"_($L(r))_"|"_($E(r,1,24))
 S k=(k)+1
 D PARSE^ILSREC("90001908","CAT","ID - 90001908"_$C(10)_"BTI - Stress Title 1908"_$C(10)_"AU - Tester, Ann"_$C(10)_"MH - Public Health")
 S ^ILS("TMP","J",k)="CREATE|90001908|"_$G(^ILS("TMP","CNT"))
 S k=(k)+1
 D PARSE^ILSREC("90001909","CAT","ID - 90001909"_$C(10)_"BTI - Stress Title 1909"_$C(10)_"AU - Tester, Ann"_$C(10)_"MH - Quantum Bibliography")
 S ^ILS("TMP","J",k)="CREATE|90001909|"_$G(^ILS("TMP","CNT"))
 S k=(k)+1
 S p=$D(^ILS("CAT","7505764"))
 D KILLREC^ILSREC("7505764","CAT")
 S ^ILS("TMP","J",k)="DEL|7505764|"_(p)_"->"_($D(^ILS("CAT","7505764")))
 S k=(k)+1
 D PARSE^ILSREC("90001911","CAT","ID - 90001911"_$C(10)_"BTI - Stress Title 1911"_$C(10)_"AU - Tester, Ann"_$C(10)_"MH - Quantum Bibliography"_$C(10)_"MH - Genomics"_$C(10)_"MH - Quantum Bibliography")
 S ^ILS("TMP","J",k)="CREATE|90001911|"_$G(^ILS("TMP","CNT"))
 S k=(k)+1
 D PARSE^ILSREC("90001912","CAT","ID - 90001912"_$C(10)_"BTI - Stress Title 1912"_$C(10)_"AU - Tester, Ann"_$C(10)_"MH - Quantum Bibliography"_$C(10)_"MH - Diabetes Mellitus."_$C(10)_"MH - Quantum Bibliography")
 S ^ILS("TMP","J",k)="CREATE|90001912|"_$G(^ILS("TMP","CNT"))
 S k=(k)+1
 S r=$G(^ILS("CAT","7503289","PB",1))
 S ^ILS("TMP","J",k)="READ|CAT|7503289|PB|"_($L(r))_"|"_($E(r,1,24))
 S k=(k)+1
 S r=$$VALIDATE^ILSAUTH("1302032","CAT")
 S ^ILS("TMP","J",k)="VAL|1302032|"_(r)
 S k=(k)+1
 D PARSE^ILSREC("90001915","CAT","ID - 90001915"_$C(10)_"BTI - Stress Title 1915"_$C(10)_"AU - Tester, Ann"_$C(10)_"MH - Genomics"_$C(10)_"MH - Public Health"_$C(10)_"MH - Diabetes Mellitus.")
 S ^ILS("TMP","J",k)="CREATE|90001915|"_$G(^ILS("TMP","CNT"))
 S k=(k)+1
 D PARSE^ILSREC("90001916","CAT","ID - 90001916"_$C(10)_"BTI - Stress Title 1916"_$C(10)_"AU - Tester, Ann"_$C(10)_"MH - Quantum Bibliography"_$C(10)_"MH - Quantum Bibliography")
 S ^ILS("TMP","J",k)="CREATE|90001916|"_$G(^ILS("TMP","CNT"))
 S k=(k)+1
 D PARSE^ILSREC("90001917","CAT","ID - 90001917"_$C(10)_"BTI - Stress Title 1917"_$C(10)_"AU - Tester, Ann"_$C(10)_"MH - Diabetes Mellitus."_$C(10)_"MH - Public Health")
 S ^ILS("TMP","J",k)="CREATE|90001917|"_$G(^ILS("TMP","CNT"))
 S k=(k)+1
 S r=$$DISPATCH^ILSTUI("SHOW CAT 7909441")
 S ^ILS("TMP","J",k)="SEARCH|SHOW_CAT_7909441|"_($L(r))_"|"_($E(r,1,40))
 S k=(k)+1
 D PARSE^ILSREC("90001919","CAT","ID - 90001919"_$C(10)_"BTI - Stress Title 1919"_$C(10)_"AU - Tester, Ann"_$C(10)_"MH - Diabetes Mellitus."_$C(10)_"MH - Genomics"_$C(10)_"MH - Quantum Bibliography")
 S ^ILS("TMP","J",k)="CREATE|90001919|"_$G(^ILS("TMP","CNT"))
 S k=(k)+1
 S p=$D(^ILS("CAT","7503289"))
 D KILLREC^ILSREC("7503289","CAT")
 S ^ILS("TMP","J",k)="DEL|7503289|"_(p)_"->"_($D(^ILS("CAT","7503289")))
 S k=(k)+1
 S r=$$DISPATCH^ILSTUI("LEDGER")
 S ^ILS("TMP","J",k)="SEARCH|LEDGER|"_($L(r))_"|"_($E(r,1,40))
 S k=(k)+1
 D PUT^ILSREC("90001922","CAT","DP",1,"2026")
 S ^ILS("TMP","J",k)="UPD|90001922|"_($D(^ILS("CAT","90001922","DP",1)))
 S k=(k)+1
 S r=$G(^ILS("CAT","7901827","AU",1))
 S ^ILS("TMP","J",k)="READ|CAT|7901827|AU|"_($L(r))_"|"_($E(r,1,24))
 S k=(k)+1
 S p=$D(^ILS("CAT","90001924"))
 D KILLREC^ILSREC("90001924","CAT")
 S ^ILS("TMP","J",k)="DEL|90001924|"_(p)_"->"_($D(^ILS("CAT","90001924")))
 S k=(k)+1
 S r=$G(^ILS("CAT","7803530","MH",1))
 S ^ILS("TMP","J",k)="READ|CAT|7803530|MH|"_($L(r))_"|"_($E(r,1,24))
 S k=(k)+1
 D PARSE^ILSREC("90001926","CAT","ID - 90001926"_$C(10)_"BTI - Stress Title 1926"_$C(10)_"AU - Tester, Ann"_$C(10)_"MH - Quantum Bibliography"_$C(10)_"MH - Quantum Bibliography"_$C(10)_"MH - Genomics")
 S ^ILS("TMP","J",k)="CREATE|90001926|"_$G(^ILS("TMP","CNT"))
 S k=(k)+1
 S r=$G(^ILS("CAT","7808791","BTI",1))
 S ^ILS("TMP","J",k)="READ|CAT|7808791|BTI|"_($L(r))_"|"_($E(r,1,24))
 S k=(k)+1
 S r=$$DISPATCH^ILSTUI("LIST")
 S ^ILS("TMP","J",k)="SEARCH|LIST|"_($L(r))_"|"_($E(r,1,40))
 S k=(k)+1
 S r=$G(^ILS("CAT","1267372","BTI",1))
 S ^ILS("TMP","J",k)="READ|CAT|1267372|BTI|"_($L(r))_"|"_($E(r,1,24))
 S k=(k)+1
 S r=$G(^ILS("CAT","8003963","DP",1))
 S ^ILS("TMP","J",k)="READ|CAT|8003963|DP|"_($L(r))_"|"_($E(r,1,24))
 S k=(k)+1
 S p=$D(^ILS("CAT","90001931"))
 D KILLREC^ILSREC("90001931","CAT")
 S ^ILS("TMP","J",k)="DEL|90001931|"_(p)_"->"_($D(^ILS("CAT","90001931")))
 S k=(k)+1
 D PARSE^ILSREC("90001932","CAT","ID - 90001932"_$C(10)_"BTI - Stress Title 1932"_$C(10)_"AU - Tester, Ann"_$C(10)_"MH - Quantum Bibliography"_$C(10)_"MH - Diabetes Mellitus.")
 S ^ILS("TMP","J",k)="CREATE|90001932|"_$G(^ILS("TMP","CNT"))
 S k=(k)+1
 S p=$D(^ILS("CAT","7609600"))
 D KILLREC^ILSREC("7609600","CAT")
 S ^ILS("TMP","J",k)="DEL|7609600|"_(p)_"->"_($D(^ILS("CAT","7609600")))
 S k=(k)+1
 S r=$$DISPATCH^ILSTUI("SHOW SER 1256232")
 S ^ILS("TMP","J",k)="SEARCH|SHOW_SER_1256232|"_($L(r))_"|"_($E(r,1,40))
 S k=(k)+1
 S p=$D(^ILS("CAT","8003963"))
 D KILLREC^ILSREC("8003963","CAT")
 S ^ILS("TMP","J",k)="DEL|8003963|"_(p)_"->"_($D(^ILS("CAT","8003963")))
 S k=(k)+1
 S r=$G(^ILS("CAT","7705180","PB",1))
 S ^ILS("TMP","J",k)="READ|CAT|7705180|PB|"_($L(r))_"|"_($E(r,1,24))
 S k=(k)+1
 S r=$$DISPATCH^ILSTUI("HELP")
 S ^ILS("TMP","J",k)="SEARCH|HELP|"_($L(r))_"|"_($E(r,1,40))
 S k=(k)+1
 D PUT^ILSREC("90001938","CAT","DP",1,"2026")
 S ^ILS("TMP","J",k)="UPD|90001938|"_($D(^ILS("CAT","90001938","DP",1)))
 S k=(k)+1
 S p=$D(^ILS("CAT","90001939"))
 D KILLREC^ILSREC("90001939","CAT")
 S ^ILS("TMP","J",k)="DEL|90001939|"_(p)_"->"_($D(^ILS("CAT","90001939")))
 S k=(k)+1
 D PARSE^ILSREC("90001940","CAT","ID - 90001940"_$C(10)_"BTI - Stress Title 1940"_$C(10)_"AU - Tester, Ann"_$C(10)_"MH - Public Health"_$C(10)_"MH - Genomics"_$C(10)_"MH - Genomics")
 S ^ILS("TMP","J",k)="CREATE|90001940|"_$G(^ILS("TMP","CNT"))
 S k=(k)+1
 S r=$G(^ILS("CAT","1267066","PB",1))
 S ^ILS("TMP","J",k)="READ|CAT|1267066|PB|"_($L(r))_"|"_($E(r,1,24))
 S k=(k)+1
 S r=$G(^ILS("CAT","8003963","BTI",1))
 S ^ILS("TMP","J",k)="READ|CAT|8003963|BTI|"_($L(r))_"|"_($E(r,1,24))
 S k=(k)+1
 S r=$$DISPATCH^ILSTUI("FIND HEALTH")
 S ^ILS("TMP","J",k)="SEARCH|FIND_HEALTH|"_($L(r))_"|"_($E(r,1,40))
 S k=(k)+1
 D PARSE^ILSREC("90001944","CAT","ID - 90001944"_$C(10)_"BTI - Stress Title 1944"_$C(10)_"AU - Tester, Ann"_$C(10)_"MH - Quantum Bibliography")
 S ^ILS("TMP","J",k)="CREATE|90001944|"_$G(^ILS("TMP","CNT"))
 S k=(k)+1
 D SEQPUT^ILSREC("90001945","CAT","MH","Stress Heading 1945")
 S ^ILS("TMP","J",k)="SEQPUT|90001945"
 S k=(k)+1
 D SEQPUT^ILSREC("90001946","CAT","MH","Stress Heading 1946")
 S ^ILS("TMP","J",k)="SEQPUT|90001946"
 S k=(k)+1
 S r=$G(^ILS("SER","1260767","MH",1))
 S ^ILS("TMP","J",k)="READ|SER|1260767|MH|"_($L(r))_"|"_($E(r,1,24))
 S k=(k)+1
 S r=$G(^ILS("CAT","7609600","PB",1))
 S ^ILS("TMP","J",k)="READ|CAT|7609600|PB|"_($L(r))_"|"_($E(r,1,24))
 S k=(k)+1
 S r=$G(^ILS("CAT","1275455","DP",1))
 S ^ILS("TMP","J",k)="READ|CAT|1275455|DP|"_($L(r))_"|"_($E(r,1,24))
 S k=(k)+1
 D SEQPUT^ILSREC("90001950","CAT","MH","Stress Heading 1950")
 S ^ILS("TMP","J",k)="SEQPUT|90001950"
 S k=(k)+1
 D AUTHADD^ILSAUTH("D991951","Stress Heading 1951","Z99.951")
 S ^ILS("TMP","J",k)="AUTHADD|D991951|"_($D(^ILS("ANAME","STRESS HEADING 1951","D991951")))
 S k=(k)+1
 S r=$$DISPATCH^ILSTUI("SHOW CAT 8003963")
 S ^ILS("TMP","J",k)="SEARCH|SHOW_CAT_8003963|"_($L(r))_"|"_($E(r,1,40))
 S k=(k)+1
 S r=$$VALIDATE^ILSAUTH("90001953","CAT")
 S ^ILS("TMP","J",k)="VAL|90001953|"_(r)
 S k=(k)+1
 D PARSE^ILSREC("90001954","CAT","ID - 90001954"_$C(10)_"BTI - Stress Title 1954"_$C(10)_"AU - Tester, Ann"_$C(10)_"MH - Genomics"_$C(10)_"MH - Genomics")
 S ^ILS("TMP","J",k)="CREATE|90001954|"_$G(^ILS("TMP","CNT"))
 S k=(k)+1
 S r=$G(^ILS("CAT","1267372","BTI",1))
 S ^ILS("TMP","J",k)="READ|CAT|1267372|BTI|"_($L(r))_"|"_($E(r,1,24))
 S k=(k)+1
 D PARSE^ILSREC("90001956","CAT","ID - 90001956"_$C(10)_"BTI - Stress Title 1956"_$C(10)_"AU - Tester, Ann"_$C(10)_"MH - Diabetes Mellitus.")
 S ^ILS("TMP","J",k)="CREATE|90001956|"_$G(^ILS("TMP","CNT"))
 S k=(k)+1
 S r=$G(^ILS("SER","1260767","MH",1))
 S ^ILS("TMP","J",k)="READ|SER|1260767|MH|"_($L(r))_"|"_($E(r,1,24))
 S k=(k)+1
 D PARSE^ILSREC("90001958","CAT","ID - 90001958"_$C(10)_"BTI - Stress Title 1958"_$C(10)_"AU - Tester, Ann"_$C(10)_"MH - Medical Informatics"_$C(10)_"MH - Diabetes Mellitus.")
 S ^ILS("TMP","J",k)="CREATE|90001958|"_$G(^ILS("TMP","CNT"))
 S k=(k)+1
 S r=$G(^ILS("CAT","8007202","BTI",1))
 S ^ILS("TMP","J",k)="READ|CAT|8007202|BTI|"_($L(r))_"|"_($E(r,1,24))
 S k=(k)+1
 D AUTHADD^ILSAUTH("D991960","Stress Heading 1960","Z99.960")
 S ^ILS("TMP","J",k)="AUTHADD|D991960|"_($D(^ILS("ANAME","STRESS HEADING 1960","D991960")))
 S k=(k)+1
 D PARSE^ILSREC("90001961","CAT","ID - 90001961"_$C(10)_"BTI - Stress Title 1961"_$C(10)_"AU - Tester, Ann"_$C(10)_"MH - Medical Informatics")
 S ^ILS("TMP","J",k)="CREATE|90001961|"_$G(^ILS("TMP","CNT"))
 S k=(k)+1
 S r=$$DISPATCH^ILSTUI("LIST")
 S ^ILS("TMP","J",k)="SEARCH|LIST|"_($L(r))_"|"_($E(r,1,40))
 S k=(k)+1
 S r=$$DISPATCH^ILSTUI("AUTH D003920")
 S ^ILS("TMP","J",k)="SEARCH|AUTH_D003920|"_($L(r))_"|"_($E(r,1,40))
 S k=(k)+1
 S r=$$DISPATCH^ILSTUI("RELATED D003920")
 S ^ILS("TMP","J",k)="SEARCH|RELATED_D003920|"_($L(r))_"|"_($E(r,1,40))
 S k=(k)+1
 S r=$G(^ILS("CAT","7508397","AU",1))
 S ^ILS("TMP","J",k)="READ|CAT|7508397|AU|"_($L(r))_"|"_($E(r,1,24))
 S k=(k)+1
 D SEQPUT^ILSREC("7609600","CAT","MH","Stress Heading 1966")
 S ^ILS("TMP","J",k)="SEQPUT|7609600"
 S k=(k)+1
 D PUT^ILSREC("7609600","CAT","DP",1,"2026")
 S ^ILS("TMP","J",k)="UPD|7609600|"_($D(^ILS("CAT","7609600","DP",1)))
 S k=(k)+1
 S r=$$VALIDATE^ILSAUTH("7502500","CAT")
 S ^ILS("TMP","J",k)="VAL|7502500|"_(r)
 S k=(k)+1
 D SEQPUT^ILSREC("7502500","CAT","MH","Stress Heading 1969")
 S ^ILS("TMP","J",k)="SEQPUT|7502500"
 S k=(k)+1
 S r=$$DISPATCH^ILSTUI("SHOW CAT 1302032")
 S ^ILS("TMP","J",k)="SEARCH|SHOW_CAT_1302032|"_($L(r))_"|"_($E(r,1,40))
 S k=(k)+1
 D PARSE^ILSREC("90001971","CAT","ID - 90001971"_$C(10)_"BTI - Stress Title 1971"_$C(10)_"AU - Tester, Ann"_$C(10)_"MH - Public Health")
 S ^ILS("TMP","J",k)="CREATE|90001971|"_$G(^ILS("TMP","CNT"))
 S k=(k)+1
 S r=$$DISPATCH^ILSTUI("LEDGER")
 S ^ILS("TMP","J",k)="SEARCH|LEDGER|"_($L(r))_"|"_($E(r,1,40))
 S k=(k)+1
 D PARSE^ILSREC("90001973","CAT","ID - 90001973"_$C(10)_"BTI - Stress Title 1973"_$C(10)_"AU - Tester, Ann"_$C(10)_"MH - Genomics"_$C(10)_"MH - Public Health"_$C(10)_"MH - Public Health")
 S ^ILS("TMP","J",k)="CREATE|90001973|"_$G(^ILS("TMP","CNT"))
 S k=(k)+1
 D PARSE^ILSREC("90001974","CAT","ID - 90001974"_$C(10)_"BTI - Stress Title 1974"_$C(10)_"AU - Tester, Ann"_$C(10)_"MH - Medical Informatics"_$C(10)_"MH - Diabetes Mellitus.")
 S ^ILS("TMP","J",k)="CREATE|90001974|"_$G(^ILS("TMP","CNT"))
 S k=(k)+1
 S r=$$DISPATCH^ILSTUI("MH DIABETES MELLITUS.")
 S ^ILS("TMP","J",k)="SEARCH|MH_DIABETES_MELLITUS.|"_($L(r))_"|"_($E(r,1,40))
 S k=(k)+1
 S p=$D(^ILS("CAT","90001976"))
 D KILLREC^ILSREC("90001976","CAT")
 S ^ILS("TMP","J",k)="DEL|90001976|"_(p)_"->"_($D(^ILS("CAT","90001976")))
 S k=(k)+1
 S p=$D(^ILS("CAT","90001977"))
 D KILLREC^ILSREC("90001977","CAT")
 S ^ILS("TMP","J",k)="DEL|90001977|"_(p)_"->"_($D(^ILS("CAT","90001977")))
 S k=(k)+1
 D PARSE^ILSREC("90001978","CAT","ID - 90001978"_$C(10)_"BTI - Stress Title 1978"_$C(10)_"AU - Tester, Ann"_$C(10)_"MH - Medical Informatics"_$C(10)_"MH - Medical Informatics"_$C(10)_"MH - Public Health")
 S ^ILS("TMP","J",k)="CREATE|90001978|"_$G(^ILS("TMP","CNT"))
 S k=(k)+1
 S r=$$DISPATCH^ILSTUI("ISSN 0742-3071")
 S ^ILS("TMP","J",k)="SEARCH|ISSN_0742-3071|"_($L(r))_"|"_($E(r,1,40))
 S k=(k)+1
 D AUTHADD^ILSAUTH("D991980","Stress Heading 1980","Z99.980")
 S ^ILS("TMP","J",k)="AUTHADD|D991980|"_($D(^ILS("ANAME","STRESS HEADING 1980","D991980")))
 S k=(k)+1
 S p=$D(^ILS("CAT","90001981"))
 D KILLREC^ILSREC("90001981","CAT")
 S ^ILS("TMP","J",k)="DEL|90001981|"_(p)_"->"_($D(^ILS("CAT","90001981")))
 S k=(k)+1
 S r=$$DISPATCH^ILSTUI("FIND DIABETES")
 S ^ILS("TMP","J",k)="SEARCH|FIND_DIABETES|"_($L(r))_"|"_($E(r,1,40))
 S k=(k)+1
 S p=$D(^ILS("CAT","8003963"))
 D KILLREC^ILSREC("8003963","CAT")
 S ^ILS("TMP","J",k)="DEL|8003963|"_(p)_"->"_($D(^ILS("CAT","8003963")))
 S k=(k)+1
 D PARSE^ILSREC("90001984","CAT","ID - 90001984"_$C(10)_"BTI - Stress Title 1984"_$C(10)_"AU - Tester, Ann"_$C(10)_"MH - Genomics"_$C(10)_"MH - Diabetes Mellitus.")
 S ^ILS("TMP","J",k)="CREATE|90001984|"_$G(^ILS("TMP","CNT"))
 S k=(k)+1
 S r=$$DISPATCH^ILSTUI("MH DIABETES MELLITUS.")
 S ^ILS("TMP","J",k)="SEARCH|MH_DIABETES_MELLITUS.|"_($L(r))_"|"_($E(r,1,40))
 S k=(k)+1
 S r=$G(^ILS("SER","1260665","ISS",1))
 S ^ILS("TMP","J",k)="READ|SER|1260665|ISS|"_($L(r))_"|"_($E(r,1,24))
 S k=(k)+1
 D PARSE^ILSREC("90001987","CAT","ID - 90001987"_$C(10)_"BTI - Stress Title 1987"_$C(10)_"AU - Tester, Ann"_$C(10)_"MH - Medical Informatics")
 S ^ILS("TMP","J",k)="CREATE|90001987|"_$G(^ILS("TMP","CNT"))
 S k=(k)+1
 S r=$$DISPATCH^ILSTUI("HELP")
 S ^ILS("TMP","J",k)="SEARCH|HELP|"_($L(r))_"|"_($E(r,1,40))
 S k=(k)+1
 D PUT^ILSREC("90001989","CAT","DP",1,"2026")
 S ^ILS("TMP","J",k)="UPD|90001989|"_($D(^ILS("CAT","90001989","DP",1)))
 S k=(k)+1
 D PARSE^ILSREC("90001990","CAT","ID - 90001990"_$C(10)_"BTI - Stress Title 1990"_$C(10)_"AU - Tester, Ann"_$C(10)_"MH - Genomics"_$C(10)_"MH - Medical Informatics")
 S ^ILS("TMP","J",k)="CREATE|90001990|"_$G(^ILS("TMP","CNT"))
 S k=(k)+1
 S r=$G(^ILS("CAT","7909441","MH",1))
 S ^ILS("TMP","J",k)="READ|CAT|7909441|MH|"_($L(r))_"|"_($E(r,1,24))
 S k=(k)+1
 S r=$$DISPATCH^ILSTUI("MH GENOMICS")
 S ^ILS("TMP","J",k)="SEARCH|MH_GENOMICS|"_($L(r))_"|"_($E(r,1,40))
 S k=(k)+1
 S r=$G(^ILS("SER","1260300","ISS",1))
 S ^ILS("TMP","J",k)="READ|SER|1260300|ISS|"_($L(r))_"|"_($E(r,1,24))
 S k=(k)+1
 S r=$G(^ILS("CAT","7609600","PB",1))
 S ^ILS("TMP","J",k)="READ|CAT|7609600|PB|"_($L(r))_"|"_($E(r,1,24))
 S k=(k)+1
 S r=$G(^ILS("CAT","7808791","BTI",1))
 S ^ILS("TMP","J",k)="READ|CAT|7808791|BTI|"_($L(r))_"|"_($E(r,1,24))
 S k=(k)+1
 D PARSE^ILSREC("90001996","CAT","ID - 90001996"_$C(10)_"BTI - Stress Title 1996"_$C(10)_"AU - Tester, Ann"_$C(10)_"MH - Quantum Bibliography"_$C(10)_"MH - Quantum Bibliography")
 S ^ILS("TMP","J",k)="CREATE|90001996|"_$G(^ILS("TMP","CNT"))
 S k=(k)+1
 D AUTHADD^ILSAUTH("D991997","Stress Heading 1997","Z99.997")
 S ^ILS("TMP","J",k)="AUTHADD|D991997|"_($D(^ILS("ANAME","STRESS HEADING 1997","D991997")))
 S k=(k)+1
 D PUT^ILSREC("90001998","CAT","DP",1,"2026")
 S ^ILS("TMP","J",k)="UPD|90001998|"_($D(^ILS("CAT","90001998","DP",1)))
 S k=(k)+1
 S p=$D(^ILS("CAT","7901827"))
 D KILLREC^ILSREC("7901827","CAT")
 S ^ILS("TMP","J",k)="DEL|7901827|"_(p)_"->"_($D(^ILS("CAT","7901827")))
 S k=(k)+1
 S r=$$DISPATCH^ILSTUI("FIND DIABETES")
 S ^ILS("TMP","J",k)="SEARCH|FIND_DIABETES|"_($L(r))_"|"_($E(r,1,40))
 Q
