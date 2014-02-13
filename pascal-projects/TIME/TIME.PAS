uses dos, Crt;

var
  h, m, s,hund : Word;
  X,y: Byte;
begin
  Clrscr;
  Repeat
  GotoXy(30,10);
  GetTime(h,m,s,hund);
  Writeln('Time is [',h,':',m,':',s+1,':',hund,']');

  until KeyPressed;
end.




