PARA str,flag
PRIV ln,s,a
IF flag
  str=ALLT(str)
ENDIF
ln=LEN(str)
s=""
FOR a=ln TO 1 STEP -1
  s=s+SUBS(str,a,1)
NEXT
RETU s
