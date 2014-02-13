Uses Crt,dos;
Type
   ArrayMain = Array[1..4,1..4] of Byte;
   Rec = record
     Arr : Arraymain;
   End;
Var
  recF  : Rec;
  MainA : ArrayMain;
  F     : File of Rec;
  X,Y   : Byte;
  Key   : char;
  NFile : string[9];
  Pointy,Pointx : Byte;
procedure CareatTable;
Begin
 TextBackGround(0);
 Textcolor(7);
 Clrscr;
 TextBackGround(7);
 Textcolor(4);
 Writeln(' ษอออหอออหอออหอออป');
 Writeln(' บ   บ   บ   บ   บ');
 Writeln(' ฬอออฮอออฮอออฮอออฮ');
 Writeln(' บ   บ   บ   บ   บ');
 Writeln(' ฬอออฮอออฮอออฮอออฮ');
 Writeln(' บ   บ   บ   บ   บ');
 Writeln(' ฬอออฮอออฮอออฮอออฮ');
 Writeln(' บ   บ   บ   บ   บ');
 Writeln(' ศอออสอออสอออสอออผ');
End;
{*********************************************}
Procedure CareatNumber;
Begin
  For x := 1 To 4 do
   For y := 1 To 4 do
    Begin
     MainA[x,y] := (Random(15)+1);
    End;
   MainA[x,y] := 0
  End;
{*********************************************}
Procedure PrintNumber;
Begin
  TextColor(0);
  For x := 1 To 4 do
   For y := 1 To 4 do
    Begin
     GotoXY(X*4,Y*2);
     If MainA[x,y] = 0 Then
       Writeln('  ')
     Else
      writeln(MainA[x,y]);
    End;
End;
{*********************************************}
Procedure Move(Key : Char);
Var
   Temp : Byte;
Begin
 Case Key Of
  'd','D' : If PointY > 1 Then
         Begin
          Temp := MainA[ PointX, PointY - 1 ];
          MainA[ PointX, PointY - 1 ] := 0;
          MainA[ PointX, PointY ] := Temp;
          PrintNumber;
          PointY := PointY - 1;
         End;
  'u','U' :If PointY < 4 Then
        Begin
         Temp := MainA[ PointX, PointY + 1 ];
         MainA[ Pointx, Pointy + 1] := 0;
         MainA[ PointX,PointY] := Temp;
         PrintNumber;
         Pointy := Pointy + 1;
        End;
  'r','R':If PointX > 1 Then
        Begin
         Temp := MainA[ Pointx-1 ,Pointy];
         MainA[ Pointx-1, Pointy] := 0;
         MainA[ PointX, PointY] := Temp;
         PrintNumber;
         Pointx := Pointx - 1;
        End;
  'l','L':If pointX < 4 Then
        Begin
         temp := MainA[pointx+1,pointy];
         MainA[pointx+1,pointy] := 0;
         MainA[pointX,pointY] := Temp;
         PrintNumber;
         pointx := pointx+ 1;
        End;

 end;
End;

{****************************************************************************}
Begin
 TextBackGround(0);
 TextColor(7);
 Clrscr;
 Randomize;
 Writeln( 'Wel come To Pazzle Game Of M.S.S');
 Writeln( 'F1 : New Game ');
 Writeln( 'F2 : Save Game ');
 Writeln( 'F3 : Load Game ');
 Pointx := 4;
 Pointy := 4;
 repeat
  Key := ReadKey;
  Case Key of
  #59 : Begin
         CareatTable;
         CareatNumber;
         PrintNumber;
        End;
  #60 : Begin
         Writeln;
         Write('Press Typeing Save in file = ');
         Readln(NFile);
         If Nfile <> '' Then
          Begin
           Assign(f,Nfile);
           Rewrite(f);
           recf.Arr := maina;
           Write(f,recf);
           Close(f);
          End;
        End;
  #61 : Begin
         Writeln;
         Write('Press Type load In File = ');
         Readln(Nfile);
         assign(f,nfile);
         reset(f);
         read(f,recf);
         For x := 1 to 4 do
          For y := 1 To 4 do
           maina[x,y] :=  Recf.Arr[x,y];
           CareatTable;
           PrintNumber;
        End
  Else
  move(Key);
  end;
 Until Key = #27;
End.