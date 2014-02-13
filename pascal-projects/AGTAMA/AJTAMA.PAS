uses CRt;
Type
    MainA = Array [1..5] of Char;
Var
   A,
   B,
   C : Maina;
   I,
   x : Byte;
   temp : Array [1..10] of Char;
   TEmp1,TEMP2 : maina;

Procedure one;
Var
  Test : Boolean;
  num  : Byte;
Begin

 For i := 1 To 5 Do
   Temp[i] := b[i];
 For i:= 1 To 5 Do
    Temp[i+5] := c[i];

 For i := 1 To 5 Do
  For x := 1 To 10 Do
   If a[i] = temp[x] Then Temp1[i] := temp[x];
 Write('D:=[ ');
 For I := 1 To 5 Do
  Begin
   Write(temp1[i],' ');
  End;
 Writeln('] ');
End;
{***************************************}
pROCEDURE TWO;
bEGIN
 For i := 1 To 5 Do
  For x := 1 To 5 Do
   If A[i] = b[x] Then Temp1[i] := B[x];
 For i := 1 To 5 Do
  For x := 1 To 5 Do
   If A[i] = C[x] Then Temp2[i] := C[x];

 For i := 1 To 5 Do
   Temp[i] := TEMP1[i];
 For i:= 1 To 5 Do
    Temp[i+5] := TEMP2[i];
 wRITELN;
 Write('E:=[ ');
 For I := 1 To 5 Do
  Begin
   Write(temp1[i],' ');
  End;
 Writeln('] ');
END;

{***********************************************}
Begin
 Clrscr;
 For I := 1 To 5 Do
  Begin
   Write('A[',i,'] := ');
   Readln(a[i]);
  End;
Writeln;
 For I := 1 To 5 Do
  Begin
   Write('b[',i,'] := ');
   Readln(b[i]);
  End;
Writeln;
 For I := 1 To 5 Do
  Begin
   Write('c[',i,'] := ');
   Readln(c[i]);
  End;
Clrscr;
 Write('A:=[ ');
 For I := 1 To 5 Do
  Begin
   Write(a[i],' ');
  End;
 Writeln('] ');

 Write('B:=[ ');
 For I := 1 To 5 Do
  Begin
   Write(b[i],' ');
  End;
 Writeln('] ');

 Write('C:=[ ');
 For I := 1 To 5 Do
  Begin
   Write(c[i],' ');
  End;
 Writeln('] ');
{*****************************************}
Writeln;Writeln;Writeln;
one;
TWO;
End.