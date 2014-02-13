Uses CRt;
Var
 X,y,n,t : Byte;
 A : Array [1..20] Of byte;
Begin
 CLrscr;
 WRite('Press N {N>=20} :=' );
 Readln (n);
 For x := 1 To N Do
   Begin
    WRite('a[',x,']:= ');
    Readln(A[x]);
   End;

 Writeln;
 For x := 1 To N Do
    WRite(a[x],' ');
 Writeln;
 Writeln;
 For x := 1 To n Do
  For y:= 1 To n Do
   If a[y] > a[y+1] Then
    BEgin
     t := a[y];
     a[y] := A[y+1];
     a[y+1] := t;
    End;
Writeln('Sorting =');
 For x := 1 To N Do
    WRite(a[x],' ');

End.