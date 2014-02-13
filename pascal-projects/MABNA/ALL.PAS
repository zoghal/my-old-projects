Program Convert_all_mabna;
Uses CRt;
Var
   Key:Char;
function IntToStr(I: Word): String;
var
 S: string[11];
begin
 Str(I, S);
 IntToStr := S;
end;

function Power (x,y : Byte):word;
Var
 Temp :Word;
 I : Byte;
Begin
 Temp := 1;
 For I:= 1 to y do
  temp := temp * x;
  power := temp
End;

Procedure Mabnay_10;
Var
   Num ,x: Word;
   sum : String;
Begin
 Clrscr;
 Write('Enter Num ==> ');
 Readln(num);
 sum:='';
 X:=Num;
 Repeat
  sum:=IntToStr(x mod 2)+sum;
  X:= x div 2;
 Until x = 0;
 Writeln('Mabnay 2 ==>',Sum);
 sum:='';
 X:=Num;
 Repeat
  sum:=IntToStr(x mod 8)+sum;
  X:= x div 8;
 Until x = 0;
 Writeln('Mabnay 8 ==>',Sum);
 sum:='';
 X:=Num;
 Repeat
 If (X mod 16) >= 10 Then
  sum:=Chr(55+(x mod 16))+sum
 Else
   sum:=inttostr(x mod 16)+sum;
  X:= x div 16;
 Until x = 0;
 Writeln('Mabnay 16 ==>',Sum);
 readkey
End;

{*************************************}
Procedure Mabnay_2_10;
Var
   Num : Longint;
   Temp : sTring[11];
   i,t : Word;
   x,q : Longint;
   tt : integer;
Begin
 Clrscr;
 x:=0;
 Write( 'Enter number :=');
 Readln(Num);
 str(num,temp);
 T := Length(Temp);
 For i:= T-1 downto 0 do
  Begin
  Val(temp[i+1],q,tt);
  x := (x+ (q * (Power(2,i) ) ));
  End;
 Writeln('Manbaye 10  = ',x);
 readkey;
End;
{*************************************}
Procedure Mabnay_8_10;
Var
   Num : Longint;
   Temp : sTring[11];
   i,t : Word;
   x,q : Longint;
   tt : integer;
Begin
 Clrscr;
 x:=0;
 Write( 'Enter number :=');
 Readln(Num);
 str(num,temp);
 T := Length(Temp);
 For i:= T-1 downto 0 do
  Begin
  Val(temp[T-i],q,tt);
  Writeln(q);
  x := (x+ (q * (Power(8,i) ) ));
  End;
 Writeln('Manbaye 10  = ',x);
 readkey;
End;
{*************************************}
Procedure Mabnay_16_10;
Var
   num : sTring[11];
   i,t : Word;
   x,q : Longint;
   tt : integer;
Begin
 Clrscr;
 x:=0;
 Write( 'Enter number :=');
 Readln(Num);
 T := Length(NUM);
 For i:= T-1 downto 0 do
  Begin
  iF NUM[T-I] IN ['A','B','C','D','E','F'] Then
   Case NUM[T-i] Of
     'A' : Q:=10;
     'B' : Q:=11;
     'C' : Q:=12;
     'D' : Q:=13;
     'E' : Q:=14;
     'F' : Q:=15;
   End
  Else Val(num[T-i],q,tt);
   x := (x+ (q * (Power(16,i) ) ));
  End;
 Writeln('Manbaye 10  = ',x);
 readkey;
End;

Procedure Mabnay_16_8;
Var
   num,Sum : sTring[11];
   i,t : Word;
   x,q : integer;
   tt : integer;
Begin
 Clrscr;
 x:=0;
 Write( 'Enter number :=');
 Readln(Num);
 T := Length(NUM);
 For i:= T-1 downto 0 do
  Begin
  iF NUM[T-I] IN ['A','B','C','D','E','F'] Then
   Case NUM[T-i] Of
     'A' : Q:=10;
     'B' : Q:=11;
     'C' : Q:=12;
     'D' : Q:=13;
     'E' : Q:=14;
     'F' : Q:=15;
   End
  Else Val(num[T-i],q,tt);
   x := (x+ (q * (Power(16,i) ) ));
  End;
 Repeat
  sum:=IntToStr(x mod 8)+sum;
  X:= x div 8;
 Until x = 0;
 Writeln('Manbaye 16 ==> 8  = ',sum);

 readkey;
End;

{----------------------------------------------------------------------------}
Begin
 Repeat
  Clrscr;
  Writeln('1- 10 ==> 2,8,16');
  Writeln('2- 2 ==> 10');
  Writeln('3- 8 ==> 10');
  Writeln('4- 16 ==> 10');
  Writeln('5- 16 ==> 8');
  Key := Readkey;
  Case Key Of
   '1' :Mabnay_10 ;
   '2' :Mabnay_2_10 ;
   '3' :Mabnay_8_10 ;
   '4' :Mabnay_16_10 ;
   '5' :Mabnay_16_8;
  End;

 Until Key = #27
End.