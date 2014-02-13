*:*****************************************************************************
*:
*: Procedure file: G:\K717168\HA\FNTS.PRG
*:
*:         System: ψ¤Ά ©΅• τ—¨ώ¨
*:         Author:  όχςΆ¤ φ¨
*:      Copyright (c) 1995,  ¤ψ• ό¨υªΆώϊª όσδ ©¥ψυ ¥ξ¤υ
*:  Last modified: 06/15/92     13:17
*:
*:  Procs & Fncts: FNTS()
*:
*:      Documented 01/31/95 at 08:21               FoxDoc  version 2.10f
*:*****************************************************************************
********** GFNTS.PRG
********************
PARAMETERS num ,nl ,dl
PRIVATE i ,nst
tmpesc = SYS(2001,'ESCAPE')
tmpdec = SYS(2001,'DECIMALS TO')
SET TALK OFF
IF dl < 0 .OR. dl > 15 .OR. nl < dl + 1
   SET ESCAPE &tmpesc
   SET DECIMALS TO &tmpdec
   RETURN ""
ENDIF
SET DECIMALS TO dl
nst = STR(num ,nl ,dl)
IF dl > 0
   i = nl
   DO WHILE i > 0
      IF SUBSTR(nst ,i ,1) <> '0'
         EXIT
      ELSE
         i = i - 1
      ENDIF
   ENDDO
   nst = LEFT(nst ,i) + SPACE(nl - i)
ENDIF
i = 1
DO WHILE i <= nl
   nst = STUFF(nst ,i , 1, SUBSTR(fchr_rhcf , ASC(SUBSTR(nst ,i ,1)) ,1))
   IF SUBSTR(nst ,i ,1) = '¦'
      nst = STUFF(nst ,i ,1 ,',')
   ENDIF
   i = i + 1
ENDDO
SET ESCAPE &tmpesc
SET DECIMALS TO &tmpdec
RETURN nst
*: EOF: FNTS.PRG
