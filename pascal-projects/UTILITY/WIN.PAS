uses crt,msscrt;
type
    Mm = Array [1..4000] Of byte;
var
   Mon : Mm Absolute $B800:$0000;
   Buf : Mm;
   a1:ARRAY [0..10] OF STRING;
   m1:ARRAY [0..11] OF STRING;
   m2:ARRAY [0..9] OF STRING;
Procedure menu1;
Begin
m1[1]:='New             ';
m1[2]:='Open...       F3';
m1[3]:='Save          F2';
m1[4]:='Save as...      ';
m1[5]:='Save all        ';
m1[6]:='@\';
m1[7]:='Change dir      ';
m1[8]:='Print         F2';
m1[9]:='Print setup     ';
m1[10]:='Dos shell       ';
m1[11]:='Exit            ';
repeat
Popup ( 1,20,2,13,15,7,0,2,0,10,m1);
Until (key=1)or (key=75) or (key=77);
End;
{***************************************************************}
Procedure menu2;
Begin
m2[1]:='Undo    Alt+BkSp';
m1[2]:='sdddd           ';
m1[3]:='Cut    Shift+del';
m1[4]:='@\';
m1[5]:='Save all        ';
m1[6]:='zaro            ';
m1[7]:='Change dir      ';
m1[8]:='@\';
m1[9]:='Print setup     ';
m1[10]:='aaaa           ';
m1[11]:='Exit            ';
repeat
Popup ( 10,30,2,13,15,7,0,2,0,10,m1);
Until (key=1)or (key=75) or (key=77);
End;
{***************************************************************}
begin
clrscr;
textbackground(0);
clrscr;
ajor(1,80,1,24,1,7,'°');
a1[1]:='File';
a1[2]:='Edit';
a1[3]:='Search';
a1[4]:='Run';
a1[5]:='Compile';
a1[6]:='Debug';
a1[7]:='Tools';
a1[8]:='Options';
a1[9]:='Window';
a1[10]:='Help';
REPEAT
Curscroff;
MenuBar(1,1,7,0,2,0,10,A1);
if key=28 then
begin
If Menu = 1 Then
Begin
buf:=mon;
Menu1;
startear_popup:=0;
mon:=buf;
End;

If Menu = 2 Then
Begin
buf:=mon;
Menu2;
startear_popup:=0;
mon:=buf;
End;

end;
UNTIL (key=28) ;
end.