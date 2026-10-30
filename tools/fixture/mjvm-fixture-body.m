ILSINGM ; one-level ingest shell — appended to the carrier by build-fixture-run.sh
 ; (mJVM #37 was fixed by frame-local stacks, but the one-level device
 ; loop stays the proven shape; LOADXML does the real parsing either way.)
 K ^ILS("CAT")
 K ^ILS("TMP","ING")
 S fn="/Users/mark/ils-fixture/catplus_sample.xml"
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
 S r=$$LOADXML("CAT",rec)
 I r>0 S n=(n)+1
 S rec=""
 G MI1
MIE ;
 C 20
 U 0
 S ^ILS("TMP","ING")=n
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
