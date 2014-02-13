uses crt,dos;
type
 record1 = Record
            Data       : Array[1..512] Of byte ;
            End;
var
 rec: Record
           Case Integer Of
            1 : ( D       : Array(.1..512.) Of word );
            2 : (F       : Array(.1..39.) Of Char;
                  Serial2 : Word;
                  Serial1 : Word );
           End;

   r : Registers;
   rc : record1;
   i,i1 : word;
   key : char;
   Label_Disk,
   New_Label   : String[11];


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
 s1,s2 : String[4];
Begin
clrscr;
r.ah:=02; {servec 02 = read sector }
r.dl:=0; {drive}
r.ch:=0;  {selandr}
r.dh:=0;  {head}
r.cl:=1; { sector}
r.al:=1; { read number od sector}
r.es:=seg(rEc.d);
r.bx:=ofs(rEc.d);
intr($13,r);
s1 := gethex (rec.serial1);
s2 := gethex (rec.serial2);
if length(s1)<>4 Then s1 := '0'+ s1;
if length(s2)<>4 Then s2 := '0'+ s2;
Writeln ('serial  Disk Is = ',s1,' : ',s2);
Writeln ('press any key to exit');
reaDKEY;
end;

Procedure Set_label;
begin
clrscr;
r.ah:=02;
r.dl:=0; {drive}
r.ch:=0;  {selandr}
r.dh:=1;  {head}
r.cl:=2; { sector}
r.al:=1;
r.es:=seg(rc.data);
r.bx:=ofs(rc.data);
intr($13,r);
 For i:= 1 to 11 do
  Begin
   Label_Disk := Label_Disk + Chr ( Rc.Data[ i ] );
  end;
 Writeln (' Label Current Disk ( a: ) Is : ', Label_Disk);
 Write ('Press Enter 11 Character Of label = ');
 readln ( New_Label );
 If New_Label <> '' Then
   Begin
    For i := 1 To 11 Do
     Rc.Data[i] := Ord ( New_label [ i ] );
    r.ah:=03;
    r.dl:=0; {drive}
    r.ch:=0;  {selandr}
    r.dh:=1;  {head}
    r.cl:=2; { sector}
    r.al:=1;
    r.es:=seg(RC.data);
    r.bx:=ofs(RC.data);
    intr($13,r);
    Writeln (' Label Saved.... ');
   End;
end;



Begin
 Repeat
 clrscr;
  writeln ('1.Label');
  writeln ('2.Serial');
  key := readkey;
  case key of
   '1' : set_label;
   '2' : serial;
  end;
 until key = chr (27);
end.

