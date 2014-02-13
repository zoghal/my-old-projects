PARA num,ln
PRIV str,lstr,a,aux
str=ALLT(STR(num))
lstr=LEN(str)
FOR a=1 TO lstr
  aux=ASC(SUBS(str,a,1))
  aux=aux+80
  str=STUF(str,a,1,CHR(aux))
NEXT
FOR a=1 TO ln-lstr
  str=" "+str
NEXT
RETU str