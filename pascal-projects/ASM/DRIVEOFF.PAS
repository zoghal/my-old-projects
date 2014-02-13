uses dos;
VAR Rg:Registers;
dr:byte;
BEGIN
   readln (dr);
   WITH Rg DO BEGIN
   ax:=$5f07;
   dl:=Dr;
   MsDos(Rg);
   IF (Flags AND 1)=0 THEN
WriteLn('Drive '
+Chr(Dr+65)+': On');
  END;
 END.
