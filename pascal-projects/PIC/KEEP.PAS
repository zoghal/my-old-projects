
program Caputer_screen_dos_rsident;
{$M $1024,0,0 }
uses Crt,Dos,MssCrt;
Type
    Buf = Array [1..4000] Of Byte;
var
   Filename   : String[11];
   KbdIntVec  : Procedure;
   Monitor    : Buf Absolute $b800:0;
   Temp       : buf;
   Capture    : Buf;
   F          : File Of buf;
   X          : BYte;

Procedure Code;
Var
   I,i2 : integer;
Begin
For i := 1 to 4000 do
 For i2 := 1 to 5 do
  Temp[i] := Succ(Temp[i]);
End;
Procedure WriteFile;
Var
   PathF : PathStr;
   S     : String[8];
Begin
  PathF := Fsearch(Filename,'*.*');
  IF PathF = Filename Then
   Begin
    inc(x,1);
    Str(X,S);
    Filename := 'Pic'+s+'.MSS';
    Assign(F,FileName);
    Rewrite(F);
    Write(F,Temp);
    Close(F);
   End
  Else
   Begin
    Assign(F,FileName);
    Rewrite(F);
    Write(F,Temp);
    Close(F);
   End;
End;
Procedure Captureing;
Begin
 Temp := MonItor;
 Code;
 WriteFile;
End;
{$F+}
procedure Keyclick; interrupt;
begin
     if Port[$60] = 68 then
        begin
             Captureing;
             sound(200);
             delay (50);
             nosound;
        end;
     inline ($9C);
     KbdIntVec;
end;
{$F-}
begin
 Clrscr;
 WinCadr(20,60,2,6,9,15);
 Fwrite(21,3,9,0,'***** Caputer screen For Mode DOS *****');
 Fwrite(23,4,9,0,'*** Programer  :  M.S.Souzanchi ***');
 Fwrite(25,5,9,0,'* By: M.S.S GRUP Iran-Hamadan *');
 WinCadr(19,60,20,22,4,15);
 Fwrite(20,21,4,2,'Note : Program Saving In The Curren Path');
 Delay(500);
 WinCadr(25,55,12,14,1,15);
 Fwrite(26,13,1,15,'Press F10 : Capture Of Screen');
 Delay(500);
  X :=0;
  FileName:='Pic.mss';
  GetIntVec($9,@KbdIntVec);
  SetIntVec($9,Addr(Keyclick));
  Keep(0);
end.
