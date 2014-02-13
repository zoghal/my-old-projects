*:*****************************************************************************
*:
*: Procedure file: G:\K717168\HA\FNST.PRG
*:
*:         System: ¯§ê¢ ©°ï Ùó®˛®
*:         Author:  ¸˜Ú¢§ê ˆ®ü
*:      Copyright (c) 1995,  §¯ï ¸®ı™¢˛˙™ ¸Ûê‰ ©•¯ıç •Ó§ı
*:  Last modified: 06/15/92     12:40
*:
*:  Procs & Fncts: FNST()
*:
*:      Documented 01/31/95 at 08:22               FoxDoc  version 2.10f
*:*****************************************************************************
********** GFNST.PRG
********************
PARAMETERS  ROW ,COL ,nst
PRIVATE i ,nsl ,INST ,fcol ,lcol ,KEY
tmpesc = SYS(2001,'ESCAPE')
SET TALK OFF
SET ESCAPE OFF
ctrl = 0
IF ROW < 1 .OR. ROW > 24 .OR. COL < 1 .OR. COL > 80
   SET ESCAPE &tmpesc
   RETURN nst
ENDIF
nsl  = LEN(nst)
lcol = 80 - COL
fcol = lcol + 1 - nsl
IF nsl < 1 .OR. fcol < 0
   SET ESCAPE &tmpesc
   RETURN nst
ENDIF
INST = nst
@ ROW,fcol SAY INST
@ ROW,fcol SAY ""
i = 1
DO WHILE i <= nsl
   KEY = INKEY(0)
   DO CASE
   CASE  KEY = 127
      IF i > 1
         i = i - 1
         INST = STUFF(INST ,nsl + 1 ,0 ," ")
         INST = STUFF(INST ,i ,1 ,"")
         @ ROW,COL() - 1    SAY SUBSTR(INST ,i ,nsl + 1 - i)
         @ ROW,fcol + i - 1 SAY ""
      ENDIF
      
   CASE  KEY = 7
      INST = STUFF(INST ,nsl + 1 ,0 ," ")
      INST = STUFF(INST ,i ,1 ,"")
      @ ROW,COL()        SAY SUBSTR(INST ,i ,nsl + 1 - i)
      @ ROW,fcol + i - 1 SAY ""
      
   CASE  KEY = 4
      IF COL() < lcol
         i = i + 1
         @ ROW,COL() + 1 SAY ""
      ENDIF
      
   CASE  KEY = 19
      IF COL() > fcol
         i = i - 1
         @ ROW,COL() - 1 SAY ""
      ENDIF
      
   CASE  KEY > 46 .AND. KEY < 58 .OR. KEY = 32 .OR. KEY = 45
      IF ins___sni
         INST = LEFT(STUFF(INST ,i ,0 ,SUBSTR(fchr_rhcf ,KEY ,1)) ,nsl)
         @ ROW,COL() SAY SUBSTR(INST ,i ,nsl + 1 - i)
         IF i < nsl
            @ ROW,fcol + i SAY ""
         ENDIF
         i = i + 1
      ELSE
         INST = STUFF(INST ,i ,1 ,SUBSTR(fchr_rhcf,KEY,1))
         ?? SUBSTR(fchr_rhcf ,KEY ,1)
         i = i + 1
      ENDIF
      
   CASE  KEY = 1
      @ ROW,fcol SAY ""
      i = 1
      
   CASE  KEY = 6
      @ ROW,fcol SAY ""
      i = nsl
      
   CASE  KEY = 13
      EXIT
      
   CASE  KEY = 27
      @ ROW,fcol SAY nst
      SET ESCAPE &tmpesc
      RETURN nst
      
   CASE  KEY > -10 .AND. KEY < 0 .OR. KEY = 5 .OR. KEY = 24
      ctrl = KEY
      SET ESCAPE &tmpesc
      RETURN INST
      
   CASE  KEY = 22
      ins___sni = .NOT. ins___sni
      IF ins___sni
         INST = LEFT(STUFF(INST ,i ,0 ,SUBSTR(fchr_rhcf ,KEY ,1)) ,nsl)
         @ ROW,COL() SAY SUBSTR(INST ,i ,nsl + 1 - i)
         IF i < nsl
            @ ROW,fcol + i SAY ""
         ENDIF
         i = i + 1
      ELSE
         @ 0,40 SAY "   "
      ENDIF
      @ ROW,fcol + i - 1 SAY ""
   ENDCASE
ENDDO
IF i > 1 .AND. i < nsl + 1
   INST = SPACE(nsl + 1 - i) + STUFF(INST ,i ,nsl + 1 - i ,"")
ENDIF
IF i = 1
   INST = TRIM(INST)
   i = LEN(INST)
   INST = SPACE(nsl - i) + INST
ENDIF
@ ROW,fcol SAY INST
SET ESCAPE &tmpesc
RETURN INST
*: EOF: FNST.PRG
