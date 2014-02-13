Program Fact;
var
  f : longint;
  n,i : integer;
begin
   write('enter number:');
   readln(n);
   writeln(n);
   f:=1;
   for i:=1 to n do
       f:=f*i;
   writeln('fact=',f);
   readln;
end.