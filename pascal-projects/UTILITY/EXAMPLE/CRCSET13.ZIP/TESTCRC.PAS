{
TESTCRC.PAS

Kevin Dean
Fairview Mall P.O. Box 55074
1800 Sheppard Avenue East
Willowdale, Ontario
CANADA    M2J 5B9
CompuServe ID: 76336,3114

March 24, 1991

	This program demonstrates the anti-virus CRC algorithm in VALIDCRC.PAS.
The response to an invalid CRC is entirely up to the programmer.

	This code is public domain.
}


program TestCRC;


uses
  ValidCRC;


var
  Buffer : pointer;


{$F+}
{***}
{ Override default handling of memory allocation errors (see chapter 15 - Inside Turbo Pascal). }
function HeapFunc(Size : word) : integer;

begin
HeapFunc := 1
end;
{$F-}


begin
HeapError := @HeapFunc;

case ValidateCRC('TESTCRC.EXE') of
  crcValid:
    WriteLn('CRC is valid.');

  crcInvalid, crcIsZero:
    begin
    WriteLn('*** WARNING *** Program''s CRC is invalid.');
    WriteLn('This program may have been infected by a virus.')
    end;

  crcNoMem:
    WriteLn('Insufficient memory to run CRC calculation.');

  crcFileErr:
    WriteLn('Program file not found; cannot calculate CRC.')
  end
end.
