program reset;
{program reset computer}
{writeing mojamad saleh souzanchi}
            {M.S.S}
uses crt;
var
x,y,z,a,i:word;
begin
   TextBackGround(0);
   clrscr;
   Window(17,11,61,13);
   TextBackGround(4);
   Clrscr;
   Window(19,12,59,12);
   TextBackGround(7);
   Clrscr;
   clrscr;
   textcolor(1);
   Write('  An active virus founded in memory !!!');
   For X:=1 To 1600 Do
   Begin
   Sound(Trunc(1000*(Sin(3*X/180)))+1200);
   Delay(2);
   End;
   Nosound;
 {***********************}
 textcolor (7);
    x:=61;
   y:=25;
   z:=60;
   a:=25;
   for i:=1 to 6 do
   begin
   delay(80);
   Window(x,y,61,25);
   TextBackGround(15);
   clrscr;
   x:=x-9;
   y:=y-1;
       end;
  {*****************************}
   x:=59;
   y:=24;
   z:=60;
   a:=25;
   for i:=1 to 6 do
   begin
   delay(80);
   Window(x,y,59,24);
   TextBackGround(4);
   clrscr;
   x:=x-9;
   y:=y-1;
       end;

  {************************}
  textcolor (7);
  gotoxy(3,1);
  writeln('Your system has an active Virus.');
  gotoxy(3,3);
  writeln('Do you want to reset your computer (Y/N) ?');
  gotoxy(3,5);
  write ('Y = ENTER      N = ESC');
  {********************}
  repeat

  if readkey = chr(13) then
  begin
  Window(1,1,80,25);
  TextBackGround(0);
  Clrscr;
  asm
  int 19h;
  end;
  end;
   until readkey=chr(27);
  Window(1,1,80,25);
  TextBackGround(0);
  Clrscr;
  halt;
  end.