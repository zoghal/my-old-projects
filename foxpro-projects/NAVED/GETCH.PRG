PARA attr
PRIV x,y,xt,yt,ch,ssc1
DEFI WIND black FROM 0,0 TO 24,79 NONE COLO g/n
ch=0
DO WHILE ch=0
  ch=INKEY(delay,attr)
  IF ch=133
    DO calc
    ch=INKEY(delay,attr)
    LOOP
  ENDIF
  IF ch=0
    SAVE SCRE TO ssc1
    ACTI WIND black
    x=40
    y=12
    xt=1
    yt=1
    DO WHILE .T.
      @ 0,0 FILL TO 24,79 COLO n/n
      @ y,x SAY "...¢˛˜•ì ê§ ˝¢˛ÛÓ ˘ıê¢ê ˝ê§ì" 
      IF INKEY(1,'h')<>0
        EXIT
      ENDIF
      IF y<1 .OR. y>23
        yt=yt*(-1)
      ENDIF
      y=y+yt
      IF x<1 .OR. x>50
        xt=xt*(-1)
      ENDIF
      x=x+xt
    ENDDO
    DEAC WIND black
    REST SCRE FROM ssc1
  ENDIF
ENDDO
RETU ch