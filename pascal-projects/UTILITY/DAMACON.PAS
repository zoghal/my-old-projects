Program dama;
uses crt;
var s,
    f,k : real;
Begin
clrscr;
Write('Enter dama :=');
Readln(s);
f := s *33.8;
k := s *274.15;
Writeln ('Santigerad :=',s :4,3);
Writeln ('Farenhait :=',f :4:3);
Writeln ('kelvin :=',k:4:3);

End.