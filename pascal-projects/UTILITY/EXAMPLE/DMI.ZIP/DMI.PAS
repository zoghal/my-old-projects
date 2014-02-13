PROGRAM ShowDiskAndMemory;

USES  Dos,Crt;

CONST Base       = $070;

VAR   Regs       : REGISTERS;
      StartPath  : STRING;
      BlackBG,
      BlueBG,
      GreenBG,
      CyanBG,
      MainRow,
      MainCol,
      MainRows,
      MainCols,
      MainAttr,
      NameRow,
      NameCol,
      NameRows,
      NameCols,
      NameAttr,
      RAMAttR,
      VideoMode,
      CursorStart,
      CursorEnd  : BYTE;
      UsedMemory,
      TotalMemory,
      AvailMemory,
      ExtMemory,
      ExpTotal,
      ExpAvail,
      UsedSpace,
      TotalSpace,
      AvailSpace : LONGINT;
      ForceMono  : BOOLEAN;


PROCEDURE GetCursorSize;
{ Gets the original cursor size and removes the cursor }
BEGIN
  FillChar(Regs,SizeOf(Regs),0);   { Get cursor size }
  Regs.AH := $03;
  Intr($10,Regs);
  CursorStart := Regs.CH;
  CursorEnd   := Regs.CL;

  FillChar(Regs,SizeOf(Regs),0);   { Remove the cursor }
  Regs.AH := $01;
  Regs.CH := 1;
  Regs.CL := 0;
  Intr($10,Regs);
END;


PROCEDURE SetCursorSize;
{ Resets the cursor to original size }
BEGIN
  FillChar(Regs,SizeOf(Regs),0);
  Regs.AH := $01;
  Regs.CH := CursorStart;
  Regs.CL := CursorEnd;
  Intr($10,Regs);
END;


PROCEDURE GetVideoAndInit;
{ Get the video mode, and initializes the color attributes for that mode }
BEGIN
  FillChar(Regs,SizeOf(Regs),0);   { Get the video mode }
  Regs.AH := $0F;
  Intr($10,Regs);
  VideoMode := Regs.AL;

  IF ForceMono THEN VideoMode := $07;
                { If ForceMono, then act as if it was a monocrome }

  IF NOT VideoMode IN [$02,$03,$07] THEN Halt;  { Not text mode }
  CASE VideoMode OF
  $02,$03 : BEGIN
              BlackBG:=$00; BlueBG:=$10; GreenBG:=$20; CyanBG:=$30;
            END;
  $07 :     BEGIN
              BlackBG:=$00; BlueBG:=$00; GreenBG:=$00; CyanBG:=$00;
             END;
  END;

  { Initialize the different windows and colors }
  MainRow:=1; MainCol:=1; MainRows:=24; MainCols:=80; MainAttr:=Yellow+BlueBG;
  NameRow:=2; NameCol:=10; NameRows:=3; NameCols:=60; NameAttr:=White+CyanBG;
  RAMAttR:=White+GreenBG;
END;


FUNCTION IntToStr(I : LONGINT; Width : BYTE) : STRING;
{ Converts a integer to a string }
VAR S : STRING;
BEGIN
  Str(I:Width,S);
  IntToStr := S;
END;


FUNCTION RealToStr(R : REAL; Width,Deci : BYTE) : STRING;
{ Converts a real to a string }
VAR S : STRING;
BEGIN
  Str(R:Width:Deci,S);
  RealToStr := S;
END;


PROCEDURE HtWrite(Row,Col,Attr : WORD; S : STRING);
{ Write the string S at position Row,Col with attribute Attr }
BEGIN
  TextAttr := Attr;
  GoToXY(Col,Row);
  Write(S);
END;


PROCEDURE HtFill(Row,Col,Rows,Cols,Attr : BYTE; C : CHAR);
{ Fill up a rectangular area with character C and attribute Attr }
BEGIN
  TextAttr := Attr;
  Window(Col,Row,Col+Cols-1,Row+Rows-1);
  ClrScr;
  Window(1,1,80,25);
END;


PROCEDURE Wndw(Row,Col,Rows,Cols,Attr : WORD; Border : BOOLEAN);
{ Draw a window with shadow at position Row,Col with size
  Rows,Cols and attribute Attr. If Border=TRUE, then draw
  a thin line border }
VAR I : BYTE;
BEGIN
  HtFill(Row,Col,Rows,Cols,Attr,' ');
  HtWrite(Row,Col+Cols,Black+BlueBG,'Ü');
  FOR I := (Row+1) TO (Row+Rows-1) DO
    HtWrite(I,Col+Cols,Black+BlackBG,'Û');
  FOR I := (Col+1) TO (Col+Cols) DO
    HtWrite(Row+Rows,I,Black+BlueBG,'ß');
  IF Border THEN
  BEGIN
    HtWrite(Row,Col+1,Attr,'Ú');
    HtWrite(Row+Rows-1,Col+1,Attr,'À');
    HtWrite(Row,Col+Cols-2,Attr,'¿');
    HtWrite(Row+Rows-1,Col+Cols-2,Attr,'Ù');
    FOR I := (Col+2) TO (Col+Cols-3) DO
    BEGIN
      HtWrite(Row,I,Attr,'Ä');
      HtWrite(Row+Rows-1,I,Attr,'Ä');
    END;
    FOR I := (Row+1) TO (Row+Rows-2) DO
    BEGIN
      HtWrite(I,Col+1,Attr,'³');
      HtWrite(I,Col+Cols-2,Attr,'³');
    END;
  END;
END;


PROCEDURE DisplayBackground;
{ Draw the background }
VAR I : BYTE;
BEGIN
  HtFill(MainRow,MainCol,MainRows,MainCols,MainAttr,' ');
  FOR I := 1 TO MainRows-2 DO
  BEGIN
    HtWrite(MainRow+I,MainCol,MainAttr,'º');
    HtWrite(MainRow+I,MainCol+MainCols-1,MainAttr,'º');
  END;
  FOR I := 1 TO MainCols-2 DO
  BEGIN
    HtWrite(MainRow,MainCol+I,MainAttr,'Í');
    HtWrite(MainRow+MainRows-1,MainCol+I,MainAttr,'Í');
  END;
  HtWrite(MainRow,MainCol,MainAttr,'É');
  HtWrite(MainRow,MainCol+MainCols-1,MainAttr,'»');
  HtWrite(MainRow+MainRows-1,MainCol,MainAttr,'È');
  HtWrite(MainRow+MainRows-1,MainCol+MainCols-1,MainAttr,'¼');
END;


PROCEDURE DisplayName;
{ Show the program name at the top }
BEGIN
  Wndw(NameRow,NameCol,NameRows,NameCols,NameAttr,TRUE);
  HtWrite(NameRow+1,26,NameAttr,' Disk and Memory Information ');
END;


PROCEDURE ShowOptions;
{ Write out the command line options }
BEGIN
  WriteLn('Show Disk and Memory');
  WriteLn;
  WriteLn('Usage   : SDM [Drive] [/M]');
  WriteLn;
  WriteLn('Purpose : Show the size total, used and available space');
  WriteLn('          on disk Drive and in memory.                 ');
  WriteLn;
  WriteLn('          /M will force monocrome on a color display ');
  Halt(1);
END;


PROCEDURE GetCommand;
{ Get the command line options }
VAR C : CHAR;
    I : BYTE;
BEGIN
  IF ParamCount=0 THEN
    GetDir(0,StartPath)
  ELSE IF ParamCount>2 THEN
  BEGIN
    WriteLn('Wrong number of parameters !!');
    ShowOptions;
  END;
  IF ParamStr(1) = '?' THEN ShowOptions;
  ForceMono:=FALSE;
  FOR I := 1 TO ParamCount DO
  BEGIN
    IF (ParamStr(I)='/M') OR (ParamStr(I)='/m') THEN
      ForceMono := TRUE
    ELSE StartPath := Copy(ParamStr(I),1,1);
  END;
  IF (ParamCount=1) AND ForceMono THEN
    GetDir(0,StartPath);
  C := StartPath[1];
  C := UpCase(C);
  StartPath := C + ':';
END;


PROCEDURE GetDiskSpace;
{ Get space info about the specified drive }
VAR D : BYTE;
BEGIN
  D := Ord(StartPath[1])-64;
  TotalSpace := DiskSize(D);
  AvailSpace := DiskFree(D);
  UsedSpace  := TotalSpace - AvailSpace;
END;


PROCEDURE GetMemorySpace;
{ Get info about RAM, extended and expanded memory }
VAR Sav : INTEGER;
BEGIN
  { First : normal RAM from BIOS }
  FillCHar(Regs,SizeOf(Regs),0);
  Intr($12,Regs);
  TotalMemory := Regs.AX;
  AvailMemory := MemAvail DIV 1000;
  UsedMemory  := TotalMemory-AvailMemory;

  { Second : Extended memory from CMOS }
  Port[$70] := $17;
  Delay(1);
  Sav := Port[$71];
  Port[$70] := $18;
  Delay(1);
  ExtMemory := (Port[$71] SHL 8) + Sav;

  { Third : Expended memory from BIOS }
  FillCHar(Regs,SizeOf(Regs),0);
  Regs.AH := $42;
  Intr($67,Regs);
  IF Regs.AH = 0 THEN
  BEGIN
    ExpTotal := 16*Regs.DX;
    ExpAvail := 16*Regs.BX;
  END
  ELSE BEGIN
    ExpTotal := 0;
    ExpAvail := 0;
  END;
END;


PROCEDURE WriteOne(Y : BYTE; Value1,Value2 : LONGINT);
{ Draw the "flashing" line }
CONST Size = 70;
VAR Percent : REAL;
    J,Leng  : BYTE;
BEGIN
  Percent := Value1/Value2;
  Leng := Size;
  FOR J := 1 TO Leng DO
  BEGIN
    HtWrite(Y,4+J,MainAttr,'Û');
    HtWrite(Y,5+J,Black+BlueBG,'Ü');
    HtWrite(Y+1,5+J,Black+BlueBG,'ß');
    Delay(3);
  END;
  Leng := Round(Size*Percent);
  FOR J := 1 TO Leng DO
  BEGIN
    HtWrite(Y,4+J,LightCyan+BlueBG,'±');
    Delay(3);
  END;
END;


PROCEDURE WriteDisk;
{ Write out the information about the specified disk drive }
VAR S : STRING;
BEGIN
  HtWrite(6,5,MainAttr,'Usage drive '+StartPath);
  WriteOne(7,UsedSpace,TotalSpace);
  S := RealToStr((UsedSpace/1000000),2,1);
  HtWrite(9,5,LightCyan+BlueBG,'±');
  HtWrite(9,7,MainAttr,'- Space in use ('+S+' MB)');
  S := RealToStr((AvailSpace/1000000),2,1);
  HtWrite(9,52,MainAttr,'Û');
  HtWrite(9,54,MainAttr,'- Space free ('+S+' MB)');
  S := IntToStr(TotalSpace,9);
  HtWrite(10,20,White+BlueBG,S+' bytes total disk space');
  S := IntToStr(UsedSpace,9);
  HtWrite(11,20,White+BlueBG,S+' bytes currently allocated');
  S := RealToStr(100*(UsedSpace/TotalSpace),4,1);
  HtWrite(11,60,White+BlueBG,'('+S+' %)');
  S := IntToStr(AvailSpace,9);
  HtWrite(12,20,White+BlueBG,S+' bytes available on disk');
  S := RealToStr(100*(AvailSpace/TotalSpace),4,1);
  HtWrite(12,60,White+BlueBG,'('+S+' %)');
END;


PROCEDURE WriteMemory;
{ Write out the memory information }
VAR S : STRING;
BEGIN
  HtWrite(13,5,MainAttr,'Usage memory :');
  WriteOne(14,UsedMemory,TotalMemory);
  S := IntToStr(UsedMemory,1);
  HtWrite(16,5,LightCyan+BlueBG,'±');
  HtWrite(16,7,MainAttr,'- Memory in use ('+S+' kB)');
  S := IntToStr(AvailMemory,1);
  HtWrite(16,52,MainAttr,'Û');
  HtWrite(16,54,MainAttr,'- Memory free ('+S+' kB)');

  Wndw(18,5,3,33,RAMAttr,FALSE);
  HtWrite(18,7,RAMAttr-4,'RAM :');
  S := IntToStr(TotalMemory,3);
  HtWrite(18,13,RAMAttr,S+' kB total memory');
  S := IntToStr(UsedMemory,3);
  HtWrite(19,13,RAMAttr,S+' kB memory allocated');
  S := IntToStr(AvailMemory,3);
  HtWrite(20,13,RAMAttr,S+' kB memory available');

  Wndw(18,40,3,35,RAMAttr,FALSE);
  HtWrite(18,42,RAMAttr-4,'Extended :  ');
  S := IntToStr(ExtMemory,1);
  HtWrite(18,54,RAMAttr,S+' kB (from CMOS)');
  HtWrite(19,42,RAMAttr-4,'Expanded :  ');
  S := IntToStr(ExpTotal,1);
  HtWrite(19,54,RAMAttr,S+' kB total memory');
  S := IntToStr(ExpAvail,1);
  HtWrite(20,54,RAMAttr,S+' kB available');
END;



{ Main program }

BEGIN
  GetCommand;
  GetCursorSize;
  GetVideoAndInit;
  TextAttr := Black SHL 4 + White;
  ClrScr;
  GetDiskSpace;
  GetMemorySpace;
  DisplayBackground;
  DisplayName;
  WriteDisk;
  WriteMemory;
  Wndw(22,25,1,30,NameAttr,FALSE);
  HtWrite(22,28,NameAttr,'Written by Harald Thunem');  { A small ego-trip }
  TextAttr := White+BlackBG;
  SetCursorSize;
  GoToXY(1,24);
END.
