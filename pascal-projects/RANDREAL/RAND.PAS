Uses Crt;
Var
 Temp,
 A,b,q,t   : integer;
 x,y : byte;
Begin
 x:=1;
 y:=1;
 Clrscr;
 randomize;
 Write('A = ');
 Readln(a);
 Write('B = ');
 Readln(b);
 If A < B Then
  Begin
   For t:= 1 to 50 Do
    Begin
     For q := a To b-1 do
       Writeln(q + Random :1:3);
     if ( t mod 20 ) = 0  Then Readkey;
    End;
  End
 Else
  Begin
  For t:= 1 to 50 Do
    Begin

     For q := a DownTo b-1 do
       Writeln(q + Random :1:3);
     if ( t mod 20 ) = 0  Then Readkey;
    End;
  End;
End.