*:*****************************************************************************
*:
*: Procedure file: G:\K717168\HA\FDAT.PRG
*:
*:         System: ¯§ê¢ ©°ï Ùó®˛®
*:         Author:  ¸˜Ú¢§ê ˆ®ü
*:      Copyright (c) 1995,  §¯ï ¸®ı™¢˛˙™ ¸Ûê‰ ©•¯ıç •Ó§ı
*:  Last modified: 12/04/94     12:07
*:
*:  Procs & Fncts: FDAT()
*:
*:      Documented 01/31/95 at 08:22               FoxDoc  version 2.10f
*:*****************************************************************************
********** GFDAT.PRG
********************
PARAMETERS  ROW ,COL ,dat
PRIVATE  i ,idat ,sp1 ,sp2 ,ptr ,fcol ,lcol
PRIVATE  ok ,KEY ,idt ,yer ,mon ,DAY ,dl
tmpesc = SYS(2001,'ESCAPE')
SET TALK OFF
SET ESCAPE OFF
ctrl = 0
dl = LEN(dat)
IF ROW < 1 .OR. ROW > 24 .OR. COL < 1 .OR. COL > 80 .OR. (dl # 8 .AND. dl # 10)
   SET ESCAPE &tmpesc
   RETURN dat
ENDIF
lcol = 80 - COL
fcol = lcol + 1 - dl
IF fcol < 0
   SET ESCAPE &tmpesc
   RETURN dat
ENDIF
idat = dat
IF dl = 8
   sp1 = 3
   sp2 = 6
ELSE
   sp1 = 5
   sp2 = 8
ENDIF
idat = STUFF(idat ,sp1 ,1 ,"/")
idat = STUFF(idat ,sp2 ,1 ,"/")
@ ROW,fcol SAY idat
@ ROW,fcol SAY ""
i = 1
ok = .F.
DO WHILE .NOT. ok
   DO WHILE i <= dl
      KEY = INKEY(0)
      DO CASE
      CASE KEY = 127
         IF i > 1
            i = i - 1
            IF i = sp1 .OR. i = sp2
               i = i - 1
               @ ROW,COL() - 1 SAY ""
            ENDIF
            IF i < sp1
               ptr = sp1
            ELSE
               IF i < sp2
                  prt = sp2
               ELSE
                  ptr = dl + 1
               ENDIF
            ENDIF
            idat = STUFF(idat ,ptr ,0 ," ")
            idat = STUFF(idat ,i ,1 ,"")
            @ ROW,COL() - 1 SAY SUBSTR(idat ,i ,ptr - i)
            @ ROW,fcol + i - 1  SAY ""
         ENDIF
         
      CASE  KEY = 7
         IF i < sp1
            ptr = sp1
         ELSE
            IF i < sp2
               ptr = sp2
            ELSE
               ptr = dl + 1
            ENDIF
         ENDIF
         idat = STUFF(idat ,ptr ,0 ," ")
         idat = STUFF(idat ,i ,1 ,"")
         @ ROW,COL() - 1     SAY SUBSTR(idat ,i ,ptr - i)
         @ ROW,fcol + i - 1  SAY ""
         
      CASE  KEY = 4
         IF COL() < lcol
            i = i + 1
            IF i = sp1 .OR. i = sp2
               i = i + 1
               @ ROW,COL() + 2 SAY ""
            ELSE
               @ ROW,COL() + 1 SAY ""
            ENDIF
         ENDIF
         
      CASE  KEY = 19
         IF COL() > fcol
            i = i - 1
            IF i = sp1 .OR. i = sp2
               i = i - 1
               @ ROW,COL() - 2 SAY ""
            ELSE
               @ ROW,COL() - 1 SAY ""
            ENDIF
         ENDIF
         
      CASE  KEY = 32  .OR. KEY > 47  .AND.  KEY < 58
         IF ins___sni
            IF i < sp1
               idat = LEFT(STUFF(idat ,i ,0 ,SUBSTR(fchr_rhcf ,KEY ,1)) ,sp1 - 1) + RIGHT(idat ,6)
               @ ROW,COL() SAY SUBSTR(idat ,i ,sp1 - i)
            ELSE
               IF i < sp2
                  idat = LEFT(STUFF(idat ,i ,0 ,SUBSTR(fchr_rhcf ,KEY ,1)) ,sp2 - 1) + RIGHT(idat ,3)
                  @ ROW,COL() SAY SUBSTR(idat ,i ,sp2 - i)
               ELSE
                  idat = LEFT(STUFF(idat ,i ,0 ,SUBSTR(fchr_rhcf ,KEY ,1)) ,dl)
                  @ ROW,COL() SAY SUBSTR(idat ,i ,dl + 1 - i)
               ENDIF
            ENDIF
            i = i + 1
            IF i = sp1 .OR. i = sp2
               i = i + 1
            ENDIF
            IF i > dl
               EXIT
            ENDIF
            @ ROW,fcol + i - 1 SAY ""
         ELSE
            idat = STUFF(idat ,i ,1 ,SUBSTR(fchr_rhcf ,KEY ,1))
            ?? SUBSTR(fchr_rhcf ,KEY ,1)
            i = i + 1
            IF i= sp1 .OR. i = sp2
               i = i + 1
               @ ROW,COL() + 1  SAY ""
            ENDIF
         ENDIF
         
      CASE  KEY = 47
         IF i < sp1
            @ ROW,fcol + sp1 SAY ""
            i = sp1 + 1
         ELSE
            IF i < sp2
               @ ROW,fcol + sp2 SAY ""
               i = sp2 - 1
            ENDIF
         ENDIF
         
      CASE  KEY = 1
         @ ROW,fcol SAY ""
         i = 1
         
      CASE  KEY = 6
         @ ROW,lcol SAY ""
         i = dl
         
      CASE  KEY = 13
         EXIT
         
      CASE  KEY = 27
         @ ROW,fcol SAY dat
         SET ESCAPE &tmpesc
         RETURN dat
         
      CASE  KEY > -10 .AND. KEY < 0 .OR. KEY = 5 .OR. KEY = 24
         ctrl = KEY
         EXIT
         
      CASE  KEY = 22
         ins___sni= .NOT. ins___sni
         IF ins___sni
            @ 0,40 SAY "ö§¢"
         ELSE
            @ 0,40 SAY "   "
         ENDIF
         @ ROW,fcol + i - 1 SAY ""
      ENDCASE
   ENDDO
   idt = idat
   i = 1
   DO WHILE i <= dl
      KEY = ASC(SUBSTR(idt ,i ,1))
      IF KEY > 127
         idt = STUFF(idt ,i ,1 ,CHR(KEY - 80))
      ENDIF
      i = i + 1
   ENDDO
   yer = VAL(SUBSTR(idt ,1 ,sp1 - 1))
   mon = VAL(SUBSTR(idt ,sp1 + 1 ,2))
   DAY = VAL(SUBSTR(idt ,sp2 + 1 ,2))
   IF yer < 0 .OR. yer > 1500
      i = 1
      ? CHR(7)
      @ ROW,fcol SAY ""
      LOOP
   ENDIF
   IF mon < 0 .OR. mon > 12
      i = sp1 + 1
      ? CHR(7)
      @ ROW,fcol + sp1 SAY ""
      LOOP
   ENDIF
   yer = yer - 2
   IF DAY < 0 .OR. (mon < 7 .AND. DAY > 31) .OR. (mon > 6 .AND. DAY > 30) .OR.;
         (yer # INT(yer / 4) * 4 .AND. mon = 12 .AND. DAY > 29)
      i = sp2 + 1
      ? CHR(7)
      @ ROW,fcol + sp2 SAY ""
      LOOP
   ENDIF
   ok = .T.
ENDDO
SET ESCAPE &tmpesc
RETURN idat
*: EOF: FDAT.PRG
