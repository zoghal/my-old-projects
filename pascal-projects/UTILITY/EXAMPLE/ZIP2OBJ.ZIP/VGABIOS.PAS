{ VGABIOS - Interface to VGA BIOS routines (c) Wilbert van Leijen 1990-91 }

Unit VGABios;

Interface

Const
  MinIntensity = 0;
  MaxIntensity = 63;

Type
  ColPageMode  = (_4x64, _16x16);
  DisplayPage  = 0..7;
  FontBlock    = 0..7;
  CharSetType  = (INT1F, INT43, ROM8x14, ROM8x8lo, ROM8x8hi, ROM9x14,
                 ROM8x16, ROM9x16);
  ScanLineType = (CGA200, EGA350, VGA400);
  ColourRange  = MinIntensity..MaxIntensity;
  RGBType      = Record
                   r, g, b   : ColourRange;
                 end;
  RGB64Type    = Array[0..63] of RGBType;
  PaletteType  = Record
                   ColourReg : Array[0..15] of Byte;
                   Border    : Byte;
                 end;
Var
  VGAStatus    : (NotVGA, VGAMono, VGAColour);

Function GetVideoMode : Byte;
Procedure SetVideoMode(mode : Byte);
Function GetDisplayPage : Byte;
Procedure SetDisplayPage(page : DisplayPage);
Function GetRegister(register : Byte) : ColourRange;
Procedure SetRegister(register : Byte; colour : ColourRange);
Function GetBorderColour : ColourRange;
Procedure SetBorderColour(colour : ColourRange);
Procedure GetPalette(Var palette : PaletteType);
Procedure SetPalette(palette : PaletteType);
Procedure GetRGBValue(register : Byte; Var RGB : RGBType);
Procedure SetRGBValue(register : Byte; RGB : RGBType);
Function GetColourPage : Byte;
Procedure SetColourPage(page : Byte);
Function GetPageMode : ColPageMode;
Procedure SetPageMode(pagemode : ColPageMode);
Procedure GetColourBlock(Var RGBBlock : RGB64Type);
Procedure SetColourBlock(RGBBlock : RGB64Type);
Procedure SetBlink;
Procedure SetIntensity;
Procedure SaveCurrentPalette(enable : Boolean);
Procedure SetScanLine(scanlines : ScanLineType);
Procedure SumGrayScale(enable : Boolean);
Procedure CursorEmulation(emulate : Boolean);
Procedure GetFontBlock(Var primary, secondary : FontBlock);
Procedure SetFontBlock(primary, secondary : FontBlock);
Procedure LoadFont8x8;
Function GetFontPtr(charset : CharSetType) : Pointer;
Procedure LoadFont(block : FontBlock;
               startchar : Char;
    numofchars, charsize : Integer;
                 charptr : Pointer);

Implementation

{$R-,S-,I- }

Function GetVideoMode; External;
Function GetDisplayPage; External;
Procedure GetColourBlock; External;
Procedure SetColourBlock; External;
Procedure SetBlink; External;
Procedure SetIntensity; External;
Procedure GetPalette; External;
Procedure SetPalette; External;
Function GetColourPage; External;
Procedure SetColourPage; External;
Function GetPageMode; External;
Procedure SetPageMode; External;
{$L VGABIOS.OBJ }

{ Switch the default display page }

Procedure SetDisplayPage(page : DisplayPage); Assembler;

ASM
        MOV     AL, page
        MOV     AH, 5
        INT     10h
end;  { SetDisplayPage }

{ Switch cursor emulation }

Procedure CursorEmulation(emulate : Boolean); Assembler;

ASM
        MOV     DL, emulate
        XOR     AX, AX
        MOV     ES, AX
        MOV     SI, ES:[0487h]
        OR      DL, DL
        JZ      @1
        AND     Byte Ptr ES:[SI], (not 1)
        JMP     @2
@1:     OR      Byte Ptr ES:[SI], 1
@2:
end;  { CursorEmulation }

{ Set the current video mode.  You must call this procedure to switch
  some VGA features on or off }

Procedure SetVideoMode(mode : Byte); Assembler;

ASM

{  Get current cursor location  }

        CALL    Far Ptr GetDisplayPage
        MOV     AH, 3
        INT     10h

{  Set leftmost bit on to preserve screen contents  }

        MOV     AL, mode
        OR      AL, 80h
        MOV     AH, 0
        INT     10h

{  Restore cursor location  }

        MOV     AH, 2
        INT     10h

{  Set cursor to underline  }

        MOV     CX, 0607h
        MOV     AH, 1
        INT     10h
end;  { SetVideoMode }

{ Select the vertical scan line.  Select either CGA, EGA or VGA
  resolution }

Procedure SetScanLine(scanlines : ScanLineType); Assembler;

ASM
        MOV     AL, scanlines
        MOV     AH, 12h
        MOV     BL, 30h
        INT     10h
end;  { SetScanLine }

{ Sum all colours to gray scales.  Changes will take effect after
  next call to SetVideoMode }

Procedure SumGrayScale(enable : Boolean); Assembler;

ASM
        MOV     AL, enable
        OR      AL, AL
        JZ      @1
        DEC     AX
        JMP     @2
@1:     INC     AX
@2:     MOV     AH, 12h
        MOV     BL, 33h
        INT     10h
end;  { SumGrayScale }

{ Determine whether a call to SetVideoMode should reset the colours to
  their default values or not }

Procedure SaveCurrentPalette(enable : Boolean); Assembler;

ASM
        MOV     AL, enable
        MOV     AH, 12h
        MOV     BL, 31h
        INT     10h
end;  { SaveCurrentPalette }

{ Get colour information from a DAC register }

Function GetRegister(register : Byte) : ColourRange; Assembler;

ASM
        XOR     BX, BX
        MOV     BL, register
        MOV     AX, 1007h
        INT     10h
        MOV     AL, BH
end;  { GetRegister }

{ Store colour information to DAC register }

Procedure SetRegister(register : Byte; colour : ColourRange); Assembler;

ASM
        MOV     BH, colour
        MOV     BL, register
        MOV     AX, 1000h
        INT     10h
end;  { SetRegister }

{ Get the current border colour }

Function GetBorderColour : ColourRange; Assembler;

ASM
        MOV     AX, 1008h
        INT     10h
        MOV     AL, BH
end;  { GetBorderColour }

{ Store the current border colour }

Procedure SetBorderColour(colour : ColourRange); Assembler;

ASM
        MOV     BH, colour
        MOV     AX, 1001h
        INT     10h
end;  { SetBorderColour }

{ Get the Red, Green and Blue intensity from a DAC register }

Procedure GetRGBValue(register : Byte; Var RGB : RGBType); Assembler;

ASM
        LES     DI, RGB
        XOR     BX, BX
        MOV     BL, register
        MOV     AX, 1015h
        INT     10h
        MOV     AL, DH
        STOSB
        XCHG    AX, CX
        XCHG    AH, AL
        STOSW
end;  { GetRGBValue }

{ Store the Red, Green and Blue intensity into a DAC register }

Procedure SetRGBValue(register : Byte; RGB : RGBType); Assembler;

ASM
        PUSH    DS
        LDS     SI, RGB
        XOR     BX, BX
        MOV     BL, register
        LODSB
        MOV     DH, AL
        LODSW
        XCHG    CX, AX
        XCHG    CH, CL
        MOV     AX, 1010h
        INT     10h
        POP     DS
end;  { SetRGBValue }

{ Get font block index of current (resident) and alternate character set.
  Up to two fonts can be active at the same time }

Procedure GetFontBlock(Var primary, secondary : FontBlock); Assembler;

ASM

{  Get character map select register:
(VGA sequencer port 3C4h/3C5h index 3)

7  6  5  4  3  2  1  0
      ³  ³  ³  ³  ³  ³
      ³  ³  ³  ³  ÀÄÄÁÄÄ   Primary font   (lower 2 bits)
      ³  ³  ÀÄÄÁÄÄÄÄÄÄÄÄ   Secondary font (lower 2 bits)
      ³  ÀÄÄÄÄÄÄÄÄÄÄÄÄÄÄ   Primary font   (high bit)
      ÀÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄ   Secondary font (high bit)     }

        MOV     AL, 3
        MOV     DX, 3C4h
        OUT     DX, AL
        INC     DX
        IN      AL, DX
        MOV     BL, AL
        PUSH    AX

{  Get secondary font number: add up bits 5, 3 and 2  }

        SHR     AL, 1
        SHR     AL, 1
        AND     AL, 3
        TEST    BL, 00100000b
        JZ      @1
        ADD     AL, 4
@1:     LES     DI, secondary
        STOSB

{  Get primary font number: add up bits 4, 1 and 0  }

        POP     AX
        AND     AL, 3
        TEST    BL, 00010000b
        JZ      @2
        ADD     AL, 4
@2:     LES     DI, primary
        STOSB
end;  { GetFontBlock }

{ Store the font block index }

Procedure SetFontBlock(primary, secondary : FontBlock); Assembler;

ASM
        MOV     CH, primary
        MOV     CL, secondary
        XOR     BX, BX
        MOV     AX, CX

{  Code primary font into bits 4, 1 and 0  }

        AND     AH, 3
        TEST    CH, 00000100b
        JZ      @1
        ADD     BL, 10h
@1:     ADD     BL, AH

{  Code secondary font into bits 5, 3 and 2  }

        AND     AL, 3
        SHL     AL, 1
        SHL     AL, 1
        TEST    CL, 00000100b
        JZ      @2
        ADD     BL, 20h
@2:     ADD     BL, AL

{  Set block specifier  }

        MOV     AX, 1103h
        INT     10h
end;  { SetFontBlock }

{ Load the resident 8x8 font }

Procedure LoadFont8x8; Assembler;

ASM
        MOV     AX, 1112h
        MOV     BL, 0
        INT     10h
end;  { LoadFont8x8 }

{ Get a pointer to one of the eight resident VGA fonts }
 
Function GetFontPtr(charset : CharSetType) : Pointer; Assembler;

ASM
        MOV     BH, charset
        MOV     AX, 1130h
        INT     10h
        MOV     DX, ES
        MOV     AX, BP
end;  { GetFontPtr }

{ Load (a part of) a font.  When loaded into the active blocks, changes will
  affect display output }

Procedure LoadFont(block : FontBlock;
            startchar : Char;
 numofchars, charsize : Integer;
              charptr : Pointer); Assembler;
ASM
        MOV     BL, block
        XOR     DH, DH
        MOV     DL, startchar
        MOV     CX, numofchars
        MOV     BH, Byte Ptr charsize
        LES     BP, charptr
        MOV     AX, 1100h
        INT     10h
end;  { LoadFont }

Begin  { VGABios }
ASM

{  Determine whether active video system is VGA  }

        MOV     AX, 1A00h
        INT     10h
        MOV     AH, BL
        CMP     AX, 081Ah
        JE      @1
        MOV     DL, NotVGA
        JMP     @2
@1:     MOV     DL, VGAColour

{  VGA found, determine if registers are mapped to mono  }

        MOV     AX, 1200h
        MOV     BL, 10h
        INT     10h
        OR      BH, BH
        JZ      @2
        MOV     DL, VGAMono
@2:     MOV     [VGAStatus], DL
end;
end.  { VGABios }