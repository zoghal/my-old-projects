FUNCTION FDTE
PRIVATE  Y___Y , M___M , D___D , ST___TS , N___N , D1___D1 , D2___2D
STOR 0 TO N___N
STOR SPACE(1) TO D1___1D , D2___2D
STOR SPACE(2) TO D___D , M___M
SET TALK OFF
IF SET('CENT')="ON"
   ST___TS=SPACE(10)
   Y___Y=SPACE(4)
ELSE
   ST___TS=SPACE(8)
   Y___Y=SPACE(2)
ENDIF
DO CASE
       CASE YEAR(DATE())=1992
	    IF MONTH(DATE())>=3
		  IF SET('CENT')="ON"
		      Y___Y="����"
		   ELSE
		      Y___Y="��"
		  ENDIF
	    ELSE
	       IF SET('CENT')="ON"
		  Y___Y="����"
	       ELSE
		  Y___Y="��"
	       ENDIF
	    ENDIF
	    IF MONTH(DATE())=3 .AND. DAY(DATE())>=21
		  IF SET('CENT')="ON"
		      Y___Y="����"
		   ELSE
		      Y___Y="��"
		  ENDIF
	    ENDIF
	    IF MONTH(DATE())=3 .AND. DAY(DATE())<21
	       IF SET('CENT')="ON"
		  Y___Y="����"
	       ELSE
		  Y___Y="��"
	       ENDIF
	    ENDIF
       CASE YEAR(DATE())=1993
	    IF MONTH(DATE())>=3
	       IF SET('CENT')="ON"
		  Y___Y="����"
	       ELSE
		  Y___Y="��"
	       ENDIF
	    ELSE
	       IF SET('CENT')="ON"
		  Y___Y="����"
	       ELSE
		  Y___Y="��"
	       ENDIF
	    ENDIF
	    IF MONTH(DATE())=3 .AND. DAY(DATE())>=21
		  IF SET('CENT')="ON"
		      Y___Y="����"
		   ELSE
		      Y___Y="��"
		  ENDIF
	    ENDIF
	    IF MONTH(DATE())=3 .AND. DAY(DATE())<21
	       IF SET('CENT')="ON"
		  Y___Y="����"
	       ELSE
		  Y___Y="��"
	       ENDIF
	    ENDIF
       CASE YEAR(DATE())=1994
	    IF MONTH(DATE())>=3
	       IF SET('CENT')="ON"
		  Y___Y="����"
	       ELSE
		  Y___Y="��"
	       ENDIF
	    ELSE
	       IF SET('CENT')="ON"
		  Y___Y="����"
	       ELSE
		  Y___Y="��"
	       ENDIF
	    ENDIF
	    IF MONTH(DATE())=3 .AND. DAY(DATE())>=21
		  IF SET('CENT')="ON"
		      Y___Y="����"
		   ELSE
		      Y___Y="��"
		  ENDIF
	    ENDIF
	    IF MONTH(DATE())=3 .AND. DAY(DATE())<21
	       IF SET('CENT')="ON"
		  Y___Y="����"
	       ELSE
		  Y___Y="��"
	       ENDIF
	    ENDIF
       CASE YEAR(DATE())=1995
	    IF MONTH(DATE())>=3
	       IF SET('CENT')="ON"
		  Y___Y="����"
	       ELSE
		  Y___Y="��"
	       ENDIF
	    ELSE
	       IF SET('CENT')="ON"
		  Y___Y="����"
	       ELSE
		  Y___Y="��"
	       ENDIF
	    ENDIF
	    IF MONTH(DATE())=3 .AND. DAY(DATE())>=21
		  IF SET('CENT')="ON"
		      Y___Y="����"
		   ELSE
		      Y___Y="��"
		  ENDIF
	    ENDIF
	    IF MONTH(DATE())=3 .AND. DAY(DATE())<21
	       IF SET('CENT')="ON"
		  Y___Y="����"
	       ELSE
		  Y___Y="��"
	       ENDIF
	    ENDIF
       CASE YEAR(DATE())=1996
	    IF MONTH(DATE())>=3
	       IF SET('CENT')="ON"
		  Y___Y="����"
	       ELSE
		  Y___Y="��"
	       ENDIF
	    ELSE
	       IF SET('CENT')="ON"
		  Y___Y="����"
	       ELSE
		  Y___Y="��"
	       ENDIF
	    ENDIF
	    IF MONTH(DATE())=3 .AND. DAY(DATE())>=21
		  IF SET('CENT')="ON"
		      Y___Y="����"
		   ELSE
		      Y___Y="��"
		  ENDIF
	    ENDIF
	    IF MONTH(DATE())=3 .AND. DAY(DATE())<21
	       IF SET('CENT')="ON"
		  Y___Y="����"
	       ELSE
		  Y___Y="��"
	       ENDIF
	    ENDIF
       CASE YEAR(DATE())=1997
	    IF MONTH(DATE())>=3
	       IF SET('CENT')="ON"
		  Y___Y="����"
	       ELSE
		  Y___Y="��"
	       ENDIF
	    ELSE
	       IF SET('CENT')="ON"
		  Y___Y="����"
	       ELSE
		  Y___Y="��"
	       ENDIF
	    ENDIF
	    IF MONTH(DATE())=3 .AND. DAY(DATE())>=21
		  IF SET('CENT')="ON"
		      Y___Y="����"
		   ELSE
		      Y___Y="��"
		  ENDIF
	    ENDIF
	    IF MONTH(DATE())=3 .AND. DAY(DATE())<21
	       IF SET('CENT')="ON"
		  Y___Y="����"
	       ELSE
		  Y___Y="��"
	       ENDIF
	    ENDIF
       CASE YEAR(DATE())=1998
	    IF MONTH(DATE())>=3
	       IF SET('CENT')="ON"
		  Y___Y="����"
	       ELSE
		  Y___Y="��"
	       ENDIF
	    ELSE
	       IF SET('CENT')="ON"
		  Y___Y="����"
	       ELSE
		  Y___Y="��"
	       ENDIF
	    ENDIF
	    IF MONTH(DATE())=3 .AND. DAY(DATE())>=21
		  IF SET('CENT')="ON"
		      Y___Y="����"
		   ELSE
		      Y___Y="��"
		  ENDIF
	    ENDIF
	    IF MONTH(DATE())=3 .AND. DAY(DATE())<21
	       IF SET('CENT')="ON"
		  Y___Y="����"
	       ELSE
		  Y___Y="��"
	       ENDIF
	    ENDIF
       CASE YEAR(DATE())=1999
	    IF MONTH(DATE())>=3
	       IF SET('CENT')="ON"
		  Y___Y="����"
	       ELSE
		  Y___Y="��"
	       ENDIF
	    ELSE
	       IF SET('CENT')="ON"
		  Y___Y="����"
	       ELSE
		  Y___Y="��"
	       ENDIF
	    ENDIF
	    IF MONTH(DATE())=3 .AND. DAY(DATE())>=21
		  IF SET('CENT')="ON"
		      Y___Y="����"
		   ELSE
		      Y___Y="��"
		  ENDIF
	    ENDIF
	    IF MONTH(DATE())=3 .AND. DAY(DATE())<21
	       IF SET('CENT')="ON"
		  Y___Y="����"
	       ELSE
		  Y___Y="��"
	       ENDIF
	    ENDIF
       CASE YEAR(DATE())=2000
	    IF MONTH(DATE())>=3
	       IF SET('CENT')="ON"
		  Y___Y="����"
	       ELSE
		  Y___Y="��"
	       ENDIF
	    ELSE
	       IF SET('CENT')="ON"
		  Y___Y="����"
	       ELSE
		  Y___Y="��"
	       ENDIF
	    ENDIF
	    IF MONTH(DATE())=3 .AND. DAY(DATE())>=21
		  IF SET('CENT')="ON"
		      Y___Y="����"
		   ELSE
		      Y___Y="��"
		  ENDIF
	    ENDIF
	    IF MONTH(DATE())=3 .AND. DAY(DATE())<21
	       IF SET('CENT')="ON"
		  Y___Y="����"
	       ELSE
		  Y___Y="��"
	       ENDIF
	    ENDIF
       OTHERWISE
	    ? CHR(7)
	    RETURN (ST___TS)
ENDCASE
DO CASE
       CASE MONTH(DATE())=1 .AND. DAY(DATE())<=20
	    M___M="��"
	    N___N=DAY(DATE())+10
	    IF N___N<10
	       D1___1D="�"
	    ELSE
	       D1___1D=CHR(ASC(SUBST(STR(N___N,2),1,1))+80)
	    ENDIF
	    D2___2D=CHR(ASC(SUBST(STR(N___N,2),2,1))+80)
	    D___D=D1___1D+D2___2D
       CASE MONTH(DATE())=1 .AND. DAY(DATE())>20
	    M___M="��"
	    N___N=DAY(DATE())-20
	    IF N___N<10
	       D1___1D="�"
	    ELSE
	       D1___1D=CHR(ASC(SUBST(STR(N___N,2),1,1))+80)
	    ENDIF
	    D2___2D=CHR(ASC(SUBST(STR(N___N,2),2,1))+80)
	    D___D=D1___1D+D2___2D
       CASE MONTH(DATE())=2 .AND. DAY(DATE())<=19
	    M___M="��"
	    N___N=DAY(DATE())+11
	    IF N___N<10
	       D1___1D="�"
	    ELSE
	       D1___1D=CHR(ASC(SUBST(STR(N___N,2),1,1))+80)
	    ENDIF
	    D2___2D=CHR(ASC(SUBST(STR(N___N,2),2,1))+80)
	    D___D=D1___1D+D2___2D
       CASE MONTH(DATE())=2 .AND. DAY(DATE())>19
	    M___M="��"
	    N___N=DAY(DATE())-19
	    IF N___N<10
	       D1___1D="�"
	    ELSE
	       D1___1D=CHR(ASC(SUBST(STR(N___N,2),1,1))+80)
	    ENDIF
	    D2___2D=CHR(ASC(SUBST(STR(N___N,2),2,1))+80)
	    D___D=D1___1D+D2___2D
       CASE MONTH(DATE())=3 .AND. DAY(DATE())<=20
	    M___M="��"
	    N___N=DAY(DATE())+10
	    IF N___N<10
	       D1___1D="�"
	    ELSE
	       D1___1D=CHR(ASC(SUBST(STR(N___N,2),1,1))+80)
	    ENDIF
	    D2___2D=CHR(ASC(SUBST(STR(N___N,2),2,1))+80)
	    D___D=D1___1D+D2___2D
       CASE MONTH(DATE())=3 .AND. DAY(DATE())>20
	    M___M="��"
	    N___N=DAY(DATE())-20
	    IF N___N<10
	       D1___1D="�"
	    ELSE
	       D1___1D=CHR(ASC(SUBST(STR(N___N,2),1,1))+80)
	    ENDIF
	    D2___2D=CHR(ASC(SUBST(STR(N___N,2),2,1))+80)
	    D___D=D1___1D+D2___2D
       CASE MONTH(DATE())=4 .AND. DAY(DATE())<=20
	    M___M="��"
	    N___N=DAY(DATE())+11
	    IF N___N<10
	       D1___1D="�"
	    ELSE
	       D1___1D=CHR(ASC(SUBST(STR(N___N,2),1,1))+80)
	    ENDIF
	    D2___2D=CHR(ASC(SUBST(STR(N___N,2),2,1))+80)
	    D___D=D1___1D+D2___2D
       CASE MONTH(DATE())=4 .AND. DAY(DATE())>20
	    M___M="��"
	    N___N=DAY(DATE())-20
	    IF N___N<10
	       D1___1D="�"
	    ELSE
	       D1___1D=CHR(ASC(SUBST(STR(N___N,2),1,1))+80)
	    ENDIF
	    D2___2D=CHR(ASC(SUBST(STR(N___N,2),2,1))+80)
	    D___D=D1___1D+D2___2D
       CASE MONTH(DATE())=5 .AND. DAY(DATE())<=21
	    M___M="��"
	    N___N=DAY(DATE())+10
	    IF N___N<10
	       D1___1D="�"
	    ELSE
	       D1___1D=CHR(ASC(SUBST(STR(N___N,2),1,1))+80)
	    ENDIF
	    D2___2D=CHR(ASC(SUBST(STR(N___N,2),2,1))+80)
	    D___D=D1___1D+D2___2D
       CASE MONTH(DATE())=5 .AND. DAY(DATE())>21
	    M___M="��"
	    N___N=DAY(DATE())-21
	    IF N___N<10
	       D1___1D="�"
	    ELSE
	       D1___1D=CHR(ASC(SUBST(STR(N___N,2),1,1))+80)
	    ENDIF
	    D2___2D=CHR(ASC(SUBST(STR(N___N,2),2,1))+80)
	    D___D=D1___1D+D2___2D
       CASE MONTH(DATE())=6 .AND. DAY(DATE())<=21
	    M___M="��"
	    N___N=DAY(DATE())+10
	    IF N___N<10
	       D1___1D="�"
	    ELSE
	       D1___1D=CHR(ASC(SUBST(STR(N___N,2),1,1))+80)
	    ENDIF
	    D2___2D=CHR(ASC(SUBST(STR(N___N,2),2,1))+80)
	    D___D=D1___1D+D2___2D
       CASE MONTH(DATE())=6 .AND. DAY(DATE())>21
	    M___M="��"
	    N___N=DAY(DATE())-21
	    IF N___N<10
	       D1___1D="�"
	    ELSE
	       D1___1D=CHR(ASC(SUBST(STR(N___N,2),1,1))+80)
	    ENDIF
	    D2___2D=CHR(ASC(SUBST(STR(N___N,2),2,1))+80)
	    D___D=D1___1D+D2___2D
       CASE MONTH(DATE())=7 .AND. DAY(DATE())<=22
	    M___M="��"
	    N___N=DAY(DATE())+9
	    IF N___N<10
	       D1___1D="�"
	    ELSE
	       D1___1D=CHR(ASC(SUBST(STR(N___N,2),1,1))+80)
	    ENDIF
	    D2___2D=CHR(ASC(SUBST(STR(N___N,2),2,1))+80)
	    D___D=D1___1D+D2___2D
       CASE MONTH(DATE())=7 .AND. DAY(DATE())>22
	    M___M="��"
	    N___N=DAY(DATE())-22
	    IF N___N<10
	       D1___1D="�"
	    ELSE
	       D1___1D=CHR(ASC(SUBST(STR(N___N,2),1,1))+80)
	    ENDIF
	    D2___2D=CHR(ASC(SUBST(STR(N___N,2),2,1))+80)
	    D___D=D1___1D+D2___2D
       CASE MONTH(DATE())=8 .AND. DAY(DATE())<=22
	    M___M="��"
	    N___N=DAY(DATE())+9
	    IF N___N<10
	       D1___1D="�"
	    ELSE
	       D1___1D=CHR(ASC(SUBST(STR(N___N,2),1,1))+80)
	    ENDIF
	    D2___2D=CHR(ASC(SUBST(STR(N___N,2),2,1))+80)
	    D___D=D1___1D+D2___2D
       CASE MONTH(DATE())=8 .AND. DAY(DATE())>22
	    M___M="��"
	    N___N=DAY(DATE())-22
	    IF N___N<10
	       D1___1D="�"
	    ELSE
	       D1___1D=CHR(ASC(SUBST(STR(N___N,2),1,1))+80)
	    ENDIF
	    D2___2D=CHR(ASC(SUBST(STR(N___N,2),2,1))+80)
	    D___D=D1___1D+D2___2D
       CASE MONTH(DATE())=9 .AND. DAY(DATE())<=22
	    M___M="��"
	    N___N=DAY(DATE())+9
	    IF N___N<10
	       D1___1D="�"
	    ELSE
	       D1___1D=CHR(ASC(SUBST(STR(N___N,2),1,1))+80)
	    ENDIF
	    D2___2D=CHR(ASC(SUBST(STR(N___N,2),2,1))+80)
	    D___D=D1___1D+D2___2D
       CASE MONTH(DATE())=9 .AND. DAY(DATE())>22
	    M___M="��"
	    N___N=DAY(DATE())-22
	    IF N___N<10
	       D1___1D="�"
	    ELSE
	       D1___1D=CHR(ASC(SUBST(STR(N___N,2),1,1))+80)
	    ENDIF
	    D2___2D=CHR(ASC(SUBST(STR(N___N,2),2,1))+80)
	    D___D=D1___1D+D2___2D
       CASE MONTH(DATE())=10 .AND. DAY(DATE())<=22
	    M___M="��"
	    N___N=DAY(DATE())+8
	    IF N___N<10
	       D1___1D="�"
	    ELSE
	       D1___1D=CHR(ASC(SUBST(STR(N___N,2),1,1))+80)
	    ENDIF
	    D2___2D=CHR(ASC(SUBST(STR(N___N,2),2,1))+80)
	    D___D=D1___1D+D2___2D
       CASE MONTH(DATE())=10 .AND. DAY(DATE())>22
	    M___M="��"
	    N___N=DAY(DATE())-22
	    IF N___N<10
	       D1___1D="�"
	    ELSE
	       D1___1D=CHR(ASC(SUBST(STR(N___N,2),1,1))+80)
	    ENDIF
	    D2___2D=CHR(ASC(SUBST(STR(N___N,2),2,1))+80)
	    D___D=D1___1D+D2___2D
       CASE MONTH(DATE())=11 .AND. DAY(DATE())<=21
	    M___M="��"
	    N___N=DAY(DATE())+9
	    IF N___N<10
	       D1___1D="�"
	    ELSE
	       D1___1D=CHR(ASC(SUBST(STR(N___N,2),1,1))+80)
	    ENDIF
	    D2___2D=CHR(ASC(SUBST(STR(N___N,2),2,1))+80)
	    D___D=D1___1D+D2___2D
       CASE MONTH(DATE())=11 .AND. DAY(DATE())>21
	    M___M="��"
	    N___N=DAY(DATE())-21
	    IF N___N<10
	       D1___1D="�"
	    ELSE
	       D1___1D=CHR(ASC(SUBST(STR(N___N,2),1,1))+80)
	    ENDIF
	    D2___2D=CHR(ASC(SUBST(STR(N___N,2),2,1))+80)
	    D___D=D1___1D+D2___2D
       CASE MONTH(DATE())=12 .AND. DAY(DATE())<=21
	    M___M="��"
	    N___N=DAY(DATE())+9
	    IF N___N<10
	       D1___1D="�"
	    ELSE
	       D1___1D=CHR(ASC(SUBST(STR(N___N,2),1,1))+80)
	    ENDIF
	    D2___2D=CHR(ASC(SUBST(STR(N___N,2),2,1))+80)
	    D___D=D1___1D+D2___2D
       CASE MONTH(DATE())=12 .AND. DAY(DATE())>21
	    M___M="��"
	    N___N=DAY(DATE())-21
	    IF N___N<10
	       D1___1D="�"
	    ELSE
	       D1___1D=CHR(ASC(SUBST(STR(N___N,2),1,1))+80)
	    ENDIF
	    D2___2D=CHR(ASC(SUBST(STR(N___N,2),2,1))+80)
	    D___D=D1___1D+D2___2D
ENDCASE
ST___TS=Y___Y+"/"+M___M+"/"+D___D
RETURN ST___TS
