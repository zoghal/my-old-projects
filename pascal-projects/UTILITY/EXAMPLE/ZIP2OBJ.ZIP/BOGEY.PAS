Program Bogey;
uses XZip, VGABios;

{$R-,S-,I-

  Demo showing how to use XZIP.  This program displays a picture of
  Humphrey Bogart in VGA mode 13h.

  Restrictions:
  컴컴컴컴컴컴
  - Needs version 6.0 of TP or 1.0 of TPW to compile
  - Requires VGA adapter to run

  Usage notes:
  컴컴컴컴컴�
  - Convert imploded image of Bogey to an .OBJ file, compile program
    and run it:
         ZIP2OBJ BOGEY BOGEY.BIN BOGEY
         TPC BOGEY
         BOGEY

  Written by Wilbert van Leijen, Amsterdam 1991.  }

Const
  shades       = 32;      { Bogey comes in 32 shades of gray+border colour }
  DACTable     : Array[0..shades] of RGBType = (
                  (r:20; g:20; b:20), (r:45; g:45; b:45), (r:47; g:47; b:47),
                  (r:51; g:51; b:51), (r:53; g:53; b:53), (r:49; g:49; b:49),
                  (r:55; g:55; b:55), (r:57; g:57; b:57), (r:59; g:59; b:59),
                  (r:61; g:61; b:61), (r:61; g:61; b:63), (r:63; g:63; b:63),
                  (r:59; g:59; b:61), (r:43; g:43; b:43), (r:37; g:37; b:37),
                  (r:33; g:33; b:33), (r:35; g:35; b:35), (r:39; g:39; b:39),
                  (r:28; g:28; b:28), (r:26; g:26; b:26), (r:24; g:24; b:24),
                  (r:22; g:22; b:22), (r:18; g:18; b:18), (r:16; g:16; b:16),
                  (r:12; g:12; b:12), (r:10; g:10; b:10), (r:31; g:31; b:31),
                  (r: 8; g: 8; b: 8), (r:14; g:14; b:14), (r:41; g:41; b:41),
                  (r:20; g:20; b:20), (r:57; g:57; b:59), (r:53; g:53; b:55));
Var
  LastMode     : Byte;

{ Link in compressed picture of Humphrey Bogart, a.k.a. 'Bogey' }

Function BogeySize : Word; Far; External;
Procedure ExplodeBogey(Var buffer); Far; External;
{$L BOGEY.OBJ }

Procedure ConWrite(s : String); External;
Procedure ConWriteLn(s : String); External;
{$L CONWRITE.OBJ }

{ Fade Bogey smoothly out }
 
Procedure DimDisplay; Assembler;

ASM
        PUSH   DS
        POP    ES
        MOV    BX, MaxIntensity

  { VGA port 3C8h: PEL address register, (colour index, with auto increment)
    VGA port 3C9h: PEL write register (R, G, B) }

        CLD
@1:     LEA    SI, DACTable
        MOV    DI, SI
        MOV    CX, 3*(shades+2)
        XOR    AX, AX
        MOV    DX, 3C8h
        OUT    DX, AL
        INC    DX

  { Get colour value, decrement it and update the table }

@2:     LODSB
        OR     AX, AX
        JZ     @3
        DEC    AX
@3:     STOSB
        OUT    DX, AL
        LOOP   @2

  { Delay before next decrement of R, G, B values }

        MOV    CX, 30000
@4:     LOOP   @4
        DEC    BX
        OR     BX, BX
        JNZ    @1
end;  { DimDisplay }

Begin  { Bogey }
  If VGAStatus = NotVGA Then
    Begin
      ConWriteLn('This program requires a VGA adapter');
      Exit;
    end;
  LastMode := Mem[$0000:$0449];
  ASM
        MOV    AX, 13h                 { Set VGA Mode 13h: 320x200x256 }
        INT    10h
        MOV    AX, 1012h               { Set block of DAC registers }
        MOV    CX, shades+1
        XOR    BX, BX
        PUSH   DS
        POP    ES
        LEA    DX, DACTable
        INT    10h
  end;
  ExplodeBogey(Ptr($A000, $0000)^);
  ASM
        MOV    AX, 0C07h               { Wait for key to be pressed }
        INT    21h
  end;
  DimDisplay;
  ASM
        MOV    AL, [LastMode]          { Set text mode }
        MOV    AH, 0
        INT    10h
  end;
end.  { Bogey }
