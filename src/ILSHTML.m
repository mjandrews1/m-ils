ILSHTML ; m-ils web rendering — pure functions shared by both transports (GT.M ILSWEB + mJVM ILSWEBJ)
 ; Routes (HTTP/1.0, Connection: close):
 ;   GET /  /catalog  /serials  /rec/CAT/<id>  /rec/SER/<id>  /auth/<ui>  /search/<word>
 ;
RESPOND(reqline) ; serve one request line (GET /path)
 N path,html
 S path=$P(reqline," ",2)
 I path="" S path="/"
 S html=$$HTML(path)
 W "HTTP/1.0 200 OK"_$C(13,10)
 W "Content-Type: text/html; charset=utf-8"_$C(13,10)
 W "Content-Length: "_$L(html)_$C(13,10)
 W "Connection: close"_$C(13,10)
 W $C(13,10)
 W html
 Q
 ;
HTML(path) ; route to content (pure; testable under both engines)
 I path="/" Q $$INDEX
 I path="/catalog" Q $$LISTHTML("CAT")
 I path="/serials" Q $$LISTHTML("SER")
 I $E(path,1,9)="/rec/CAT/" Q $$RECHTML("CAT",$E(path,10,$L(path)))
 I $E(path,1,9)="/rec/SER/" Q $$RECHTML("SER",$E(path,10,$L(path)))
 I $E(path,1,6)="/auth/" Q $$AUTHHTML($E(path,7,$L(path)))
 I $E(path,1,8)="/search/" Q $$SEARCHHTML($E(path,9,$L(path)))
 Q "<html><body><h1>m-ils</h1><p>not found: "_path_"</p></body></html>"
 ;
HEAD(page) ; page chrome
 Q "<html><head><title>m-ils</title></head><body>"_page_"<hr/><a href=""/"">index</a></body></html>"
 ;
INDEX() ;
 Q $$HEAD("<h1>m-ils — demonstration ILS</h1><p>CATLINE bibliographic records, SERLINE serial records, MeSH authority control.</p><ul><li><a href=""/catalog"">CATLINE catalog</a></li><li><a href=""/serials"">SERLINE serials</a></li></ul>")
 ;
LISTHTML(kind) ;
 N out,items,i,p,id,t
 S items=$$TITLES^ILSREC(kind)
 S out="<h1>"
 I kind="CAT" S out=out_"CATLINE records"
 I kind="SER" S out=out_"SERLINE records"
 S out=out_"</h1><ul>"
 S i=0
LH1 ;
 S i=(i)+1
 I i>$L(items,"|") G LHD
 S p=$P(items,"|",i)
 I p="" G LH1
 S id=$P(p,":",1)
 S t=$P(p,":",2,$L(p,":"))
 I t="" S t="(no title)"
 S out=out_"<li><a href="_$C(34)_"/rec/"_kind_"/"_id_$C(34)_">"_id_"</a>: "_t_"</li>"
 G LH1
LHD ;
 S out=out_"</ul>"
 Q $$HEAD(out)
 ;
RECHTML(kind,recid) ;
 N out,rec
 S rec=$$FORMAT^ILSREC(recid,kind)
 I rec="" Q $$HEAD("<p>no such record</p>")
 S out="<h1>"_kind_" "_recid_"</h1><pre>"_rec_"</pre>"
 Q $$HEAD(out)
 ;
AUTHHTML(ui) ;
 N out,body,links,tree,name
 S name=$$AUTHGET^ILSAUTH(ui)
 I name="" Q $$HEAD("<p>no such authority record</p>")
 S tree=$$TREEGET^ILSAUTH(ui)
 S links=$$RECAUTH^ILSAUTH(ui)
 S out="<h1>"_ui_": "_name_"</h1><p>tree: "_tree_"</p><ul>"
 S i=0
AH1 ;
 S i=(i)+1
 I i>$L(links,"|") G AHD
 S body=$P(links,"|",i)
 I body="" G AH1
 S out=out_"<li><a href="_$C(34)_"/rec/"_$P(body,":",1)_"/"_$P(body,":",2)_$C(34)_">"_body_"</a></li>"
 G AH1
AHD ;
 S out=out_"</ul>"
 Q $$HEAD(out)
 ;
SEARCHHTML(word) ;
 N out,ids,body
 S ids=$$TITLE^ILSEARCH(word)
 I ids="" Q $$HEAD("<p>no hits for "_word_"</p>")
 S out="<h1>hits for "_word_"</h1><ul>"
 S i=0
SH1 ;
 S i=(i)+1
 I i>$L(ids,"|") G SHD
 S body=$P(ids,"|",i)
 I body="" G SH1
 S out=out_"<li><a href="_$C(34)_"/rec/"_$P(body,":",1)_"/"_$P(body,":",2)_$C(34)_">"_body_"</a></li>"
SHD ;
 S out=out_"</ul>"
 Q $$HEAD(out)
 ;
