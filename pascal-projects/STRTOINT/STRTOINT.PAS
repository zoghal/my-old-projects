uses crt;
Var
   Str : String[12];
   Err : Integer;
   Num : Real;
Begin
 Clrscr;
 Write('Enter string[###.###] := ');
 readln(Str);
 Val (str,num,err);
 Writeln('number := ',num:3:3);
 Writeln('num + 10.1 := ',num+ 10.1:3:3);
End.