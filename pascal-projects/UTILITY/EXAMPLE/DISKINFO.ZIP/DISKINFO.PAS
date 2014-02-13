Program DiskInfo;
Uses
  Crt,
  Dos,
  Formats;

Type
  BootSecRec = Record
     Signature : Byte;
     Skip      : Word;
     Vendor    : Array[1..8] of Char;
     BytesPerSec : Word;
     SecPerClus  : Byte;
     ReservedSecs  : Word;
     FatCopies     : Byte;
     RootEntries   : Word;
     TotalSecs     : Word;
     Media         : Byte;
     SecPerFat     : Word;
     SecPerTrack   : Word;
     Heads         : Word;
     HiddenSecs    : Word;
     Loader        : Array[1..482] of Byte;
  End;


Var
  BootSec : BootSecRec;
  DriveName : String[20];
  Disk      : Integer;
  SaveAttr  : Integer;
{$L GetDisk}
{$L AbsRead}

Function GetDisk : Integer; External;
Function AbsRead(Drive, nSecs, LogSec : Word; var Buffer) : Integer; External;

Procedure ShowInfo( Disk : Integer; BootRec : BootSecRec);
var
  ch : Integer;

  Procedure Report(Item, Qty: String);
    Begin
      Write(' ' + Item);
      GotoXY(50, WhereY);
      WriteLn(Qty);
    End;

  Begin
    ClrScr;
    WriteLn('Disk info for ', Chr(Disk+ ord('A')), ':');
    with BootRec do begin
      if (Signature <> $E9) and (Signature <> $EB) then begin
         WriteLn('Not a Dos disk: Info is bogus');

      end;
      WriteLn;
      WriteLn(' General info:');
      Write('  Formatted by'); GotoXY(50, WhereY);
      Ch := 1;
      While (Vendor[ch] <> #0) and (ch < 9) do begin
        Write(Vendor[ch]);
        inc(ch);
      end;
      WriteLn;
      Report('Media descriptor byte', HexByte(Media) + 'h');
      WriteLn;
      Report('Bytes per sector', Zword (BytesPerSec,10));
      Report('Read/Write heads', Zword(Heads, 10));
      Report('Sectors per cluster', Zword(SecPerClus, 10));
      Report('Total sectors', Zword(TotalSecs, 10));
      WriteLn;
      Report('Reserved sectors', Zword(ReservedSecs,10));
      Report('Hidden sectors', Zword(HiddenSecs, 10));
      WriteLn;
      WriteLn('File control areas:');
      Report('Number of FATs', Zword(FatCopies,10));
      Report('Sectors per FAT',Zword(SecPerFat,10));
      Report('RootDirectory entries', Zword(RootEntries, 10));
      Report('Sectors in root dircetory',
              Zword(((RootEntries*32) div BytesPerSec), 10));
    end;
  End;
  Begin
    SaveAttr := TextAttr;
    TextAttr := 15+1*16;
    if ParamCount < 1 then Disk := GetDisk
    else begin
      DriveName := ParamStr(1);
      Disk := Integer( ord(UpCase(DriveName[1])) - ord('A'))
    end;
    if AbsRead(Disk, 1, 0 , BootSec) = 0 then
      WriteLn(DriveName + ' is not a valid drive');
    ShowInfo(Disk, BootSec);
    ReadLn;
    TextAttr := SaveAttr;
    ClrScr;
end.