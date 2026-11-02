ILSILL ; m-ils ILL — minimum viable (MVP expansion, m-ils#1)
 ; Stores:
 ;   ^ILS("ILL",id,"DIR"|"PATRON"|"CATID"|"ITEM"|"PARTNER"|"STATUS"|"PLACED"|"SHIPPED"|"RECEIVED"|"RETURNED")=v
 ;   DIR: out (we request) | in (we lend) ; STATUS: pending|shipped|received|returned|cancelled
 ;   ^ILSIDX("ILLBYPAT",patid,reqid)="" ; ^ILSIDX("ILLQ",status,reqid)=""
 ;   ^ILS("SEQ","ILL") counter
 ; Legal transitions: out: pending->shipped->received->returned ; in: pending->shipped->returned ;
 ; any: pending->cancelled. Transport: email-based MVP (PARTNER = address; UI renders the request).
 ;
LEGOUT(cur,ns) ; legal out-direction transition (M is strictly left-to-right: parenthesize each AND group)
 Q ((cur="pending")&(ns="shipped"))!((cur="shipped")&(ns="received"))!((cur="received")&(ns="returned"))
 ;
LEGIN(cur,ns) ; legal in-direction transition
 Q ((cur="pending")&(ns="shipped"))!((cur="shipped")&(ns="returned"))
 ;
LEGAL(cur,dir,ns) ; transition predicate: pending->cancelled always; else direction table
 I ns="cancelled" Q (cur="pending")
 I dir="out" Q $$LEGOUT(cur,ns)
 I dir="in" Q $$LEGIN(cur,ns)
 Q 0
 ;
ILLREQ(token,catid,partner) ; patron requests an item we don't hold
 N id,now,pat
 I '$$CAN^ILSPAT(token,"illreq") Q "err|auth"
 S id=$$NXTID^ILSPAT("ILL")
 S now=$$NOW^ILSPAT()
 S pat=$$CHECK^ILSPAT(token)
 S ^ILS("ILL",id,"DIR")="out"
 S ^ILS("ILL",id,"PATRON")=pat
 S ^ILS("ILL",id,"CATID")=catid
 S ^ILS("ILL",id,"PARTNER")=partner
 S ^ILS("ILL",id,"STATUS")="pending"
 S ^ILS("ILL",id,"PLACED")=now
 S ^ILSIDX("ILLBYPAT",pat,id)=""
 S ^ILSIDX("ILLQ","pending",id)=""
 Q "ok|"_id
 ;
ILLIN(token,barcode,partner) ; librarian records a loan of our item to a partner
 N id,now
 I '$$CAN^ILSPAT(token,"manageill") Q "err|auth"
 S id=$$NXTID^ILSPAT("ILL")
 S now=$$NOW^ILSPAT()
 S ^ILS("ILL",id,"DIR")="in"
 S ^ILS("ILL",id,"ITEM")=barcode
 S ^ILS("ILL",id,"PARTNER")=partner
 S ^ILS("ILL",id,"STATUS")="pending"
 S ^ILS("ILL",id,"PLACED")=now
 S ^ILSIDX("ILLQ","pending",id)=""
 Q "ok|"_id
 ;
ILLSET(token,reqid,newstatus) ; librarian advances the lifecycle
 N cur,dir,ok
 I '$$CAN^ILSPAT(token,"manageill") Q "err|auth"
 S cur=$G(^ILS("ILL",reqid,"STATUS"))
 I cur="" Q "err|nosuch"
 S dir=$G(^ILS("ILL",reqid,"DIR"))
 S ok=$$LEGAL(cur,dir,newstatus)
 I ok=0 Q "err|transition"
 K ^ILSIDX("ILLQ",cur,reqid)
 S ^ILS("ILL",reqid,"STATUS")=newstatus
 S ^ILSIDX("ILLQ",newstatus,reqid)=""
 I newstatus="shipped" S ^ILS("ILL",reqid,"SHIPPED")=$$NOW^ILSPAT()
 I newstatus="received" S ^ILS("ILL",reqid,"RECEIVED")=$$NOW^ILSPAT()
 I newstatus="returned" S ^ILS("ILL",reqid,"RETURNED")=$$NOW^ILSPAT()
 Q "ok|"_reqid
 ;
MYILL(token) ; patron's ILL requests: "id:dir:status:partner|..."
 N pat,out,id
 S pat=$$CHECK^ILSPAT(token)
 I pat="" Q ""
 S out=""
 S id=""
MI1 S id=$O(^ILSIDX("ILLBYPAT",pat,id))
 I id="" Q $G(out)
 I out="" S out=id_":"_^ILS("ILL",id,"DIR")_":"_^ILS("ILL",id,"STATUS")_":"_^ILS("ILL",id,"PARTNER") G MI1
 S out=out_"|"_id_":"_^ILS("ILL",id,"DIR")_":"_^ILS("ILL",id,"STATUS")_":"_^ILS("ILL",id,"PARTNER")
 G MI1
 ;
ILLQUEUE(token) ; librarian: pending queue "id:dir:partner|..."
 N out,id
 I '$$CAN^ILSPAT(token,"manageill") Q "err|auth"
 S out=""
 S id=""
IQ1 S id=$O(^ILSIDX("ILLQ","pending",id))
 I id="" Q $G(out)
 I out="" S out=id_":"_^ILS("ILL",id,"DIR")_":"_^ILS("ILL",id,"PARTNER") G IQ1
 S out=out_"|"_id_":"_^ILS("ILL",id,"DIR")_":"_^ILS("ILL",id,"PARTNER")
 G IQ1
 ;
ILLDEMO ; one demo ILL request
 K ^ILS("ILL"),^ILSIDX("ILLBYPAT"),^ILSIDX("ILLQ"),^ILS("SEQ","ILL")
 Q
