Uses CRt;
VAr x,t : Byte;
Begin
 Clrscr;
 t := 0;
 For x := 0 To 255 Do
  Begin
   Writeln ( 'Code = ',x,' Symbol = ',Chr(x));
   if x mod 20= 0 Then
    Begin
     WRite('Press Any Key To Continu');
     Readkey;
     Clrscr;
     t := 1;
    End;
   t:=t +1;
  End;
End.