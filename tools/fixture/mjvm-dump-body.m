DUMPTO ; print counts to stdout, then dump all sections + journal to device 21
 ; (mJVM caps stdout at 2MB — dumps go to a file device; GT.M prints to stdout)
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
 W "ops="
 W $O(^ILS("TMP","J",""),-1)
 W !
 O 21:"DPATH"
 U 21
 D ILSDUMP
 D AUTHDUMP
 D ATIXDUMP
 D LINKDUMP
 D LEDGDUMP
 D JDUMP
 U 0
 C 21
 Q
 ;
JDUMP ; the op journal: TAB-separated J/k/line
 S k=""
JD1 ;
 S k=$O(^ILS("TMP","J",k))
 I k="" G JDD
 W "J"_$C(9)_k_$C(9)_$G(^ILS("TMP","J",k))
 W !
 G JD1
JDD ;
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
