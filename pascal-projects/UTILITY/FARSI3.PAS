USES CRT;
VAR
   UPPER,farsi,chasb:STRING;
   I,i2,X,y:BYTE;

   a,temp:char;
   s:1..32;
BEGIN
temp:=chr(32);
X:=70;
y:=2;
UPPER:='ABCDEFGHIJKLMNOPQRSTUVWXYZ{}|:"<~abcdefghijklmnopqrstuvwxyz[]\;'+chr(39)+chr(44)+chr(96);
FARSI:='©ò¥ü˜’ñù–öô¢ ž­ë§éá¤«¯åàšœ|íïŠ”ª£¥þ™“ó‘ú—÷õŽ¢¡Ÿ®ì¨êä¤¬¯èà›¦îðø•';
chasb:='';
CLRSCR;
repeat
a:=readkey;
{write (ord(a));}
GOTOXY(x,y);
textcolor (15);
for i:=1 to 66 do
if a=upper[i] then write(farsi[i]);
X:=X-1;
if x=5 then
begin
x:=70;
y:=y+1;
end;
if a=chr(32) then
for i:=1 to 66 do
if temp=upper[i] then
begin
x:=x+2;
GOTOXY(x,y);
for i:=1 to 66 do
if temp=upper[i] then write(farsi[i-33]);
x:=x-2;
GOTOXY(x,y);
end;               s
if a=chr(8) then
begin
x:=x+2;
GOTOXY(x,y);
write(' ');
end;
temp:=a;
until a=chr(27);


END.