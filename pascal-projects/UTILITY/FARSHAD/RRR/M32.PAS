program prog5 (input,output);
uses crt;
var
   n,max,k:integer;
begin
   clrscr;
   write('enter anmber=');readln(n);
   max:=n;
   for k:=1 to 4 do
       begin
          write('enter a number=');readln(n);
          if  max<n then
              max:=n
       end;
          writeln('max=',max);
   readln
end.