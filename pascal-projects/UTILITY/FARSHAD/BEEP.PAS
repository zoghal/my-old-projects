Program beep;
Uses Crt;
Var
X:Word;
C:Char;
Begin
      TextBackGround(0);
      Clrscr;
      Window(20,11,60,13);
      TextBackGround(red);
      Clrscr;
      TextColor(Yellow+Blink);
      Gotoxy(3,2);
      Write('An active virus founded in memory !!!');
      For X:=1 To 5000 Do
      Begin
         Sound(Trunc(1000*(Sin(3*X/180)))+1200);
         Delay(2);
      End;
      Nosound;
      Window(1,1,80,25);
      TextBackGround(0);
      TextColor(15);
      Clrscr;
      Writeln(' Your system has an active Virus.');
      Writeln(' I am sorry...You cannot login to ',ParamStr(1),'.');
      Write(' Do you want to reset your computer (Y/N) ? ');
      Repeat
      C:=UpCase(Readkey);
      If C='Y' then
        Asm
        Int 19h;
        End;
      Until C='N';
      Writeln;
End.