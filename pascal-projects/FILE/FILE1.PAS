uses crt;
type
    rec=record
              name:string[12];
              age:BYTE;
              number:WORD;
              end;
var f:file of rec;
b:rec;
I:BYTE;
begin
clrscr;
assign(f,'test.pas');
reset(f);
FOR I:=0 TO 5 DO
BEGIN
with b do
     begin
     readln(name);
     readln(age);
     readln(number);
     end;
seek(f,filesize(f));
write(f,b);
END;
end.

