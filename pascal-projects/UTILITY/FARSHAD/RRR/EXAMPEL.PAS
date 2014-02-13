program esampel;
uses Crt;

var
 C: Char;

begin
     clrscr;
 Writeln('Please press a key');
 C := Readkey;
 Writeln(' You pressed ', C, ', whose ASCII value is ', Ord(C), '.');
 readln;
end.