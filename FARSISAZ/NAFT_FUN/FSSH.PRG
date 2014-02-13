********** GFSSH.PRG
********************
PARAMETERS row ,col ,str1
PRIVATE fcol
tmpesc = SYS(2001,'ESCAPE')
SET TALK off
SET ESCAPE off
IF row < 1 .OR. row > 24 .OR. col < 1 .OR. col > 80
   SET ESCAPE &tmpesc
   RETURN ""
ENDIF
fcol = 81 - col - LEN(str1)
IF fcol < 0 .OR. fcol > 79
   SET ESCAPE &tmpesc
   RETURN ""
ENDIF
@ row , fcol SAY str1
SET ESCAPE &tmpesc
RETURN "Ok"
