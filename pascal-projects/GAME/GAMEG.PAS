Uses Crt,Graph;
Type
   ArrayMain = Array[1..4,1..4] of Byte;
   Rec = record
     Arr : Arraymain;
   End;
Var
  Driver,Mode : Integer;
  recF  : Rec;
  MainA : ArrayMain;
  F     : File of Rec;
  X,Y   : Byte;
  Key   : char;
  NFile : string[9];
  Pointy,Pointx : Byte;
{*************************}
function IntToStr(I: Longint): String;
var
 S: string[11];
begin
 Str(I, S);
 IntToStr := S;
end;
{**********************************}
Function TestNum(n:Byte):Boolean;
Var
 T,T1 : Byte;
Begin
 For T:= 1 to 4 do
  For T1 := 1 to 4 Do
   If N = Maina[T,T1] Then TestNum := True
End;
{**********************************}
procedure CareatTable;
Begin
 Setcolor(14);
 BAR3D (50,135,260,20,5,TOPON);
 setcolor(1);
 Line(90,20,90,135);
 Line(150,20,150,135);
 Line(210,20,210,135);
{/***\}
 Line(50,48,260,48);
 Line(50,78,260,78);
 Line(50,110,260,110);
 End;
{*********************************************}
Procedure CareatNumber;
Var
 Temp,Swap : integer;
Begin
  Temp := 1;
  For x := 1 To 4 do
   For y := 1 To 4 do
    Begin
     MainA[x,y] := Temp;
     Temp := Temp +1;
    End;
For Temp := 1 to 32 Do
 Begin
  x:= Random(5-1)+1;
  Y:= Random(5-1)+1;
  swap := Maina[x,y];
  maina[x,y] := Maina[y,x];
  Maina[y,x] := swap;
 End;
   MainA[4,4] := 0
End;
{*********************************************}
Procedure PrintNumber;
Begin
  CareatTABLE;
  SetColor(9);
  For x := 1 To 4 do
   For y := 1 To 4 do
    Begin
{     GotoXY(X*4,Y*2);}
     If MainA[x,y] <> 0 Then
      OutTextXy(x*20*3,y*30,IntToStr(MainA[x,y]));
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
 Driver := Detect;
 InitGraph ( Driver , Mode, 'c:\tp\bgi ' );
{ Randomize;}
 OutTextXy(1,1, 'Wel come To Pazzle Game Of M.S.S');
 OutTextxy(1,20, 'F1 : New Game ');
 OutTextxy(1,30, 'F2 : Save Game ');
 OutTextxy(1,40, 'F3 : Load Game ');
 Pointx := 4;
 Pointy := 4;
 repeat
  Key := ReadKey;
  Case Key of
  #59 : Begin
         cLEARdeVICE;
         CareatTable;
         CareatNumber;
         PrintNumber;
        End;
  #60 : Begin
         SETCOLOR(4);
         OutTextXy(2,195,'Press Typeing Save in file = ');
         GOTOXY(30,13);
         Readln(NFile);
         If Nfile <> '' Then
          Begin
           Assign(f,Nfile);
           Rewrite(f);
           recf.Arr := maina;
           Write(f,recf);
           ClearDevice;
           CareatTable;
           PrintNumber;
           Close(f);
          End;
        End;
  #61 : Begin
         SETCOLOR(4);
         OutTextXy(2,195,'Press Typeing Save in file = ');
         GOTOXY(30,13);
         Readln(NFile);
         If Nfile <> '' Then
          Begin
         assign(f,nfile);
         reset(f);
         read(f,recf);
         For x := 1 to 4 do
          For y := 1 To 4 do
           maina[x,y] :=  Recf.Arr[x,y];
           ClearDevice;
           CareatTable;
           PrintNumber;
           Close(f);
        End;
       End
  Else
  move(Key);
  end;
 Until Key = #27;
 CloseGraph;
End.