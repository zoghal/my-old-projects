{ ********************* ��� ��� �� ******************** }
{ **************  ��� � ������ ����� ******************* }
{ *************** 77/8/23 ����� �� ****************** }

{   code section  <==== �� ������    }
program ali;
uses crt,dos;

var
 h, m, s, hund : Word;
 a,j,www:integer;
{   ======> procedure �� ��������� ���� <======     }
{   *********  ��� ���� ,1���������   *********     }
{*****************************************************************************}
{gettim ⓑ� ���� }
function LeadingZero(w : Word) : String;
var
  s : String;
begin
  Str(w:0,s);
  if Length(s) = 1 then
    s := '0' + s;
  LeadingZero := s;
end;

{******************************************************}

{ a,j,www:integer;
{   ======> procedure �� ��������� ���� <======     }
{   *********  ��� ���� ,1���������   *********     }
 procedure vorood;
  label
       1,2;
  var
     shift:{integer}char;
     ramze:{integer}char;
     w    :integer;
     f    :text;
     ra   :char;
 begin
  begin
  textcolor(4);
  textbackground(0);
  for w:=1 to 180 do
  write('���������');
  end;
   begin {begin util}
   window(10,3,70,15);
    textbackground(7);
   clrscr;
     textbackground(3);
      gotoxy(15,3);
    writeln('1377 � �� ��������� ������������� �����');
      gotoxy(35,5);
     textbackground(7);
    write('=(procedure)������������� ');
      gotoxy(32,5);
     textbackground(2);
    write('12');
      gotoxy(48,7);
     textbackground(7);
    write('=���������� ');
      gotoxy(45,7);
     textbackground(2);
    write('62');
      gotoxy(43,9);
     textbackground(7);
    write('=������ ���� ���� ');
      gotoxy(38,9);
     textbackground(2);
    write('1183');
  end;{end util}
  setcbreak(false);
    textbackground(3);
    window(20,18,60,23);
     textbackground(2);
  clrscr;
      gotoxy(12,3);
    write(':���� ���� �� ���� ���� ��� ');
 1:gotoxy(5,3);
    sound(3000);
     delay(400);
    nosound;
     textbackground(1);
     textcolor(1);
    write('       ');
      gotoxy(5,3);
     read(ramze);
     assign(f,'a:\afrad\pasramz.dat');
     reset(f);
     read(f,ra);
    if ramze<>ra then
   begin
   close(f);
   goto 1;
   end;
   close(f);
    begin  { ����� ���� ���� ���� }
      window(1,1,80,25);
       clrscr;
      window(20,10,60,15);
       textbackground(2);
       clrscr;
        gotoxy(3,3);
       textcolor(7);
         write(':���� ���� �� ��� ��� ���� ���� ��� ');
    2:sound(1000);
     delay(100);
    nosound;
       textbackground(3);
       textcolor(4);
        gotoxy(15,5);
       write('      ');
        gotoxy(15,5);
         read(shift);
    if shift<>'2'{ramze1} then
    goto 2;
   begin
     sound(700);
      delay(300);
     nosound;
      clrscr;
    end;
   end;
 end;
{*********   ��� ��� 2�������   *********}
 procedure zyrsafhe;
 var  i:integer;
 begin
 window(1,1,80,25);
   clrscr;
    textcolor(14);
    textbackground(3);
  for i:=1 to 11119 do                 { ���� ��� ��� ��� }
  write(#176);
{ �� ���}
  begin

     gotoxy(1,1);
     textcolor(15);
    writeln;
    writeln(#220);
    writeln(#220#220);
    writeln(#220#220#220);
    writeln(#220#220#220#220);
    writeln(#220#220#220#220#220);
    writeln(#220#220#220#220#220#220);
    writeln(#220#220#220#220#220#220#220);
    writeln(#220#220#220#220#220#220#220#220);
    writeln(#220#220#220#220#220#220#220#220#220);
    writeln(#220#220#220#220#220#220#220#220#220#220);
    writeln(#220#220#220#220#220#220#220#220#220#220#220);
    writeln(#220#220#220#220#220#220#220#220#220#220#220#220);

    writeln(#220#220#220#220#220#220#220#220#220#220#220);
    writeln(#220#220#220#220#220#220#220#220#220#220);
    writeln(#220#220#220#220#220#220#220#220#220);
    writeln(#220#220#220#220#220#220#220#220);
    writeln(#220#220#220#220#220#220#220);
    writeln(#220#220#220#220#220#220);
    writeln(#220#220#220#220#220);
    writeln(#220#220#220#220);
    writeln(#220#220#220);
    writeln(#220#220);
    writeln(#220);
 {****}   gotoxy (70,1);          (* �䑨 ��� ���  *)
    GetTime(h,m,s,hund);
       Writeln(LeadingZero(h),':',LeadingZero(m));
   { ********    }
 end;
{ ���� ���}
begin
    gotoxy(1,51);
     textcolor(15);
     textbackground(3);
    gotoxy(80,2);
   write(#220);
    gotoxy(79,3);
   write(#220#220);
    gotoxy(78,4);
   write(#220#220#220);
    gotoxy(77,5);
   write(#220#220#220#220);
    gotoxy(76,6);
   write(#220#220#220#220#220);
    gotoxy(75,7);
   write(#220#220#220#220#220#220);
    gotoxy(74,8);
   write(#220#220#220#220#220#220#220);
    gotoxy(73,9);
   write(#220#220#220#220#220#220#220#220);
    gotoxy(72,10);
   write(#220#220#220#220#220#220#220#220#220);
    gotoxy(71,11);
   write(#220#220#220#220#220#220#220#220#220#220);
    gotoxy(70,12);
   write(#220#220#220#220#220#220#220#220#220#220#220);
    gotoxy(69,13);
   write(#220#220#220#220#220#220#220#220#220#220#220#220);

    gotoxy(70,14);
   write(#220#220#220#220#220#220#220#220#220#220#220);
    gotoxy(71,15);
   write(#220#220#220#220#220#220#220#220#220#220);
    gotoxy(72,16);
   write(#220#220#220#220#220#220#220#220#220);
    gotoxy(73,17);
   write(#220#220#220#220#220#220#220#220);
    gotoxy(74,18);
   write(#220#220#220#220#220#220#220);
    gotoxy(75,19);
   write(#220#220#220#220#220#220);
    gotoxy(76,20);
   write(#220#220#220#220#220);
    gotoxy(77,21);
   write(#220#220#220#220);
    gotoxy(78,22);
   write(#220#220#220);
    gotoxy(79,23);
   write(#220#220);
    gotoxy(80,24);
   write(#220);
{ ***}  gotoxy (70,1);    { ������� ���� ��� �� �䑨 ��� }
textcolor(1);
   GetTime(h,m,s,hund);
   Writeln(LeadingZero(h),':',LeadingZero(m));
{****}
  end;
 end;
{ ************   3�������   **********}
 procedure menu;
 var
    a:integer;
begin
  begin
       textcolor(14);
       textbackground(3);
        gotoxy(30,2);
         write(#201#205#205#205#205#205#205#205#205#205#205#205#205#205#205#187);
        gotoxy(30,3);
         write(#186);
        gotoxy(45,3);
         write(#186);
        gotoxy(30,4);
         write(#200);
        gotoxy(45,4);
         write(#188);
        gotoxy(30,4);
         write(#200#205#205#205#205#205#205#205#205#205#205#205#205#205#205);
         begin
       textcolor(15);
       textbackground(4);
        gotoxy(31,3);
         writeln('   ��ॐ��   ');
         end;
  end;
{  main menu  <==== �� ���� ����  }
   begin
      textcolor(14);
      textbackground(2);
       gotoxy(10,6);
        writeln('������������������������������������������������������������Ŀ');
       gotoxy(10,7);
        writeln('�                                                            �');
       gotoxy(10,8);
        writeln('��������������������������������������������������������������');
   end;
    begin
       textcolor(5);
        gotoxy(12,7);
         write('���� �����');
        gotoxy(24,7);
         write('����� ������');
        gotoxy(38,7);         {38}
         write('������ �����');
      {*}  gotoxy(52,7);
         write('�����');
 end;
{ ���� ����� ��� ����}
{begin
    textbackground(3);
    textcolor(1);
   gotoxy(12,7);
  write('���� �����');
end;}
    end;
{******************  �� ���� ����� ����   ***************  }
procedure hkadamat1;
var
   faat  :char;
   faile1:text;
begin

 window(20,17,60,24);
 { textbackground(2);
  clrscr; }
  textbackground(15);
  textcolor(1);
  clrscr;
  gotoxy(10,1);
  writeln(' ���������������� ');
  gotoxy(2,3);
  writeln('   ���� 77/8/23 ����� �� ������ ���  ');
  gotoxy(2,5);
  writeln('     �� ����������������������');
  gotoxy(2,7);
  writeln('  . ��� ��� ����� 7�� ����� ���� ');
 gotoxy(11,6);
 textcolor(12);
 repeat
 until keypressed;
  begin {    ����� ����    }
    textcolor(14);
    textbackground(3);
   gotoxy(1,0);
   for j:=0 to 398 do
   write(#176);
   window(45,10,68,16);
 end;
end;
{   ��� ����� �����    }
procedure hkadamat2;
var
   j,s:integer;
   faa:integer;
{getkey up,down}
 procedure getkey32;
 var
    code2,gozineh2,satr2:integer;
    satee2,faa:integer;
    ch2:char;
 function getkey:integer;
 begin
     ch2:=readkey;
    if ord(ch2)<>0  then
    getkey:=ord(ch2)
     else
     begin
     getkey:=ord(readkey);
     end;
 end;{getkey}
  begin
    repeat
    code2:=getkey;
     if code2=80 then
     begin
     begin
    { if satr2=14925 then satr2:=1;}
     textcolor(10);
      gotoxy(3,satr2);
      if gozineh2=0 then write('77-78 �');
      if gozineh2=1 then write('77-78 �');
      if gozineh2=2 then write('77-79 �');
             textcolor(5);
 if satr2<>14925 then
 begin
 gotoxy(1,satr2);
   write('');
 gotoxy(13,satr2);
   write('');
   end;
      satr2:=satr2+1;
      if satr2>2 then satr2:=1;
      gozineh2:=gozineh2+1;
      if gozineh2>2 then gozineh2:=1;
      end;
      begin
      textcolor(4);
      gotoxy(3,satr2);
      if gozineh2=1 then write('77-78 �');
      if gozineh2=2 then write('77-79 �');
          textcolor(4);
  gotoxy(1,satr2);
 write('');
  gotoxy(13,satr2);
 write('');
      end;
      end;
  if code2=13 then
  begin
  if gozineh2=1 then faa:=1;
  if gozineh2=2 then faa:=2;
  end;
      until code2=27;
     end;{endkey}
  begin {asly}
  window(31,12,43,14);
  textbackground(2);
  clrscr;
  textbackground(3);
  textcolor(10);
  gotoxy(3,1);
  write('77-78 �');
  gotoxy(3,2);
  write('78-79 �');
     sound(300);{ ��� }
     delay(100);
     nosound;
textcolor(5);
 gotoxy(1,1);
 write('');
  gotoxy(13,1);
 write('');{satre2}
 textcolor(5);
 gotoxy(1,2);
 write('');
  gotoxy(13,2);
 write('');
 getkey32;
  begin {    ����� ����    }
   textcolor(14);
    textbackground(3);
   for j:=1 to 34 do
   write(#176);
   window(45,10,68,16);
 end;
 end;
{ ��� ����� }
procedure hkadamat5; {   ��� ����� �����    }
var
   s:integer;
   faa:string[7];
   fa2:text;
   ja:string[7];
   ia:char;
   i:integer;
procedure ramzeee;
var j:integer;
 begin
   textbackground(3);
    window(45,10,68,15);
   clrscr;
textcolor(5);
for j:=1 to 6 do
begin
 gotoxy(2,j);
 write('');
 end;
 for j:=1 to 6 do
begin
 gotoxy(23,j);
 write('');
 end;
 begin
  textcolor(6);
 gotoxy(4,1);
 write('    ... ������     ');
 gotoxy(4,2);
 write(' ������� ������� ');
 gotoxy(4,3);
 write(' ����� � ������  ');
 gotoxy(4,4);
 write(' ������������ 푕');
 gotoxy(4,5);
 write('   ���� ��� ����  ');
 gotoxy(4,6);
 write('       ����        ');
 end;
end;

begin
assign(fa2,'a:\afrad\pasramz.dat');
reset(fa2);
read(fa2,faa);
window(13,14,43,19);
textcolor(1);
textbackground(3);
clrscr;
gotoxy(15,1);
textcolor(5);
write(':��� ���');
gotoxy(10,1);
textcolor(4);
textbackground(1);
write(faa);
close(fa2);

gotoxy(6,3);
textcolor(4);
textbackground(7);
write('����� ��� ���� �� �������');
gotoxy(1,3);
textcolor(5);
write('(y/n)');
gotoxy(1,1);
 textcolor(3);
 textbackground(3);
 readln(ia);

if (ia='y') or (ia='Y') then
begin
textcolor(4);
assign(fa2,'a:\afrad\pasramz.dat');
rewrite(fa2);
textcolor(5);
gotoxy(1,5);
write('���� ���� �� ���� ��� ���');
textcolor(4);
gotoxy(13,6);
textcolor(4);
textbackground(7);
read(ja);
writeln(fa2,ja);
close(fa2);
    begin {    ����� ����    }
    textcolor(14);
    textbackground(3);
    for i:=1 to 1740 do write(#176);
    end;
    { ramzeee;}
    textbackground(3);
    window(45,10,68,15);
   clrscr;
ramzeee;
end;
if (ia<>'Y') or( ia<>'y') then
begin {    ����� ����    }
    textcolor(14);
    textbackground(3);
   for i:=1 to 1750 do
   write(#176);
      textbackground(3);
    window(45,10,68,15);
   clrscr;
ramzeee;
 end;
end;
{ *****************  �� ����� ����� ����  ***************  }
{*******   ��� �����   *********}
procedure shomareh1;
var
   j,s:integer;
{getkey up,down}
 procedure getkey2;
 var
    code2,gozineh2,satr2:integer;
    ch2:char;
    faa1:text;
    i:integer;
    rec1:string[15];
    satee2:integer;
    label 1,2;
     function getkey:integer;
 begin
     ch2:=readkey;
    if ord(ch2)<>0  then
    getkey:=ord(ch2)
     else
     begin
     getkey:=ord(readkey);
     end;
 end;{getkey}
  begin
    repeat
    code2:=getkey;
     if code2=80 then
     begin
     begin
    { if satr2=14925 then satr2:=1;}
     textcolor(6);
      gotoxy(3,satr2);
      if gozineh2=0 then write('101   ����');
      if gozineh2=1 then write('101   ����');
      if gozineh2=2 then write('102   ����');
      if gozineh2=3 then write('103   ����');
      if gozineh2=4 then write('104   ����');
      if gozineh2=5 then write('310   ����');
      if gozineh2=6 then write('302   ����');
  textcolor(5);
 if satr2<>14925 then
 begin
 gotoxy(1,satr2);
   write('');
 gotoxy(14,satr2);
   write('');
    textcolor(3);{ ������}
 gotoxy(15,satr2);
 write('');
   end;
      satr2:=satr2+1;
      if satr2>6 then satr2:=1;
      gozineh2:=gozineh2+1;
      if gozineh2>6 then gozineh2:=1;
      end;
      begin
      textcolor(7);
      gotoxy(3,satr2);
      if gozineh2=1 then write('101   ����');
      if gozineh2=2 then write('102   ����');
      if gozineh2=3 then write('103   ����');
      if gozineh2=4 then write('104   ����');
      if gozineh2=5 then write('310   ����');
      if gozineh2=6 then write('302   ����');
     textcolor(4);
  gotoxy(1,satr2);
 write('');
  gotoxy(14,satr2);
 write('');
textcolor(4);
 gotoxy(15,satr2);
 write('');
      end;
      end;
 if code2=13 then
 begin
 if gozineh2=1 then
begin
 assign(faa1,'a:\afrad\101.dat');
 reset(faa1);
 end;
 if gozineh2=2 then
begin
 assign(faa1,'a:\afrad\102.dat');
 reset(faa1);
 end;
 if gozineh2=3 then
begin
 assign(faa1,'a:\afrad\103.dat');
 reset(faa1);
 end;
 if gozineh2=4 then
begin
 assign(faa1,'a:\afrad\104.dat');
 reset(faa1);
 end;
 if gozineh2=5 then
begin
 assign(faa1,'a:\afrad\301.dat');
 reset(faa1);
 end;
 if gozineh2=6 then
begin
 assign(faa1,'a:\afrad\302.dat');
 reset(faa1);
 end;
1:begin
 textbackground(7);
 textcolor(4);
 window(3,2,78,24);
 clrscr;{  ����  }
   for i:=2 to 75 do{ ��� ��� }
   begin
   gotoxy(i,3);
   writeln('�');
   end;
   gotoxy(1,3);{ ��� ��� }
   write('�');
   gotoxy(76,3);
   write('�');
    for i:=4 to 23 do
    begin
    gotoxy(1,i);{ ��꤯ }
    write(#186);
    gotoxy(76,i);
    write(#186);
    end;
  gotoxy(1,24); { ����� }
  write('�');
  gotoxy(76,23);
  write('�');
    for i:=2 to 75 do { ����� }
    begin
    gotoxy(i,22);
    write('�');
    end;
     gotoxy(72,2);{ ���� }
     write('����');
     for i:=2 to 21 do
     begin
     gotoxy(71,i);
     write(#179);
     end;
     gotoxy(56,2);{ ������ ���� ��� }
     write('�������������');
     for i:=2 to 21 do
     begin
     gotoxy(55,i);
     write(#179);
     end;
      gotoxy(51,2);{ ���� }
      write('����');
      for i:=2 to 21 do
     begin
     gotoxy(50,i);
     write(#179);
     end;
      gotoxy(47,2);{ 食 }
      write('食');
      for i:=2 to 21 do
     begin
     gotoxy(46,i);
     write(#179);
     end;
      gotoxy(41,2);{ ����� }
      write('������');
      for i:=2 to 21 do
     begin
     gotoxy(40,i);
     write(#179);
     end;{���� ��� ���}
        for i:=2 to 21 do{�����}
        begin
        gotoxy(39,i);
        write(#219);
        end;
         for i:=2 to 21 do
         begin
         gotoxy(38,i);
         write(#179);
         end;{����� ������}
     gotoxy(34,2);{2 ���� }
     write('����');
     for i:=2 to 21 do
     begin
     gotoxy(33,i);
     write(#179);
     end;
       gotoxy(18,2);{ ������ ���� ��� }
       write('�������������');
       for i:=2 to 21 do
       begin
       gotoxy(17,i);
       write(#179);
       end;
       gotoxy(13,2);{ ���� }
       write('����');
       for i:=2 to 21 do
       begin
       gotoxy(12,i);
       write(#179);
       end;
       gotoxy(9,2);{ 食 }
       write('食');
       for i:=2 to 21 do
       begin
       gotoxy(8,i);
       write(#179);
       end;
       gotoxy(3,2);{ ����� }
       write('�����');{ �� ��� ���}
    { for i:=2 to 75 do {���� ��� ��� ��}
    { begin
     gotoxy(i,3);
     write(#196);
     end;{��� �� ������}
      j:=1;
 for i:=4 to 21 do{ ���� ����� }
 begin
 gotoxy(73,i);
 write(j);
 j:=j+1
 end;
  j:=19;
 for i:=4 to 21 do{ ���� ����� }
 begin
 gotoxy(35,i);
 write(j);
 j:=j+1
 end;
 for i:=4 to 21 do{ ���� ��� }
 begin
 gotoxy(51,i);
 if gozineh2=1 then write('101');
 if gozineh2=2 then write('102');
 if gozineh2=3 then write('103');
 if gozineh2=4 then write('104');
 if gozineh2=5 then write('301');
 if gozineh2=6 then write('302');
 gotoxy(13,i);
 if gozineh2=1 then write('101');
 if gozineh2=2 then write('102');
 if gozineh2=3 then write('103');
 if gozineh2=4 then write('104');
 if gozineh2=5 then write('301');
 if gozineh2=6 then write('302');
  end;
   j:=4;
   for i:=1 to 18 do
   begin
   readln(faa1,rec1);
   gotoxy(56,j);
   j:=j+1;
   writeln(rec1);
   end;
   end;
   j:=4;
   for i:=1 to 18 do
   begin
   readln(faa1,rec1);
   gotoxy(18,j);
   j:=j+1;
   writeln(rec1);
   end;
   close(faa1);
 repeat until keypressed;
    begin {    ����� ����    }
    textcolor(14);
    textbackground(3);
   for i:=1 to 1740 do
   write(#176);
 window(13,10,28,15);
 end;
 begin { ��� ���� }
 zyrsafhe;
 menu;
textbackground(3);
    window(13,10,28,15);
   clrscr;
        sound(300);{ ��� }
     delay(100);
     nosound;
textcolor(5);
for i:=1 to 6 do
begin
 gotoxy(1,i);
 write('');
 end;
 for i:=1 to 6 do
begin
 gotoxy(14,i);
 write('');
 end;
 begin
 textcolor(6);
 gotoxy(3,1);
 write('101   ����');
 gotoxy(3,2);
 write('102   ����');
 gotoxy(3,3);
 write('103   ����');
gotoxy(3,4);
 write('104   ����');
 gotoxy(3,5);
 write('301   ����');
gotoxy(3,6);
 write('302   ����');
 end;
end;{ ��� ���� ������ }
end;
    until code2=27;
     end;{endkey}
 begin
   textbackground(3);
    window(13,10,28,15);
   clrscr;
     sound(300);{ ��� }
     delay(100);
     nosound;
textcolor(5);
for j:=1 to 6 do
begin
 gotoxy(1,j);
 write('');
 end;
 for j:=1 to 6 do
begin
 gotoxy(14,j);
 write('');
 end;
 begin
 textcolor(6);
 gotoxy(3,1);
 write('101   ����');
 gotoxy(3,2);
 write('102   ����');
 gotoxy(3,3);
 write('103   ����');
gotoxy(3,4);
 write('104   ����');
 gotoxy(3,5);
 write('301   ����');
gotoxy(3,6);
 write('302   ����');
 end;
 getkey2;
 begin {    ����� ����    }
    textcolor(14);
    textbackground(3);
   for j:=1 to 112 do
   write(#176);
    window(1,1,80,25);
 end;
end;
{      *******   ��� �����   *********       }
procedure shomareh2;
var
  i,j,s:integer;
{getkey up,down}
 procedure getkey2;
 var
    code2,gozineh2,satr2:integer;
    ch2    :char;
    faa2   :text;
    i,j,d,f:integer;
        rec2:string[15];
    var satee2:integer;
    label 1;
 function getkey:integer;
 begin
     ch2:=readkey;
    if ord(ch2)<>0  then
    getkey:=ord(ch2)
     else
     begin
     getkey:=ord(readkey);
     end;
 end;{getkey}
  begin
    repeat
    code2:=getkey;
     if code2=80 then
     begin
     begin
    { if satr2=14925 then satr2:=1;}
     textcolor(6);
      gotoxy(3,satr2);
      if gozineh2=0 then write('101   ����');
      if gozineh2=1 then write('101   ����');
      if gozineh2=2 then write('102   ����');
      if gozineh2=3 then write('103   ����');
      if gozineh2=4 then write('104   ����');
      if gozineh2=5 then write('310   ����');
      if gozineh2=6 then write('302   ����');
  textcolor(5);
 if satr2<>14925 then
 begin
 gotoxy(1,satr2);
   write('');
 gotoxy(14,satr2);
   write('');
textcolor(3);{ ������}
 gotoxy(15,satr2);
  write('');
   end;
      satr2:=satr2+1;
      if satr2>6 then satr2:=1;
      gozineh2:=gozineh2+1;
      if gozineh2>6 then gozineh2:=1;
      end;
      begin
      textcolor(7);
      gotoxy(3,satr2);
      if gozineh2=1 then write('101   ����');
      if gozineh2=2 then write('102   ����');
      if gozineh2=3 then write('103   ����');
      if gozineh2=4 then write('104   ����');
      if gozineh2=5 then write('310   ����');
      if gozineh2=6 then write('302   ����');
     textcolor(4);
  gotoxy(1,satr2);
 write('');
  gotoxy(14,satr2);
 write('');
textcolor(4);
 gotoxy(15,satr2);
 write('');
      end;
      end;
       if code2=13 then
 begin
 if gozineh2=1 then
begin
 assign(faa2,'a:\afrad\b101.dat');
 reset(faa2);
 end;
 if gozineh2=2 then
begin
 assign(faa2,'a:\afrad\b102.dat');
 reset(faa2);
 end;
 if gozineh2=3 then
begin
 assign(faa2,'a:\afrad\b103.dat');
 reset(faa2);
 end;
 if gozineh2=4 then
begin
 assign(faa2,'a:\afrad\b104.dat');
 reset(faa2);
 end;
 if gozineh2=5 then
begin
 assign(faa2,'a:\afrad\b301.dat');
 reset(faa2);
 end;
 if gozineh2=6 then
begin
 assign(faa2,'a:\afrad\b302.dat');
 reset(faa2);
 end;
begin
 textbackground(7);
 textcolor(4);
 window(11,7,70,22);
 clrscr;
 gotoxy(1,1);
 writeln('����������������������������������������������������������ͻ');
 gotoxy(1,2);
 write('�   ��� �䑨    �     ��� �䑨   �   ��� �䑨    ����� �����');
gotoxy(1,3);
 write('����������������������������������������������������������͹');
  gotoxy(1,4);
 write('�               �                �               �  ����   �');
gotoxy(1,5);
 write('����������������������������������������������������������͹');
   gotoxy(1,6);
 write('�               �                �               �   �������');
gotoxy(1,7);
 write('����������������������������������������������������������͹');
   gotoxy(1,8);
 write('�               �                �               �   �������');
gotoxy(1,9);
 write('����������������������������������������������������������͹');
   gotoxy(1,10);
 write('�               �                �               �   �������');
gotoxy(1,11);
 write('����������������������������������������������������������͹');
   gotoxy(1,12);
 write('�               �                �               � ���������');
gotoxy(1,13);
 write('����������������������������������������������������������͹');
   gotoxy(1,14);
 write('�               �                �               �  ��������');
gotoxy(1,15);
 write('����������������������������������������������������������ͼ');
j:=35;
textcolor(1);
   for i:=1 to 3 do
   begin
   readln(faa2,rec2);
   gotoxy(j,4);
   j:=j-15;
   writeln(rec2);
   end;
j:=35;
for i:=1 to 3 do
   begin
   readln(faa2,rec2);
   gotoxy(j,6);
   j:=j-15;
   writeln(rec2);
   end;
j:=35;
for i:=1 to 3 do
   begin
   readln(faa2,rec2);
   gotoxy(j,8);
   j:=j-15;
   writeln(rec2);
   end;
j:=35;
for i:=1 to 3 do
   begin
   readln(faa2,rec2);
   gotoxy(j,10);
   j:=j-15;
   writeln(rec2);
   end;
j:=35;
for i:=1 to 3 do
   begin
   readln(faa2,rec2);
   gotoxy(j,12);
   j:=j-15;
   writeln(rec2);
   end;
j:=35;
for i:=1 to 3 do
   begin
   readln(faa2,rec2);
   gotoxy(j,14);
   j:=j-15;
   writeln(rec2);
   end;
  end;
  close(faa2);
 repeat until keypressed;
  begin {    ����� ����    }
    textcolor(14);
    textbackground(3);
   for i:=1 to 950 do
   write(#176);
   zyrsafhe;
   menu;{fggdfgdgdgdf}
   textbackground(3);
    window(24,10,39,15);
   clrscr;
     sound(300);{ ��� }
     delay(100);
     nosound;
     textcolor(5);
for j:=1 to 6 do
begin
 gotoxy(1,j);
 write('');
 end;
 for j:=1 to 6 do
begin
 gotoxy(14,j);
 write('');
 end;
 begin
 textcolor(6);
 gotoxy(3,1);
 write('101   ����');
 gotoxy(3,2);
 write('102   ����');
 gotoxy(3,3);
 write('103   ����');
gotoxy(3,4);
 write('104   ����');
 gotoxy(3,5);
 write('301   ����');
gotoxy(3,6);
 write('302   ����');
 end;
 end;
 end;
    until code2=27;
    end;{endkey}
{ endkey }
 begin
   textbackground(3);
    window(24,10,39,15);
   clrscr;
     sound(300);{ ��� }
     delay(100);
     nosound;
textcolor(5);
for j:=1 to 6 do
begin
 gotoxy(1,j);
 write('');
 end;
 for j:=1 to 6 do
begin
 gotoxy(14,j);
 write('');
 end;
 begin
 textcolor(6);
 gotoxy(3,1);
 write('101   ����');
 gotoxy(3,2);
 write('102   ����');
 gotoxy(3,3);
 write('103   ����');
gotoxy(3,4);
 write('104   ����');
 gotoxy(3,5);
 write('301   ����');
gotoxy(3,6);
 write('302   ����');
 end;
 getkey2;
 begin {    ����� ����    }
    textcolor(14);
    textbackground(3);
   for j:=1 to 160 do
   write(#176);
    window(1,1,80,25);
 end;
end;
{      *******   ��� �����   *********       }
procedure shomareh3;
var
   j,s:integer;
{getkey up,down}
 procedure getkey2;
 var
    code2,gozineh2,satr2:integer;
    ch2:char;
    faa3:text;
    rec3:string[15];
    i:integer;
    label 1;
    var satee2:integer;
 function getkey:integer;
 begin
     ch2:=readkey;
    if ord(ch2)<>0  then
    getkey:=ord(ch2)
     else
     begin
     getkey:=ord(readkey);
     end;
 end;{getkey}
  begin
    repeat
    code2:=getkey;
     if code2=80 then
     begin
     begin
    { if satr2=14925 then satr2:=1;}
     textcolor(6);
      gotoxy(3,satr2);
      if gozineh2=0 then write('101   ����');
      if gozineh2=1 then write('101   ����');
      if gozineh2=2 then write('102   ����');
      if gozineh2=3 then write('103   ����');
      if gozineh2=4 then write('104   ����');
      if gozineh2=5 then write('310   ����');
      if gozineh2=6 then write('302   ����');
  textcolor(5);
 if satr2<>14925 then
 begin
 gotoxy(2,satr2);
   write('');
 gotoxy(14,satr2);
   write('');
textcolor(3);{ ������}
 gotoxy(1,satr2);
 write('');
   end;
      satr2:=satr2+1;
      if satr2>6 then satr2:=1;
      gozineh2:=gozineh2+1;
      if gozineh2>6 then gozineh2:=1;
      end;
      begin
      textcolor(7);
      gotoxy(3,satr2);
      if gozineh2=1 then write('101   ����');
      if gozineh2=2 then write('102   ����');
      if gozineh2=3 then write('103   ����');
      if gozineh2=4 then write('104   ����');
      if gozineh2=5 then write('310   ����');
      if gozineh2=6 then write('302   ����');
     textcolor(4);
  gotoxy(2,satr2);
 write('');
  gotoxy(14,satr2);
 write('');
textcolor(4);
 gotoxy(1,satr2);
 write('');
      end;
      end;
if code2=13 then
 begin
 if gozineh2=1 then
begin
 assign(faa3,'a:\afrad\d101.dat');
 reset(faa3);
 end;
 if gozineh2=2 then
begin
 assign(faa3,'a:\afrad\d102.dat');
 reset(faa3);
 end;
 if gozineh2=3 then
begin
 assign(faa3,'a:\afrad\d103.dat');
 reset(faa3);
 end;
 if gozineh2=4 then
begin
 assign(faa3,'a:\afrad\d104.dat');
 reset(faa3);
 end;
 if gozineh2=5 then
begin
 assign(faa3,'a:\afrad\d301.dat');
 reset(faa3);
 end;
 if gozineh2=6 then
begin
 assign(faa3,'a:\afrad\d302.dat');
 reset(faa3);
 end;
 begin
 textbackground(1);
 textcolor(7);
 window(13,17,67,24);
 clrscr;
 textbackground(7);
 textcolor(4);
 window(3,2,78,24);
 clrscr;{  ����  }
   for i:=2 to 75 do{ ��� ��� }
   begin
   gotoxy(i,3);
   writeln('�');
   end;
   gotoxy(1,3);{ ��� ��� }
   write('�');
   gotoxy(76,3);
   write('�');
    for i:=4 to 23 do
    begin
    gotoxy(1,i);{ ��꤯ }
    write(#186);
    gotoxy(76,i);
    write(#186);
    end;
  gotoxy(1,24); { ����� }
  write('�');
  gotoxy(76,23);
  write('�');
    for i:=2 to 75 do { ����� }
    begin
    gotoxy(i,22);
    write('�');
    end;
     gotoxy(72,2);{ ���� }
     write('����');
     for i:=2 to 21 do
     begin
     gotoxy(71,i);
     write(#179);
     end;
     gotoxy(56,2);{ ������ ���� ��� }
     write('�������������');
     for i:=2 to 21 do
     begin
     gotoxy(55,i);
     write(#179);
     end;
      gotoxy(51,2);{ ���� }
      write('����');
      for i:=2 to 21 do
     begin
     gotoxy(50,i);
     write(#179);
     end;
     gotoxy(43,2);
     write('����');
      for i:=2 to 21 do
     begin
     gotoxy(40,i);
     write(#179);
     end;{���� ��� ���}
        for i:=2 to 21 do{�����}
        begin
        gotoxy(39,i);
        write(#219);
        end;
         for i:=2 to 21 do
         begin
         gotoxy(38,i);
         write(#179);
         end;{����� ������}
         gotoxy(34,2);
         write('����');
         for i:=2 to 21 do
         begin
         gotoxy(33,i);
         write(#179);
         end;
       gotoxy(18,2);{ ������ ���� ��� }
       write('�������������');
       for i:=2 to 21 do
       begin
       gotoxy(17,i);
       write(#179);
       end;
       gotoxy(13,2);{ ���� }
       write('����');
        for i:=2 to 21 do
       begin
       gotoxy(12,i);
       write(#179);
       end;
       gotoxy(6,2);
       write('����');
       for i:=2 to 21 do
       begin
       gotoxy(3,i);
       write(#179);
       end;
 j:=1;
 for i:=4 to 21 do
 begin
 gotoxy(73,i);
 write(j);
 j:=j+1
 end;
  j:=19;
 for i:=4 to 21 do
 begin
 gotoxy(35,i);
 write(j);
 j:=j+1
 end;
  for i:=4 to 21 do{ ���� ��� }
 begin
 gotoxy(51,i);
 if gozineh2=1 then write('101');
 if gozineh2=2 then write('102');
 if gozineh2=3 then write('103');
 if gozineh2=4 then write('104');
 if gozineh2=5 then write('301');
 if gozineh2=6 then write('302');
 gotoxy(13,i);
 if gozineh2=1 then write('101');
 if gozineh2=2 then write('102');
 if gozineh2=3 then write('103');
 if gozineh2=4 then write('104');
 if gozineh2=5 then write('301');
 if gozineh2=6 then write('302');
  end;
j:=4;{ ������ ����� ��� }
for i:=1 to 18 do
 begin
 readln(faa3,rec3);
 gotoxy(56,j);
 j:=j+1;
 write(rec3);
 end;
 j:=4;
for i:=1 to 18 do
 begin
 readln(faa3,rec3);
 gotoxy(18,j);
 j:=j+1;
 writeln(rec3);
 end;
  end;
  close(faa3);
  repeat until keypressed;
  begin {    ����� ����    }
    textcolor(14);
    textbackground(3);
   for i:=1 to 1999 do
   write(#176);
   zyrsafhe;
   menu;
 window(39,10,53,15);
textcolor(14);
    textbackground(3);
  clrscr;
     sound(300);{ ��� }
     delay(100);
     nosound;
textcolor(5);
for i:=1 to 6 do
begin
 gotoxy(2,i);
 write('');
 end;
 for i:=1 to 6 do
begin
 gotoxy(14,i);
 write('');
 end;
 begin
 textcolor(6);
 gotoxy(3,1);
 write('101   ����');
 gotoxy(3,2);
 write('102   ����');
 gotoxy(3,3);
 write('103   ����');
gotoxy(3,4);
 write('104   ����');
 gotoxy(3,5);
 write('301   ����');
gotoxy(3,6);
 write('302   ����');
 end;
 end;
end;
  until code2=27;
    end;{endkey}
{ endkey }
 begin
   textbackground(3);
    window(39,10,53,15);
   clrscr;
     sound(300);{ ��� }
     delay(100);
     nosound;
textcolor(5);
for j:=1 to 6 do
begin
 gotoxy(2,j);
 write('');
 end;
 for j:=1 to 6 do
begin
 gotoxy(14,j);
 write('');
 end;
 begin
 textcolor(6);
 gotoxy(3,1);
 write('101   ����');
 gotoxy(3,2);
 write('102   ����');
 gotoxy(3,3);
 write('103   ����');
gotoxy(3,4);
 write('104   ����');
 gotoxy(3,5);
 write('301   ����');
gotoxy(3,6);
 write('302   ����');
 end;
 getkey2;
 begin {����� ����}
    textcolor(14);
    textbackground(3);
   for j:=1 to 110 do
   write(#176);
    window(1,1,80,25);
 end;
end;
{      *******   ����� �����   *********       }
procedure shomareh4;
var
   j,s:integer;
{getkey up,down}
 procedure getkey4;
 var
    code4,gozineh4,satr4:integer;
    ch4:char;
    var satee4:integer;
 function getkey:integer;
 begin
     ch4:=readkey;
    if ord(ch4)<>0  then
    getkey:=ord(ch4)
     else
     begin
     getkey:=ord(readkey);
     end;
 end;{getkey}
  begin
    repeat
    code4:=getkey;
     if code4=80 then
     begin
     begin
    { if satr4=14925 then satr4:=1;}
     textcolor(6);
      gotoxy(4,satr4);
      if gozineh4=1 then write('    ... ������     ');
      if gozineh4=2 then write(' ������� ������� ');
      if gozineh4=3 then write(' ����� � ������  ');
      if gozineh4=4 then write(' ������������ 푕');
      if gozineh4=5 then write('   ���� ��� ����  ');
      if gozineh4=6 then write('       ����        ');
  textcolor(5);
 if satr4<>14925 then
 begin
 gotoxy(2,satr4);
   write('');
 gotoxy(23,satr4);
   write('');
textcolor(3);{ ������}
 gotoxy(1,satr4);
 write('');
   end;
      satr4:=satr4+1;
      if satr4>6 then satr4:=1;
      gozineh4:=gozineh4+1;
      if gozineh4>6 then gozineh4:=1;
      end;
      begin
      textcolor(7);
      gotoxy(4,satr4);
      if gozineh4=1 then write('    ... ������     ');
      if gozineh4=2 then write(' ������� ������� ');
      if gozineh4=3 then write(' ����� � ������  ');
      if gozineh4=4 then write(' ������������ 푕');
      if gozineh4=5 then write('   ���� ��� ����  ');
      if gozineh4=6 then write('       ����        ');
     textcolor(4);
  gotoxy(2,satr4);
 write('');
  gotoxy(23,satr4);
 write('');
textcolor(4);
 gotoxy(1,satr4);
 write('');
      end;
      end;
{  ����� ����  }
 if code4=13 then
  begin
  if gozineh4=1 then hkadamat1;
  if gozineh4=2 then hkadamat2;
  if gozineh4=5 then hkadamat5;
  if gozineh4=6 then
         begin
                  halt(1);
                  clrscr;

         end;

  end;
    until code4=27;
     end;{endkey}
{ endkey }
 begin
   textbackground(3);
    window(45,10,68,15);
   clrscr;
     sound(300);{ ��� }
     delay(100);
     nosound;
textcolor(5);
for j:=1 to 6 do
begin
 gotoxy(2,j);
 write('');
 end;
 for j:=1 to 6 do
begin
 gotoxy(23,j);
 write('');
 end;
 begin
  textcolor(6);
 gotoxy(4,1);
 write('    ... ������     ');
 gotoxy(4,2);
 write(' ������� ������� ');
 gotoxy(4,3);
 write(' ����� � ������  ');
 gotoxy(4,4);
 write(' ������������ 푕');
 gotoxy(4,5);
 write('   ���� ��� ����  ');
 gotoxy(4,6);
 write('       ����        ');
 end;
 getkey4;
 begin {    ����� ����    }
    textcolor(14);
    textbackground(3);
   for j:=1 to 160 do
   write(#176);
    window(1,1,80,25);
 end;
end;
{***********************************************}
{  ����� ������� ����   }
 procedure getkey;
 var
    code,gozineh,satr:integer;
    ch:char;
 function getkey:integer;
  const
    suton=7;
 begin
    {satr:=12;
    gozineh:=1;       { !!!!!! ������ ���� ���}
    ch:=readkey;
    if ord(ch)<>0  then
    getkey:=ord(ch)
     else
     begin
     getkey:=ord(readkey);
     end;
 end;{getkey}
 begin
    repeat
    code:=getkey;
     if code=77 then
{***********  --->  ���� ��   ************}
     begin
          textcolor(1);
          textbackground(2);
        gotoxy(satr,7);
         if gozineh=1 then write('���� �����');
         if gozineh=2 then write('����� ������');
         if gozineh=3 then write('������ �����');
         if gozineh=4 then write('�����');
        gozineh:=gozineh+1;
         if gozineh>4 then gozineh:=1;
   {if gozineh=1 then satr:=12;}
   if gozineh>2 then satr:=satr+14
     else satr:=satr+12;
         if satr>55 then satr:=12;
          textcolor(1);
          textbackground(3);
           gotoxy(satr,7);
         if gozineh=1 then write('���� �����');
         if gozineh=2 then write('����� ������');
         if gozineh=3 then write('������ �����');
         if gozineh=4 then write('�����');
     end;
{    <��� ���� ���� }
 if code=13 then
 begin
 gotoxy(13,13);
         if gozineh=1 then shomareh1;
         if gozineh=2 then shomareh2;
         if gozineh=3 then shomareh3;
         if gozineh=4 then shomareh4;
         end;
    until www=27;
 end;
{************  ��������  �����   ************}
begin                   { ������ �� ���� }
vorood;
zyrsafhe;
menu;
getkey;
textbackground(0);
clrscr;
end.
 { ������ ������ }
{ @@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@
        @@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@
                @@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@
                     @@@@@@@@@@@@@@@@@@@@@@@@@@@@@@
                         @@@@@@@@@@@@@@@@@@@@@@
                           @@@@@@@@@@@@@@@@
                             @@@@@@@@@@@
                               @@@@@@@
                                @@@@@
                                 @@ }




      ��������                 ���      ��                  ������
      ��                       �� �     ��                  ��    ���
      ��                       ��  �    ��                  ��       ���
      ������                   ��   �   ��                  ��         �
      ��                       ��    �  ��                  ��       ���
      ��                       ��     � ��                  ��    ���
      ��������                 ��      ���                  ������