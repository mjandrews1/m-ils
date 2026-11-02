ILSCIRC ; m-ils circulation — minimum viable (MVP expansion, m-ils#1)
 ; Stores:
 ;   ^ILS("ITEM",barcode)=catid ; ^ILSIDX("ITEMBYBIB",catid,barcode)=""
 ;   ^ILS("LOAN",id,"PATRON"|"ITEM"|"OUT"|"DUE"|"RETURNED"|"RENEWED")=v
 ;   ^ILSIDX("LOANBYITEM",barcode,loanid)="" ; ^ILSIDX("LOANBYPAT",patid,loanid)=""
 ;   ^ILS("HOLD",id,"PATRON"|"CATID"|"PLACED"|"STATUS")=v   STATUS queued|filled|cancelled
 ;   ^ILSIDX("HOLDBYCAT",catid,placed,id)="" ; ^ILSIDX("HOLDBYPAT",patid,id)=""
 ;   ^ILS("SEQ","LOAN") / ^ILS("SEQ","HOLD") counters
 ; Rules (MVP): loan period = 14d default; renew once, blocked by a queued hold;
 ; checkout blocked while an open loan exists; checkin fills the first queued hold.
 ;
LOANDAYS() Q 14
 ;
OPENLOAN(barcode) ; open loan id for item, "" if none
 N id
 S id=""
OL1 S id=$O(^ILSIDX("LOANBYITEM",barcode,id))
 I id="" Q ""
 I $G(^ILS("LOAN",id,"RETURNED"))'="" G OL1
 Q $G(id)
 ;
QUEUEDHOLD(catid) ; first queued hold id for bib (FIFO by PLACED), "" if none
 N placed,id
 S placed=$O(^ILSIDX("HOLDBYCAT",catid,""))
 I placed="" Q ""
 S id=""
QH1 S id=$O(^ILSIDX("HOLDBYCAT",catid,placed,id))
 I id="" Q ""
 I $G(^ILS("HOLD",id,"STATUS"))="queued" Q $G(id)
 G QH1
 ;
ADDITEM(token,catid,barcode) ; librarian: register a copy. Returns ok|barcode or err|...
 I '$$CAN^ILSPAT(token,"manageitems") Q "err|auth"
 I barcode="" Q "err|barcode"
 I catid="" Q "err|catid"
 I $D(^ILS("ITEM",barcode)) Q "err|exists"
 S ^ILS("ITEM",barcode)=catid
 S ^ILSIDX("ITEMBYBIB",catid,barcode)=""
 Q "ok|"_barcode
 ;
ITEMS(catid) ; barcodes of a bib, |-joined
 N out,bc
 S out=""
 S bc=""
IT1 S bc=$O(^ILSIDX("ITEMBYBIB",catid,bc))
 I bc="" Q $G(out)
 I out="" S out=bc G IT1
 S out=out_"|"_bc
 G IT1
 ;
CHECKOUT(token,barcode) ; librarian or patron self-service per role guard
 N lid,pat,now,due
 I '$$CAN^ILSPAT(token,"checkout") Q "err|auth"
 I '$D(^ILS("ITEM",barcode)) Q "err|noitem"
 I $$OPENLOAN(barcode)'="" Q "err|onloan"
 S lid=$$NXTID^ILSPAT("LOAN")
 S pat=$$CHECK^ILSPAT(token)
 S now=$$NOW^ILSPAT()
 S due=now+($$LOANDAYS()*86400)
 S ^ILS("LOAN",lid,"PATRON")=pat
 S ^ILS("LOAN",lid,"ITEM")=barcode
 S ^ILS("LOAN",lid,"OUT")=now
 S ^ILS("LOAN",lid,"DUE")=due
 S ^ILS("LOAN",lid,"RENEWED")=0
 S ^ILSIDX("LOANBYITEM",barcode,lid)=""
 S ^ILSIDX("LOANBYPAT",pat,lid)=""
 Q "ok|"_lid
 ;
CHECKIN(token,barcode) ; librarian: close open loan, fill first queued hold
 N lid,bib,hid
 I '$$CAN^ILSPAT(token,"checkin") Q "err|auth"
 S lid=$$OPENLOAN(barcode)
 I lid="" Q "err|noloan"
 S ^ILS("LOAN",lid,"RETURNED")=$$NOW^ILSPAT()
 S bib=$G(^ILS("ITEM",barcode))
 S hid=$$QUEUEDHOLD(bib)
 I hid'="" S ^ILS("HOLD",hid,"STATUS")="filled"
 Q "ok|"_lid
 ;
RENEW(token,loanid) ; owner-patron or librarian; once; blocked by queued hold
 N pat,bib,hid
 I '$$CAN^ILSPAT(token,"renew") Q "err|auth"
 I $G(^ILS("LOAN",loanid,"RETURNED"))'="" Q "err|returned"
 I $G(^ILS("LOAN",loanid,"RENEWED")) Q "err|renewed"
 S pat=$$CHECK^ILSPAT(token)
 I pat'=$G(^ILS("LOAN",loanid,"PATRON")) I $$ROLE^ILSPAT(token)'="librarian" Q "err|owner"
 S bib=$G(^ILS("ITEM",$G(^ILS("LOAN",loanid,"ITEM"))))
 S hid=$$QUEUEDHOLD(bib)
 I hid'="" Q "err|holdqueued"
 S ^ILS("LOAN",loanid,"DUE")=($G(^ILS("LOAN",loanid,"DUE")))+($$LOANDAYS()*86400)
 S ^ILS("LOAN",loanid,"RENEWED")=1
 Q "ok|"_loanid
 ;
HOLD(token,catid) ; patron places a hold on a bib
 N hid,now,pat
 I '$$CAN^ILSPAT(token,"hold") Q "err|auth"
 S hid=$$NXTID^ILSPAT("HOLD")
 S now=$$NOW^ILSPAT()
 S pat=$$CHECK^ILSPAT(token)
 S ^ILS("HOLD",hid,"PATRON")=pat
 S ^ILS("HOLD",hid,"CATID")=catid
 S ^ILS("HOLD",hid,"PLACED")=now
 S ^ILS("HOLD",hid,"STATUS")="queued"
 S ^ILSIDX("HOLDBYCAT",catid,now,hid)=""
 S ^ILSIDX("HOLDBYPAT",pat,hid)=""
 Q "ok|"_hid
 ;
ITEMSTATUS(barcode) ; available|on-loan|reserved|missing
 N bib
 I '$D(^ILS("ITEM",barcode)) Q "missing"
 I $$OPENLOAN(barcode)'="" Q "on-loan"
 S bib=$G(^ILS("ITEM",barcode))
 I $$QUEUEDHOLD(bib)'="" Q "reserved"
 I $$FILLEDHOLD(bib) Q "reserved"
 Q "available"
 ;
FILLEDHOLD(catid) ; any filled hold for bib
 N placed,id
 S placed=$O(^ILSIDX("HOLDBYCAT",catid,""))
 I placed="" Q 0
 S id=""
FH1 S id=$O(^ILSIDX("HOLDBYCAT",catid,placed,id))
 I id="" Q 0
 I $G(^ILS("HOLD",id,"STATUS"))="filled" Q 1
 G FH1
 ;
MYLOANS(token) ; open loans of patron: "lid:barcode:due|..."
 N pat,out,lid
 S pat=$$CHECK^ILSPAT(token)
 I pat="" Q ""
 S out=""
 S lid=""
ML1 S lid=$O(^ILSIDX("LOANBYPAT",pat,lid))
 I lid="" Q $G(out)
 I $G(^ILS("LOAN",lid,"RETURNED"))'="" G ML1
 I out="" S out=lid_":"_^ILS("LOAN",lid,"ITEM")_":"_^ILS("LOAN",lid,"DUE") G ML1
 S out=out_"|"_lid_":"_^ILS("LOAN",lid,"ITEM")_":"_^ILS("LOAN",lid,"DUE")
 G ML1
 ;
MYHOLDS(token) ; holds of patron: "hid:catid:status|..."
 N pat,out,hid
 S pat=$$CHECK^ILSPAT(token)
 I pat="" Q ""
 S out=""
 S hid=""
MH1 S hid=$O(^ILSIDX("HOLDBYPAT",pat,hid))
 I hid="" Q $G(out)
 I out="" S out=hid_":"_^ILS("HOLD",hid,"CATID")_":"_^ILS("HOLD",hid,"STATUS") G MH1
 S out=out_"|"_hid_":"_^ILS("HOLD",hid,"CATID")_":"_^ILS("HOLD",hid,"STATUS")
 G MH1
 ;
OVERDUE(token) ; librarian: "lid|barcode|patron|due|..." for open loans past due
 N lid,out,now
 I '$$CAN^ILSPAT(token,"overdue") Q "err|auth"
 S now=$$NOW^ILSPAT()
 S out=""
 S lid=""
OV1 S lid=$O(^ILS("LOAN",lid))
 I lid="" Q $G(out)
 I $G(^ILS("LOAN",lid,"RETURNED"))'="" G OV1
 I ($G(^ILS("LOAN",lid,"DUE"))+0)>=now G OV1
 I out="" S out=lid_"|"_^ILS("LOAN",lid,"ITEM")_"|"_^ILS("LOAN",lid,"PATRON")_"|"_^ILS("LOAN",lid,"DUE") G OV1
 S out=out_"|"_lid_"|"_^ILS("LOAN",lid,"ITEM")_"|"_^ILS("LOAN",lid,"PATRON")_"|"_^ILS("LOAN",lid,"DUE")
 G OV1
 ;
CIRCDEMO ; seed items for the demo records (CAT 1, CAT 2) — direct store writes
 K ^ILS("ITEM"),^ILSIDX("ITEMBYBIB"),^ILS("LOAN"),^ILS("HOLD")
 K ^ILSIDX("LOANBYITEM"),^ILSIDX("LOANBYPAT"),^ILSIDX("HOLDBYCAT"),^ILSIDX("HOLDBYPAT")
 K ^ILS("SEQ","LOAN"),^ILS("SEQ","HOLD")
 S ^ILS("ITEM","B1")=1
 S ^ILSIDX("ITEMBYBIB",1,"B1")=""
 S ^ILS("ITEM","B2")=1
 S ^ILSIDX("ITEMBYBIB",1,"B2")=""
 S ^ILS("ITEM","B3")=2
 S ^ILSIDX("ITEMBYBIB",2,"B3")=""
 Q
