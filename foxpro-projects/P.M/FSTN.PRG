PARAMETER NST___TSN
PRIVATE NSL___LSN , INST_TSNI , NUM___MUN , KEY___YEK , I_______I , DP_____PD , DL_____LD
SET TALK OFF
SET ESCAPE OFF
INST_TSNI = LTRIM(NST___TSN)
NSL___LSN = LEN(INST_TSNI)
DP_____PD = .F.
DL_____LD = 0
I_______I = 1
DO WHILE I_______I<=NSL___LSN
   KEY___YEK = ASC(SUBSTR(INST_TSNI,I_______I,1))
   IF KEY___YEK>127
      KEY___YEK = KEY___YEK-80
      INST_TSNI = STUFF(INST_TSNI,I_______I,1,CHR(KEY___YEK))
   ENDIF
   IF KEY___YEK>47.AND.KEY___YEK<58
      IF DP_____PD
         DL_____LD = DL_____LD+1
      ENDIF
      I_______I = I_______I+1
   ELSE
      IF (KEY___YEK=44.OR.KEY___YEK=46).AND..NOT.DP_____PD
         INST_TSNI = STUFF(INST_TSNI,I_______I,1,".")
         DP_____PD = .T.
         I_______I = I_______I+1
         LOOP
      ENDIF
      IF KEY___YEK=45.AND.I_______I=1
         I_______I = I_______I+1
         LOOP
      ENDIF
      EXIT
   ENDIF
ENDDO
IF DL_____LD>15
   DL_____LD = 15
ENDIF
SET DECIMALS TO DL_____LD
NUM___MUN = VAL(INST_TSNI)
SET DECIMALS TO 2
RETURN (NUM___MUN)
