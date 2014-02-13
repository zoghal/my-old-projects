uses crt;
var f1,f2,f3 :word;
begin
f1:=1;
f2:=1;
write(f1,' ',f2,' ');
repeat
f3 :=f1+f2;
write (f3,' ');
delay(100);
f1:=f2;
f2:=f3;
until keypressed;
end.