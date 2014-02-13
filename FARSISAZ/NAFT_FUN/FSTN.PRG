********** GFSTN.PRG
********************
PARAMETERS nst
PRIVATE nsl ,inst ,num ,key ,i , dp ,dl
tmpesc = SYS(2001,'ESCAPE')
tmpdec = SYS(2001,'DECIMALS TO')
SET TALK off
SET ESCAPE off
inst = LTRIM(nst)
nsl = LEN(inst)
dp = .F.
dl = 0
i = 1
DO WHILE i <= nsl
   key = ASC(SUBSTR(inst ,i ,1))
   IF key > 127
      key = key - 80
      inst = STUFF(inst ,i ,1 ,CHR(key))
   ENDIF
   IF key > 47 .AND. key < 58
      IF dp
         dl = dl + 1
      ENDIF
      i = i + 1
   ELSE
      IF (key = 44 .OR. key = 46) .AND. .NOT. dp
         inst = STUFF(inst ,i ,1 ,'.')
         dp = .T.
         i = i + 1
         LOOP
      ENDIF
      IF key = 45 .AND. i = 1
         i = i + 1
         LOOP
       ENDIF
       EXIT
   ENDIF
ENDDO
IF dl > 15
   dl = 15
ENDIF
SET DECIMALS TO dl
num = VAL(inst)
SET ESCAPE &tmpesc
SET DECIMALS TO &tmpdec
RETURN num
