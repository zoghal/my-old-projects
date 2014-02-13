program DiskInf3;
{
  ABSOLUTE DISK READS AND WRITES ON HARDDRIVES LARGER THAN 32 K.

  +++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++
  DANGER! DANGER! DANGER! DANGER! DANGER! DANGER! DANGER! DANGER!
  +++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++
  Don't use this program unless you are absolutely sure
  you know what you are doing. No one takes any responsibility
  for the code in this package. In fact, its my opinion that
  performing absolute disks writes is a very dangerous
  activity which is extremely likely to end up destroying all
  the data on your hard drive.
  +++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++
  DANGER! DANGER! DANGER! DANGER! DANGER! DANGER! DANGER! DANGER!
  +++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++

  This program shows how to use absolute reads and writes to
  read and write data from a hard disk that is larger than 32
  megs.

  Its very important that when you are using utilities
  like Norton Desktop that you distinguish between reading
  physical sectors and logical sectors. Int25 and Int26
  always work with logical sectors.

  The issue here is that if you want to read information
  from a hard disk that is larger than 32 megs, then you should
  use the new extensions added to the INT25 and INT26 interface
  for handling this situation, which is what this program does.
  This means you should not use this program for reading from
  floppies or from hard drives smaller than 32 Megs in size.

  In essence, the extensions say that you should pass $FFFF in
  CX and then pass a structure of type PDISKBLOCK in DX:BS. You
  can see this at work in the read and write functions shown
  below.

  As its set up now, the program will read the C drive, first
  reporting on the structure of the BootRecord, then dumping
  the bootrecord. The program will then go on to dump the
  contents of the first ten sectors of the harddrive.

  Once again, use this program only at your own risk.
}
uses
  Win, Crt;

const
  DriveC = 2;

type
  PBootSec = ^TBootSec;
  TBootSec = record
    Signature         : Byte;
    Skip              : Word;
    Vendor            : Array[1..8] of Char;
    BytesPerSector    : Word;
    SecPerClus        : Byte;
    ReservedSectors   : Word;
    FatCopies         : Byte;
    RootEntries       : Word;
    TotalSectors      : Word;
    Media             : Byte;
    SecPerFat         : Word;
    SectorsPerTrack   : Word;
    Heads             : Word;
    HiddenSectors     : Word;
    Loader            : Array[1..482] of Byte;
  end;

  PDiskBlock = ^TDiskBlock;
  TDiskBlock = Object
    SectNumber: LongInt;
    NumSectors: Word;
    Buffer: PBootSec;
  end;

procedure WriteHexWord(w: Word);
const
 hexChars: array [0..$F] of Char =
   '0123456789ABCDEF';
begin
 Write(hexChars[Hi(w) shr 4],
       hexChars[Hi(w) and $F],
       hexChars[Lo(w) shr 4],
       hexChars[Lo(w) and $F]);
end;

procedure WriteHexByte(B: Word);
const
 hexChars: array [0..$F] of Char =
   '0123456789ABCDEF';
begin
  Write(hexChars[b shr 4], hexChars[b and $F]);
end;

procedure WriteBoot(var Buf: PDiskBlock);
var
  SecRead: TBootSec;
  i: Integer;
begin
  Move(Buf^.Buffer^, SecRead, 512);
  with SecRead do begin
    WriteLn('Signature = ', Buf^.Buffer^.Signature);
    Write('Vendor = ');
    for i := 1 to 8 do Write(Vendor[i]); WriteLn;
    WriteLn('Bytes Per Sector = ', BytesPerSector);
    WriteLn('Sectors Per Cluster = ', SecPerClus);
    WriteLn('Fat copies: ', FatCopies);
    WriteLn('Root Entries: ', RootEntries);
    WriteLn('Total Sectors = ', TotalSectors);
    WriteLn('Media = ', Media);
    WriteLn('Sec Per Fat = ', SecPerFat);
    WriteLn('Sectors Per Track = ', SectorsPerTrack);
    WriteLn('Heads = ', Heads);
    WriteLn('Hidden Sectors = ', HiddenSectors);
  end;
end;

procedure WriteHardDisk(DiskBlock: PDiskBlock; Drive: Byte; SNum: Integer);
begin
  DiskBlock^.SectNumber := SNum;
  DiskBlock^.NumSectors := 1;
  asm
    push ds
    mov al, Drive
    mov cx, $FFFF
    lds BX, DiskBlock;
    int $26
    add sp, 2
    pop ds
  end;
end;

procedure ReadHardDisk(DiskBlock: PDiskBlock; Drive: Byte; SNum: Integer);
begin
  DiskBlock^.SectNumber := SNum;
  DiskBlock^.NumSectors := 1;
  asm
    push ds
    mov al, Drive
    mov cx, $FFFF
    lds BX, DiskBlock;
    int $25
    add sp, 2
    pop ds
  end;
end;

procedure Write128Bytes(DiskBlock: PDiskBlock; Start, Stop: Integer);
type
  PArray = ^TArray;
  TArray = array[1..512] of Byte;
var
  i: Integer;
  S: String;
begin
  S[0] := #16;
  for i := Start to Stop do begin
    WriteHexByte(PArray(DiskBlock^.Buffer)^[i]);
    Write(' ');
    if i mod 16 = 0 then begin
      Write('   ');
      move(PArray(DiskBlock^.Buffer)^[i - 16], S[1], 16);
      WriteStr(WhereX, WhereY, S, 15 + 1 * 16);
      WriteLn;
    end;
  end;
end;

procedure WriteDiskInfo(DiskBlock: PDiskBlock);
var
  i, Start, Stop: Integer;
begin
  Start := 1;
  Stop := 128;
  for i := 1 to 4 do begin
    Write128Bytes(DiskBlock, Start, Stop);
    Inc(Start, 128);
    Inc(Stop, 128);
    WriteLn;
    ReadLn;
  end;
end;

var
  DiskBlock :PDiskBlock;
  i: Integer;

begin
  ClrScr;
  New(DiskBlock);
  New(DiskBlock^.Buffer);
  ReadHardDisk(DiskBlock, DriveC, 0);
  WriteBoot(DiskBlock);
  ReadLn;
  ClrScr;
  for i := 1 to 10 do begin
    WriteDiskInfo(DiskBlock);
    WriteLn('Sector Number: ', i);
    ReadHardDisk(DiskBlock, DriveC, i);
  end;
end.