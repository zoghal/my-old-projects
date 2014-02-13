Program MultPlay_n_n;
Uses CRt;
Type
    MainArray = Array [1..10,1..10] Of Byte;
Var
   A,b,c : MainArraY;
   X,y : Byte;
   Key : Char;
   Satr,
   Ston : Byte;
Procedure Get_number_matric;
Begin
 Clrscr;
 Write ('Enter Number Of DRayeh [N*N] := ');
 Readln(Satr);
 Ston := Satr;
 IF Satr > 10 Then
 BEgin
  WRiteln('Error');
  Halt;
 End;
End;
{****************************************************************************}
Procedure Get_matric;

BEgin
 Clrscr;
 For X := 1 To Satr Do
  For Y := 1 To Ston Do
   Begin
    Write('Enter A[',X,',',Y,']:=');
    Readln(A[X,Y]);
   End;
 Writeln; Writeln; Writeln;
 For X := 1 To Satr Do
  For Y := 1 To Ston Do
   Begin
    Write('Enter B[',X,',',Y,']:=');
    Readln(b[X,Y]);
   End;
End;
{****************************************************************************}
Procedure Show_matric_A_B;
BEgin
 Clrscr;
 WRiteln('Matric A');
 For X := 1 To Satr Do
  Begin
  Write('º');
   For Y := 1 To Ston Do
    Write (' ',A[x,y],' ');
  Writeln('º');
  End;
Writeln;Writeln;Writeln;Writeln;
 WRiteln('Matric B');
 For X := 1 To Satr Do
  Begin
  Write('º');
   For Y := 1 To Ston Do
    Write (' ',b[x,y],' ');
  Writeln('º');
  End;
  REadkey;
End;
{****************************************************************************}
Procedure MultA_B;
Function P(aa,bb:Byte):Byte;
Var
   s,s1,r,u : byte;
BEgin
  For s := aa To Satr Do
   For s1:= bb TO Ston Do
     r:=0;
     r := r + (a[s,s1] * b[s1,s]);
End;
Var
   n,q : Byte;
Begin
  For x := 1 To Satr Do
   For Y:= 1 TO Ston Do
    Begin
     C[x,y] := p(x,y);
    End;
End;
{****************************************************************************}
Procedure Show_matric_c;
BEgin
 Clrscr;
 WRiteln('Matric C');
 For X := 1 To Satr Do
  Begin
x  Write('º');
   For Y := 1 To Ston Do
    Write (' ',C[x,y],' ');
  Writeln('º');
  End;
  REadkey;
End;
{----------------------------------------------------------------------------}
Begin
 Repeat
 Clrscr;
 WriteLN ('A- Number Of Drayeh [N*N]');
 WriteLN ('B- Get Of Drayeh A & B');
 WriteLN ('C- Show Matric A & B');
 WriteLN ('D- MultPlay Of Matric [A * B]');
 WriteLN ('E- Show Matric C');
 WriteLN ('F- Save Matric A IN File');
 WriteLN ('G- Save Matric B IN File');
 WriteLN ('H- Save Matric C IN File');
 WriteLN ('I- Load Matric A IN File');
 WriteLN ('J- Load Matric B IN File');
 WriteLN ('K- Load Matric C IN File');
 WriteLN ('Esc : Exit');
 Key := ReadKey;
 Case key of
  'a' : Get_number_matric;
  'b' : Get_matric;
  'c' : Show_matric_A_B;
  'd' : Multa_b;
  'e' : Show_matric_c;
 End;
 Until Key = #27;

End.