program fact;
uses crt;
var
   f,sum: integer;
   i :word;
begin
write('enter a number=');
readln(f);
sum:=1;
for i := 1 to f do sum:=sum*i;
writeln('fact >> ',sum);
end.