PARAM ROW___WOR,COL___LOC,NST___TSN
PRIVATE I_______I , NSL___LSN , INST_TSNI , FCOL_LOCF , LCOL_LOCL , KEY___YEK
SET TALK OFF
SET ESCAPE OFF
CTRL = 0
IF ROW___WOR<1.OR.ROW___WOR>24.OR.COL___LOC<1.OR.COL___LOC>80
   RETURN (NST____TSN)
ENDIF
NSL___LSN = LEN(NST___TSN)
LCOL_LOCL = 80-COL___LOC
FCOL_LOCF = LCOL_LOCL+1-NSL___LSN
IF NSL___LSN<1.OR.FCOL_LOCF<0
   RETURN (NST____TSN)
ENDIF
INST_TSNI = NST___TSN
@ ROW___WOR , FCOL_LOCF SAY INST_TSNI
@ ROW___WOR , FCOL_LOCF SAY ""
I_______I = 1
DO WHILE I_______I<=NSL___LSN
   KEY___YEK = INKEY(0)
   DO CASE
      CASE KEY___YEK=127
           IF I_______I>1
              I_______I = I_______I-1
              INST_TSNI = STUFF(INST_TSNI,NSL___LSN+1,0," ")
              INST_TSNI = STUFF(INST_TSNI,I_______I,1,"")
              @ ROW___WOR , COL()-1 SAY SUBSTR(INST_TSNI,I_______I,NSL___LSN+1-I_______I)
              @ ROW___WOR , FCOL_LOCF+I_______I-1 SAY ""
           ENDIF
      CASE KEY___YEK=7
           INST_TSNI = STUFF(INST_TSNI,NSL___LSN+1,0," ")
           INST_TSNI = STUFF(INST_TSNI,I_______I,1,"")
           @ ROW___WOR , COL() SAY SUBSTR(INST_TSNI,I_______I,NSL___LSN+1-I_______I)
           @ ROW___WOR , FCOL_LOCF+I_______I-1 SAY ""
      CASE KEY___YEK=4
           IF COL()<LCOL_LOCL
              I_______I = I_______I+1
              @ ROW___WOR , COL()+1 SAY ""
           ENDIF
      CASE KEY___YEK=19
           IF COL()>FCOL_LOCF
              I_______I = I_______I-1
              @ ROW___WOR , COL()-1 SAY ""
           ENDIF
      CASE KEY___YEK>46.AND.KEY___YEK<58.OR.KEY___YEK=32.OR.KEY___YEK=45
           IF INS___SNI
               INST_TSNI = LEFT(STUFF(INST_TSNI,I_______I,0,SUBSTR(FCHR_RHCF,KEY___YEK,1)),NSL___LSN)
               @ ROW___WOR , COL() SAY SUBSTR(INST_TSNI,I_______I,NSL___LSN+1-I_______I)
               IF I_______I<NSL___LSN
                  @ ROW___WOR , FCOL_LOCF+I_______I SAY ""
               ENDIF
               I_______I = I_______I+1
            ELSE
               INST_TSNI = STUFF(INST_TSNI,I_______I,1,SUBSTR(FCHR_RHCF,KEY___YEK,1))
               ?? SUBSTR(FCHR_RHCF,KEY___YEK,1)
               I_______I = I_______I+1
            ENDIF
       CASE KEY___YEK=1
            @ ROW___WOR , FCOL_LOCF SAY ""
            I_______I = 1
       CASE KEY___YEK=6
            @ ROW___WOR , LCOL_LOCL SAY ""
            I_______I = NSL___LSN
       CASE KEY___YEK=13
            EXIT
       CASE KEY___YEK=27
            @ ROW___WOR , FCOL_LOCF SAY NST___TSN
            RETURN (NST___TSN)
       CASE KEY___YEK>-10.AND.KEY___YEK<0.OR.KEY___YEK=5.OR.KEY___YEK=24
            CTRL = KEY___YEK
            RETURN (INST_TSNI)
       CASE KEY___YEK=22
            INS___SNI = .NOT.INS___SNI
            IF INS___SNI
               @ 0 , 40 SAY "š¤¢"
            ELSE
               @ 0 , 40 SAY "   "
            ENDIF
            @ ROW___WOR , FCOL_LOCF+I_______I-1 SAY ""
    ENDCASE
ENDDO
IF I_______I>1.AND.I_______I<NSL___LSN+1
   INST_TSNI = SPACE(NSL___LSN+1-I_______I)+STUFF(INST_TSNI,I_______I,NSL___LSN+1-I_______I,"")
ENDIF
IF I_______I=1
   INST_TSNI = TRIM(INST_TSNI)
   I_______I = LEN(INST_TSNI)
   INST_TSNI = SPACE(NSL___LSN-I_______I)+INST_TSNI
ENDIF
@ ROW___WOR , FCOL_LOCF SAY INST_TSNI
RETURN (INST_TSNI)
