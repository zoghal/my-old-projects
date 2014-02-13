{ 1 ^ 50 To 999 ^ 50}
{$N+}
Program New;
uses crt;
Var
  i,i1 :word;
  Sum  : double;
function Power (x:double):double;
Var
Temp :double ;
Begin
Temp := 1;
For I:= 1 to 50 do
  temp := temp * x;
  power := temp
End;

Begin
 Clrscr;
 sum :=0;
 For i1:= 1 To 999 Do
  Begin
   Writeln(I1,' ^ ', 50, ' := ',power (i1));
   sum := sum+ Power (i1);
   Delay(10);
  End;
 Writeln;
 WriteLN('Sum ( 1 ^ 50 To 999 ^ 50 ):= ',Sum);
End.