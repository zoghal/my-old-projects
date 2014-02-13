uses crt;
type
    rec=record
              name:string[12];
              fameley:string[12];
              tel:integer;
              end;
var f:file of rec;
b:rec;
I:BYTE;
temp :word;
begin
clrscr;
assign(f,'tel.dat');
reset(f);
temp := filesize(f);
FOR I:=0 TO temp-1 DO
BEGIN
seek(F,I);
read(f,b);
with b do
     writeln(name,'    ',fameley,'     ',tel);
END;
end.;

