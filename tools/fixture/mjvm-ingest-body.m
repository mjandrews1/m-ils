INGEST ; ingest CAT+SER+MeSH and validate all records; counts in ^ILS("TMP",...)
 ; (mJVM #37 was fixed by frame-local stacks, but the one-level device loops
 ; stay the proven shape; LOADXML/MESHREC do the real parsing.)
 K ^ILS("CAT")
 K ^ILS("SER")
 K ^ILS("AUTH"),^ILS("ATREE"),^ILS("ANAME"),^ILS("ATIX")
 K ^ILS("LINK"),^ILS("LEDG"),^ILS("WIDX")
 K ^ILS("TMP")
 S ^ILS("TMP","FN","CAT")="CATFILEPATH"
 S ^ILS("TMP","FN","SER")="SERFILEPATH"
 S kind=""
MI0 ;
 S kind=$O(^ILS("TMP","FN",kind))
 I kind="" G MI1X
 S fn=$G(^ILS("TMP","FN",kind))
 K ^ILS(kind)
 D MILOOP
 G MI0
 ;
MI1X ;
 K ^ILS("TMP","FN")
 D MESHING
 D VALALL
 Q
 ;
MILOOP ; one MARCXML file device loop — kind/fn set by the caller
 S rec=""
 S n=0
 O 20:fn
 U 20
MI1 ;
 R line
 I line="" G MIE
 I rec'="" G MI3
 I line'["<marc:record " G MI1
 S rec=line
 G MI1
MI3 ;
 S rec=rec_$C(10)_line
 I line'["</marc:record>" G MI1
 S r=$$LOADXML(kind,rec)
 I r>0 S n=(n)+1
 S rec=""
 G MI1
MIE ;
 C 20
 U 0
 S ^ILS("TMP","ING",kind)=n
 Q
 ;
MESHING ; one-level MeSH descriptor device loop (file path in fn2)
 S fn2="MESHPATH"
 S rec=""
 S n=0
 O 20:fn2
 U 20
MG1 ;
 R line
 I line="" G MGE
 I rec'="" G MG3
 I line'["<DescriptorRecord " G MG1
 S rec=line
 G MG1
MG3 ;
 S rec=rec_$C(10)_line
 I line'["</DescriptorRecord>" G MG1
 S r=$$MESHREC(rec)
 I r>0 S n=(n)+1
 S rec=""
 G MG1
MGE ;
 C 20
 U 0
 S ^ILS("TMP","MESH")=n
 Q
 ;
VALALL ; validate CAT+SER records; counts in ^ILS("TMP","LNK"/"UNL")
 S ^ILS("TMP","LNK")=0
 S ^ILS("TMP","UNL")=0
 S kind="CAT"
 D VPK
 S kind="SER"
 D VPK
 Q
 ;
VPK ;
 S id=""
VP1 ;
 S id=$O(^ILS(kind,id))
 I id="" G VPD
 I id'?1.N G VP1
 S r=$$VALIDATE(id,kind)
 S ^ILS("TMP","LNK")=$G(^ILS("TMP","LNK"))+($P(r,"|",2))
 S p=$P(r,"|",3)
 I p="" G VP1
 S ^ILS("TMP","UNL")=$G(^ILS("TMP","UNL"))+(p)
 G VP1
VPD ;
 Q
