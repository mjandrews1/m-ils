ILSMESH ; m-ils MeSH authority loader — NLM descYYYY.xml (DescriptorRecordSet)
 ; Streams the full MeSH descriptor file (31,110 records in desc2026) into
 ; the authority store via AUTHADD^ILSAUTH: ^ILS("AUTH",ui)=name,
 ; ^ILS("ATREE",ui)=first tree, ^ILS("ANAME",folded,ui), ^ILS("ATIX",tree,ui)
 ; (one entry per tree number). DO form — the count lands in
 ; ^ILS("TMP","MESH"). Record open tags carry attributes
 ; ("<DescriptorRecord DescriptorClass = ..."), no namespace prefixes.
 ; Names keep raw XML entities (&amp;) — the MARCXML 650 headings carry the
 ; same encoding, so VALIDATE lookups match without entity translation.
 ;
MESHFILE(fn) ; stream desc xml; count in ^ILS("TMP","MESH")
 N line,rec,n,r
 S n=0
 S rec=""
 O fn:readonly
 U fn
MF1 ;
 R line
 I line="" G MFD
 I rec="" D MF2
 I rec'="" D MF3
 G MF1
 ;
MF2 ;
 I line'["<DescriptorRecord " Q
 S rec=line
 Q
 ;
MF3 ;
 S rec=rec_$C(10)_line
 I line'["</DescriptorRecord>" Q
 S r=$$MESHREC(rec)
 I r>0 S n=(n)+1
 S rec=""
 Q
 ;
MFD ;
 C fn
 U 0
 S ^ILS("TMP","MESH")=n
 Q
 ;
MESHREC(text) ; parse one DescriptorRecord block; returns 1 when stored
 N ui,name,rest,tree,t
 S ui=$P(text,"<DescriptorUI>",2)
 I ui="" Q 0
 S ui=$P(ui,"</DescriptorUI>",1)
 I ui="" Q 0
 S rest=$P(text,"<DescriptorName>",2,999)
 I rest="" Q 0
 S name=$P(rest,"<String>",2)
 I name="" Q 0
 S name=$P(name,"</String>",1)
 S tree=$P(text,"<TreeNumber>",2)
 I tree="" G MFNT
 S tree=$P(tree,"</TreeNumber>",1)
 D AUTHADD^ILSAUTH(ui,name,tree)
 S rest=text
MF4 ;
 I rest'["<TreeNumber>" G MF4D
 S rest=$P(rest,"<TreeNumber>",2,999)
 S t=$P(rest,"</TreeNumber>",1)
 I t'="" S ^ILS("ATIX",t,ui)=""
 G MF4
 ;
MF4D ;
 Q 1
 ;
MFNT ; no tree number: authority name index only
 S ^ILS("AUTH",ui)=name
 S ^ILS("ANAME",$$FOLD^ILSAUTH(name),ui)=""
 Q 1
