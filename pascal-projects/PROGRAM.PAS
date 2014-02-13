program databank;
uses crt;
type
 trec=record
  number,name,sup,price:string;
 end;
var
 f:file of trec;
 rec:trec;
 menunumber:integer;
procedure draw;
begin
 textcolor(14);
 textbackground(8);
 gotoxy(5,19);write('ษออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออป');
 gotoxy(5,20);write('บ    –๕þ์        ขขใ—                  ๒‘๎ ๔‘๗               ๙ค‘๕ช    บ');
 gotoxy(5,21);write('วฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤถ');
 gotoxy(5,22);write('บ                                                                      บ');
 gotoxy(5,23);write('บ                                                                      บ');
 gotoxy(5,24);write('ศออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออผ');

end;
procedure readfarsinumber(x,y,len,c1,c2:byte;var s:string);
var
 temp:byte;
 key:char;
begin
 textbackground(c1);
 textcolor(c2);
 s:='';
 gotoxy(x,y);
 for temp:=1 to len do write(#32);
 temp:=0;
 repeat
  gotoxy(x+temp,y);
  key:=readkey;
  if key=#0 then
  begin
   key:=readkey;
   continue;
  end;
  if not(key in ['0'..'9',#13,#8]) then continue;
  if key=#13 then break;
  if key=#8 then
  begin
   if temp>0 then
   begin
    delete(s,temp,1);
    dec(temp);
    gotoxy(x+temp,y);
    write(#32);
   end;
   continue;
  end;
  inc(temp);
  if temp>len then dec(temp)
  else
  begin
   s:=s+chr(ord(key)+80);
   write(chr(ord(key)+80));
  end
 until key=#13;
end;
procedure readfarsistring(x,y,len,c1,c2:byte;var s:string);
var
 temp:byte;
 key:char;
begin
 textbackground(c1);
 textcolor(c2);
 s:='';
 gotoxy(x-len+1,y);
 for temp:=1 to len do write(#32);
 temp:=0;
 repeat
  gotoxy(x-temp,y);
  key:=readkey;
  if key=#0 then
  begin
   key:=readkey;
   continue;
  end;
  if key=#13 then break;
  if key=#8 then
  begin
   if temp>0 then
   begin
    delete(s,1,1);
    dec(temp);
    gotoxy(x-temp,y);
    write(#32);
   end;
   continue;
  end;
  inc(temp);
  if temp>len then dec(temp)
  else
  begin
   case key of
    '`':key:='•';
    '1':key:='';
    '2':key:='';
    '3':key:='';
    '4':key:='';
    '5':key:='…';
    '6':key:='';
    '7':key:='';
    '8':key:='';
    '9':key:='';
    '0':key:='€';
    '-':key:='-';
    '=':key:='=';
    #92:key:='ฆ';
    'q':key:='ฎ';
    'w':key:='ฌ';
    'e':key:='';
    'r':key:='์';
    't':key:='๊';
    'y':key:='่';
    'u':key:='ไ';
    'i':key:='๛';
    'o':key:='ก';
    'p':key:='';
    '[':key:='';
    ']':key:='';
    'a':key:='ช';
    's':key:='จ';
    'd':key:='þ';
    'f':key:='“';
    'g':key:='๓';
    'h':key:='';
    'j':key:='—';
    'k':key:='๗';
    'l':key:='๕';
    ';':key:='๎';
    #39:key:='๐';
    'z':key:='เ';
    'x':key:='ฏ';
    'c':key:='ฅ';
    'v':key:='ค';
    'b':key:='ฃ';
    'n':key:='ข';
    'm':key:='';
    ',':key:='๘';
    '.':key:='.';
    '/':key:='/';
    '~':key:='”';
    '!':key:='!';
    '@':key:='';
    '#':key:='#';
    '$':key:='$';
    '%':key:='%';
    '^':key:='^';
    '&':key:='';
    '*':key:='*';
    '(':key:='(';
    ')':key:=')';
    '_':key:='_';
    '+':key:='+';
    '|':key:='ý';
    'Q':key:='ญ';
    'W':key:='ซ';
    'E':key:='';
    'R':key:='๋';
    'T':key:='้';
    'Y':key:='ๅ';
    'U':key:='แ';
    'I':key:='๙';
    'O':key:=' ';
    'P':key:='';
    '{':key:='';
    '}':key:='';
    'A':key:='ฉ';
    'S':key:='ง';
    'D':key:='ü';
    'F':key:='’';
    'G':key:='๑';
    'H':key:='‘';
    'J':key:='–';
    'K':key:='๖';
    'L':key:='๔';
    ':':key:='ํ';
    '"':key:='๏';
    'Z':key:='โ';
    'X':key:='ใ';
    'C':key:='ๆ';
    'V':key:='็';
    'B':key:='๒';
    'N':key:='๚';
    'M':key:='';
    '<':key:='<';
    '>':key:='>';
    '?':key:='';
    #32:key:=#32;
   end;
   s:=key+s;
   write(key);
  end
 until key=#13;
end;
procedure appenddata;
begin
 draw;
 readfarsinumber(64,22,10,1,14,rec.number);
 readfarsistring(61,22,30,1,14,rec.name);
 readfarsinumber(20,22,10,1,14,rec.sup);
 readfarsinumber(8,22,10,1,14,rec.price);
 reset(f);
 seek(f,filesize(f));
 write(f,rec);
 close(f);
end;
procedure changedata;
var
 number,name:string;
 found:boolean;
 i:integer;
 key:char;
begin
 textcolor(14);
 textbackground(8);
 gotoxy(5,2);write('ษออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออป');
 gotoxy(5,3);write('บ                                                        : ๒‘๎ ๙ค‘๕ช   บ');
 gotoxy(5,4);write('บ                                                        : ๒‘๎ ๔‘๗     บ');
 gotoxy(5,5);write('ศออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออผ');
 readfarsinumber(50,3,10,1,14,number);
 readfarsistring(59,4,30,1,14,name);
 found:=false;
 reset(f);
 for i:=0 to filesize(f)-1 do
 begin
  read(F,rec);
  if (rec.name=name) and (rec.number=number) then
  begin
   found:=true;
   break;
  end;
 end;
 close(f);
 if found then
 begin
  draw;
  readfarsinumber(64,22,10,1,14,rec.number);
  readfarsistring(61,22,30,1,14,rec.name);
  readfarsinumber(20,22,10,1,14,rec.sup);
  readfarsinumber(8,22,10,1,14,rec.price);
  reset(f);
  seek(f,i);
  write(f,rec);
  close(f);
 end
 else
 begin
  textcolor(14);
  textbackground(8);
  gotoxy(5,2);write('ษออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออป');
  gotoxy(5,3);write('บ                           .–จþ๗ ข๘๘๕ ๒‘๎ ๖þ                        บ');
  gotoxy(5,4);write('บ                      .ขþค‘ช๊“ ค üขþ๓๎ ๙๕ข üค“                    บ');
  gotoxy(5,5);write('ศออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออผ');
  key:=readkey;
 end;
end;
procedure deletedata;
var
 number,name:string;
 found:boolean;
 i:integer;
 key:char;
begin
 textcolor(14);
 textbackground(8);
 gotoxy(5,2);write('ษออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออป');
 gotoxy(5,3);write('บ                                                        : ๒‘๎ ๙ค‘๕ช   บ');
 gotoxy(5,4);write('บ                                                        : ๒‘๎ ๔‘๗     บ');
 gotoxy(5,5);write('ศออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออผ');
 readfarsinumber(50,3,10,1,14,number);
 readfarsistring(59,4,30,1,14,name);
 found:=false;
 reset(f);
 for i:=0 to filesize(f)-1 do
 begin
  read(f,rec);
  if (rec.name=name) and (rec.number=number) then
  begin
   found:=true;
   break;
  end;
 end;
 if found then
 begin
  if filepos(f)=filesize(f) then seek(f,filesize(f)-1)
  else
  for i:=filepos(f) to filesize(f)-1 do
  begin
   seek(f,i);
   read(f,rec);
   seek(f,i-1);
   write(f,rec)
  end;
  truncate(f);
 end
 else
 begin
  textcolor(14);
  textbackground(8);
  gotoxy(5,2);write('ษออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออป');
  gotoxy(5,3);write('บ                           .–จþ๗ ข๘๘๕ ๒‘๎ ๖þ                        บ');
  gotoxy(5,4);write('บ                      .ขþค‘ช๊“ ค üขþ๓๎ ๙๕ข üค“                    บ');
  gotoxy(5,5);write('ศออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออผ');
  key:=readkey;
 end;
 close(f);
end;
procedure list(k:integer);
var
 n:string;
 nf,found:boolean;
 i:integer;
 key:char;
begin
 textcolor(14);
 textbackground(8);
 gotoxy(5,2);write('ษออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออป');
 gotoxy(5,3);
 if k=1 then write('บ                                                        : ๒‘๎ ๔‘๗     บ')
 else        write('บ                                                        : ๒‘๎ ๙ค‘๕ช   บ');
 gotoxy(5,4);write('ศออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออผ');
 if k=1 then readfarsistring(59,3,30,1,14,n)
 else readfarsinumber(50,3,10,1,14,n);
 found:=false;
 reset(f);
 for i:=0 to filesize(f)-1 do
 begin
  read(f,rec);
  if k=1 then nf:=rec.name=n
  else nf:=rec.number=n;
  if nf then
  begin
   found:=true;
   draw;
   gotoxy(5,23);write('บ                      .ขþค‘ช๊“ ค üขþ๓๎ ๙๕ข üค“                    บ');
   gotoxy(8,22);
   textcolor(14);
   textbackground(1);
   writeln(rec.price:10,#32,#32,rec.sup:10,#32,#32,rec.name:30,#32,#32,rec.number:10);
   key:=readkey;
  end;
 end;
 close(f);
 if not found then
 begin
  textcolor(14);
  textbackground(8);
  gotoxy(5,2);write('ษออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออป');
  gotoxy(5,3);write('บ                           .–จþ๗ ข๘๘๕ ๒‘๎ ๖þ                        บ');
  gotoxy(5,4);write('บ                      .ขþค‘ช๊“ ค üขþ๓๎ ๙๕ข üค“                    บ');
  gotoxy(5,5);write('ศออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออผ');
  key:=readkey;
 end;
end;
procedure draw_menu(c1,c2,m:integer);
var
 cm1,cm2,cm3,cm4,cm5,cm6:integer;
begin
 textcolor(14);
 case m of
  1:begin cm1:=c2;cm2:=c1;cm3:=c1;cm4:=c1;cm5:=c1;cm6:=c1; end;
  2:begin cm1:=c1;cm2:=c2;cm3:=c1;cm4:=c1;cm5:=c1;cm6:=c1; end;
  3:begin cm1:=c1;cm2:=c1;cm3:=c2;cm4:=c1;cm5:=c1;cm6:=c1; end;
  4:begin cm1:=c1;cm2:=c1;cm3:=c1;cm4:=c2;cm5:=c1;cm6:=c1; end;
  5:begin cm1:=c1;cm2:=c1;cm3:=c1;cm4:=c1;cm5:=c2;cm6:=c1; end;
  6:begin cm1:=c1;cm2:=c1;cm3:=c1;cm4:=c1;cm5:=c1;cm6:=c2; end;
 end;
 textbackground(cm1);
 gotoxy(32,7);
 if cm1=c2 then write('     –‘ไ๒ฏ ข๘ค๘     ')
 else write('     –‘ไ๒ฏ ข๘ค๘     ');
 textbackground(cm2);
 gotoxy(32,9);
 if cm2=c2 then write('    –‘ไ๒ฏ คþþ็—     ')
 else write('    –‘ไ๒ฏ คþþ็—     ');
 textbackground(cm3);
 gotoxy(32,11);
 if cm3=c2 then write('     –‘ไ๒ฏ ้ฃ      ')
 else write('     –‘ไ๒ฏ ้ฃ      ');
 textbackground(cm4);
 gotoxy(32,13);
 if cm4=c2 then write('   ๔‘๗ ง‘จค“ –จþ๓   ')
 else write('   ๔‘๗ ง‘จค“ –จþ๓   ');
 textbackground(cm5);
 gotoxy(32,15);
 if cm5=c2 then write('  ๙ค‘๕ช ง‘จค“ –จþ๓  ')
 else write('  ๙ค‘๕ช ง‘จค“ –จþ๓  ');
 textbackground(cm6);
 gotoxy(32,17);
 if cm6=c2 then write('         ๘คก        ')
 else write('         ๘คก        ');
end;
function menu:integer;
var
 m:integer;
 c:char;
begin
 m:=1;
 draw_menu(2,3,m);
 repeat
  c:=readkey;
  if c=#0 then
  begin
   c:=readkey;
   case c of
    #72:begin dec(m);if m<1 then m:=6; end;
    #80:begin inc(m);if m>6 then m:=1; end;
   end;
   draw_menu(2,3,m);
  end;
 until c=#13;
 menu:=m
end;
begin
 assign(f,'data.dat');
 {$i-}
 reset(f);
 {$i+}
 if ioresult <> 0 then rewrite(f);
 close(f);
 repeat
  textbackground(4);
  clrscr;
  menunumber:=menu;
  case menunumber of
   1:appenddata;
   2:changedata;
   3:deletedata;
   4:list(1);
   5:list(2);
   6:break;
  end;
 until false;
 textbackground(0);
 clrscr;
end.
