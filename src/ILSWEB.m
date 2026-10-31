ILSWEB ; m-ils web UI — GT.M socket transport (event-driven, GTMHTTP v4 pattern).
 ; The page/render core lives in ILSHTML (shared with the mJVM transport ILSWEBJ).
 ; Runs on GT.M only. Verified event-loop semantics (GT.M 7.2): /WAIT(n) blocks
 ; n seconds on the socket device; $KEY must be captured before device switches;
 ; the socket id is $KEY piece 2; per-event USE (CHSET="M") is required.
 S TCPIO="SOCKET"
 S TCPPORT=8282
 S $ET="G LRESUME^ILSWEB"
 O TCPIO:(LISTEN=TCPPORT_":TCP":delim=$C(13,10):ATTACH="ilsweb"):15:"socket" e  u $p w !,"ILSWEB: cannot open port ",TCPPORT q
 u TCPIO:(CHSET="M")
LISTEN ;
 S STOP=0
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
 . . . . d RESPOND^ILSHTML(line)
 . . . . c TCPIO:(SOCKET=cid)
 . . . . u TCPIO:(CHSET="M")
 . . i ev="EOF" d
 . . . c TCPIO:(SOCKET=cid)
 . . . u TCPIO:(CHSET="M")
 q
 ;
LRESUME ; listener error path: log and resume
 u $p w !,"ILSWEB: listener error: ",$ZS
 u TCPIO:(CHSET="M")
 g LISTEN
