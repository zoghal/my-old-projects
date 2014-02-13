PARA y,x,str
PRIV eng,str,p,flag,a,ch,blx,bly,bxt,byt,aux,f12
eng="qwertyuiopasdfghjklzxcvbnmQWERTYUIOPASDFGHJKLZXCVBNM"
eng=eng+chr(34)+"'"+" [];,./-=\!#$%^&*()_+\{}:<>?|"+"@"
&&str=dte
&&******************
@ y,x SAY str
p=7
f12=.T.
=INSM(.T.)
DO WHILE .t.
  @ y,x SAY str
  @ y,x+p-1 SAY ""
  ch=GETCH('s')
  IF ch<0
    EXIT
  ENDIF
  flag=.f.
  FOR a=1 TO 84
    IF SUBS(eng,a,1)=CHR(ch)
      ??CHR(7)
      flag=.T.
      EXIT
    ENDIF
  NEXT  
  IF flag
    LOOP
  ENDIF
  DO CASE 
    CASE ch=134 					&&*******F12************
      str="  /  /  "
      p=7
      f12=.F.
      LOOP
    CASE ch=19					&&*******LEFT*************
      DO CASE 
        CASE p=1
          p=1
        CASE p=2 .OR. p=5 .OR. p=8
          p=p-1
        OTHER
          p=p-2
      ENDCASE
      f12=.F.
      LOOP
    CASE ch=4					&&*******RIGHT**************
      DO CASE 
        CASE p=8
          p=8
        CASE p=7 .OR. p=4 .OR. p=1
          p=p+1
        OTHER
          p=p+2
      ENDCASE
      f12=.F.
      LOOP
    CASE ch=7					&&*******DELETE************
      IF f12
        str="  /  /  "
        p=7
      ENDIF
      DO CASE 
        CASE p=7 .OR. p=4 .OR. p=1
          aux=SUBS(str,p+1,1)
          str=STUF(str,p+1,1," ")
          str=STUF(str,p,1,aux)
        CASE p=2 .OR. p=5 .OR. p=8
      ENDCASE
      f12=.F.
      LOOP
    CASE ch=127   				&&******BSPACE**********
      IF f12
        str="  /  /  "
        p=7
      ENDIF
      DO CASE 
        CASE p=7 .OR. p=4 .OR. p=1
        CASE p=2 .OR. p=5 .OR. p=8
          aux=SUBS(str,p,1)
          str=STUF(str,p,1," ")
          p=p-1
          str=STUF(str,p,1,aux)
      ENDCASE
      f12=.F.
      LOOP
    CASE ch=22 .OR. ch=1 .OR. ch=6
      LOOP
    CASE ch<58 .and. ch>47 		&&*******NUMBERS***********
      IF f12
        str="  /  /  "
        p=7
      ENDIF
      ch=ch+80
      str=STUF(str,p,1,chr(ch))
      DO CASE 
        CASE p=7 .OR. p=4 .OR. p=1
          p=p+1
        CASE p=5 .OR. p=8
          p=p-4
        CASE p=2
          ??CHR(7)
          EXIT
      ENDCASE
      f12=.F.
    OTHE						&&*******OTHERS*******
      EXIT 
  ENDCASE
ENDDO
@ y,x SAY str

&&************************
&&dte=dfte(str)
&&dte=str
RETU str