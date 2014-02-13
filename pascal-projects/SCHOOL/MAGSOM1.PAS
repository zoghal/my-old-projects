program magsom_alaih;
uses crt;
var
   f,sum: integer;
   i :word;
begin
write('enter a number=');
readln(f);
sum:=1;
for i := 1 to f do
 if f mod i=0 then
   writeln(i,'');
end.