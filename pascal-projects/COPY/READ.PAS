uses crt,dos,mss3;
type
    buf=array [1..1024] of byte;
rec=record
         data:array [1..1024] of byte;
end;
var h,se,sc:byte;
    r:registers;
    a:string;
    rc:rec;
   b:buf;
   f:file of rec;
begin
clrscr;
assign(f,'bac.dat');
rewrite(f);
for se:=0 to 79 do
for h:=0 to 1 do
begin
for sc:=1 to 18 do
begin
r.ah:=02;
r.dl:=0;
r.dh:=h;
r.ch:=se;
r.cl:=sc;
r.al:=1;
r.es:=seg(rc.data);
r.bx:=ofs(rc.data);
intr($13,r);
write(f,rc);
if r.flags and fCarry=fCarry then
begin
fwrite(2,2,15,0,'error');
halt;
end;
end;
str(se,a);
fwrite (1,1,1,15,'reading track #'+a);
end;
fwrite (2,2,1,15,'oooooooooooooookkkkkkkkk');
readln;
close(f);
writeln('end of reading all sector...!');
end.
