PARA y,x,num,ln
PRIV a,eng,str,lstr,aux,p,ch,flag,f12
eng="qwertyuiopasdfghjklzxcvbnmQWERTYUIOPASDFGHJKLZXCVBNM"
eng=eng+chr(34)+"'"+" [];,./-=\!#$%^&*()_+\{}:<>?|"+"@"
str=ALLT(STR(num))
lstr=LEN(str)
FOR a=1 TO lstr
  aux=ASC(SUBS(str,a,1))
  aux=aux+80
  str=STUF(str,a,1,CHR(aux))
NEXT
FOR a=1 TO ln-lstr
  str=str+" "
NEXT
&&******************
@ y,x SAY str
p=1
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
      DO clear_str
      f12=.F.
      LOOP
    CASE ch=4						&&*******RIGHT**************
      IF p<ln
        p=p+1
      ELSE
        p=ln
      ENDIF
      f12=.F.
      LOOP
    CASE ch=19						&&*******LEFT*************
      IF p>1
        p=p-1
      ELSE
        p=1
      ENDIF
      f12=.F.
      LOOP
    CASE ch=1						&&*******HOME**************
      p=1
      f12=.F.
      LOOP
    CASE ch=6						&&*******END************
      FOR p=1 TO ln-1
        IF SUBS(str,p,1)=" "
          EXIT
        ENDIF
      NEXT
      f12=.F.
      LOOP
    CASE ch=7						&&*******DELETE************
      IF f12
        DO clear_str
      ENDIF
      FOR a=p TO ln-1 
        aux=SUBS(str,a+1,1)
        str=STUF(str,a,1,aux)
      NEXT
      str=STUF(str,ln,1," ")
      f12=.F.
      LOOP
    CASE ch=127  	 				&&******BSPACE**********
      IF f12
        DO clear_str
      ENDIF
      IF p>1	
        p=p-1
        FOR a=p TO ln-1
          aux=SUBS(str,a+1,1)
          str=STUF(str,a,1,aux)
        NEXT
        str=STUF(str,ln,1," ")
      ELSE 
        p=1
      ENDIF
      f12=.F.
      LOOP
    CASE ch=22						&&*******INSERT************
      =INSM(!INSM())
      LOOP
    CASE ch<58 .and. ch>47 			&&*******NUMBERS***********
      IF f12
        DO clear_str
      ENDIF
      ch=ch+80
      f12=.F.
    OTHE							&&*******OTHERS*******
      EXIT
  ENDCASE
  IF INSM()
    FOR a=ln-1 TO p STEP -1
      aux=SUBS(str,a,1)
      str=STUF(str,a+1,1,aux)
    NEXT
  ENDIF
  str=STUF(str,p,1,chr(ch))
  IF p<ln
    p=p+1
  ELSE
    ??chr(7)
    EXIT
  ENDIF
ENDDO
@ y,x SAY str
str=ALLT(str)
lstr=LEN(str)
FOR a=1 TO lstr
  aux=ASC(SUBS(str,a,1))
  aux=aux-80
  str=STUF(str,a,1,CHR(aux))
NEXT
RETU VAL(str)


&&%%%%%%%%%%%%%%%%%%%%%%%%
PROC clear_str     
      str=""
      FOR a=1 TO ln
        str=str+" "
      NEXT
      p=1
&&%%%%%%%%%%%%%%%%%%%%%%%%%