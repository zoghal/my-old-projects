{$I-}
{
VALIDCRC.PAS

Kevin Dean
Fairview Mall P.O. Box 55074
1800 Sheppard Avenue East
Willowdale, Ontario
CANADA    M2J 5B9
CompuServe ID: 76336,3114

March 24, 1991

	This module validates the CRC of the program in which it is linked.
The code was designed as an anti-virus algorithm.  The CRC is a very effective
method of detecting viruses; any virus that attaches itself to the program
changes the CRC of the program.  The response to an invalid CRC is entirely up
to the programmer.

	This code is public domain.
}


unit ValidCRC;


interface


uses
  DOS, AllocBuf;


type
  crc32_t =
    longint;

  FileCRC =
    record
    case boolean of
      false:
	(
	SearchStr : array [1 .. 8] of char;	{ String to search for. }
	);

      true:
	(
	Polynomial : crc32_t;			{ Polynomial for this file. }
	CRC : crc32_t;				{ Calculated CRC for this file. }
	)
    end;


const
  crcValid =	{ CRC is valid. }
    0;
  crcInvalid =	{ CRC is invalid. }
    1;
  crcIsZero =	{ CRC polynomial has been reset to zero. }
    2;
  crcNoMem =	{ No memory for data buffer. }
    3;
  crcFileErr =	{ Program file not found. }
    4;


function ValidateCRC(ProgName : string) : integer;
function IsValidCRC(ProgName : string) : boolean;


implementation


const _VirusCRC : FileCRC =
  (
  SearchStr : ('D', 'E', 'A', 'N', '_', 'C', 'R', 'C')
  );


type
  dwordrec =
    record
    Lo, Hi : word
    end;

  BytePtr =
    ^byte;


{***}
{ Extract the low word of a dword. }
function LowW(dword : longint) : word;

begin
LowW := (dwordrec(dword)).Lo
end;


{***}
{ Extract the high word of a dword. }
function HiW(dword : longint) : word;

begin
HiW := (dwordrec(dword)).Hi
end;


{***}
{ Calculate CRC of active program and compare it to CRC in _VirusCRC. }
function ValidateCRC(ProgName : string) : integer;

var
  Buffer : BytePtr;			{ Buffer for file's data. }
  BufSize : word;			{ Buffer size. }

  PN : string[79];			{ Program name. }
  ProgFile : file;			{ Program file. }

  Table : array [0 .. 255] of crc32_t;	{ CRC table. }
  HalfI : ^crc32_t;			{ Pointer to CRC of I div 2. }
  CRC : crc32_t;			{ Current CRC. }

  I : word;				{ Byte counter. }
  BufPtr : BytePtr;			{ Pointer to Buffer. }

begin
if _VirusCRC.Polynomial <> 0 then
  begin
  { Allocate 8k buffer if possible, but get at least 512 bytes. }
  BufSize := 8192;
  Buffer := BufAlloc(BufSize, 512);

  if Buffer <> nil then
    begin
    if Lo(DosVersion) < 3 then
      { Search PATH for program file. }
      PN := FSearch(ProgName, GetEnv('PATH'))
    else
      { Under DOS versions 3 and above, the program name is in ParamStr(0). }
      PN := ParamStr(0);

    Assign(ProgFile, PN);
    Reset(ProgFile, 1);

    if IOResult = 0 then
      begin
      { Generate a CRC lookup table for faster calculation. }
      HalfI := @Table[0];
      Table[0] := 0;
      I := 0;
      while I < 256 do
	begin
	if Hi(HiW(HalfI^)) and $80 = $80 then
	  begin
	  Table[I + 1] := HalfI^ shl 1;
	  Table[I] := Table[I + 1] xor _VirusCRC.Polynomial
	  end
	else
	  begin
	  Table[I] := HalfI^ shl 1;
	  Table[I + 1] := Table[I] xor _VirusCRC.Polynomial
	  end;

	Inc(I, 2);
	Inc(longint(HalfI), sizeof(crc32_t))
	end;

      CRC := 0;
      BlockRead(ProgFile, Buffer^, BufSize, I);
      while I <> 0 do
	begin
	BufPtr := Buffer;
	while I <> 0 do
	  begin
	  CRC := (CRC shl 8) xor Table[Hi(HiW(CRC)) xor BufPtr^];

	  Dec(I);
	  Inc(longint(BufPtr))
	  end;

	BlockRead(ProgFile, Buffer^, BufSize, I)
	end;

      Close(ProgFile);

      if CRC = _VirusCRC.CRC then
	ValidateCRC := crcValid
      else
	ValidateCRC := crcInvalid
      end
    else
      ValidateCRC := crcFileErr;

    FreeMem(Buffer, BufSize)
    end
  else
    ValidateCRC := crcNoMem
  end
else
  { CRC polynomial must be something other than 0. }
  ValidateCRC := crcIsZero
end;


{***}
{ Defined for compatibility with earlier releases of CRCSET. }
function IsValidCRC(ProgName : string) : boolean;

begin
IsValidCRC := ValidateCRC(Progname) = crcValid
end;


end.
