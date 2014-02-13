uses crt,mss3,mssdisk;
tYPE
    REC=RECORD
    DATA :ARRAY [1..1024] OF BYTE;
    END;
     pt=^ftables;
   ftables=record
                rate,headtime,motoroftime,bytepersector:byte;
   end;


var t,h,s,i,i2,ER:byte;
    F:FILE OF REC;
    BUF:REC;
    ftable:pt absolute $0000:$0078;
    a:string;

begin
clrscr;
reseta;
i2:=0;
 ftable^.bytepersector:=2;
 for i:=1 to 5 do writeln(readsector (2,1,i,1,buf));
(*for i:=1 to 18 do
begin
{writeln(readsector (1,0,i,1,buf));}
ER := readsector(1,1,i,1,buf);
IF ER > 0 then
begin
 ftable^.bytepersector:=I2;
 I2:=I2-1;
 i:=i-1;
 writeln('eroro',er);
end;
writeln;
writeln(er);
end;
reseta;*)
end.