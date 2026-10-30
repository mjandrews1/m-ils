ILSWEB ; m-ils web UI — GT.M socket server (event-driven, GTMHTTP v4 pattern)
 ; Same domain core (ILSREC/ILSAUTH/ILSEARCH) exposed over HTTP. Runs on
 ; GT.M only (mJVM has no socket OPEN); the TUI covers mJVM.
 ; Routes (HTTP/1.0, Connection: close):
 ;   GET /                  index page
 ;   GET /catalog           CATLINE titles
 ;   GET /serials           SERLINE titles
 ;   GET /rec/CAT/<id>      line-mode record
 ;   GET /rec/SER/<id>      line-mode record
 ;   GET /auth/<ui>         authority + linked records
 ;   GET /search/<word>     title-word search
 ; Verified event-loop semantics (GT.M 7.2): /WAIT(n) blocks n seconds on
 ; the socket device; $KEY must be captured before device switches; the
 ; socket id is $KEY piece 2; per-event USE (CHSET="M") is required.
 S TCPIO="SOCKET"
 S TCPPORT=8282
 S $ET="G LRESUME^ILSWEB"
 O TCPIO:(LISTEN=TCPPORT_":TCP":delim=$C(13,10):ATTACH="ilsweb"):15:"socket" e  u $p w !,"ILSWEB: cannot open port ",TCPPORT q
 u TCPIO:(CHSET="M")
LISTEN ;
 f  q:STOP=1  d
 . w /WAIT(10)
 . i $KEY]"" d
 . . s key=$KEY,ev=$p(key,"|"),cid=$p(key,"|",2)
 . . i ev="CONNECT" d
 . . . u TCPIO:(SOCKET=cid)
 . . . u TCPIO:(CHSET="M")
 . . i ev="READ" d
 . . . u TCPIO:(SOCKET=cid)
 . . . r line:0
 . . . i $t d
 . . . . d $$RESPOND(line)
 . . . . c TCPIO:(SOCKET=cid)
 . . . u TCPIO:(CHSET="M")
 . . i ev="EOF" d
 . . . c TCPIO:(SOCKET=cid)
 . . . u TCPIO:(CHSET="M")
 q
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
INDEX ;
 Q $$HEAD("<h1>m-ils — demonstration ILS</h1><p>CATLINE bibliographic records, SERLINE serial records, MeSH authority control.</p><ul><li><a href=""/catalog"">CATLINE catalog</a></li><li><a href=""/serials"">SERLINE serials</a></li></ul>")
 ;
LISTHTML(kind) ;
 N out,items,i,p,id,t
 S items=$$TITLES^ILSREC(kind)
 S out="<h1>"
 I kind="CAT" S out=out_"CATLINE records"
 I kind="SER" S out=out_"SERLINE records"
 S out=out_"</h1><ul>"
 F i=1:1:$L(items,"|") D
 . S p=$P(items,"|",i)
 . I p="" Q
 . S id=$P(p,":",1)
 . S t=$P(p,":",2,$L(p,":"))
 . I t="" S t="(no title)"
 . S out=out_"<li><a href=""/rec/"_kind_"/"_id_""">"_id_"</a>: "_t_"</li>"
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
 F i=1:1:$L(links,"|") D
 . S body=$P(links,"|",i)
 . I body="" Q
 . S out=out_"<li><a href=""/rec/"_$P(body,":",1)_"/"_$P(body,":",2)_""">"_body_"</a></li>"
 S out=out_"</ul>"
 Q $$HEAD(out)
 ;
SEARCHHTML(word) ;
 N out,ids,body
 S ids=$$TITLE^ILSEARCH(word)
 I ids="" Q $$HEAD("<p>no hits for "_word_"</p>")
 S out="<h1>hits for "_word_"</h1><ul>"
 F i=1:1:$L(ids,"|") D
 . S body=$P(ids,"|",i)
 . I body="" Q
 . S out=out_"<li><a href=""/rec/"_$P(body,":",1)_"/"_$P(body,":",2)_""">"_body_"</a></li>"
 S out=out_"</ul>"
 Q $$HEAD(out)
 ;
LRESUME ; listener error path: log and resume
 u $p w !,"ILSWEB: listener error: ",$ZS
 u TCPIO:(CHSET="M")
 g LISTEN
