*:*****************************************************************************
*:
*: Procedure file: G:\K717168\HA\FNSH.PRG
*:
*:         System: ���� ��� �����
*:         Author:  ��򢤐 ���
*:      Copyright (c) 1995,  ��� �������� ��� ����� ���
*:  Last modified: 06/15/92     13:19
*:
*:  Procs & Fncts: FNSH()
*:
*:      Documented 01/31/95 at 08:21               FoxDoc  version 2.10f
*:*****************************************************************************
********** GFNSH.PRG
********************
PARAMETERS  ROW ,COL ,num ,nl ,dl
PRIVATE     i ,fnum ,fcol
tmpesc = SYS(2001,'ESCAPE')
tmpdec = SYS(2001,'DECIMALS TO')
SET TALK OFF
IF ROW < 1 .OR. ROW > 24 .OR.;
      COL < 1 .OR. COL > 80 .OR.;
      dl  < 0 .OR. dl  > 15
   SET ESCAPE &tmpesc
   SET DECIMALS TO &tmpdec
   RETURN ""
ENDIF
fcol = 81 - COL - nl
IF fcol < 0 .OR. nl < dl + 1
   SET ESCAPE &tmpesc
   SET DECIMALS TO &tmpdec
   RETURN ""
ENDIF
SET DECIMALS TO dl
fnum = STR(num ,nl ,dl)
IF dl > 0
   i = nl
   DO WHILE i > 0
      IF SUBSTR(fnum ,i ,1) <> "0"
         EXIT
      ELSE
         i = i - 1
      ENDIF
   ENDDO
   fnum = LEFT(fnum , i) + SPACE(nl - i)
ENDIF
i = 1
DO WHILE i <= nl
   fnum = STUFF(fnum ,i ,1 , SUBSTR(fchr_rhcf , ASC(SUBSTR(fnum ,i ,1)), 1))
   IF SUBSTR(fnum ,i ,1) = "�"
      fnum = STUFF(fnum ,i ,1 ,",")
   ENDIF
   i = i + 1
ENDDO
@ ROW , fcol SAY fnum
SET ESCAPE &tmpesc
SET DECIMALS TO &tmpdec
RETURN "ok"
*: EOF: FNSH.PRG
