ILSINGM ; ingest shell — reads kind->file pairs from ^ILS("TMP","FN"), ingests each,
 ; ingests the MeSH authority file, validates all records, dumps everything.
 K ^ILS("CAT")
 K ^ILS("SER")
 K ^ILS("AUTH"),^ILS("ATREE"),^ILS("ANAME"),^ILS("ATIX")
 K ^ILS("LINK"),^ILS("LEDG")
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
 O 21:"DPATH"
 U 21
 W "cat="
 W $G(^ILS("TMP","ING","CAT"))
 W !
 W "ser="
 W $G(^ILS("TMP","ING","SER"))
 W !
 W "mesh="
 W $G(^ILS("TMP","MESH"))
 W !
 W "linked="
 W $G(^ILS("TMP","LNK"))
 W !
 W "unlinked="
 W $G(^ILS("TMP","UNL"))
 W !
 D ILSDUMP
 D AUTHDUMP
 D ATIXDUMP
 D LINKDUMP
 D LEDGDUMP
 U 0
 C 21
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
 ;
ILSDUMP ; dump CAT+SER leaves as TAB-separated kind/id/tag/seq/value
 S kind="CAT"
 D DMPK
 S kind="SER"
 D DMPK
 Q
 ;
DMPK ;
 S id=""
DK1 ;
 S id=$O(^ILS(kind,id))
 I id="" G DKD
 S tag=""
DK2 ;
 S tag=$O(^ILS(kind,id,tag))
 I tag="" G DK1
 S seq=""
DK3 ;
 S seq=$O(^ILS(kind,id,tag,seq))
 I seq="" G DK2
 W kind_$C(9)_id_$C(9)_tag_$C(9)_seq_$C(9)_$G(^ILS(kind,id,tag,seq))
 W !
 G DK3
DKD ;
 Q
 ;
AUTHDUMP ; TAB-separated ui / name
 S ui=""
AD1 ;
 S ui=$O(^ILS("AUTH",ui))
 I ui="" G ADD
 W "AUTH"_$C(9)_ui_$C(9)_$G(^ILS("AUTH",ui))
 W !
 G AD1
ADD ;
 Q
 ;
ATIXDUMP ; TAB-separated tree / ui
 S tree=""
TX1 ;
 S tree=$O(^ILS("ATIX",tree))
 I tree="" G TXD
 S ui=""
TX2 ;
 S ui=$O(^ILS("ATIX",tree,ui))
 I ui="" G TX1
 W "ATIX"_$C(9)_tree_$C(9)_ui
 W !
 G TX2
TXD ;
 Q
 ;
LINKDUMP ; TAB-separated kind / id / ui (validated heading occurrences)
 S kind=""
LK1 ;
 S kind=$O(^ILS("LINK",kind))
 I kind="" G LKD
 S id=""
LK2 ;
 S id=$O(^ILS("LINK",kind,id))
 I id="" G LK1
 S ui=""
LK3 ;
 S ui=$O(^ILS("LINK",kind,id,ui))
 I ui="" G LK2
 W "LINK"_$C(9)_kind_$C(9)_id_$C(9)_ui
 W !
 G LK3
LKD ;
 Q
 ;
LEDGDUMP ; TAB-separated kind / id / heading (unlinked ledger — expect empty)
 S kind=""
LG1 ;
 S kind=$O(^ILS("LEDG",kind))
 I kind="" G LGD
 S id=""
LG2 ;
 S id=$O(^ILS("LEDG",kind,id))
 I id="" G LG1
 S head=""
LG3 ;
 S head=$O(^ILS("LEDG",kind,id,head))
 I head="" G LG2
 W "LEDG"_$C(9)_kind_$C(9)_id_$C(9)_head
 W !
 G LG3
LGD ;
 Q
