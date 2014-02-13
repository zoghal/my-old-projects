PRIV wy,wx,toor,a,ac,ch,s1,s2,f,n1,n2,flag,m
wx=55
wy=9
DEFI WIND calc FROM wy,wx TO wy+14,wx+21 NONE SHAD COLO g/n
ACTI WIND calc
toor="" 
FOR a=0 TO 21
  toor=toor+"±"
NEXT
FOR a=0 TO 14
 @ a,0 SAY toor COLO N/r
NEXT
@  1,3 SAY SPACE(16) 
@  3, 2 SAY " "+CHR(27)+" "
@  3, 7 SAY " "+CHR(26)+" "
@  3,12 SAY "  "
@  3,17 SAY "  "
@  5, 2 SAY "ESC"
@  5, 7 SAY "CE "
@  5,12 SAY " C "
@  7, 2 SAY " 7 "
@  7, 7 SAY " 8 "
@  7,12 SAY " 9 "
@  5,17 SAY " / "
@  9, 2 SAY " 4 "
@  9, 7 SAY " 5 "
@  9,12 SAY " 6 "
@  7,17 SAY " * "
@ 11, 2 SAY " 1 "
@ 11, 7 SAY " 2 "
@ 11,12 SAY " 3 "
@  9,17 SAY " - "
@ 13, 2 SAY "<ÄÙ"
@ 13, 7 SAY " 0 "
@ 13,12 SAY " = "
@ 11,17 SAY "   "
@ 12,17 SAY " + "
@ 13,17 SAY "   "
ch=0
s1=""
s2=""
f=""
flag=.T.
DO WHILE ch<>27
  @ 1,3 SAY SPACE(16) 
  IF flag
    @ 1,3 SAY ALLT(s2)
  ELSE
    @ 1,3 SAY ALLT(s1)
  ENDIF
  ch=INKEY(0,'h')
  IF ch>0
    ac=CHR(ch)
  ENDIF
  DO CASE 
    CASE ac="C" .OR. ac="c"
      s1=""
      s2=""
      f=""
      flag=.T.
    CASE ac="E" .OR. ac="e"
      s1=""
      flag=.F.
    CASE ch>=48 .AND. ch<=57  	&&***********NOMBERS*****************
      s1=s1+ac
      flag=.F.
    CASE ac="+" .OR. ac="-" .OR. ac="*" .OR. ac="/" .OR.  ac="=" .OR. ch=13 &&*****FUNCTION*******
      n1=VAL(s1)
      n2=VAL(s2)
      DO CASE 
        CASE f="+"
          n1=n2+n1
        CASE f="-"
          n1=n2-n1
        CASE f="*"
          n1=n2*n1
        CASE f="/"
          IF n1=0
            S2="E"
            s1=""
            flag=.T.
            LOOP
          ELSE
            n1=n2/n1
          ENDIF
      ENDCASE
      s2=STR(n1)
      s1=""
      flag=.T.
      IF ac="=" .OR. ch=13
        f=""
      ELSE
        f=ac
      ENDIF
    CASE ch=5		&&*************UP*****************
      IF wy>0
        wy=wy-1
        MOVE WIND calc TO wy,wx
      ELSE
        wy=0
      ENDIF
    CASE ch=24		&&*************DOWN*****************
      IF wy<19
        wy=wy+1
        MOVE WIND calc TO wy,wx
      ELSE
        wy=19
      ENDIF
    CASE ch=4		&&*************RIGHT****************
      IF wx<65
        wx=wx+1
        MOVE WIND calc TO wy,wx
      ELSE
        wx=65
      ENDIF
    CASE ch=19		&&*************LEFT*****************
      IF wx>0
        wx=wx-1
        MOVE WIND calc TO wy,wx
      ELSE
        wx=0
      ENDIF
  ENDCASE
ENDDO
DEAC WIND calc
