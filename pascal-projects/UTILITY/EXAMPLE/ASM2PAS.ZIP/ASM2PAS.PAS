{ ASM to TurboPascal }
{$S-}
USES
  Crt;
TYPE
  OneTo255 = 1..255;
  TextBlock = RECORD
    Last : Word;
    Buf  : ARRAY [1..7000] OF ^String; { lines enough? 8-) }
  END;
VAR
  AName, PName : String;
  ASMFile, PASFile : Text;
{  s1, s2 : String;}
  Text1, Text2 : TextBlock;
  Lines : Word;
  i     : Word;

{ loads a file into a textblock }
PROCEDURE LoadText (N : String; VAR VText : TextBlock);
 VAR F: text;
     S: String;
 BEGIN
   FillChar( VText.Buf, Sizeof(Vtext.Buf), 0 );
   Lines := 0;
   Assign( f, N );
(*$I-*)
   Reset( f );
(*$I+*)
   IF IoResult <> 0 THEN exit;
   WHILE ( NOT EOF( F ) )
     AND ( Maxavail > 256 )   DO  { assume a 200-Char-String }
   BEGIN
      Inc( Lines );
      ReadLn( F, S );
{      IF Length(S) > 200
        THEN S[0] := #200;}
      GetMem( Vtext.Buf[Lines], 1+Length(S) );
      VText.Buf[Lines]^ := S;
   END;
   VText.Last := Lines;
{   IF NOT eof( F )
     THEN Write(' Sorry, only ')
     ELSE Write(' All ');
   Writeln( Lines,' Lines of ', N , ' read. ');}
   Close( F );
 END;

{ Adds a line to a text block }
PROCEDURE AddLine (s : String; VAR VText : TextBlock);
BEGIN
  Inc (VText.Last);
  GetMem( Vtext.Buf[VText.Last], 1+Length(S) );
  VText.Buf[VText.Last]^ := S;
END;

{ Writes a textblock to a file }
PROCEDURE WriteText (N : String; VText : TextBlock);
 VAR
   I : Integer;
   f : Text;
 BEGIN
   Assign  (f, N);
   Rewrite (f);
   FOR I := 1 TO VText.last DO
     WriteLn (f, VText.Buf[i]^);
   Close (f);
 END;

{ Frees up a textblock-buffer }
PROCEDURE CleanUpText (VAR VText : TextBlock);
 VAR I : Integer;
 BEGIN
   FOR I := VText.last DOWNTO 1 DO
     FreeMem( Vtext.Buf[i], 1+Length(VText.Buf[i]^) );
 END;

FUNCTION UpStr (CONST s : String) : String; ASSEMBLER;
ASM
  push ds
  lds  si,s
  les  di,@result
  lodsb            { load and store length of string }
  stosb
  xor  ch,ch
  mov  cl,al
 @upperLoop:
  lodsb
  cmp  al,'a'
  jb   @cont
  cmp  al,'z'
  ja   @cont
  sub  al,' '
 @cont:
  stosb
  loop @UpperLoop
  pop  ds
END;  { UpStr }

PROCEDURE Ltrim (VAR s : String);
BEGIN
  WHILE Byte(s[1]) IN [9,32] DO BEGIN
    Delete (s,1,1);
    IF length (s) < 1 THEN Exit;
  END;
END;

{ Upper/lower case must NEVER be used on a formatted string, }
{ since that could mess up the formatting codes. }
{ Formats a string to this format: #01,Param1,#01,Param2.....}
PROCEDURE FormatString (VAR s : String);
VAR
  i : Byte;
BEGIN
  Ltrim (s);
  FOR i := 1 TO length(s) DO s[i] := UpCase (s[i]);
  FOR i := 1 TO length(s) DO BEGIN
    IF Byte(s[i]) IN [9,32] THEN
      IF s[i-1] <> #01 THEN
        s[i] := #01 ELSE Delete (s,i,1);
  END;
  IF s[1] <> #01 THEN s := #01 + s;
  WHILE Byte(s[length(s)]) IN [1,9,32] DO
    Delete (s,length(s),1);
END;

{ Gets a word/parameter from a string formatted with FormatString() }
FUNCTION StrParam (s : String; n : OneTo255) : String;
VAR
  p, i : Byte;
BEGIN
  StrParam := '';
  FOR i := 1 TO n DO BEGIN
    Delete (s, 1, 1);
    p := pos (#01, s);
    IF i = n THEN BEGIN
      IF p = 0 THEN StrParam := s ELSE
        StrParam := Copy (s, 1, p - 1);
    END
    ELSE
      IF p <> 0 THEN Delete (s,1,p-1)
        ELSE Exit;
  END;
END;

VAR
  ts, s, s2, comment : String;
  sbefore, safter : String;
  sp : ARRAY [1..3] OF String;
  b : Byte;
  j : Word;
  x,y : Byte;
  con_act : Boolean;
  tmps : String;
  pv1  : 1..2;
  pf : Text;

BEGIN
  WriteLn ('HELLware ASM2PAS v0.01 - (C) Roy Andre Gundersen, 1994.');
  IF ParamCount <> 2 THEN BEGIN
    WriteLn ('Helps you converting Assembler files to Turbo Pascal.');
    WriteLn;
    WriteLn (ParamStr(0),' source.asm target.pas');
    WriteLn;
    WriteLn ('This program will not fully convert a assembler file to TP,');
    WriteLn ('but it will save you for a lot of work by doing most of it.');
    Halt;
  END;
  WriteLn;

  AName := ParamStr (1);
  PName := ParamStr (2);

  WriteLn ('Loading file: ',AName);
  LoadText    (AName, Text1);

  Write ('Lines processed: ');
  x := WhereX; y := WhereY;
  Text2.Last := 0;

  con_act := False;

  FOR I := 1 TO Text1.Last DO BEGIN
    sbefore := '';
    safter  := '';
    BEGIN { Check for comments }
        s := Text1.Buf[i]^;
        b := Pos (';',s);
        IF b <> 0 THEN BEGIN
          comment := Copy (s, b+1, length(s) - b);
          Delete (s, b, length(s) - b + 1);
        END ELSE
          comment := '';
    END;
    BEGIN
        s2 := s;
        FormatString (s2);
        FOR j := 1 TO 3 DO
            sp[j] := StrParam (s2, j);
        IF (sp [2] <> 'EQU') AND (sp [2] <> '') THEN con_act := False;

        IF (sp [1] = 'PUBLIC') OR (sp [1] = 'ARG') OR
          (sp [1] = 'ALIGN') THEN
            s := '{' + s + '}' ELSE
        IF (sp [1] = 'PROC') OR (sp [2] = 'PROC') THEN BEGIN
            IF sp [1] = 'PROC' THEN pv1 := 2 ELSE pv1 := 1;
            tmps := Text1.Buf[i+1]^;
            FormatString (tmps);
            IF StrParam (tmps, 1) = 'ARG' THEN BEGIN
              tmps := Copy (tmps, 6,length (tmps) - 5);
              FOR j := 1 TO length (tmps) DO
                IF tmps[j] = ',' THEN tmps[j] := ';';
              tmps := ' (' + tmps + ')';
            END ELSE
              tmps := '';
            s  := 'PROCEDURE ' + sp[pv1] + tmps;
            IF sp [3] = 'NEAR' THEN s := s + '; NEAR' ELSE
            IF sp [3] = 'FAR' THEN s := s + '; FAR';
            s := s + '; ASSEMBLER;';
            safter := 'ASM';
        END ELSE
        IF sp [2] = 'ENDP' THEN BEGIN
            s := 'END;';
        END ELSE
        IF sp [2] = 'EQU' THEN BEGIN
            ts := sp [3];
            IF (ts [1] IN ['0'..'9']) AND (ts [length(ts)] IN ['h','H'])
              THEN ts := '$' + Copy (ts,1,length(ts)-1);

            s := '  ' + sp [1] + ' = ' + ts + ';';
            IF NOT con_act THEN BEGIN
              sbefore  := 'CONST';
            END;
            con_act := True;
        END;
    END;
    IF sbefore <> '' THEN
      Addline (sbefore, Text2);
    IF comment <> '' THEN
      s := s + ' {' + comment + '}';
    Addline (s, Text2);
    IF safter <> '' THEN
      Addline (safter, Text2);
    GotoXY (x,y); Write (i);
  END;

  WriteLn;
  WriteLn ('Writing file: ',PName);

   Assign  (pf, PName);
   Rewrite (pf);
   FOR I := 1 TO text2.last DO
     WriteLn (pf, text2.Buf[i]^);
   Close (pf);

{  WriteText (PName, Text2);}

  CleanUpText (Text1);
  CleanUpText (Text2);
  WriteLn ('Done.');
END.

