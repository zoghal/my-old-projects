*:*****************************************************************************
*:
*: Procedure file: G:\K717168\HA\FNUM.PRG
*:
*:         System: ¯§ê¢ ©°ï Ùó®˛®
*:         Author:  ¸˜Ú¢§ê ˆ®ü
*:      Copyright (c) 1995,  §¯ï ¸®ı™¢˛˙™ ¸Ûê‰ ©•¯ıç •Ó§ı
*:  Last modified: 12/21/94     11:40
*:
*:  Procs & Fncts: FNUM()
*:
*:      Documented 01/31/95 at 08:21               FoxDoc  version 2.10f
*:*****************************************************************************
********** GFNUM.PRG
********************
PARAMETERS  ROW ,COL ,num ,nl ,dl
PRIVATE  i ,inum ,pp ,ptr ,fcol ,lcol ,KEY ,inm
tmpesc = SYS(2001,'ESCAPE')
tmpdec = SYS(2001,'DECIMALS TO')
SET TALK OFF
SET ESCAPE OFF
ctrl = 0
IF ROW < 1 .OR. ROW > 24 .OR. COL < 1 .OR. COL > 80 .OR. dl < 0 .OR. dl > 15
   SET ESCAPE &tmpesc
   SET DECIMALS TO &tmpdec
   RETURN num
ENDIF
lcol = 80 - COL
fcol = lcol + 1 - nl
IF nl < dl + 1 .OR. fcol < 0
   SET ESCAPE &tmpesc
   SET DECIMALS TO &tmpdec
   RETURN num
ENDIF
SET DECIMALS TO dl
IF num < 0
   i = 1
ELSE
   i = 0
ENDIF
IF dl > 0
   i = i + 1
ENDIF
IF ABS(num) < 10 ** (nl - dl - i)
   inum = STR(num ,nl ,dl)
   i = 1
   DO WHILE i <= nl
      inum = STUFF(inum ,i ,1 ,SUBSTR(fchr_rhcf ,ASC(SUBSTR(inum ,i ,1)) ,1))
      i = i + 1
   ENDDO
ELSE
   inum = "*"
   i = 1
   DO WHILE i < nl
      inum = inum + "*"
      i = i + 1
   ENDDO
ENDIF
IF dl = 0
   pp = nl + 1
ELSE
   pp = nl - dl
   inum = STUFF(inum ,pp ,1 ,",")
ENDIF
inm = inum


@ ROW,fcol SAY inum
IF pp = 1
   @ ROW,fcol + 1 SAY ""
   i = 2
ELSE
   @ ROW,fcol  SAY ""
   i = 1
ENDIF
DO WHILE i <= nl
   KEY = INKEY(0)
   DO CASE
   CASE  KEY = 127
      IF i > 1
         i = i - 1
         IF i = pp
            i = i - 1
            @ ROW,COL() - 1 SAY ""
         ENDIF
         IF i < pp
            ptr = pp
         ELSE
            ptr = nl + 1
         ENDIF
         inum = STUFF(inum ,ptr ,0 ," ")
         inum = STUFF(inum ,i ,1 ,"")
         @ ROW,COL() - 1 SAY SUBSTR(inum ,i ,ptr - i)
         @ ROW,fcol + i - 1 SAY ""
      ENDIF
      
   CASE  KEY = 7
      IF i < pp
         ptr = pp
      ELSE
         ptr = nl + 1
      ENDIF
      inum = STUFF(inum ,ptr ,0 ," ")
      inum = STUFF(inum ,i ,1 ,"")
      @ ROW,COL() SAY SUBSTR(inum ,i ,ptr - i)
      @ ROW,fcol + i - 1 SAY ""
      
   CASE  KEY = 4
      IF COL() < lcol
         i = i + 1
         IF i = pp
            i = i + 1
            @ ROW,COL() + 2 SAY ""
         ELSE
            @ ROW,COL() + 1 SAY ""
         ENDIF
      ENDIF
      
   CASE  KEY = 19
      IF COL() > fcol
         i = i - 1
         @ ROW,COL() - 1 SAY ""
         IF i = pp
            IF pp > 1
               i = i - 1
               @ ROW,COL() - 1 SAY ""
            ELSE
               i = i + 1
               @ ROW,COL() + 1 SAY ""
            ENDIF
         ENDIF
      ENDIF
      
   CASE  KEY = 32 .OR. KEY = 43 .OR. KEY = 45 .OR. KEY > 47 .AND. KEY < 58
      IF ins___sni
         IF i < pp
            inum = LEFT(STUFF(inum ,i ,0 ,SUBSTR(fchr_rhcf ,KEY ,1)) ,pp - 1) + RIGHT(inum ,dl + 1)
            @ ROW,COL() SAY SUBSTR(inum ,i ,pp - i)
         ELSE
            inum = LEFT(STUFF(inum ,i ,0 ,SUBSTR(fchr_rhcf,KEY,1)) ,nl)
            @ ROW,COL() SAY SUBSTR(inum ,i ,nl + 1 - i)
         ENDIF
         i = i + 1
         IF i = pp
            i = i + 1
         ENDIF
         IF i > nl
            EXIT
         ENDIF
         @ ROW,fcol + i - 1 SAY ""
      ELSE
         inum = STUFF(inum ,i ,1 ,SUBSTR(fchr_rhcf ,KEY ,1))
         ?? SUBSTR(fchr_rhcf ,KEY ,1)
         i = i + 1
         IF i = pp
            i = i + 1
            @ ROW,COL() + 1 SAY ""
         ENDIF
      ENDIF
      
   CASE  KEY = 35 .OR. KEY = 44 .OR. KEY = 46 .OR. KEY = 47
      IF dl = 0
         EXIT
      ENDIF
      IF i < pp
         inum = SPACE(pp - i) + SUBSTR(inum ,1 ,i - 1) + RIGHT(inum ,dl + 1)
         @ ROW,fcol SAY SUBSTR(inum ,1 ,pp)
         i = pp + 1
      ENDIF
      
   CASE  KEY = 1
      IF pp = 1
         @ ROW,fcol + 1 SAY ""
         i = 2
      ELSE
         @ ROW,fcol  SAY ""
         i = 1
      ENDIF
      
   CASE  KEY = 6
      @ ROW,lcol SAY ""
      i = nl
      
   CASE  KEY = 13
      EXIT
      
   CASE  KEY = 27
      @ ROW,fcol SAY inm
      SET DECIMALS TO 2
      SET ESCAPE &tmpesc
      SET DECIMALS TO &tmpdec
      RETURN num
      
   CASE  KEY > -10 .AND. KEY < 0 .OR. KEY = 5 .OR. KEY = 24
      ctrl = KEY
      i = 1
      EXIT
      
   CASE  KEY = 22
      ins___sni = .NOT. ins___sni
      IF ins___sni
         @ 0,40 SAY "ö§¢"
      ELSE
         @ 0,40 SAY "   "
      ENDIF
      @ ROW,fcol + i - 1 SAY ""
   ENDCASE
ENDDO
IF i > 1 .AND. i < nl + 1
   inum = STUFF(inum ,i ,nl + 1 - i ,SPACE(nl + 1 - i))
ENDIF
IF dl > 0
   inum = STUFF(inum ,pp ,1 ,".")
ENDIF
i = 1
DO WHILE i <= nl
   KEY = ASC(SUBSTR(inum ,i ,1))
   IF KEY > 127
      inum = STUFF(inum ,i ,1 ,CHR(KEY - 80))
   ENDIF
   i = i + 1
ENDDO
num = VAL(inum)
inum = STR(num ,nl ,dl)
i = 1
DO WHILE i <= nl
   inum = STUFF(inum ,i ,1 ,SUBSTR(fchr_rhcf ,ASC(SUBSTR(inum ,i ,1)) ,1))
   i = i + 1
ENDDO
IF dl > 0
   inum = STUFF(inum ,pp ,1 ,",")
ENDIF
@ ROW,fcol SAY inum
SET DECIMALS TO &tmpdec
SET ESCAPE &tmpesc
RETURN num
*: EOF: FNUM.PRG
