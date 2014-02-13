********** GFNUS.PRG
********************
PARAMETERS  row ,col ,nus
PRIVATE     i ,nsl ,inus ,fcol ,lcol ,key ,nd
tmpesc = SYS(2001,'ESCAPE')
SET TALK off
SET ESCAPE off
ins___sni = .T.
@ 0,40 SAY "š¤¢"
Ctrl = 0
IF row < 1 .OR. row > 24 .OR. col < 1 .OR. col > 80
   SET ESCAPE &tmpesc
   RETURN nus
ENDIF
STORE LEN(nus) TO nsl
fcol = 80 - col
lcol = fcol + 1 - nsl
IF nsl < 1 .OR. lcol < 0
  SET ESCAPE &tmpesc
  RETURN nus
ENDIF
nd = 0
inus = nus
@ row,lcol SAY inus
IF COL() = 0
   @ row,79 SAY ""
ELSE
   @ row,COL() - 1 SAY ""
ENDIF
DO WHILE nd < nsl
   key = INKEY(0)
   DO CASE
      CASE  key = 7
            inus = " " + STUFF(inus ,COL() + 1 - lcol ,1 ,"")
            i = COL() + 1 - lcol
            @ row,lcol SAY SUBSTR(inus ,1 ,i)
            IF COL() = 0
               @ row,79 SAY ""
            ELSE
               @ row,COL() - 1 SAY ""
            ENDIF
            IF nd > 0
               nd = nd - 1
            ENDIF

      CASE  key = 127
            IF fcol > COL()
               inus = " " + STUFF(inus ,COL() + 2 - lcol ,1 ,"")
               i = COL() + 2 - lcol
               @ row,lcol SAY SUBSTR(inus ,1 ,i)
               IF COL() = 0
                  @ row,79 SAY ""
               ELSE
                  @ row,COL() - 1 SAY ""
               ENDIF
               nd = nd - 1
            ENDIF

      CASE  key = 4
            IF COL() < fcol
               @ row,COL() + 1 SAY ""
               nd = fcol - COL()
            ENDIF

      CASE  key = 19
            IF COL() > lcol
               @ row,COL() - 1 SAY ""
               nd = fcol - COL()
            ENDIF

      CASE  key > 46 .AND. key < 58 .OR. key = 32 .OR. key = 45
            inus = RIGHT(STUFF(inus ,COL() + 2 - lcol ,0 ,SUBSTR(fchr_rhcf ,key ,1)) ,nsl)
            i = COL() + 1 - lcol
            @ row,lcol SAY SUBSTR(inus ,1 ,i)
            IF COL() = 0
               @ row,79 SAY ""
            ELSE
               @ row,COL() - 1 SAY ""
            ENDIF
            nd = nd + 1

      CASE  key = 1
            @ row,fcol SAY ""
            nd = 0

      CASE  key = 6
            @ row,lcol SAY ""
            nd = nsl - 1

      CASE  key = 13
            EXIT

      CASE  key = 27
            @ row,lcol SAY nus
            SET ESCAPE &tmpesc
            RETURN nus

      CASE  key > -10 .AND. key < 0 .OR. key = 5 .OR. key = 24
            Ctrl = key
            EXIT

   ENDCASE
ENDDO
SET ESCAPE &tmpesc
RETURN inus
