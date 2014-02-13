uses crt,dos;
type
 rec = Record
            Data       : Array[1..512] Of byte ;
            End;
var
   Ser : Record
           Case Integer Of
            1 : ( D       : Array(.1..512.) Of word );
            2 : (F       : Array(.1..39.) Of Char;
                  Serial2 : Word;
                  Serial1 : Word );
           End;

   r : Registers;
   rc : rec;
   i,i1 : word;
   key : char;
   Label_Disk,
   New_Label   : String[11];

procedure reset;
begin
r.ah:=$0D;
r.dl :=$80;
intr($13,r);
end;

Function  GetHex ( No : LongInt ) : String;
Const
 HexTable  : Array(.0..15.) Of Char = ( '0', '1', '2', '3', '4', '5', '6', '7',
                                         '8', '9', 'A', 'B', 'C', 'D', 'E', 'F' );
Begin
 If No >= 16 Then
  GetHex := GetHex ( No Div 16 ) + HexTable(.No Mod 16.)
 Else
  GetHex := HexTable(.No Mod 16.);
End;

Procedure serial;
 var
 recSER : Record
           Case Integer Of
            1 : ( D       : Array(.1..512.) Of word );
            2 : (F       : Array(.1..39.) Of Char;
                  Serial2 : Word;
                  Serial1 : Word );
           End;
   r : Registers;
 s1,s2 : String[4];
Begin
r.ah:=$0A;
r.dl:=$80; {drive}
r.ch:=0;  {selandr}
r.dh:=1;  {head}
r.cl:=1; { sector}
r.al:=1;
r.es:=seg(rEcser.D);
r.bx:=ofs(recser.D);
intr($13,r);
s1 := gethex (recser.serial1);
s2 := gethex (recser.serial2);
if length(s1)<>4 Then s1 := '0'+ s1;
if length(s2)<>4 Then s2 := '0'+ s2;
Writeln ('serial  Disk Is = ',s1,' : ',s2);
Writeln ('press any key to exit');
end;

begin
clrscr;
reset;
r.ah:=$0A;
r.dl:=$80; {drive}
r.ch:=0;  {selandr}
r.dh:=1;  {head}
r.cl:=1; { sector}
r.al:=1;
r.es:=seg(rc.data);
r.bx:=ofs(rc.data);
intr($13,r);
 For i:= 44  to 54 do
  Begin
   Label_Disk := Label_Disk + Chr ( Rc.Data[ i ] );
  end;
 Writeln (' Label Current Disk ( a: ) Is : ', Label_Disk);
 Write ('Press Enter 11 Character Of label = ');
 readln ( New_Label );
 If New_Label <> '' Then
   Begin
    For i := 44 To 54 Do
     Rc.Data[i] := Ord ( New_label [ i - 43 ] );
    r.ah:=$0B;
    r.dl:=$80; {drive}
    r.ch:=0;  {selandr}
    r.dh:=1;  {head}
    r.cl:=1; { sector}
    r.al:=1;
    r.es:=seg(rc.data);
    r.bx:=ofs(rc.data);
    intr($13,r);
    Writeln (' Label Saved.... ');
    READKEY;
    clrscr;
    serial;
   End;
end.


