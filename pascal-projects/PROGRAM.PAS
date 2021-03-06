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
 gotoxy(5,19);write('浜様様様様様様様様様様様様様様様様様様様様様様様様様様様様様様様様様様融');
 gotoxy(5,20);write('�    ����        ��≪�                  ��� ���               �����    �');
 gotoxy(5,21);write('把陳陳陳陳陳陳陳陳陳陳陳陳陳陳陳陳陳陳陳陳陳陳陳陳陳陳陳陳陳陳陳陳陳陳超');
 gotoxy(5,22);write('�                                                                      �');
 gotoxy(5,23);write('�                                                                      �');
 gotoxy(5,24);write('藩様様様様様様様様様様様様様様様様様様様様様様様様様様様様様様様様様様夕');

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
    '`':key:='�';
    '1':key:='�';
    '2':key:='�';
    '3':key:='�';
    '4':key:='�';
    '5':key:='�';
    '6':key:='�';
    '7':key:='�';
    '8':key:='�';
    '9':key:='�';
    '0':key:='�';
    '-':key:='-';
    '=':key:='=';
    #92:key:='�';
    'q':key:='�';
    'w':key:='�';
    'e':key:='�';
    'r':key:='�';
    't':key:='�';
    'y':key:='�';
    'u':key:='�';
    'i':key:='�';
    'o':key:='�';
    'p':key:='�';
    '[':key:='�';
    ']':key:='�';
    'a':key:='�';
    's':key:='�';
    'd':key:='�';
    'f':key:='�';
    'g':key:='�';
    'h':key:='�';
    'j':key:='�';
    'k':key:='�';
    'l':key:='�';
    ';':key:='�';
    #39:key:='�';
    'z':key:='�';
    'x':key:='�';
    'c':key:='�';
    'v':key:='�';
    'b':key:='�';
    'n':key:='�';
    'm':key:='�';
    ',':key:='�';
    '.':key:='.';
    '/':key:='/';
    '~':key:='�';
    '!':key:='!';
    '@':key:='�';
    '#':key:='#';
    '$':key:='$';
    '%':key:='%';
    '^':key:='^';
    '&':key:='�';
    '*':key:='*';
    '(':key:='(';
    ')':key:=')';
    '_':key:='_';
    '+':key:='+';
    '|':key:='�';
    'Q':key:='�';
    'W':key:='�';
    'E':key:='�';
    'R':key:='�';
    'T':key:='�';
    'Y':key:='�';
    'U':key:='�';
    'I':key:='�';
    'O':key:='�';
    'P':key:='�';
    '{':key:='�';
    '}':key:='�';
    'A':key:='�';
    'S':key:='�';
    'D':key:='�';
    'F':key:='�';
    'G':key:='�';
    'H':key:='�';
    'J':key:='�';
    'K':key:='�';
    'L':key:='�';
    ':':key:='�';
    '"':key:='�';
    'Z':key:='�';
    'X':key:='�';
    'C':key:='�';
    'V':key:='�';
    'B':key:='�';
    'N':key:='�';
    'M':key:='�';
    '<':key:='<';
    '>':key:='>';
    '?':key:='�';
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
 gotoxy(5,2);write('浜様様様様様様様様様様様様様様様様様様様様様様様様様様様様様様様様様様融');
 gotoxy(5,3);write('�                                                        : ��� �����   �');
 gotoxy(5,4);write('�                                                        : ��� ���     �');
 gotoxy(5,5);write('藩様様様様様様様様様様様様様様様様様様様様様様様様様様様様様様様様様様夕');
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
  gotoxy(5,2);write('浜様様様様様様様様様様様様様様様様様様様様様様様様様様様様様様様様様様融');
  gotoxy(5,3);write('�                           .���� ‡��� ��� ���                        �');
  gotoxy(5,4);write('�                      .◯����� �� �◯齊 ����� ����                    �');
  gotoxy(5,5);write('藩様様様様様様様様様様様様様様様様様様様様様様様様様様様様様様様様様様夕');
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
 gotoxy(5,2);write('浜様様様様様様様様様様様様様様様様様様様様様様様様様様様様様様様様様様融');
 gotoxy(5,3);write('�                                                        : ��� �����   �');
 gotoxy(5,4);write('�                                                        : ��� ���     �');
 gotoxy(5,5);write('藩様様様様様様様様様様様様様様様様様様様様様様様様様様様様様様様様様様夕');
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
  gotoxy(5,2);write('浜様様様様様様様様様様様様様様様様様様様様様様様様様様様様様様様様様様融');
  gotoxy(5,3);write('�                           .���� ‡��� ��� ���                        �');
  gotoxy(5,4);write('�                      .◯����� �� �◯齊 ����� ����                    �');
  gotoxy(5,5);write('藩様様様様様様様様様様様様様様様様様様様様様様様様様様様様様様様様様様夕');
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
 gotoxy(5,2);write('浜様様様様様様様様様様様様様様様様様様様様様様様様様様様様様様様様様様融');
 gotoxy(5,3);
 if k=1 then write('�                                                        : ��� ���     �')
 else        write('�                                                        : ��� �����   �');
 gotoxy(5,4);write('藩様様様様様様様様様様様様様様様様様様様様様様様様様様様様様様様様様様夕');
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
   gotoxy(5,23);write('�                      .◯����� �� �◯齊 ����� ����                    �');
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
  gotoxy(5,2);write('浜様様様様様様様様様様様様様様様様様様様様様様様様様様様様様様様様様様融');
  gotoxy(5,3);write('�                           .���� ‡��� ��� ���                        �');
  gotoxy(5,4);write('�                      .◯����� �� �◯齊 ����� ����                    �');
  gotoxy(5,5);write('藩様様様様様様様様様様様様様様様様様様様様様様様様様様様様様様様様様様夕');
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
 if cm1=c2 then write('     ��糅�� ‡��     ')
 else write('     ��糅�� ‡��     ');
 textbackground(cm2);
 gotoxy(32,9);
 if cm2=c2 then write('    ��糅�� �����     ')
 else write('    ��糅�� �����     ');
 textbackground(cm3);
 gotoxy(32,11);
 if cm3=c2 then write('     ��糅�� 蕋�      ')
 else write('     ��糅�� 蕋�      ');
 textbackground(cm4);
 gotoxy(32,13);
 if cm4=c2 then write('   ��� ������ ����   ')
 else write('   ��� ������ ����   ');
 textbackground(cm5);
 gotoxy(32,15);
 if cm5=c2 then write('  ����� ������ ����  ')
 else write('  ����� ������ ����  ');
 textbackground(cm6);
 gotoxy(32,17);
 if cm6=c2 then write('         ��ぁ        ')
 else write('         ��ぁ        ');
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
