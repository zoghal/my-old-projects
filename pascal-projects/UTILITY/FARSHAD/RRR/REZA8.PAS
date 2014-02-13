Program fact;
Uses Crt;
Var
  S1,S2:STRING;
  ch:char;
  x,w,m,a,b,y,z:integer;
  i:longint;
  o:byte;
{****************************************************************************}
Procedure ChangePlace(var S:string;p1,p2:byte);
var
  temp:char;
begin
  temp:=S[p1];
  S[p1]:=S[p2];
  S[p2]:=temp;
End;
{****************************************************************************}
Begin
  z:=2;
  o:=3;
  clrscr;
  textbackground(5);
  clrscr;
  window(15,2,63,4);
  clrscr;
  textbackground(2);
  clrscr;
  textcolor(15);
  gotoxy(1,2);
  write('  PLEASE  ENTER  YOUR  STRING :');
  readln(S1);
  window(15,5,60,25);
  textbackground(0);
  textcolor(14);
  gotoxy(1,1);
  S2:=S1;
  M:=length(S1);
  A:=M;
  W:=M;
  i:=1;
  while w>0 do
      begin
           i:=i*w;
           w:=w-1;
      end;
  w:=i;
  for x:=1 to (w div m) do
    begin
        B:=A-1;
        for y:=1 to M do
           begin
               changeplace(S1,1,y);
               write(S1,'   ');
               z:=z+1;
               if (z mod 10) =0  then
                 begin
                     write ('  press any key for more... ');
                     ch:=readkey ;
                 end;
               writeln;
               S1:=S2;
           end;
        changeplace(S1,A,B);
        S2:=S1;
        if (A=O) then
          A:=M
        else
           A:=A-1;
    end;
  ch:=readkey;
  readln;
End.










