ILSMARC ; m-ils MARCXML loader — MARC21 slim XML to tagged-line records
 ; Ingests the fleet's staged NLM files (serfilebase/catplusbase, gzip-
 ; expanded beforehand) into the tagged-line internal format via ILSREC.
 ; The slim schema is regular: <marc:record> blocks contain
 ;   <marc:controlfield tag="001">0402304</marc:controlfield>
 ;   <marc:datafield tag="650" ind1=" " ind2="2">
 ;     <marc:subfield code="a">Diabetes Mellitus</marc:subfield>
 ; MARC to internal tag map (first subfield $a per datafield):
 ;   001 -> ID (controlfield)   245 -> BTI (CAT) / STI (SER)
 ;   022 -> ISS                 260 -> PB ($b) , DP ($c)
 ;   100/700 -> AU              650 -> MH (repeatable; ind2=2 = MeSH)
 ; Pure-string M parsing, $P-piece based; bounded loops only (no
 ; QUIT-in-FOR, one command per IF); runs under mJVM and GT.M.
 ;
LOADXML(kind,text) ; parse one <marc:record> body; returns field count
 N recid,chunk,attrs,tag,body,cnt,tot
 S chunk=$P(text,"<marc:controlfield tag=""001"">",2)
 I chunk="" Q 0
 S recid=$P(chunk,"</marc:controlfield>",1)
 I recid="" Q 0
 D PUT^ILSREC(recid,kind,"ID",1,recid)
 S tot=$L(text,"<marc:datafield ")-1
 F cnt=1:1:tot D
 . S chunk=$P(text,"<marc:datafield ",2)
 . S attrs=$P(chunk,">",1)
 . S tag=$P(attrs,"""",2)
 . S body=$P(chunk,">",2)
 . S body=$P(body,"</marc:datafield>",1)
 . D FIELD(kind,recid,tag,body)
 . S text=$P(text,"</marc:datafield>",2,999)
 Q (tot+1)
 ;
FIELD(kind,recid,tag,body) ; map one datafield to internal tags
 I tag="245" D S245 Q
 I tag="022" D S022 Q
 I tag="260" D S260 Q
 I tag="100" D SAU Q
 I tag="700" D SAU Q
 I tag="650" D SMH Q
 Q
 ;
SUBA(body) ; first $a subfield value of a datafield body ("" when absent)
 N sub,val
 S sub=$P(body,"<marc:subfield ",2,999)
 I sub="" Q ""
 S val=$P(sub,">",2,999)
 S val=$P(val,"</marc:subfield>",1)
 Q val
 ;
S245 ; title
 I kind="CAT" D PUT^ILSREC(recid,kind,"BTI",1,$$SUBA(body)) Q
 D PUT^ILSREC(recid,kind,"STI",1,$$SUBA(body))
 Q
 ;
S022 ; ISSN
 D PUT^ILSREC(recid,kind,"ISS",1,$$SUBA(body))
 Q
 ;
S260 ; publication: $b publisher, $c date
 D PUT^ILSREC(recid,kind,"PB",1,$$SUBB(body))
 D PUT^ILSREC(recid,kind,"DP",1,$$SUBC(body))
 Q
 ;
SUBB(body) ; first $b subfield value
 N sub,val
 S sub=$P(body,"<marc:subfield ",2,999)
 I sub="" Q ""
 S val=$P(sub,"code=""b""",2,999)
 I val="" Q ""
 S val=$P(val,">",2,999)
 S val=$P(val,"</marc:subfield>",1)
 Q val
 ;
SUBC(body) ; first $c subfield value
 N sub,val
 S sub=$P(body,"<marc:subfield ",2,999)
 I sub="" Q ""
 S val=$P(sub,"code=""c""",2,999)
 I val="" Q ""
 S val=$P(val,">",2,999)
 S val=$P(val,"</marc:subfield>",1)
 Q val
 ;
SAU ; author
 I $$SUBA(body)="" Q
 D SEQPUT^ILSREC(recid,kind,"AU",$$SUBA(body))
 Q
 ;
SMH ; MeSH heading (650 ind2=2 in NLM data)
 I $$SUBA(body)="" Q
 D SEQPUT^ILSREC(recid,kind,"MH",$$SUBA(body))
 Q
 ;
COUNTREC(text) ; how many <marc:record> blocks in a collection
 Q ($L(text,"<marc:record ")-1)
 ;
