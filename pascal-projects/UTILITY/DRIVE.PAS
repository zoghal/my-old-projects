Uses
    Crt,Dos,mss3,Strings;
Type
    Temp =Array [0..4] Of String;
    Temp1 = Array [1..4000] of byte;
Var
   ENG,NUMD :STRING[52];
   R : Registers;
   temp3 :array[0..0] of char;
   Monitor : Temp1 absolute $b800:0;
   P,M : Temp;
   Save : Temp1;
   Drive : string;
  (* ***************************  Sound ********************************* *)
Procedure Beep;
Begin
  Sound(500);
  delay(200);
  NoSound;
End;
  (* ***************************  Look  ********************************* *)
Procedure Lock(dirve :string);
Var
   z:byte;
   Rg : Registers;
   temp4:byte;
   Error :integer;
begin
   eng :='ABCDEFGHIG';
   NUMD:='0123456789';
   temp3[0]:= drive[1];
   StrUpper(temp3);
   FOR z:=1 to 10 do
     if  eng[z]=Temp3 then val(numd[z],temp4,Error);
   WITH Rg DO
      BEGIN
        ax:=$5f08;
        dl:=temp4;
        MsDos(Rg);
        IF (Flags AND 1)=0 THEN
        save :=monitor;
        beep;
        wincadr(55,78,2,4,5,15);
        Fwrite(56,3,5,15,'DRIVE "'+TEMP3+'" IS LOCKED');
        inkey;
        monitor :=save;
        END;
end;
  (* **************************  UnLook  ********************************* *)
Procedure unLock(dirve :string);
Var
   z:byte;
   Rg : Registers;
   temp4:byte;
   Error :integer;
begin
   eng :='ABCDEFGHIG';
   NUMD:='0123456789';
   temp3[0]:= drive[1];
   StrUpper(temp3);
   FOR z:=1 to 10 do
       if  eng[z]=Temp3 then val(numd[z],temp4,Error);
   WITH Rg DO BEGIN
   ax:=$5f07;
   dl:=temp4;
   MsDos(Rg);
   IF (Flags AND 1)=0 THEN
      save :=monitor;
      beep;
      wincadr(55,78,2,4,5,15);
      Fwrite(56,3,5,15,'DRIVE "'+TEMP3+'" IS UNLOCKED');
      inkey;
      monitor :=save;

   END;
end;
  (* *************************** Change_Drive *************************** *)
Procedure Change_Drive;
Var
   Z :Byte;
   temp2 :char;
Begin
   Save := monitor;
   beep;
   Wincadr(29,49,20,22,9,15);
   Inputstr(31,21,0,9,15,9,1,'END DRIVE :',Drive);
   monitor := Save;
End;
 (* ******************************** Main ******************************* *)
Begin
   Clrscr;
   CurscrOff;
   ajor(0,80,0,25,15,1,'±');
   M[1] := ' Select Drive ';
   M[2] := ' Look Drive   ';
   M[3] := ' UnLook Drive ';
   M[4] := ' Exit Program ';
   Repeat
      Popup (30,47,10,15,15,9,0,4,15,m);
         If Key = 28 Then
            Begin
              Case menu of
                1: Change_Drive;
                2:Lock(drive);
                3:UnLock(Drive);
                4: halt;
              End;
            End;
   Until Key =1;
End.