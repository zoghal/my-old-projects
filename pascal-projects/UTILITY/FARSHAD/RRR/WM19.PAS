program work19 (input,output);
uses crt;
var
   n,m:integer;
begin
   clrscr;
   write('enter a integer number=');
   readln(n);
   while n<>0 do
         begin
            m:=n mod 10;
            n:=n div 10;
            write(m);
         end;
   readln;
end.

