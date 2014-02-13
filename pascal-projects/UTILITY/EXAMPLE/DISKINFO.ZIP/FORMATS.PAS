{$F+,O+,D-}
{
Jim - Here's a quick program to use this unit:

program Test;
uses
  Formats;

var
  S: String;

begin
  S := 'Sam';
  S := RSet(S, 20);
  WriteLn(S);
end.
}

Unit Formats;
Interface
Type
  WorkString = String[80];

var
  Work : WorkString;
  Truncated : Boolean;

Function HexByte(src:Byte) : String;
Function HexInt(Src: Word): String;
Function HexLong(Src: LongInt): String;
Function LSet(src: String; Width : Integer) : String;
Function RSet(src: String; Width : Integer) : String;
Function Zoned(Src : WorkString) : String;
Function InsCommas(Src: LongInt): String;
Function Zword(src : Word; width : Integer) : String;
Function ZLong(Src : LongInt; width : Integer) : String;
Function CWord(Src : LongInt; width : Integer) : String;
Implementation

Function HexByte;
Const
  Digit : Array[0..15] of Char = '0123456789ABCDEF';
  Begin
    HexByte := Digit [src SHR 4] + Digit [src AND $0F];
  End;

Function HexInt(Src: Word): String;
  Begin
    HexInt := HexByte(Hi(Src)) + HexByte(Lo(Src));
  End;

Function HexLong(Src: LongInt): String;
Type
  Components = Record Case Integer of
    1: (Half: Array [0..1] of Word);
    2: (Full: LongInt);
  end;
Var
  Source: Components;
  Begin
    Source.Full := Src;
    HexLong := HexInt(Source.Half[1]) + HexInt(Source.Half[0]);
  End;

Function LSet;
var
  I : Integer;
  Begin
    Truncated := False;
    Work := src;
    if(Length(Work) > Width) and (Width > 0) then begin
      Work[0] := CHR(Width);
      Truncated := True;
    end
    else for i := Length(Work) to width do
      Work := Work + ' ';
    LSet := Work;
  End;


Function RSet;
var
  I : Integer;
  Begin
    Truncated := False;
    Work := src;
    if(Length(Work) > Width) and (Width > 0) then begin
      Work[0] := CHR(Width);
      Truncated := True;
    end
    else for i := Length(Work) to width do
      Work := ' ' + Work;
    RSet := Work;
  End;


Function Zoned(Src : WorkString) : String;
var
   i, n : Integer;
  Begin
    if Length(Src) > 3 then begin
      n := 0;
      Work := '';
      for i := Length(Src) DownTo 1 do begin
        Work := Src[i] + Work;
        inc(n);
        if (n = 3) and (i <> 1) then begin
          Work := ',' + Work;
          n := 0;
        end;
      end;
    end
    else Work := Src;
    Zoned := Work;
  End;

Function Zword(Src : Word; width : Integer) : String;
  Begin
    Str(Src, Work);
    Work := Zoned(Work);
    Zword := RSet(Work, Width);
  End;

Function InsCommas(Src: LongInt): String;
  Begin
    Str(Src, Work);
    InsCommas := Zoned(Work);
  End;

Function ZLong(Src : LongInt; width : Integer) : String;
  Begin
    Str(Src, Work);
    Work := Zoned(Work);
    ZLong := RSet(Work, Width);
  End;

Function Cword(Src : LongInt; width : Integer) : String;
  Begin
    Str(Src, Work);
    Work := Zoned(Work);
    Cword := RSet(Work, Width);
  End;

End.