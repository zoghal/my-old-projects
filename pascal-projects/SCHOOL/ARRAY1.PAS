program array1;
uses crt;
var
 a1 :array [1..2,1..4] of word;
 x,y      :word;
begin
clrscr;
for x:=1 to 2 do
   for y:=1 to 4 do
       begin
         write('a1[',x,',',y,']= ');
         readln(a1[x,y]);
        end;
clrscr;
for x:=1 to 2 do
   for y:=1 to 4 do
       begin
         writeln('a1[',x,',',y,']= ',a1[x,y]);
        end;
end.