PAGE 59, 132
LOCALS @@

Code       SEGMENT Byte Public
           ASSUME  CS:Code
           Public  GetVideoMode, GetDisplayPage
           Public  GetColourBlock, SetColourBlock
           Public  SetBlink, SetIntensity
           Public  GetPalette, SetPalette
           Public  GetColourPage, SetColourPage
           Public  GetPageMode, SetPageMode

;  Function GetVideoMode : Byte;
;  Function GetDisplayPage : Byte;

GetVideoMode PROC
           CLC
           JMP     Short @@1

GetDisplayPage:
           STC
@@1:       MOV     AH, 0Fh
           INT     10h
           JNC     @@2
           MOV     AL, BH
@@2:       RETF
GetVideoMode ENDP

;  Procedure SetBlink;
;  Procedure SetIntensity;

SetBlink   PROC
           MOV     BL, 1
           JMP     Short @@1

SetIntensity:
           MOV     BL, 0
@@1:       MOV     AX, 1003h
           INT     10h
           RETF
SetBlink   ENDP

;  Procedure GetPalette(Var palette : PaletteType);
;  Procedure SetPalette(palette : PaletteType);

GetPalette PROC
           MOV     AX, 1009h
           JMP     Short @@1

SetPalette:
           MOV     AX, 1002h
@@1:       PUSH    BP
           MOV     BP, SP

           mov     dx, 3dah
           cli
@@2:       in      al, dx
           test    al, 8
           jnz     @@4
           rcr     al, 1
           jc      @@2
@@3:       in      al, dx
           rcr     al, 1
           jnc     @@3
@@4:       sti

           LES     DX, [BP+6]
           INT     10h
           POP     BP
           RETF    4
GetPalette ENDP

;  Function GetColourPage : Byte;
;  Function GetPageMode : ColPageMode;

GetColourPage PROC
           CLC
           JMP     Short @@1

GetPageMode:
           STC
@@1:       MOV     AX, 101Ah
           INT     10h
           JNC     @@2
           MOV     AL, BL
           RETF

@@2:       MOV     AL, BH
           RETF
GetColourPage ENDP

;  Procedure SetColourPage(page : Byte);
;  Procedure SetPageMode(pagemode : ColPageMode);

SetColourPage PROC
           MOV     BL, 1
           JMP     Short @@1

SetPageMode:
           MOV     BL, 0
@@1:       PUSH    BP
           MOV     BP, SP
           MOV     BH, [BP+6]
           MOV     AX, 1013h
           INT     10h
           POP     BP
           RETF    2
SetColourPage ENDP

;  Procedure GetColourBlock(Var RGBBlock : RGB64Type);
;  Procedure SetColourBlock(RGBBlock : RGB64Type);

GetColourBlock PROC
           MOV     AX, 1017h
           JMP     Short @@1

SetColourBlock:
           MOV     AX, 1012h
@@1:       PUSH    BP
           MOV     BP, SP
           LES     DX, [BP+6]
           XOR     BX, BX
           MOV     CX, 64
           INT     10h
           POP     BP
           RETF    4
GetColourBlock ENDP

Code       ENDS
           END