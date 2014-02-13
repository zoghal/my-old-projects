Code       SEGMENT Byte Public
           ASSUME  CS:Code
           Public  ConWrite
           Public  ConWriteLn

Comment *

   Write-to-screen routine using Dos function call 6 ('Direct Console I/O').

   Call in Turbo Pascal 4.0 and up:

   Procedure ConWrite(s : String); External;
   Procedure ConWriteLn(s : String); External;
   {$L CONWRITE.OBJ }
*

Cr         EQU     13
Lf         EQU     10
string     EQU     [BP+4]

ConWrite   PROC    Near
           CLC
           JMP     Short @@1

ConWriteLn:
           STC

@@1:       PUSH    BP
           MOV     BP, SP
           PUSH    DS
           PUSHF
           CLD
           XOR     AX, AX
           LDS     SI, string
           LODSB
           XCHG    AX, CX
           JCXZ    @@3

           MOV     AH, 6
@@2:       LODSB
           XCHG    DL, AL
           INT     21h
           LOOP    @@2

@@3:       POPF
           JNC     @@4
           MOV     DL, Cr
           INT     21h
           MOV     DL, Lf
           INT     21h

@@4:       POP     DS
           POP     BP
           RETN    4
ConWrite   ENDP

Code       ENDS
           END