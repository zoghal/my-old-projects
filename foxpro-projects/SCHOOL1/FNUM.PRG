*FUNCTION FNUM
PARAM ROW___WOR,COL___LOC,NUM1___MUN,NL_____LN,DL_____LD
PRIVATE I_______I , INUM_MUNI , PP_____PP , PTR___RTP , FCOL_LOCF , LCOL_LOCL , KEY___YEK , INM___MNI
SET TALK OFF
SET ESCAPE OFF
CTRL = 0
NUM___MUN=fstn(NUM1___MUN)

PRIVATE COLO,HCOL,WCOL,COL_O
COL_O=SET("COLOR TO")
COLO=COL_O
WCOL=AT(",",COLO)
COLO=RIGHT(COLO,LEN(COLO)-WCOL)
WCOL=AT(",",COLO)
HCOL=LEFT(COLO,WCOL-1)
SET COLOR TO &HCOL


IF ROW___WOR<0.OR.ROW___WOR>24.OR.COL___LOC<1.OR.COL___LOC>wcol().OR.DL_____LD<0.OR.DL_____LD>15
   RETURN (NUM___MUN)
ENDIF
LCOL_LOCL = COL___LOC
FCOL_LOCF = LCOL_LOCL+1-NL_____LN
IF NL_____LN<DL_____LD+1.OR.FCOL_LOCF<0
   RETURN (NUM___MUN)
ENDIF
SET DECIMALS TO DL_____LD
IF NUM___MUN<0
   I_______I = 1
ELSE
   I_______I = 0
ENDIF
IF DL_____LD>0
   I_______I = I_______I+1
ENDIF
IF ABS(NUM___MUN)<10**(NL_____LN-DL_____LD-I_______I)
   INUM_MUNI = STR(NUM___MUN,NL_____LN,DL_____LD)
   I_______I = 1
   DO WHILE I_______I<=NL_____LN
      INUM_MUNI = STUFF(INUM_MUNI,I_______I,1,SUBSTR(FCHR_RHCF,ASC(SUBSTR(INUM_MUNI,I_______I,1)),1))
      I_______I = I_______I+1
   ENDDO
ELSE
   INUM_MUNI = "*"
   I_______I = 1
   DO WHILE I_______I<NL_____LN
      INUM_MUNI = INUM_MUNI+"*"
      I_______I = I_______I+1
   ENDDO
ENDIF
IF DL_____LD=0
   PP_____PP = NL_____LN+1
ELSE
   PP_____PP = NL_____LN-DL_____LD
   INUM_MUNI = STUFF(INUM_MUNI,PP_____PP,1,",")
ENDIF
INM___MNI = INUM_MUNI
@ ROW___WOR , FCOL_LOCF SAY INUM_MUNI
IF PP_____PP=1
   @ ROW___WOR , FCOL_LOCF+1 SAY ""
   I_______I = 2
ELSE
   @ ROW___WOR , FCOL_LOCF SAY ""
   I_______I = 1
ENDIF
DO WHILE I_______I<=NL_____LN
   KEY___YEK = INKEY(0)
   DO CASE
      CASE KEY___YEK=127
	   IF I_______I>1
	      I_______I = I_______I-1
	      IF I_______I=PP_____PP
		 I_______I = I_______I-1
		 @ ROW___WOR , COL()-1 SAY ""
	      ENDIF
	      IF I_______I<PP_____PP
		 PTR___RTP = PP_____PP
	      ELSE
		 PTR___RTP = NL_____LN+1
	      ENDIF
	      INUM_MUNI = STUFF(INUM_MUNI,PTR___RTP,0," ")
	      INUM_MUNI = STUFF(INUM_MUNI,I_______I,1,"")
	      @ ROW___WOR , COL()-1 SAY SUBSTR(INUM_MUNI,I_______I,PTR___RTP-I_______I)
	      @ ROW___WOR , FCOL_LOCF+I_______I-1 SAY ""
	   ENDIF
      CASE KEY___YEK=7
	   IF I_______I<PP_____PP
	      PTR___RTP = PP_____PP
	   ELSE
	      PTR___RTP = NL_____LN+1
	   ENDIF
	   INUM_MUNI = STUFF(INUM_MUNI,PTR___RTP,0," ")
	   INUM_MUNI = STUFF(INUM_MUNI,I_______I,1,"")
	   @ ROW___WOR , COL() SAY SUBSTR(INUM_MUNI,I_______I,PTR___RTP-I_______I)
	   @ ROW___WOR , FCOL_LOCF+I_______I-1 SAY ""
      CASE KEY___YEK=4
	   IF COL()<LCOL_LOCL
	      I_______I = I_______I+1
	      IF I_______I=PP_____PP
		 I_______I = I_______I+1
		 @ ROW___WOR , COL()+2 SAY ""
	      ELSE
		 @ ROW___WOR , COL()+1 SAY ""
	      ENDIF
	   ENDIF
      CASE KEY___YEK=19
	   IF COL()>FCOL_LOCF
	      I_______I = I_______I-1
	      @ ROW___WOR , COL()-1 SAY ""
	      IF I_______I=PP_____PP
		 IF PP_____PP>1
		    I_______I = I_______I-1
		    @ ROW___WOR , COL()-1 SAY ""
		 ELSE
		    I_______I = I_______I+1
		    @ ROW___WOR , COL()+1 SAY ""
		 ENDIF
	      ENDIF
	   ENDIF
      CASE KEY___YEK=32.OR.KEY___YEK=43.OR.KEY___YEK=45.OR.KEY___YEK>47.AND.KEY___YEK<58
	   IF INS___SNI
	      IF I_______I<PP_____PP
		 INUM_MUNI = LEFT(STUFF(INUM_MUNI,I_______I,0,SUBSTR(FCHR_RHCF,KEY___YEK,1)),PP_____PP-1)+RIGHT(INUM_MUNI,DL_____LD+1)
		 @ ROW___WOR , COL() SAY SUBSTR(INUM_MUNI,I_______I,PP_____PP-I_______I)
	      ELSE
		 INUM_MUNI = LEFT(STUFF(INUM_MUNI,I_______I,0,SUBSTR(FCHR_RHCF,KEY___YEK,1)),NL_____LN)
		 @ ROW___WOR , COL() SAY SUBSTR(INUM_MUNI,I_______I,NL_____LN+1-I_______I)
	      ENDIF
	      I_______I = I_______I+1
	      IF I_______I=PP_____PP
		 I_______I = I_______I+1
	      ENDIF
	      IF I_______I>NL_____LN
		 EXIT
	      ENDIF
	      @ ROW___WOR , FCOL_LOCF+I_______I-1 SAY ""
	   ELSE
	      INUM_MUNI = STUFF(INUM_MUNI,I_______I,1,SUBSTR(FCHR_RHCF,KEY___YEK,1))
	      ?? SUBSTR(FCHR_RHCF,KEY___YEK,1)
	      I_______I = I_______I+1
	      IF I_______I=PP_____PP
		 I_______I = I_______I+1
		 @ ROW___WOR , COL()+1 SAY ""
	      ENDIF
	   ENDIF
      CASE KEY___YEK=35.OR.KEY___YEK=44.OR.KEY___YEK=46.OR.KEY___YEK=47
	   IF DL_____LD=0
	      EXIT
	   ENDIF
	   IF I_______I<PP_____PP
	      INUM_MUNI = SPACE(PP_____PP-I_______I)+SUBSTR(INUM_MUNI,1,I_______I-1)+RIGHT(INUM_MUNI,DL_____LD+1)
	      @ ROW___WOR , FCOL_LOCF SAY SUBSTR(INUM_MUNI,1,PP_____PP)
	      I_______I = PP_____PP+1
	   ENDIF
      CASE KEY___YEK=1
	   IF PP_____PP=1
	      @ ROW___WOR , FCOL_LOCF+1 SAY ""
	      I_______I = 2
	   ELSE
	      @ ROW___WOR , FCOL_LOCF SAY ""
	      I_______I = 1
	   ENDIF
      CASE KEY___YEK=6
	   @ ROW___WOR , LCOL_LOCL SAY ""
	   I_______I = NL_____LN
      CASE KEY___YEK=13
	   EXIT
       CASE KEY___YEK=27
	   exit
      CASE KEY___YEK>-10.AND.KEY___YEK<0.OR.KEY___YEK=5.OR.KEY___YEK=24.OR.KEY___YEK=15.OR.KEY___YEK=9
	   CTRL = KEY___YEK
	   I_______I = 1
	   EXIT
      CASE KEY___YEK=22
	   INS___SNI = .NOT.INS___SNI
	  *8' IF INS___SNI
	  *8'    @ 0 , 40 SAY "š¤¢"
	  *' ELSE
	  *'    @ 0 , 40 SAY "   "
	  *' ENDIF
	   @ ROW___WOR , FCOL_LOCF+I_______I-1 SAY ""
   ENDCASE
ENDDO
h_____h=KEY___YEK
IF I_______I>1.AND.I_______I<NL_____LN+1
   INUM_MUNI = STUFF(INUM_MUNI,I_______I,NL_____LN+1-I_______I,SPACE(NL_____LN+1-I_______I))
ENDIF
IF DL_____LD>0
   INUM_MUNI = STUFF(INUM_MUNI,PP_____PP,1,".")
ENDIF
I_______I = 1
DO WHILE I_______I<=NL_____LN
   KEY___YEK = ASC(SUBSTR(INUM_MUNI,I_______I,1))
   IF KEY___YEK>127
      INUM_MUNI = STUFF(INUM_MUNI,I_______I,1,CHR(KEY___YEK-80))
   ENDIF
   I_______I = I_______I+1
ENDDO
NUM___MUN = VAL(INUM_MUNI)
INUM_MUNI = STR(NUM___MUN,NL_____LN,DL_____LD)
I_______I = 1
DO WHILE I_______I<=NL_____LN
   INUM_MUNI = STUFF(INUM_MUNI,I_______I,1,SUBSTR(FCHR_RHCF,ASC(SUBSTR(INUM_MUNI,I_______I,1)),1))
   I_______I = I_______I+1
ENDDO
IF DL_____LD>0
   INUM_MUNI = STUFF(INUM_MUNI,PP_____PP,1,",")
ENDIF
@ ROW___WOR , FCOL_LOCF SAY INUM_MUNI
SET DECIMALS TO 2

do case

case h_____h=27
keyboard "{ESC}"

case h_____h=13
keyboard "{ENTER}"

case h_____h=-1
keyboard "{DNARROW}{UPARROW}"
keyboard "{F2}{DNARROW}{UPARROW}"

case h_____h=-2
keyboard "{DNARROW}{UPARROW}"
keyboard "{F3}{DNARROW}{UPARROW}"

case h_____h=-3
keyboard "{DNARROW}{UPARROW}"
keyboard "{F4}{DNARROW}{UPARROW}"

case h_____h=-4
keyboard "{DNARROW}{UPARROW}"
keyboard "{F5}{DNARROW}{UPARROW}"

case h_____h=-5
keyboard "{DNARROW}{UPARROW}"
keyboard "{F6}{DNARROW}{UPARROW}"

case h_____h=-6
keyboard "{DNARROW}{UPARROW}"
keyboard "{F7}{DNARROW}{UPARROW}"

case h_____h=-7
keyboard "{DNARROW}{UPARROW}"
keyboard "{F8}{DNARROW}{UPARROW}"

case h_____h=-8
keyboard "{DNARROW}{UPARROW}"
keyboard "{F9}{DNARROW}{UPARROW}"

case h_____h=-9
keyboard "{DNARROW}{UPARROW}"
keyboard "{F10}{DNARROW}{UPARROW}"

case h_____h=9
keyboard "{DNARROW}"

case h_____h=15
keyboard "{UPARROW}"

case h_____h=5
keyboard "{UPARROW}"

case h_____h=24
keyboard "{DNARROW}"

otherwise
keyboard "{DNARROW}"
endc

SET COLOR TO &COL_O
NUM___MUN=fnts(NUM___MUN,NL_____LN,DL_____LD)
RETURN (NUM___MUN)
