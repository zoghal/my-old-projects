*:*****************************************************************************
*:
*: Procedure file: G:\K717168\HA\FSTR.PRG
*:
*:         System: ¯§ê¢ ©°ï Ùó®˛®
*:         Author:  ¸˜Ú¢§ê ˆ®ü
*:      Copyright (c) 1995,  §¯ï ¸®ı™¢˛˙™ ¸Ûê‰ ©•¯ıç •Ó§ı
*:  Last modified: 06/15/92     12:37
*:
*:  Procs & Fncts: FSTR()
*:
*:      Documented 01/31/95 at 08:21               FoxDoc  version 2.10f
*:*****************************************************************************
********** GFSTR.PRG
********************
PARAMETERS  ROW ,COL ,STR
PRIVATE  i ,sl ,istr ,fcol ,lcol
PRIVATE  KEY ,eng ,nd ,ata ,fc ,con ,psp
PRIVATE  st1 ,st2 ,st3 ,st4 ,st5 ,st6 ,st7
tmpesc = SYS(2001,'ESCAPE')
SET TALK OFF
SET ESCAPE OFF
ctrl = 0
IF ROW < 1 .OR. ROW > 24 .OR. COL < 1 .OR. COL > 80
   SET ESCAPE &tmpesc
   RETURN STR
ENDIF
STORE LEN(STR) TO i ,sl
fcol = 80 - COL
lcol = fcol + 1 - sl
IF sl < 1 .OR. lcol < 0
   SET ESCAPE &tmpesc
   RETURN STR
ENDIF
nd = 0
eng = .F.
con = .T.
istr = STR
st1 = ' .èä":å%=' + CHR(141)
st2 = '˛ı‰®™˜ÓìüõÛÍó˚¨°˙ïÏÆùË„Áôé'
st3 = '˝Ù·ß©ˆÌíûöÒÈñ˘Ô´†˘îÎ≠úÂ‚Êòè'
st4 = st2 + 'Ø‡ã'
st5 = 'ê‰·ËÂ˚˝'
st6 = 'ë„‚ÁÊ˙¸'
st7 = 'ë¯ê¢§•˝£¶' + st1 + st3
@ ROW,lcol SAY istr
@ ROW,fcol SAY ""
DO WHILE i > 0
   KEY = INKEY(0)
   psp = .T.
   DO CASE
   CASE  KEY = 7
      istr = " " + STUFF(istr ,i ,1 ,"")
      @ ROW,lcol SAY SUBSTR(istr ,1 ,i)
      IF COL() = 0
         @ ROW,79 SAY ""
      ELSE
         @ ROW,COL() - 1 SAY ""
      ENDIF
      IF nd > 0
         nd = nd - 1
      ENDIF
      
   CASE  KEY = 127
      IF i < sl
         i = i + 1
         istr = " " + STUFF(istr ,i ,1 ,"")
         @ ROW,lcol SAY SUBSTR(istr ,1 ,i)
         IF COL() = 0
            @ ROW,79 SAY ""
         ELSE
            @ ROW,COL() - 1 SAY ""
         ENDIF
      ENDIF
      IF nd > 0
         nd = nd - 1
      ENDIF
      
   CASE  KEY = 4
      IF COL() < fcol
         @ ROW,COL() + 1 SAY ""
         i = i + 1
      ENDIF
      nd = 0
      
   CASE  KEY = 19
      IF COL() > lcol
         @ ROW,COL() - 1 SAY ""
         i = i - 1
      ENDIF
      nd = 0
      
   CASE  KEY = 1
      @ ROW,fcol SAY ""
      i = sl
      nd = 0
      
   CASE  KEY = 6
      @ ROW,lcol SAY ""
      i = 1
      nd = 0
      
   CASE  KEY = 2
      istr = SPACE(sl - i) + LEFT(istr ,i)
      @ ROW,lcol SAY istr
      @ ROW,fcol SAY ""
      i = sl
      nd = 0
      
   CASE  KEY = 26
      istr = STUFF(istr ,1 ,i ,SPACE(i))
      @ ROW,lcol SAY SPACE(i)
      IF COL() = 0
         @ ROW,79 SAY ""
      ELSE
         @ ROW,COL() - 1 SAY ""
      ENDIF
      nd = 0
      
   CASE  KEY = 29
      istr = SPACE(sl)
      @ ROW,lcol SAY istr
      @ ROW,fcol SAY ""
      i = sl
      nd = 0
      
   CASE  KEY = 13
      IF AT(SUBSTR(istr ,i ,1) ,st1) = 0
         i = 0
      ENDIF
      EXIT
      
   CASE  KEY > -10 .AND. KEY < 0 .OR. KEY = 5 .OR. KEY = 24
      ctrl = KEY
      EXIT
      
   CASE  KEY = 27
      @ ROW,lcol SAY STR
      SET ESCAPE &tmpesc
      RETURN STR
      
   CASE  KEY = 28
      con = .NOT. con
      
   CASE  KEY = 22
      ins___sni = .NOT. ins___sni
      IF ins___sni
         @ 0,40 SAY "ö§¢"
      ELSE
         @ 0,40 SAY "   "
      ENDIF
      @ ROW,lcol + i - 1 SAY ""
      
   CASE  KEY = 126
      eng = .NOT. eng
      IF nd > 0
         @ ROW,COL() - nd SAY ""
         i = i - nd
         nd = 0
      ENDIF
      
   CASE  KEY > 31 .AND. KEY < 126
      IF eng
         IF con
            IF i < sl
               ata = AT(SUBSTR(istr ,i + 1 ,1) ,st2)
               IF ata > 0
                  fc = SUBSTR(st3 ,ata ,1)
                  IF fc = "˝"
                     IF i < sl - 1
                        IF AT(SUBSTR(istr,i+2,1),st4) > 0
                           fc = "˝"
                        ENDIF
                     ENDIF
                  ENDIF
                  istr = STUFF(istr ,i + 1 ,1 ,fc)
                  @ ROW,lcol + i SAY fc
                  IF KEY = 32
                     IF COL() > 1
                        @ ROW,COL() - 2 SAY ""
                     ELSE
                        @ ROW,79 SAY ""
                     ENDIF
                     LOOP
                  ENDIF
               ENDIF
            ENDIF
         ENDIF
         istr = RIGHT(STUFF(istr ,i + 1 ,0 ,CHR(KEY)) ,sl)
         @ ROW,lcol SAY SUBSTR(istr ,1 ,i)
         IF COL() = 0
            @ ROW,79 SAY ""
         ELSE
            @ ROW,COL() - 1 SAY ""
         ENDIF
         nd = nd + 1
         IF nd = i
            EXIT
         ENDIF
         IF con
            IF nd = 1
               ata = AT(SUBSTR(istr ,i - 1 ,1) ,st6)
               IF ata > 0
                  istr = STUFF(istr ,i - 1 ,1 ,SUBSTR(st5 ,ata ,1))
                  @ ROW,lcol + i - 2 SAY SUBSTR(istr ,i - 1 ,1)
                  @ ROW,lcol + i - 1 SAY ""
               ENDIF
            ENDIF
         ENDIF
         LOOP
      ENDIF {IF eng}
      IF KEY = 36 .OR. KEY > 39 .AND. KEY < 58 .AND. .NOT. (KEY = 44 .OR. KEY = 46)
         IF con
            IF i < sl
               ata = AT(SUBSTR(istr ,i + 1 ,1) ,st2)
               IF ata > 0
                  fc = SUBSTR(st3 ,ata ,1)
                  IF fc = "˝"
                     IF i < sl - 1
                        IF AT(SUBSTR(istr ,i + 2 ,1) ,st4) > 0
                           fc = "˝"
                        ENDIF
                     ENDIF
                  ENDIF
                  istr = STUFF(istr ,i + 1 ,1 ,fc)
                  @ ROW,lcol + i  SAY fc
               ENDIF
            ENDIF
         ENDIF
         istr = RIGHT(STUFF(istr ,i + 1 ,0 ,SUBSTR(fchr_rhcf ,KEY ,1)) ,sl)
         @ ROW,lcol  SAY SUBSTR(istr ,1 ,i)
         IF COL() = 0
            @ ROW,79 SAY ""
         ELSE
            @ ROW,COL() - 1 SAY ""
         ENDIF
         nd = nd + 1
         IF nd = i
            EXIT
         ENDIF
         IF con
            IF nd = 1
               ata = AT(SUBSTR(istr ,i - 1 ,1) ,st6)
               IF ata > 0
                  istr = STUFF(istr ,i - 1 ,1 ,SUBSTR(st5 ,ata ,1))
                  @ ROW,lcol + i - 2  SAY SUBSTR(istr ,i - 1 ,1)
                  @ ROW,lcol + i - 1  SAY ""
               ENDIF
            ENDIF
         ENDIF
         LOOP
      ENDIF
      IF nd > 0
         @ ROW,COL() - nd  SAY ""
         i = i - nd
         nd = 0
      ENDIF
      fc = SUBSTR(fchr_rhcf ,KEY ,1)
      IF con
         ata = AT(fc ,st1)
         IF ata > 0 .AND. i < sl
            ata = AT(SUBSTR(istr ,i + 1 ,1) ,st2)
            IF ata > 0
               fc = SUBSTR(st3 ,ata ,1)
               IF fc = "˝"
                  IF i < sl - 1
                     IF AT(SUBSTR(istr ,i + 2 ,1) ,st4) > 0
                        fc = "˝"
                     ENDIF
                  ENDIF
               ENDIF
               istr = STUFF(istr ,i + 1 ,1 ,fc)
               @ ROW,lcol + i SAY fc
               IF KEY = 32
                  psp = .F.
                  IF COL() > 1
                     @ ROW,COL() - 2 SAY ""
                  ELSE
                     @ ROW,79 SAY ""
                  ENDIF
               ENDIF
            ENDIF
         ENDIF
         fc = SUBSTR(fchr_rhcf ,KEY ,1)
         ata = AT(fc ,st5)
         IF ata > 0 .AND. i < sl
            IF AT(SUBSTR(istr ,i + 1 ,1) ,st4) > 0
               fc = SUBSTR(st6 ,ata ,1)
            ENDIF
         ENDIF
         ata = AT(fc ,st6)
         IF ata > 0 .AND. i < sl
            IF AT(SUBSTR(istr ,i + 1 ,1) ,st7) > 0
               fc = SUBSTR(st5 ,ata ,1)
            ENDIF
         ENDIF
      ENDIF
      IF psp
         IF ins___sni
            istr = RIGHT(STUFF(istr ,i + 1 ,0 ,fc) ,sl)
            @ ROW,lcol  SAY SUBSTR(istr ,1 ,i)
         ELSE
            istr = STUFF(istr ,i ,1 ,fc)
            @ ROW,lcol + i - 1  SAY fc
         ENDIF
         IF COL() > 1
            @ ROW,COL() - 2  SAY ""
         ELSE
            @ ROW,79 SAY ""
         ENDIF
         i = i - 1
      ENDIF
      IF con
         IF i > 0
            IF SUBSTR(istr ,i ,1) # " "
               IF AT(fc ,st7) > 0
                  ata = AT(SUBSTR(istr ,i ,1) ,st6)
                  IF ata > 0
                     istr = STUFF(istr ,i ,1 ,SUBSTR(st5 ,ata ,1))
                     @ ROW,lcol + i - 1  SAY SUBSTR(istr ,i ,1)
                     @ ROW,lcol + i - 1  SAY ""
                  ENDIF
               ELSE
                  ata = AT(SUBSTR(istr ,i ,1) ,st5)
                  IF ata > 0
                     istr = STUFF(istr ,i ,1 ,SUBSTR(st6 ,ata ,1))
                     @ ROW,lcol + i - 1  SAY SUBSTR(istr ,i ,1)
                     @ ROW,lcol + i - 1  SAY ""
                  ENDIF
               ENDIF
            ENDIF
         ENDIF
      ENDIF
   ENDCASE
ENDDO
IF con
   IF i < sl
      ata = AT(SUBSTR(istr ,i + 1 ,1) ,st2)
      IF ata > 0
         fc = SUBSTR(st3 ,ata ,1)
         IF fc = "˝"
            IF i < sl - 1
               IF AT(SUBSTR(istr ,i + 2 ,1) ,st4) > 0
                  fc = "˝"
               ENDIF
            ENDIF
         ENDIF
         istr = STUFF(istr ,i + 1 ,1 ,fc)
         @ ROW,lcol + i  SAY fc
      ENDIF
   ENDIF
ENDIF
SET ESCAPE &tmpesc
RETURN istr
*: EOF: FSTR.PRG
