{$M 1024,0,0}
Uses
    crt,Dos;
Const
     RunHandle : Boolean = True;
     LC        : Char = #0;

     OldHandle : Procedure = Nil;
TYPE
    A =ARRAY [0..3999] OF BYTE;
VAR
   MSS,MON : A;
    test: array [0..3999] of integer;
   I,J,x,h : INTEGER;
   f :longint;
 (* ********************************* *)
procedure writesaleh;
begin
     CLRSCR;
     GOTOXY(20,10);
     writeLN ('MMM        MMM    SSSSSSS     SSSSSSS        ');
     GOTOXY(20,11);
     writeLN ('M  M      M  M   S       S   S       S       ');
     GOTOXY(20,12);
     writeLN ('M    M   M   M   S           S               ');
     GOTOXY(20,13);
     writeLN ('M      M     M    SSSSSSS     SSSSSSS        ');
     GOTOXY(20,14);
     writeLN ('M            M           S           S       ');
     GOTOXY(20,15);
     writeLN ('M            M   S       S   S       S       ');
     GOTOXY(20,16);
     writeLN ('M            M    SSSSSSS     SSSSSSS        ');
end;

(* *********************************** *)
Function GetChar : Word;
 Var
  R : Registers;
 Begin
  R.AH := 0;
  Intr ( $16, R );
  GetChar := R.AH Shl 8 + R.AL;
 End;
(* *********************************** *)
procedure main; interrupt;
 Var
  Ch : Byte;
 begin
  Ch := Port[$60];
  if RunHandle And ( Ch = 1 ) Then
   Begin
    OldHandle;
    RunHandle := False;
    GetChar;
FOR I:=0 TO 3999 DO MON[I]:=MEMW[$B800:I];
writesaleh;
FOR I:=0 TO 3999 DO MSS[I]:=MEMW[$B800:I];
randomize;
h:=0;
WHILE KEYPRESSED DO
BEGIN
     x:=trunc(random(4000));
     if h=5000 then halt;
     test[h]:=x;
      for i:=0 to 3999 do
          if test[i]<>x then memw[$b800:x]:=mss[x]
          else h:=h-1;
      for f:=0 to 999999 do;
      h:=h+1;
      delay(50);
END;
FOR I:=0 TO 3999 DO MEMW[$B800:I]:=MON[I];
    RunHandle := True;
   End
  else
   Begin
    InLine ( $9C );
    OldHandle;
   End;
 end;
(* *********************************** *)
Begin
 GetIntVec ( $9, @OldHandle );
 SetIntVec ( $9, Addr ( Main ) );
 Keep ( 0 );
End.