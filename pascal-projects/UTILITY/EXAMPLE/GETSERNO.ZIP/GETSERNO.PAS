Program GetSerialNumber;
{
  This program gets the serial number information from the
  disk that is designated by the command line parameter or
  0 if none is given.  The volume lable may or may not be
  correct since DOS stores it in two places.
}

uses drivers;
type

SerPacket = record
  Info:Word;
  SerNo: Longint;
  Vol: Array[1..11] of char;
  FileType: Array[1..8] of char;
end;

var
  SPacket:SerPacket;
  i:integer;
  Drive: Byte;
  Code: Integer;
  TempS:String;

begin
Val(ParamStr(1), Drive, Code);
asm
  mov ah, 69h
  mov al, 0
  mov bl, Drive
  mov dx, offset [SPacket]
  int 21h
end;

formatstr(TempS,'%x',SPacket.SerNo);
write('Serial Number ');
for i:= 1 to 4 do write(TempS[i]);
write('-');
for i:= 5 to 8 do write(TempS[i]);
writeln;
write('Volume Name ');
for i:= 1 to 11 do write(SPacket.Vol[i]);
writeln;
write('File Type ');
for i:= 1 to 8 do write(SPacket.FileType[i]);
writeln;
end.
