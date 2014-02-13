SET ECHO off
SET TALK off
CLEA ALL
SET BLIN OFF
PUBL delay
PRIV pm,pn,a,toor,y,wx,wy,sc_go,sc_d
CLEA

DO chif IN tools
DO n_open IN tools
SELE tools
GOTO 1
IF nomb=9
  DO indx IN tools
  DO n_index IN tools
ELSE
  REPL nomb WITH 9
ENDIF

delay=95

IF .NOT. PRINTSTATUS()
  DO ok IN tools WITH ".–¨þ÷ öªø¤ ‘þ –¨þ÷ ñ¬ø ¤—øþ•õ‘î ù“ ¤ð•‘"
  DO q IN tools
ENDIF

toor=""
FOR a=1 TO 80 
  toor=toor+"±"
NEXT
FOR a=0 TO 24
  @ a,0 SAY toor COLO n/g
NEXT
@ 24, 0 SAY SPACE(80) COLO r/g
@  2,73 SAY "" COLO g/n
@  3,73 SAY "" COLO g/n
@  0, 0 SAY PADC("(ñøî¨‘“ –õ¨ì) ö‘—‘“î ö‘õþ¨ –î¤ª",80) COLO r/g

DO get_date IN tools

@  3,59 SAY " –‘äò¯ ¢ø¤ø "
@  3,37 SAY " –‘äò¯ –ê‘þ¤¢ "
@  3,22 SAY " –òþú¨— "
@  3, 6 SAY " šø¤¡ "
pm=1
DIME pn[4]
pn[1]=0
pn[2]=0
pn[3]=0
pn[4]=0
DIME wy[4]
wy[1]=4
wy[2]=5
wy[3]=1
wy[4]=1
DIME wx[4]
wx[1]=18
wx[2]=21
wx[3]=15
wx[4]=8

DEFI WIND enter FROM 4,69-wx[1] TO  6+wy[1],71 DOUB SHAD COLO w+/b
DEFI WIND repor FROM 4,49-wx[2] TO  6+wy[2],51 DOUB SHAD COLO w+/b 
DEFI WIND wells FROM 4,27-wx[3] TO  6+wy[3],29 DOUB SHAD COLO w+/b
DEFI WIND goout FROM 4, 9-wx[4] TO  6+wy[4],11 DOUB SHAD COLO w+/b
DO WHILE .T.
  DO WHILE .T. 
    DEAC WIND ALL
    @ 3,59 FILL TO 3,71 COLO n+/g
    @ 3,37 FILL TO 3,51 COLO n+/g
    @ 3,22 FILL TO 3,29 COLO n+/g
    @ 3, 6 FILL TO 3,11 COLO n+/g
    DO CASE 
      CASE pm=1
        @ 3,59 FILL TO 3,71 COLO w+/b
        ACTI WIND enter
        @ 0,0 SAY "¢‹‹‹þ¢‹‹‹‹› ø¤¢ø‹‹¡"
        @ 1,0 SAY "¢‹‹‹þ¢‹‹‹‹› ¤‘‹‹‹‹“"
        @ 2,0 SAY "¢‹‹‹þ¢‹‹‹‹› ý¤‹—‹ªõ"
        @ 3,0 SAY "©ø¤‹ê ï¤‹‹“ ¤ø¢‹‹‹¬"
        @ 4,0 SAY CHR(27)+" ñø‹î‹¨‘‹“ ô‘‹›‹÷"
     CASE pm=2
        @ 3,37 FILL TO 3,51 COLO w+/b
        ACTI WIND repor
        @ 0,0 SAY "‘ûø¤¢ø¡ –¨þó ù“ ùã›¤õ"
        @ 1,0 SAY "‘û¤‘‹‹“ –¨þó ù“ ùã›¤õ"
        @ 2,0 SAY "ý¤‹—‹ªõ –¨þó ù“ ùã›¤õ"
        @ 3,0 SAY "©ø¤‹‹‹ê –¨þó ù“ ùã›¤õ"
        @ 4,0 SAY CHR(27)+"ñøî¨‘“ –¨þó ù“ ùã›¤õ"
        @ 5,0 SAY "©ø¤ê ï¤“ ñøî¨‘“­“ì ”‘"
      CASE pm=3
        @ 3,22 FILL TO 3,29 COLO w+/b
        ACTI WIND wellS
        @ 0,0 SAY "ü÷‘“þ—ª• ù‹þ‹ú‹—"
        @ 1,0 SAY "ü‹‹¨‘‹¨ –¤þõã—"
      CASE pm=4
        @ 3, 6 FILL TO 3,11 COLO w+/b
        ACTI WIND goout
        @ 0,0 SAY "ôŽ¢ šø¤¡"
        @ 1,0 SAY "–ìøõ šø¤¡"
    ENDCASE
    DO WHILE .T.
      @ 0,0 FILL TO wy[pm],wx[pm] COLO w+/b
      @ pn[pm],0 FILL TO pn[pm],wx[pm] COLO w+/r
      ch=GETCH('h')
      DO CASE 
        CASE ch=5
          IF pn[pm]>0 
            pn[pm]=pn[pm]-1
          ELSE
            pn[pm]=wy[pm]
          ENDIF
        CASE ch=24
          IF pn[pm]<wy[pm]
            pn[pm]=pn[pm]+1
          ELSE
            pn[pm]=0
          ENDIF
        CASE ch=4
          IF pm>1
            pm=pm-1
          ELSE
            pm=4
          ENDIF
          EXIT
        CASE ch=19
          IF pm<4
            pm=pm+1
          ELSE
            pm=1
          ENDIF
          EXIT
        CASE ch=13
         EXIT
      ENDCASE 
    ENDDO
    IF ch=13
      EXIT
    ENDIF
  ENDDO
  DO CASE 
    CASE pm=1 .AND. pn[pm]=0	&&  ¢‹‹‹þ¢‹‹‹‹› ø¤¢ø‹‹¡
      DO n_car
    CASE pm=1 .AND. pn[pm]=1	&&  ¢‹‹‹þ¢‹‹‹‹› ¤‘‹‹‹‹“
      DO n_item
    CASE pm=1 .AND. pn[pm]=2	&&  ¢‹‹‹þ¢‹‹‹‹› ý¤‹—‹ªõ
      DO n_cstm
    CASE pm=1 .AND. pn[pm]=3	&&  ©ø¤‹ê ï¤‹‹“ ¤ø¢‹‹‹¬
      DO n_sail
    CASE pm=1 .AND. pn[pm]=4	&&  ñø‹î‹¨‘‹“ ô‘‹›‹÷
      DO bskl
      &&_____________________________________________________
    CASE pm=2 .AND. pn[pm]=0	&&  ‘ûø¤¢ø¡ –¨þó ù“ ùã›¤õ
      DO l_car
    CASE pm=2 .AND. pn[pm]=1	&&  ‘û¤‘‹‹“ –¨þó ù“ ùã›¤õ
      DO l_item
    CASE pm=2 .AND. pn[pm]=2	&&  ý¤‹—‹ªõ –¨þó ù“ ùã›¤õ
      DO l_cstm
    CASE pm=2 .AND. pn[pm]=3	&&  ©ø¤‹‹‹ê –¨þó ù“ ùã›¤õ
      DO l_sail WITH .T.
    CASE pm=2 .AND. pn[pm]=4	&&  ñøî¨‘‹“ –¨þó ù“ ùã›¤õ
      DO bskl_menu
    CASE pm=2 .AND. pn[pm]=5	&&  ©ø¤ê ï¤“ ñøî¨‘“­“ì ”‘
      DO prn_bskl
      &&_____________________________________________________
    CASE pm=3 .AND. pn[pm]=0	&&  ü÷‘“þ—ª‹• ùþú‹—
      SAVE SCRE TO s_wls
      DEAC WIND wells
      SAVE SCRE TO s_mn
      DO bs_backup IN tools
      REST SCRE FROM s_mn
      ACTI WIND wells
      REST SCRE FROM s_wls
    CASE pm=3 .AND. pn[pm]=1 	&&  ü¨‘‹‹¨ –¤þõã—
      DO n_index IN tools
    CASE pm=4 .AND. pn[pm]=0	&&  ôŽ¢ šø¤¡
      DO q IN tools
    CASE pm=4 .AND. pn[pm]=1	&&  –ìøõ šø¤¡
      DEAC WIND all
      SELE tools
      GOTO 1
      REPL nomb WITH 0
      SET COLO TO w+/b
      ?SYS(2017)
      CANC
  ENDCASE
ENDDO


&&*********************************
PROC bskl
PRIV m,bskl
  DEFI WIND w_bs FROM 9,38 TO 14,58 DOUB SHAD COLO w+/b
  ACTI WIND w_bs
  DO WHILE .T.
    DO WHILE .T.
      SET COLO TO w+/b,w+/r
      @ 0,0 PROM "ü‹ó‘‹‹‹‹‹¡ ö‹þ‹ª‘‹õ"
      @ 1,0 PROM "–òø‹‹¬‹Ÿ‹õ ñø‹î‹¨‘“"
      @ 2,0 PROM "ùþóø ¢øõ ñø‹î‹¨‘“"
      @ 3,0 PROM "ñøî¨‘“ ­“ì ¢¢›õ ”‘"
      MENU TO m
      IF LAST()=13 
        EXIT
      ENDIF
      IF LAST()=27
        DEAC WIND w_bs
        RETU
      ENDIF
    ENDDO
    DO CASE 
      CASE m=1
        DO c_empty
      CASE m=2
        DO n_prod
      CASE m=3
        DO primary
      CASE m=4
        DO reprn_prod
    ENDCASE
  ENDDO
      

&&*********************************
PROC bskl_menu
PRIV m,s,bd,ed
  DEFI WIND w_lbs FROM 8,09 TO 14,40 DOUB SHAD COLO w+/b
  ACTI WIND w_lbs
  DO WHILE .T.
    DO WHILE .T.
      SET COLO TO w+/b,w+/r
      @ 0,0 PROM "‘ú‹‹—‹‹‹÷‘‹‹‹— ¢‹‹‹‹—‹‹‹“¥"
      @ 1,0 PROM "  /  /   þ¤‘—‘— ¢‹‹‹‹—‹‹‹“¥"
      @ 2,0 PROM "‘ú‹‹—‹‹‹÷‘‹‹‹—  /  /   þ¤‘—¥"
      @ 3,0 PROM "  /  /   þ¤‘—‘—  /  /   þ¤‘—¥"
      @ 4,0 PROM "        ©ø¤êï¤“ ¯ø“¤õý‘úóøî¨‘“"
      MENU TO m
      IF LAST()=13 
        EXIT
      ENDIF
      IF LAST()=27
        DEAC WIND w_lbs
        RETU
      ENDIF
    ENDDO
    SELE weight
    ed="  /  /  "
    bd="  /  /  "
    s=0
    DO CASE 
      CASE m=1
        SET FILT TO 
      CASE m=2
        SET COLO TO w+/*r
        DO WHILE .T.
          ed=FDTE(1,0,ed)
          IF LAST()=13 .OR. LAST()=27
            EXIT
          ENDIF
        ENDDO
        SET FILT TO dte<=ed
      CASE m=3
        SET COLO TO w+/*r
        DO WHILE .T.
          bd=FDTE(2,15,bd)
          IF LAST()=13 .OR. LAST()=27
            EXIT
          ENDIF
        ENDDO
        SET FILT TO dte>=bd
      CASE m=4
        SET COLO TO w+/*r
        DO WHILE .T.
          bd=FDTE(3,15,bd)
          IF LAST()=13 .OR. LAST()=27
            EXIT
          ENDIF
        ENDDO
        DO WHILE .T.
          ed=FDTE(3, 0,ed)
          IF LAST()=13 .OR. LAST()=27
            EXIT
          ENDIF
        ENDDO
        SET FILT TO dte>=bd .AND. dte<=ed
      CASE m=5  
        SET COLO TO w+/*r
        DO WHILE .T.
          s=FNUM(4,0,s,8)
          IF LAST()=13 .OR. LAST()=27
            EXIT
          ENDIF
        ENDDO
        SET FILT TO s=sail
    ENDCASE
    IF LAST()=13
      DO l_bskl
    ENDIF
    IF LAST()=27
      EXIT
    ENDIF
  ENDDO
         
         
&&*****************************************
&&*****************************************         
PROC reprn_prod
PRIV max,a,cnt,bx,by,mx,my,data,p,l
  max=13
  DIME data[max]
  mx=74
  my=22
  bx=(80-mx)/2
  by=(25-my)/2
  DEFI WIND w_reprn FROM by,bx TO by+my-1,mx+bx-1 NONE SHAD COLO w+/b
  ACTI WIND w_reprn

  @ 0, 0 SAY PADC("©ø¤ê ¤ø—î‘ê ø ñøî¨‘“ ­“ì ¢¢›õ ”‘",mx) COLO w+/*b
  @ 1, 0 TO 24,79 DOUB COLO w+/b
  @  2,62 SAY ":ñ‘þ¤¨ù¤‘õª" COLO w+/br
  @  3, 0 SAY "ÇÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄ¶"
  @  4,62 SAY ":©ø¤êï¤“ ¢î" COLO w+/br
  @  6,62 SAY ":ùþóø¤¢ìõ" COLO w/br
  @  7, 0 SAY "ÇÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄ¶"
  @  8,62 SAY ":ø¤¢ø‹¡ ¢‹î" COLO w+/br
  @ 10,62 SAY ":ø¤¢ø‹¡ ö¥ø" COLO w/br
  @ 11, 0 SAY "ÇÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄ¶"
  @ 12,62 SAY ":¤‘“ ‘“ ö¥ø" COLO w+/br
  @ 14,62 SAY ":«ó‘¡ öþ¥ø—" COLO w+/br
  @ 16,62 SAY ":ñì÷ñõŸ–î¤ª" COLO w+/br
  @ 17, 0 SAY "ÇÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄ¶"
  @ 18,62 SAY ":ñø¬‹Ÿõ ¢‹î" COLO w+/br
  @ 19, 0 SAY "ÇÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄ¶"
  @ 20,62 SAY "¤ø—î‘êù¤‘õª" COLO w+/br

  @  6,27 SAY ":ù¢‹÷‘õþì‘“" COLO w/br
  @  8,27 SAY ":ø¤¢ø¡ù¤‘õª" COLO w/br
  @ 10,27 SAY ":ø¤¢ø¡áø‹‹÷" COLO w/br
  @ 12,27 SAY ": ‹‹þ¤‘‹‹‹—" COLO w+/br
  @ 14,27 SAY ":öþ¥ø— –ä‘¨" COLO w+/br
  @ 16,27 SAY ":ù¢÷÷¤ ô‘÷" COLO w+/br
  @ 18,27 SAY ":ñø¬Ÿõ ô‘‹÷" COLO w/br
  @ 20,27 SAY ":ö— ¤‹û  ¤÷" COLO w+/br

  SELE sail 
  SET FILT TO
  data[ 1]=0
  data[ 2]=0
  data[ 3]=0
  data[ 4]=0
  data[ 5]="  /  /  "
  data[ 6]="  :  :  "
  data[ 7]=SPACE(20)
  data[ 8]=SPACE(25)
  data[ 9]=0
  data[10]=0
  data[11]=0
  data[12]=0
  data[13]=0
  w=0
  =FPNO(10,20,0,6,9)
  SET COLO TO w+/r
  p=1
  DO WHILE .T.
    &&_____________PRINT CAR_______________
    IF data[3]=0
      @  8, 6 SAY SPACE(20) COLO w/*b
      @ 10, 1 SAY SPACE(25)COLO w/*b
      @ 10,56 SAY SPACE( 5) COLO w/*b
      nc=SPACE(20)
    ELSE
      SELE encar
      SET ORDE TO c
      SEEK data[3]
      IF FOUND() 
        @  8, 6 SAY nomb COLO w/*b
        @ 10, 1 SAY kind COLO w/*b
        @ 10,56 SAY FNTS(data[13],5) COLO w/*b
        nc=nomb
      ELSE 
        @  8, 6 SAY SPACE(20) COLO w/*b
        @ 10, 1 SAY SPACE(25) COLO w/*b
        @ 10,56 SAY SPACE( 5) COLO w/*b
        nc=SPACE(20)
      ENDIF
    ENDIF
    &&^^^^^^^^^^^^^PRINT CAR^^^^^^^^^^^^^^^^
    &&_____________PRINT ITEM______________
    IF data[9]=0
      @ 18, 1 SAY SPACE(25) COLO w/*b
      it=SPACE(25)
    ELSE
      SELE enitem
      SET ORDE TO c
      SEEK data[9]
      IF FOUND() 
        @ 18, 1 SAY name COLO w/*b
        it=name
      ELSE 
        @ 18, 1 SAY SPACE(25) COLO w/*b
        it=SPACE(25)
      ENDIF
    ENDIF
    &&^^^^^^^^^^^^^PRINT ITEM^^^^^^^^^^^^^^^
    &&_____________PRINT SAIL______________
    IF data[2]=0
      @ 6,52 SAY SPACE( 9) COLO w/*b
      @ 6,17 SAY SPACE( 9) COLO w/*b
    ELSE
      SELE sail
      SET ORDE TO c
      SEEK data[2]
      IF FOUND() 
        =FPNO(6,52,amon,9,9)
        =FPNO(6,17,data[12],9,9)
      ELSE 
        @ 6,52 SAY SPACE( 9) COLO w/*b
        @ 6,17 SAY SPACE( 9) COLO w/*b
        data[12]=0
      ENDIF
    ENDIF
    &&^^^^^^^^^^^^^PRINT SAIL^^^^^^^^^^^^^^^^
    @  2,53 SAY FNTS(data[1],8) COLO w+/*b
    @  4,53 SAY FNTS(data[2],8) COLO w+/*b
    @  8,58 SAY FNTS(data[3],3) COLO w+/*b
    =FPNO(14,55,data[4],6,9)
    =FPNO(12,55,w,6,9)
    @ 12,18 SAY data[5] COLO w+/*b
    @ 14,18 SAY data[6] COLO w+/*b
    @ 16,41 SAY data[7] COLO w+/*b
    @ 16, 1 SAY data[8] COLO w+/*b
    @ 18,58 SAY FNTS(data[9],3) COLO w+/*b
    @ 20,53 SAY FNTS(data[10],8) COLO w+/*b
    =FPNO(20,20,data[11],6,9)
    SET COLO TO w+/r
    DO CASE 
      CASE p=1
        data[p]=FNUM(2,53,data[p],8)
        IF LAST()=13
          IF data[p]=0
            DO ok IN tools WITH "¢øª ”þ‘— ¢þ‘“ ñ‘þ¤¨ ù¤‘õª"
            LOOP
          ENDIF
          SELE weight
          SET ORDE TO c
          SEEK data[p]
          IF FOUND()
            SCAT TO data
            w=data[4]+data[13]
            SET FILT TO data[1]=code
          ELSE
            DO ok IN tools WITH "¢þ÷î üã¨ ù¤‘“ø¢ !¢ª÷ ¢þ• ¤à÷ ¢¤øõ ñ‘þ¤¨ ù¤‘õª"
            LOOP
          ENDIF
        ENDIF
      CASE p=2
        p=1
        m=1
        SET COLO TO w+/gr,w+/b
        @ my-1,3 PROM "–ªð¥‘“"
        @ my-1,12 PROM "–‘äò¯ ”‘"
        DO WHILE .T.
          MENU TO m
          IF LAST()=27 .OR. LAST()=13
            EXIT
          ENDIF
        ENDDO
        @ my-1,3 SAY "ÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍ" COLO w+/b
        IF LAST()=27 .OR. (LAST()=13 .AND. m=2)
          LOOP
        ENDIF
        SELE weight
        GOTO TOP
        COUNT TO cnt
        GOTO TOP
        FOR a=1 TO cnt
          SCAT TO data
          IF data[10]=-1
            DO prn_prim WITH data[1],nc,data[4],data[5],data[6],data[8],it,data[13]
          ELSE
            DO prn_prod WITH data[1],data[2],nc,data[4],data[5],data[6],data[7],data[8],it,data[10],data[11],data[12],data[13]
          ENDIF
        NEXT
        data[ 1]=0
        data[ 2]=0
        data[ 3]=0
        data[ 4]=0
        data[ 5]="  /  /  "
        data[ 6]="  :  :  "
        data[ 7]=SPACE(20)
        data[ 8]=SPACE(25)
        data[ 9]=0
        data[10]=0
        data[11]=0
        data[12]=0
        data[13]=0
        =FPNO(10,20,0,6,9)
        LOOP
    ENDCASE 
    l=LAST()
    DO CASE 
      CASE l=13
        p=p+1
      CASE l=27
        DEAC WIND w_reprn
        RETU
    ENDCASE
  ENDDO
    
      
        





PROC GARB
  @ 12,0 SAY PADC("....¢þ÷î ¤“¬ üõî ¢øªþõ ü¨¤‘ê ¤ð•‘",80)
  !lqlset >>NUL
