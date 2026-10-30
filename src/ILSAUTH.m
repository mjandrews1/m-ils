ILSAUTH ; m-ils MeSH authority control
 ; Authority store: ^ILS("AUTH",ui)=name ; ^ILS("ATREE",ui)=tree
 ; Name index:    ^ILS("ANAME",name,ui)=""      (names are case-folded)
 ; Tree index:    ^ILS("ATIX",tree,ui)=""
 ; Record links:  ^ILS("LINK",kind,recid,ui)="" (kind CAT/SER, one per
 ;                validated heading occurrence)
 ; Unlinked headings ledger: ^ILS("LEDG",kind,recid,heading)="" — headings
 ; that failed authority validation (recorded, never silently dropped).
 ;
AUTHADD(ui,name,tree) ; add an authority record
 S ^ILS("AUTH",ui)=name
 S ^ILS("ATREE",ui)=tree
 S ^ILS("ANAME",$$FOLD(name),ui)=""
 S ^ILS("ATIX",tree,ui)=""
 Q
 ;
FOLD(name) ; case-fold (upper) helper
 Q $ZCONVERT(name,"U")
 ;
AUTHBYNAME(name) ; returns the UI for an exact name ("" when unknown).
 ; Lookup-side normalization (authority control convention): a single
 ; trailing period is stripped before matching — MARC 650 headings carry
 ; terminal punctuation the MeSH descriptor names do not.
 N ui,n2
 S n2=name
 I $E(n2,$L(n2))="." S n2=$E(n2,1,($L(n2)-1))
 S ui=$O(^ILS("ANAME",$$FOLD(n2),""))
 Q $G(ui)
 ;
AUTHGET(ui) ; returns name for a UI ("" when unknown)
 Q $G(^ILS("AUTH",ui))
 ;
TREEGET(ui) ; returns tree number for a UI ("" when unknown)
 Q $G(^ILS("ATREE",ui))
 ;
BYTREE(tree) ; all UIs under an exact tree number (ui|ui|...)
 N out,ui
 S out=""
 S ui=""
BT1 S ui=$O(^ILS("ATIX",tree,ui))
 I ui="" G BTD
 I out="" S out=ui G BT1
 S out=out_"|"_(ui)
 G BT1
BTD ;
 Q out
 ;
VALIDATE(recid,kind) ; validate every MH heading of a record against the
 ; authority file. Returns "ok|linked" when all headings resolved,
 ; "fail|linked|unlinked" otherwise (counts). Records unresolved headings
 ; in the ledger and the resolved ones in LINK.
 N seq,head,ui,ok,unlink,lnk
 S ok=1
 S lnk=0
 S unlink=0
 K ^ILS("LINK",kind,recid)
 K ^ILS("LEDG",kind,recid)
 S seq=""
VW1 S seq=$O(^ILS(kind,recid,"MH",seq))
 I seq="" G VWD
 S head=$G(^ILS(kind,recid,"MH",seq))
 S ui=$$AUTHBYNAME(head)
 I ui="" G VW2
 S lnk=(lnk)+1
 S ^ILS("LINK",kind,recid,ui)=""
 G VW1
VW2 ;
 S ok=0
 S unlink=(unlink)+1
 S ^ILS("LEDG",kind,recid,head)=""
 G VW1
VWD ;
 I ok=1 Q "ok|"_(lnk)
 Q "fail|"_(lnk)_"|"_(unlink)
 ;
RECAUTH(ui) ; records linked to a UI: "CAT:id|CAT:id|SER:id|..."
 N out,kind,recid
 S out=""
 S kind="CAT"
RA1 ;
 S recid=""
RA2 S recid=$O(^ILS("LINK",kind,recid))
 I recid="" G RA3
 I '$D(^ILS("LINK",kind,recid,ui)) G RA2
 I out="" S out=kind_":"_recid G RA2
 S out=out_"|"_(kind_":"_recid)
 G RA2
RA3 ;
 I kind="CAT" S kind="SER" G RA1
 Q out
 ;
AUTHRELATED(ui) ; broader/sibling authority records sharing the tree root
 ; (first two tree levels), as ui:name|ui:name|...
 N out,tree,root,t2,u,name
 S out=""
 S tree=$G(^ILS("ATREE",ui))
 I tree="" Q ""
 S root=$P(tree,".",1)_"."_$P(tree,".",2)
 S t2=root
AR1 S t2=$O(^ILS("ATIX",t2))
 I t2="" G ARD
 I $E(t2,1,$L(root))'=root G ARD
 S u=""
AR2 S u=$O(^ILS("ATIX",t2,u))
 I u="" G AR1
 S name=$G(^ILS("AUTH",u))
 I out="" S out=u_":"_name G AR2
 S out=out_"|"_(u_":"_name)
 G AR2
ARD ;
 Q out
 ;
AUTHDEMO ; seed the abridged MeSH authority file (representative UIs/trees)
 K ^ILS("AUTH"),^ILS("ATREE"),^ILS("ANAME"),^ILS("ATIX"),^ILS("LINK"),^ILS("LEDG")
 D AUTHADD("D003920","Diabetes Mellitus","C18.452.394")
 D AUTHADD("D008297","Medical Informatics","L01.700.517.400.570")
 D AUTHADD("D006801","Humans","H01.770.644")
 D AUTHADD("D011634","Public Health","N01.400")
 D AUTHADD("D010593","Primary Health Care","N02.421.726.653")
 D AUTHADD("D020168","Genomics","E05.393.183")
 D AUTHADD("D012189","Small Business","J01.858.930")
 D AUTHADD("D013514","Terminology as Topic","L01.224.900")
 Q
 ;
COUNT() ; number of authority records
 N out,ui
 S out=0
 S ui=""
CN1 S ui=$O(^ILS("AUTH",ui))
 I ui="" G CND
 S out=(out)+1
 G CN1
CND ;
 Q out
