ILSEARCH ; m-ils search — title words, MeSH headings, ISSNs
 ; Word index:  ^ILS("WIDX",word,kind,recid)=""  built by REINDEX.
 ; All functions return pipe-joined id lists ("" when no hits).
 ;
REINDEX ; rebuild the word index from current CAT + SER titles
 N kind,recid,t,w,p,nw
 K ^ILS("WIDX")
 S kind="CAT"
 D RXK
 S kind="SER"
 D RXK
 Q
 ;
RXK ; index one kind's titles into ^ILS("WIDX")
 S recid=""
RXK1 S recid=$O(^ILS(kind,recid))
 I recid="" G RXKD
 I recid'?1.N G RXK1
 S t=$G(^ILS(kind,recid,$S(kind="CAT":"BTI",1:"STI"),1))
 I t="" G RXK1
 S nw=$L(t," ")
 S p=1
RXK2 ;
 I p>nw G RXK1
 S w=$$FOLD^ILSAUTH($P(t," ",p))
 I w="" G RXK3
 I $L(w)<3 G RXK3
 S ^ILS("WIDX",w,kind,recid)=""
RXK3 ;
 S p=(p)+1
 G RXK2
RXKD ;
 Q
 ;
TITLE(word) ; records whose title contains the word (any kind)
 N out,kind,recid,w
 S out=""
 S w=$$FOLD^ILSAUTH(word)
 S kind=""
TI1 S kind=$O(^ILS("WIDX",w,kind))
 I kind="" G TID
 S recid=""
TI2 S recid=$O(^ILS("WIDX",w,kind,recid))
 I recid="" G TI1
 I out="" S out=kind_":"_recid G TI2
 S out=out_"|"_(kind_":"_recid)
 G TI2
TID ;
 Q out
 ;
BYHEAD(head) ; records with a validated link to a MeSH heading name
 N ui
 S ui=$$AUTHBYNAME^ILSAUTH(head)
 I ui="" Q ""
 Q $$RECAUTH^ILSAUTH(ui)
 ;
BYISSN(issn) ; serial records with a matching ISSN
 N out,recid,v
 S out=""
 S recid=""
BIA1 S recid=$O(^ILS("SER",recid))
 I recid="" G BIAD
 I recid'?1.N G BIA1
 S v=$G(^ILS("SER",recid,"ISS",1))
 I v'=issn G BIA1
 I out="" S out=recid G BIA1
 S out=out_"|"_(recid)
 G BIA1
BIAD ;
 Q out
 ;
BYID(id) ; which kinds hold a record id ("" when absent)
 N out,kind
 S out=""
 S kind="CAT"
 D BYIDK
 S kind="SER"
 D BYIDK
 Q out
 ;
BYIDK ;
 I '$D(^ILS(kind,id)) Q
 I out="" S out=kind Q
 S out=out_"|"_(kind)
 Q
