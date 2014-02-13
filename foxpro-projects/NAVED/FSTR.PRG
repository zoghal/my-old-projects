PARA y,x,str
PRIV ln,far,eng,bcbn,bch,aml,akh1,akh2,aml1,p,flag,pau,ch,f,e,eau,g,gau
PRIV d,dau,au,e,eau,c,cau,i,iau,f2,f3,f5,iau1,f12
ln=LEN(str)
&&*******************************************************************
far="®¬™μκθδϋ΅ª¨ώ“σ‘—χυΰ―¥¤£Ά­«λιεαω ©§ό’ρ–φτζηβγςϊ"
    far=far+"ο"+"π"+" ›ξψ¦/-=!#$%:x()‹+•νύ"+CHR(141)+"”:"+chr(34)
eng="qwertyuiopasdfghjklzxcvbnmQWERTYUIOPASDFGHJKLZXCVBNM"
eng=eng+chr(34)+"'"+" [];,./-=!#$%^&*()_+\{}:<>?|^"+"@"
&&--------------------------------------------------------------
bcnc="εζηθαβγδωϊϋ‘"
bch ="ηηηηγγγγϊϊϊ‘‘"         
nch ="θθθθδδδδϋϋϋ"
aml ="®¬™μκθδϋ΅ª¨ώ“σ—χυΰ―ηγϊπ›ξ•‹"

akh1="®¬™μκθδϋ΅ª¨“σ—χυηγϊ•›ξπ"
akh2="­«λιεαω ©§’ρ–φτζβω”νο"
aml1=" /-=!#$%:x()+"+chr(34)
&&********************************************************************

@ y,x SAY str
p=ln
flag=.f.
f12=.T.
pau=1
=INSM(.T.)
DO WHILE .t.
  @ y,x SAY str
  @ y,x+p-1 SAY ""
  ch=GETCH('s')
  DO CASE 
    CASE ch=134 				&&*******F12************
      DO clear_str
      f12=.F.
      LOOP
    CASE ch=4					&&*******RIGHT**************
      IF p<ln
        p=p+1
      ELSE
        p=ln
      ENDIF
      flag=.f.
      f12=.F.
      LOOP
    CASE ch=19					&&*******LEFT*************
      IF p>1
        p=p-1
      ELSE
        p=1
      ENDIF
      flag=.f.
      f12=.F.
      LOOP
    CASE ch=1					&&*******HOME**************
      p=ln
      flag=.f.
      f12=.F.
      LOOP
    CASE ch=6					&&*******END************
      FOR p=1 TO ln
        IF SUBS(str,p,1)<>" "
          EXIT
        ENDIF
      NEXT
      p=p-1
      flag=.f.
      f12=.F.
      LOOP
    CASE ch=7					&&*******DELETE************
      IF f12
        DO clear_str
      ENDIF
      FOR e=p TO 2 step -1
        eau=SUBS(str,e-1,1)
        str=STUF(str,e,1,eau)
      NEXT
      str=STUF(str,1,1," ")
      flag=.f.
      f12=.F.
      LOOP
    CASE ch=127 				&&******BSPACE**********
      IF f12
        DO clear_str
      ENDIF
      IF p<ln
        p=p+1
        FOR e=p TO 2 step -1
          eau=SUBS(str,e-1,1)
          str=STUF(str,e,1,eau)
        NEXT
        str=STUF(str,1,1," ")
      ELSE
        p=ln
      ENDIF
      flag=.f.
      f12=.F.
      LOOP
    CASE ch=22					&&*******INSERT************
      =INSM(!INSM())
      LOOP
    CASE ch<58 .and. ch>47 		&&*******NUMBERS***********
      IF f12
        DO clear_str
      ENDIF
      FOR g=2 TO p
        gau=SUBS(str,g,1)
        str=STUF(str,g-1,1,gau)
      NEXT
      ch=ch+80
      str=STUF(str,p,1,chr(ch))
      IF flag
        pau=pau+1
      ELSE
        pau=1
      ENDIF
      flag=.T.
      f12=.F.
      LOOP
    OTHE						&&*******OTHERS*******
      IF ch<0
        EXIT
      ENDIF
      cau=CHR(ch)
      dau=RAT(cau,eng)
      IF dau>0
        IF f12
          DO clear_str
        ENDIF
        ch=ASC(SUBS(far,dau,1))
      ELSE
        EXIT
      ENDIF
      f12=.F.
  ENDCASE
  &&***************************
  IF flag
    p=p-pau
    flag=.f.
  ENDIF
  IF INSM()
    FOR b=2 TO p 
      au=SUBS(str,b,1)
      str=STUF(str,b-1,1,au)
    NEXT
  ENDIF
  iau=chr(ch)
  &&*******************CLEVERITY********************
  f2=RAT(iau,bcnc)
  f3=RAT(SUBS(str,p+1,1),aml)
  x25=iau
  IF f2>0 
    IF f3>0
      iau=SUBS(bch,f2,1)
    ELSE
      iau=SUBS(nch,f2,1)
    ENDIF
  ENDIF
  f3=RAT(iau,aml1)
  IF f3>0
    iau1=SUBS(str,p+1,1)
    f2=RAT(iau1,akh1)
    IF f2>0
      str=STUF(str,p+1,1,SUBS(akh2,f2,1))
    ENDIF
    IF iau1="ώ" .or. iau1="ύ" .or. iau1="ό" 
      f2=RAT(SUBS(str,p+2,1),aml)
      IF f2>0
        str=STUF(str,p+1,1,"ό")
      ELSE
        str=STUF(str,p+1,1,"ύ")
      ENDIF
    ENDIF
  ENDIF
  &&***************************************
  str=STUF(str,p,1,iau)
  IF p>1
    p=p-1
  ELSE
    ??chr(7)
    EXIT
  ENDIF
ENDDO
@ y,x SAY str

&&************************
RETURN str



&&%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
PROC clear_str
      str=""
      FOR f=1 TO ln
        str=str+" "
      NEXT
      p=ln
      flag=.f.
&&%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
