uses crt,dos,mss3;
type
    buf=array [1..1024] of byte;

rec=record
          data:array [1..1024] of byte;
end;
var temp,h,se,sc:byte;
     i:longint;
    r:registers;
    rc:rec;
    a:string;
   b:rec;
   f:file of rec;
begin
clrscr;
assign(f,'bac.dat');
reset(f);
for se:=0 to 80 do
begin
for h:=0 to 1 do
for sc:=1 to 18 do
begin
Read(f,rc);
r.ah:=03;
r.dl:=0;
r.dh:=h;
r.ch:=se;
r.cl:=sc;
r.al:=1;
r.es:=seg(RC.DATA);
r.bx:=ofs(RC.DATA);
intr($13,r);
if r.flags and fCarry=fCarry then fwrite(2,2,15,0,'error');
end;
str(se,a);
fwrite (1,1,1,15,'WIRTEING track #'+a);
end;
fwrite (2,2,1,15,'oooooooooooooookkkkkkkkk');
readln;
close(f);
writeln('end writeing ok .....!');
end.
