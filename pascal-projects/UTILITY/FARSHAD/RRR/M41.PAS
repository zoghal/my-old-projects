program prog14 (input,output);
uses crt;
var
   ch:char;
begin
   clrscr;
   repeat
   writeln('           ');
   write('press a key=');
   ch:=readkey;
   writeln;
   writeln('code ascii is=',ord(ch));

   until ch=chr(27);
   readln;
end.
