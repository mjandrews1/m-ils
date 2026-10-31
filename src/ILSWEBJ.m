ILSWEBJ ; m-ils web UI — mJVM socket transport (mjvm#32). Same routes and pages as
 ; ILSWEB via the shared ILSHTML core; the accept/read/write loop uses mJVM's
 ; socket devices: OPEN "SOCKET:LISTEN=port:TCP", $SOCKWAIT(dev,secs) event pump
 ; (sets $KEY), $SOCKSELECT(dev,cid) to make a connection current.
 N ev,cid,cd,line,port
 S port=8282
 O 22:("SOCKET:LISTEN="_(port)_":TCP")
 U 22
 U 0
 W "ILSWEBJ listening on "
 W port
 W !
WJ1 ;
 S ev=$SOCKWAIT(22,30)
 I ev="" G WJ1
 S cid=$P(ev,"|",2)
 I $P(ev,"|")="CONNECT" G WJ1
 I $P(ev,"|")="EOF" G WJE
 S cd=$SOCKSELECT(22,cid)
 R line
 D RESPOND^ILSHTML(line)
 C cd
 U 22
 G WJ1
WJE ;
 S cd=$SOCKSELECT(22,cid)
 C cd
 U 22
 G WJ1
WJD ;
 C 22
 Q
