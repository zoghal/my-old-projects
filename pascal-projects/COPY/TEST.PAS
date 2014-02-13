uses crt,mss3,mssdisk;
tYPE
    REC=RECORD
    DATA :ARRAY [1..1024] OF BYTE;
    END;

var t,h,s,i:byte;
    F:FILE OF REC;
    BUF:REC;
    DT :ARRAY [1..1024] OF BYTE;
    ww:array [1..18] of record
    c,h,r,n:byte;
    end;
        a:string;

begin
clrscr;
reseta;
for i:=1 to 18 do
begin
 ww[i].n:=2;
 ww[i].c:=0;
 ww[i].h:=0;
 ww[i].r:=i;
end;
reseta;
writeln(formata (0,0,18,ww));
end.