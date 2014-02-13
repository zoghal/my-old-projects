uses crt,dos,msscrt;
type
    buf=array [1..1024] of byte;

rec=record
         data:array [1..1024] of byte;
end;

var h,i,se,sc:byte;
    r:registers;
    a:string;
    rc:rec;
   b:buf;
   f:file of rec;
   ww:array [1..18] of record
   c,h,r,n:byte;

    end;
begin
clrscr;
r.ah:=$18;
r.dl:=0;
r.ch:=79;
r.cl:=18;
intr($13,r);
for se:=0 to 79 do
begin
for h:=0 to 1 do
begin
for i:=1 to 18 do
begin
 ww[i].c:=se;
 ww[i].h:=h;
 ww[i].r:=i;
 ww[i].n:=1;
end;
r.ah:=$05;
r.dl:=0;
r.dh:=1;
r.ch:=2;
r.al:=18;
r.es:=seg(ww);
r.bx:=ofs(ww);
intr($13,r);
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
writeln('end of reading all sector...!');
end.
