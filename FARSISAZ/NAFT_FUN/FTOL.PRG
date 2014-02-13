*:*****************************************************************************
*:
*: Procedure file: G:\K7171644\AF\PAK\FTOL.PRG
*:
*:         System: SODGOVAH
*:         Author: FAZELI & ROSTAMI
*:      Copyright (c) 1994, FAZELI & ROSTAMI
*:  Last modified: 10/09/80      0:29
*:
*:  Procs & Fncts: FTOL()
*:
*:      Documented 10/09/18 at 05:38               FoxDoc  version 2.10f
*:*****************************************************************************
* Program FTOL

PARAMETERS farsi
SET TALK OFF
latin=""
harf=""
CNT=1
DO WHILE  CNT <= LEN(farsi)
   harf=SUBS(farsi,CNT,1)
   IF harf >= '€' .AND. harf <= '‰'
      latin=latin+CHR(ASC(harf)-80)
   ENDIF
   CNT=CNT+1
ENDDO
RETURN  latin

***END FTOL
*: EOF: FTOL.PRG
