VAr
   Main : Array [1..5,1..5] Of Byte;
   x,
   y,
   i    : Byte;
Begin
Writeln;
Writeln;
Writeln;
 For i:= 1 To 25 Do
  Begin
   Case i of
   1..5   :  Begin x:= 1; y:= y+1 End;
   6..9   :  BEgin y:= 5; x:= x+1 End;
   10..13 :  Begin x:= 5; y:= y-1 End;
   14..16 :  Begin y:= 1; x:= x-1 End;
   17..19 :  Begin x:= 2; y:= y+1 End;
   20..21 :  BEgin y:= 4; x:= x+1 End;
   22..23 :  BEgin x:= 4; y:= y-1 End;
   24     :  BEgin x:= 3; y:= y End;
   25     :  BEgin x:= 3; y:= y+1 End;
    End;
        {
  IF (I>=14) OR (I<=16) Then
    Begin
     x:= x+1;
    End;

  IF (I>=17) OR (I<=19) Then
    Begin
     y:= y+1;
    End;

  IF (I>=20) OR (I<=21) Then
    Begin
     x:= x+1;
    End;

   IF (I>=22) OR (I<=23) Then
    Begin
     y:= y-1;
    End;

   IF (I>=24) OR (I<=25) Then
    Begin
     x:= x-1;
    End;}
     main[y,x] := i;

  End;

 For x:= 1 To 5 DO
  BEgin
   For y := 1 TO 5 Do
    WRite('  ',main[x,y],'  ');
  Writeln;
  End;
End.