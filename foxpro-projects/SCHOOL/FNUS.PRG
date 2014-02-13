FUNCTION FNUS
PARAMETER  ROW___WOR,COL___LOC,NUS___SUN
PRIVATE I_______I , NSL___LSN , INUS_SUNI , FCOL_LOCF , LCOL_LOCL , KEY___YEK , ND_____DN
SET TALK OFF
SET ESCAPE OFF
INS___SNI = .T.
@ 0 , 40 SAY "š¤¢"
CTRL = 0
IF ROW___WOR<1.OR.ROW___WOR>24.OR.COL___LOC<1.OR.COL___LOC>80
   RETURN (NUS___SUN)
ENDIF
STORE LEN(NUS___SUN) TO NSL___LSN
FCOL_LOCF = 80-COL___LOC
LCOL_LOCL = FCOL_LOCF+1-NSL___LSN
IF NSL___LSN<1.OR.LCOL_LOCL<0
   RETURN (NUS___SUN)
ENDIF
ND_____DN = 0
INUS_SUNI = NUS___SUN
@ ROW___WOR , LCOL_LOCL SAY INUS_SUNI
IF COL()=0
ELSE
   @ ROW___WOR , COL()-1 SAY ""
ENDIF
DO WHILE ND_____DN<NSL___LSN
   KEY___YEK = INKEY(0)
   DO CASE
      CASE KEY___YEK=7
           INUS_SUNI = " "+STUFF(INUS_SUNI,COL()+1-LCOL_LOCL,1,"")
           I_______I = COL()+1-LCOL_LOCL
           @ ROW___WOR , LCOL_LOCL SAY SUBSTR(INUS_SUNI,1,I_______I)
           IF COL()=0
           ELSE
              @ ROW___WOR , COL()-1 SAY ""
           ENDIF
           IF ND_____DN>0
              ND_____DN = ND_____DN-1
           ENDIF
      CASE KEY___YEK=127
           IF FCOL_LOCF>COL()
              INUS_SUNI = " "+STUFF(INUS_SUNI,COL()+2-LCOL_LOCL,1,"")
              I_______I = COL()+2-LCOL_LOCL
              @ ROW___WOR , LCOL_LOCL SAY SUBSTR(INUS_SUNI,1,I_______I)
              IF COL()=0
              ELSE
                 @ ROW___WOR , COL()-1 SAY ""
              ENDIF
              IF ND_____DN>0
                 ND_____DN = ND_____DN-1
              ENDIF
           ENDIF
      CASE KEY___YEK=4
           IF COL()<FCOL_LOCF
              @ ROW___WOR , COL()+1 SAY ""
              ND_____DN = FCOL_LOCF-COL()
           ENDIF
      CASE KEY___YEK=19
           IF COL()>LCOL_LOCL
              @ ROW___WOR , COL()-1 SAY ""
              ND_____DN = FCOL_LOCF-COL()
           ENDIF
      CASE KEY___YEK>46.AND.KEY___YEK<58.OR.KEY___YEK=32.OR.KEY___YEK=45
           INUS_SUNI = RIGHT(STUFF(INUS_SUNI,COL()+2-LCOL_LOCL,0,SUBSTR(FCHR_RHCF,KEY___YEK,1)),NSL___LSN)
           I_______I = COL()+1-LCOL_LOCL
           @ ROW___WOR , LCOL_LOCL SAY SUBSTR(INUS_SUNI,1,I_______I)
           IF COL()=0
           ELSE
              @ ROW___WOR , COL()-1 SAY ""
           ENDIF
           ND_____DN = ND_____DN+1
      CASE KEY___YEK=1
           @ ROW___WOR , FCOL_LOCF SAY ""
           ND_____DN = 0
      CASE KEY___YEK=6
           @ ROW___WOR , LCOL_LOCL SAY ""
           ND_____DN = NSL___LSN-1
      CASE KEY___YEK=13
           EXIT
      CASE KEY___YEK=27
      CASE KEY___YEK>-10.AND.KEY___YEK<0.OR.KEY___YEK=5.OR.KEY___YEK=24
           CTRL = KEY___YEK
           EXIT
   ENDCASE
ENDDO
RETURN (INUS_SUNI)

