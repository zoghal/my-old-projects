PARA str
PRIV ln,a,aux,r
str=ALLT(str)
ln=LEN(str)
r=""
FOR a=1 TO ln
  aux=ASC(SUBS(str,a,1))
  aux=aux-80
  r=r+CHR(aux)
NEXT
RETU VAL(r)