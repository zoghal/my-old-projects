program array2;
uses crt;
var
 a1 :array [1..10] of word;
 x,y,temp      :word;
begin
clrscr;
for x:=1 to 10 do
       begin
         write('a1[',x,']= ');
         readln(a1[x]);
        end;
readkey;
clrscr;
for x:=1 to 9 do
  for y:=1 to 10-x do
   if a1[y] > a1[y+1] then
      begin
        temp :=a1[y];
        a1[y]:=a1[y+1];
        a1[y+1]:=temp;
        end;
for x:=1 to 10 do
       begin
         writeln('a1[',x,']= ',a1[x]);
        end;

            readkey;

end.