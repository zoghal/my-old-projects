********** GFSIS.PRG
********************
PARAMETERS str1
PRIVATE i ,j ,st
tmpesc = SYS(2001,'ESCAPE')
SET TALK off
SET ESCAPE off
i = 1
j = LEN(str1) + 1
st = SPACE(j - 1)
DO WHILE i < j
   st = STUFF(st ,i ,1 ,SUBSTR(str1 ,j-i ,1))
   i = i + 1
ENDDO
SET ESCAPE &tmpesc
RETURN st
