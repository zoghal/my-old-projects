uses dos,crt;
var r:registers;
begin
clrscr;
gotoxy(10,15);
r.ah:=03;
r.bh:=0;
r.ch:=0;
r.cl:=24;
intr($10,r);
write(r.dl,',',r.dh);
end.