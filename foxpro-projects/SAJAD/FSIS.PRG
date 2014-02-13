PARAMETER STR___RTS
PRIVATE I_______I , J_______J , OSTR_RTSO
I_______I = 1
J_______J = LEN(STR___RTS)+1
OSTR_RTSO = SPACE(J_______J-1)
DO WHILE I_______I<J_______J
   OSTR_RTSO = STUFF(OSTR_RTSO,I_______I,1,SUBSTR(STR___RTS,J_______J-I_______I,1))
   I_______I = I_______I+1
ENDDO
RETURN (OSTR_RTSO)
