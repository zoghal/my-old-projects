PARA y,x,no,l,cl
PRIV str,a,b,oe
str=FNTS(no,l)
DO CASE 
  CASE cl=9
    oe=.T.
    b=0
    FOR a=l TO 1 STEP -1
      IF b=0
        b=3
        IF oe
          SET COLO TO w+/*b
          oe=.F.
        ELSE
          SET COLO TO gr+/*b
          oe=.T.
        ENDIF
      ENDIF
      b=b-1
      @ y,x+a-1 SAY SUBS(str,a,1)
    NEXT
  CASE cl=1
    oe=.T.
    b=0
    FOR a=l TO 1 STEP -1
      IF b=0
        b=3
        IF oe
          SET COLO TO w+/b
          oe=.F.
        ELSE
          SET COLO TO gr+/b
          oe=.T.
        ENDIF
      ENDIF
      b=b-1
      @ y,x+a-1 SAY SUBS(str,a,1)
    NEXT
  CASE cl=4
    oe=.T.
    b=0
    FOR a=l TO 1 STEP -1
      IF b=0
        b=3
        IF oe
          SET COLO TO w+/r
          oe=.F.
        ELSE
          SET COLO TO gr+/r
          oe=.T.
        ENDIF
      ENDIF
      b=b-1
      @ y,x+a-1 SAY SUBS(str,a,1)
    NEXT
  OTHER
    @ y,x say "SYNTAX ERROR!"    
ENDCASE

    
    
    
    
    