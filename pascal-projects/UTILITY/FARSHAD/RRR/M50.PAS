program array7 (input,output);
uses crt;
var
   str:string;i:integer;
begin
   clrscr;
   write('enter a string=');readln(str);
   str[0]:='0';
   i:=1;
   while str[i]<> chr(0) do
         i:=i+1;
   writeln('length of string=',i-1);
   readln;
end.