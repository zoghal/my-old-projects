Uses Dos,Crt,msscrt;
Type
    FName = String[12];
    M = Array [0..20] Of String;
    Buf = Array [1..4000] Of Byte;
var
 Monitor : Buf Absolute $b800:0;
 Temp_screen,TT : buf;
 Capture : Buf;
 F : File Of buf;
 Temp : m;
 DirInfo: SearchRec;
 Sum,i : Byte;

Procedure DECode;
Var
   I,i2 : integer;
Begin
For i := 1 to 4000 do
 For i2 := 1 to 5 do
  Temp_screen[i] := pred(Temp_screen[i]);
End;

Function FindFile ( Dir : DirStr; Name : FName ) : String;
begin
 Sum := 0;
 FindFirst(Dir + Name, AnyFile, DirInfo);
 while DosError = 0 do
 begin
   Sum := Sum +1;
   Temp[sum] :=DirInfo.Name;
   Findfile :=DirInfo.Name;
   FindNext(DirInfo);
 end;
end;
BEgin
 Clrscr;
 Findfile('','*.mss');
 Repeat
 TT := Monitor;

 Popup(1,14,2,12,15,7,9,0,15,sum,temp);
 If Key = 28 Then
  Begin
   tt :=Monitor;
   Assign(f,Temp[menu]);
   Reset(f);
   Read(F,Temp_screen);
   DEcode;
   Monitor := Temp_screen;
   READKEY;
   Close(f);
   Monitor := TT;
  End;

 until Key = 1
End.