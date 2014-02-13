program aval1;
uses crt;
var
   f,sum: integer;
   i :word;
begin
write('enter a number=');
readln(f);
sum:=1;
for i := 1 to f do if i mod 2=1 then writeln(i);
readln
end.