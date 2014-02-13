uses crt;
var
j,www :integer;
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
         writeln('   ¤úà¥¢ã“   ');
         end;
  end;
{  main menu  <==== üó¬ üø÷õ –õ¨ì  }
   begin
      textcolor(14);
      textbackground(2);
       gotoxy(10,6);
        writeln('ÚÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄ¿');
       gotoxy(10,7);
        writeln('³                                                            ³');
       gotoxy(10,8);
        writeln('ÀÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÙ');
   end;
    begin
       textcolor(5);
        gotoxy(12,7);
         write('¢¤ê üõ‘¨');
        gotoxy(24,7);
         write('ü¨‘óî ùõ‘÷¤“');
        gotoxy(38,7);         {38}
         write('ö¤ş“¢ üõ‘¨');
        gotoxy(52,7);
         write('–‘õ¢¡');
 end;
end;
{******************  ‘û öª• ü¤› –õ¨ì   ***************  }
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
  writeln(' ôşŸ¤óöõŸ¤óùóóô¨“ ');
  gotoxy(2,3);
  writeln('   ¯¨ø— 77/8/23  ş¤‘— ù“ ùõ‘÷¤“ öş  ');
  gotoxy(2,5);
  writeln('     ù“ ü÷şõ¤êã›øü¢¤õû‘ª‘®¤şóä');
  gotoxy(2,7);
  writeln('  . –¨ ù¢ª ù—ªø÷ 7ñ‘î¨‘• ø“¤ø— ö‘“¥ ');
 gotoxy(11,6);
 textcolor(12);
 repeat
 until keypressed;
  begin {    ù¤›÷• ö—¨“    }
    textcolor(14);
    textbackground(3);
   gotoxy(1,0);
   for j:=0 to 398 do
   write(#176);
   window(45,10,68,16);
 end;
end;
{   ôø¢ ù÷ş¥ğ –‘õ¢¡    }
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
      if gozineh2=0 then write('77-78 ñ‘¨');
      if gozineh2=1 then write('77-78 ñ‘¨');
      if gozineh2=2 then write('77-79 ñ‘¨');
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
      if gozineh2=1 then write('77-78 ñ‘¨');
      if gozineh2=2 then write('77-79 ñ‘¨');
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
  write('77-78 ñ‘¨');
  gotoxy(3,2);
  write('78-79 ñ‘¨');
     sound(300);{ åø“ }
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
  begin {    ù¤›÷• ö—¨“    }
   textcolor(14);
    textbackground(3);
   for j:=1 to 34 do
   write(#176);
   window(45,10,68,16);
 end;
 end;
{ ôø¨ ù÷ş¥ğ }
procedure hkadamat5; {   ôø¨ ù÷ş¥ğ –‘õ¢¡    }
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
 write('    ... ù¤‘“¤¢     ');
 gotoxy(4,2);
 write(' ¤à÷¢¤øõ ñ‘¨ù¢û‘ªõ ');
 gotoxy(4,3);
 write(' ¯ø“¤õ ñ‘¨ ©ş¤şø  ');
 gotoxy(4,4);
 write(' ¤à÷¢¤øõñ‘¨ö¢¤î í‘•');
 gotoxy(4,5);
 write('   ¢ø¤ø ¥õ¤ ¤şşç—  ');
 gotoxy(4,6);
 write('       šø¤¡        ');
 end;
end;

begin
assign(fa2,'a:\a.dat');
reset(fa2);
read(fa2,faa);
window(13,14,43,19);
textcolor(1);
textbackground(3);
clrscr;
gotoxy(15,1);
textcolor(5);
write(':üó“ì ¥õ¤');
gotoxy(10,1);
textcolor(4);
textbackground(1);
write(faa);
close(fa2);

gotoxy(6,3);
textcolor(4);
textbackground(7);
write('¢ş—¨û ¥õ¤ ¤şşç— ù“ ñş‘õ‘ş');
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
assign(fa2,'a:\a.dat');
rewrite(fa2);
textcolor(5);
gotoxy(1,5);
write('¢ş÷î ¢¤ø ¤ ¢ş¢› ¥õ¤ ‘ê¯ó');
textcolor(4);
gotoxy(13,6);
textcolor(4);
textbackground(7);
read(ja);
writeln(fa2,ja);
close(fa2);
    begin {    ù¤›÷• ö—¨“    }
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
begin {    ù¤›÷• ö—¨“    }
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
{ *****************  ‘û ù÷ş¥ğ ü¤› –õ¨ì  ***************  }
{*******   ñø ù÷ş¥ğ   *********}
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
      if gozineh2=0 then write('101   §‘óî');
      if gozineh2=1 then write('101   §‘óî');
      if gozineh2=2 then write('102   §‘óî');
      if gozineh2=3 then write('103   §‘óî');
      if gozineh2=4 then write('104   §‘óî');
      if gozineh2=5 then write('310   §‘óî');
      if gozineh2=6 then write('302   §‘óî');
  textcolor(5);
 if satr2<>14925 then
 begin
 gotoxy(1,satr2);
   write('');
 gotoxy(14,satr2);
   write('');
    textcolor(3);{ ø÷õ¤ş¥}
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
      if gozineh2=1 then write('101   §‘óî');
      if gozineh2=2 then write('102   §‘óî');
      if gozineh2=3 then write('103   §‘óî');
      if gozineh2=4 then write('104   §‘óî');
      if gozineh2=5 then write('310   §‘óî');
      if gozineh2=6 then write('302   §‘óî');
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
 clrscr;{  áø¤ª  }
   for i:=2 to 75 do{ ñø ¤¯¨ }
   begin
   gotoxy(i,3);
   writeln('Í');
   end;
   gotoxy(1,3);{ ñø ¤¯¨ }
   write('É');
   gotoxy(76,3);
   write('»');
    for i:=4 to 23 do
    begin
    gotoxy(1,i);{ öşê¤¯ }
    write(#186);
    gotoxy(76,i);
    write(#186);
    end;
  gotoxy(1,24); { ‘ú—÷ }
  write('È');
  gotoxy(76,23);
  write('¼');
    for i:=2 to 75 do { ‘ú—÷ }
    begin
    gotoxy(i,22);
    write('Í');
    end;
     gotoxy(72,2);{ éş¢¤ }
     write('éş¢¤');
     for i:=2 to 21 do
     begin
     gotoxy(71,i);
     write(#179);
     end;
     gotoxy(56,2);{ üğ¢ø÷‘¡ ô‘÷ø ô‘÷ }
     write('üğ¢ø÷‘¡ô‘÷øô‘÷');
     for i:=2 to 21 do
     begin
     gotoxy(55,i);
     write(#179);
     end;
      gotoxy(51,2);{ §‘óî }
      write('§‘óî');
      for i:=2 to 21 do
     begin
     gotoxy(50,i);
     write(#179);
     end;
      gotoxy(47,2);{ é£Ÿ }
      write('é£Ÿ');
      for i:=2 to 21 do
     begin
     gotoxy(46,i);
     write(#179);
     end;
      gotoxy(41,2);{ ö‘õúõ }
      write('ö‘õúşõ');
      for i:=2 to 21 do
     begin
     gotoxy(40,i);
     write(#179);
     end;{–¨¤ –õ¨ ¤¡}
        for i:=2 to 21 do{ù¢÷÷î¢›}
        begin
        gotoxy(39,i);
        write(#219);
        end;
         for i:=2 to 21 do
         begin
         gotoxy(38,i);
         write(#179);
         end;{ù¢÷÷î¢› ü‘ú—÷}
     gotoxy(34,2);{2 éş¢¤ }
     write('éş¢¤');
     for i:=2 to 21 do
     begin
     gotoxy(33,i);
     write(#179);
     end;
       gotoxy(18,2);{ üğ¢ø÷‘¡ ô‘÷ø ô‘÷ }
       write('üğ¢ø÷‘¡ô‘÷øô‘÷');
       for i:=2 to 21 do
       begin
       gotoxy(17,i);
       write(#179);
       end;
       gotoxy(13,2);{ §‘óî }
       write('§‘óî');
       for i:=2 to 21 do
       begin
       gotoxy(12,i);
       write(#179);
       end;
       gotoxy(9,2);{ é£Ÿ }
       write('é£Ÿ');
       for i:=2 to 21 do
       begin
       gotoxy(8,i);
       write(#179);
       end;
       gotoxy(3,2);{ ö‘õúõ }
       write('ö‘õúõ');{ ” –õ¨ ¤¡}
    { for i:=2 to 75 do {ùşì“ø ô‘÷ ¤ş¥ ¯¡}
    { begin
     gotoxy(i,3);
     write(#196);
     end;{üìê ¯¡ ü‘ú—÷}
      j:=1;
 for i:=4 to 21 do{ éş¢¤ ù¤‘õª }
 begin
 gotoxy(73,i);
 write(j);
 j:=j+1
 end;
  j:=19;
 for i:=4 to 21 do{ éş¢¤ ù¤‘õª }
 begin
 gotoxy(35,i);
 write(j);
 j:=j+1
 end;
 for i:=4 to 21 do{ §‘óî ”‘ }
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
    begin {    ù¤›÷• ö—¨“    }
    textcolor(14);
    textbackground(3);
   for i:=1 to 1740 do
   write(#176);
 window(13,10,28,15);
 end;
 begin { –ªğ¤“ –õ¨ì }

 menu;
textbackground(3);
    window(13,10,28,15);
   clrscr;
        sound(300);{ åø“ }
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
 write('101   §‘óî');
 gotoxy(3,2);
 write('102   §‘óî');
 gotoxy(3,3);
 write('103   §‘óî');
gotoxy(3,4);
 write('104   §‘óî');
 gotoxy(3,5);
 write('301   §‘óî');
gotoxy(3,6);
 write('302   §‘óî');
 end;
end;{ –ªğ¤“ –õ¨ì ü‘ú—÷ }
end;
    until code2=27;
     end;{endkey}
 begin
   textbackground(3);
    window(13,10,28,15);
   clrscr;
     sound(300);{ åø“ }
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
 write('101   §‘óî');
 gotoxy(3,2);
 write('102   §‘óî');
 gotoxy(3,3);
 write('103   §‘óî');
gotoxy(3,4);
 write('104   §‘óî');
 gotoxy(3,5);
 write('301   §‘óî');
gotoxy(3,6);
 write('302   §‘óî');
 end;
 getkey2;
 begin {    ù¤›÷• ö—¨“    }
    textcolor(14);
    textbackground(3);
   for j:=1 to 112 do
   write(#176);
    window(1,1,80,25);
 end;
end;
{      *******   ôø¢ ù÷ş¥ğ   *********       }
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
      if gozineh2=0 then write('101   §‘óî');
      if gozineh2=1 then write('101   §‘óî');
      if gozineh2=2 then write('102   §‘óî');
      if gozineh2=3 then write('103   §‘óî');
      if gozineh2=4 then write('104   §‘óî');
      if gozineh2=5 then write('310   §‘óî');
      if gozineh2=6 then write('302   §‘óî');
  textcolor(5);
 if satr2<>14925 then
 begin
 gotoxy(1,satr2);
   write('');
 gotoxy(14,satr2);
   write('');
textcolor(3);{ ø÷õ¤ş¥}
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
      if gozineh2=1 then write('101   §‘óî');
      if gozineh2=2 then write('102   §‘óî');
      if gozineh2=3 then write('103   §‘óî');
      if gozineh2=4 then write('104   §‘óî');
      if gozineh2=5 then write('310   §‘óî');
      if gozineh2=6 then write('302   §‘óî');
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
 writeln('ÉÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍËÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍËÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍËÍÍÍÍÍÍÍÍÍ»');
 gotoxy(1,2);
 write('º   ôø¨ –ä‘¨    º     ôø¢ –ä‘¨   º   ñø –ä‘¨    ºù—êû ô‘şº');
gotoxy(1,3);
 write('ÌÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÎÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÎÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÎÍÍÍÍÍÍÍÍÍ¹');
  gotoxy(1,4);
 write('º               º                º               º  ù“÷ª   º');
gotoxy(1,5);
 write('ÌÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÎÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÎÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÎÍÍÍÍÍÍÍÍÍ¹');
   gotoxy(1,6);
 write('º               º                º               º   ù“÷ªíşº');
gotoxy(1,7);
 write('ÌÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÎÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÎÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÎÍÍÍÍÍÍÍÍÍ¹');
   gotoxy(1,8);
 write('º               º                º               º   ù“÷ªø¢º');
gotoxy(1,9);
 write('ÌÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÎÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÎÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÎÍÍÍÍÍÍÍÍÍ¹');
   gotoxy(1,10);
 write('º               º                º               º   ù“÷ªù¨º');
gotoxy(1,11);
 write('ÌÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÎÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÎÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÎÍÍÍÍÍÍÍÍÍ¹');
   gotoxy(1,12);
 write('º               º                º               º ù“÷ª¤‘úº');
gotoxy(1,13);
 write('ÌÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÎÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÎÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÎÍÍÍÍÍÍÍÍÍ¹');
   gotoxy(1,14);
 write('º               º                º               º  ù“÷ªš÷•º');
gotoxy(1,15);
 write('ÈÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÊÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÊÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÊÍÍÍÍÍÍÍÍÍ¼');
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
  begin {    ù¤›÷• ö—¨“    }
    textcolor(14);
    textbackground(3);
   for i:=1 to 950 do
   write(#176);

   menu;{fggdfgdgdgdf}
   textbackground(3);
    window(24,10,39,15);
   clrscr;
     sound(300);{ åø“ }
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
 write('101   §‘óî');
 gotoxy(3,2);
 write('102   §‘óî');
 gotoxy(3,3);
 write('103   §‘óî');
gotoxy(3,4);
 write('104   §‘óî');
 gotoxy(3,5);
 write('301   §‘óî');
gotoxy(3,6);
 write('302   §‘óî');
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
     sound(300);{ åø“ }
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
 write('101   §‘óî');
 gotoxy(3,2);
 write('102   §‘óî');
 gotoxy(3,3);
 write('103   §‘óî');
gotoxy(3,4);
 write('104   §‘óî');
 gotoxy(3,5);
 write('301   §‘óî');
gotoxy(3,6);
 write('302   §‘óî');
 end;
 getkey2;
 begin {    ù¤›÷• ö—¨“    }
    textcolor(14);
    textbackground(3);
   for j:=1 to 160 do
   write(#176);
    window(1,1,80,25);
 end;
end;
{      *******   ôø¨ ù÷ş¥ğ   *********       }
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
      if gozineh2=0 then write('101   §‘óî');
      if gozineh2=1 then write('101   §‘óî');
      if gozineh2=2 then write('102   §‘óî');
      if gozineh2=3 then write('103   §‘óî');
      if gozineh2=4 then write('104   §‘óî');
      if gozineh2=5 then write('310   §‘óî');
      if gozineh2=6 then write('302   §‘óî');
  textcolor(5);
 if satr2<>14925 then
 begin
 gotoxy(2,satr2);
   write('');
 gotoxy(14,satr2);
   write('');
textcolor(3);{ ø÷õ¤ş¥}
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
      if gozineh2=1 then write('101   §‘óî');
      if gozineh2=2 then write('102   §‘óî');
      if gozineh2=3 then write('103   §‘óî');
      if gozineh2=4 then write('104   §‘óî');
      if gozineh2=5 then write('310   §‘óî');
      if gozineh2=6 then write('302   §‘óî');
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
 clrscr;{  áø¤ª  }
   for i:=2 to 75 do{ ñø ¤¯¨ }
   begin
   gotoxy(i,3);
   writeln('Í');
   end;
   gotoxy(1,3);{ ñø ¤¯¨ }
   write('É');
   gotoxy(76,3);
   write('»');
    for i:=4 to 23 do
    begin
    gotoxy(1,i);{ öşê¤¯ }
    write(#186);
    gotoxy(76,i);
    write(#186);
    end;
  gotoxy(1,24); { ‘ú—÷ }
  write('È');
  gotoxy(76,23);
  write('¼');
    for i:=2 to 75 do { ‘ú—÷ }
    begin
    gotoxy(i,22);
    write('Í');
    end;
     gotoxy(72,2);{ éş¢¤ }
     write('éş¢¤');
     for i:=2 to 21 do
     begin
     gotoxy(71,i);
     write(#179);
     end;
     gotoxy(56,2);{ üğ¢ø÷‘¡ ô‘÷ø ô‘÷ }
     write('üğ¢ø÷‘¡ô‘÷øô‘÷');
     for i:=2 to 21 do
     begin
     gotoxy(55,i);
     write(#179);
     end;
      gotoxy(51,2);{ §‘óî }
      write('§‘óî');
      for i:=2 to 21 do
     begin
     gotoxy(50,i);
     write(#179);
     end;
     gotoxy(43,2);
     write('¤ş“¢');
      for i:=2 to 21 do
     begin
     gotoxy(40,i);
     write(#179);
     end;{–¨¤ –õ¨ ¤¡}
        for i:=2 to 21 do{ù¢÷÷î¢›}
        begin
        gotoxy(39,i);
        write(#219);
        end;
         for i:=2 to 21 do
         begin
         gotoxy(38,i);
         write(#179);
         end;{ù¢÷÷î¢› ü‘ú—÷}
         gotoxy(34,2);
         write('éş¢¤');
         for i:=2 to 21 do
         begin
         gotoxy(33,i);
         write(#179);
         end;
       gotoxy(18,2);{ üğ¢ø÷‘¡ ô‘÷ø ô‘÷ }
       write('üğ¢ø÷‘¡ô‘÷øô‘÷');
       for i:=2 to 21 do
       begin
       gotoxy(17,i);
       write(#179);
       end;
       gotoxy(13,2);{ §‘óî }
       write('§‘óî');
        for i:=2 to 21 do
       begin
       gotoxy(12,i);
       write(#179);
       end;
       gotoxy(6,2);
       write('¤ş“¢');
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
  for i:=4 to 21 do{ §‘óî ”‘ }
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
j:=4;{ ö¤ş“¢ üõ‘¨ ”‘ }
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
  begin {    ù¤›÷• ö—¨“    }
    textcolor(14);
    textbackground(3);
   for i:=1 to 1999 do
   write(#176);

   menu;
 window(39,10,53,15);
textcolor(14);
    textbackground(3);
  clrscr;
     sound(300);{ åø“ }
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
 write('101   §‘óî');
 gotoxy(3,2);
 write('102   §‘óî');
 gotoxy(3,3);
 write('103   §‘óî');
gotoxy(3,4);
 write('104   §‘óî');
 gotoxy(3,5);
 write('301   §‘óî');
gotoxy(3,6);
 write('302   §‘óî');
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
     sound(300);{ åø“ }
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
 write('101   §‘óî');
 gotoxy(3,2);
 write('102   §‘óî');
 gotoxy(3,3);
 write('103   §‘óî');
gotoxy(3,4);
 write('104   §‘óî');
 gotoxy(3,5);
 write('301   §‘óî');
gotoxy(3,6);
 write('302   §‘óî');
 end;
 getkey2;
 begin {ù¤›÷• ö—¨“}
    textcolor(14);
    textbackground(3);
   for j:=1 to 110 do
   write(#176);
    window(1,1,80,25);
 end;
end;
{      *******   ô¤‘ú ù÷ş¥ğ   *********       }
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
      if gozineh4=1 then write('    ... ù¤‘“¤¢     ');
      if gozineh4=2 then write(' ¤à÷¢¤øõ ñ‘¨ù¢û‘ªõ ');
      if gozineh4=3 then write(' ¯ø“¤õ ñ‘¨ ©ş¤şø  ');
      if gozineh4=4 then write(' ¤à÷¢¤øõñ‘¨ö¢¤î í‘•');
      if gozineh4=5 then write('   ¢ø¤ø ¥õ¤ ¤şşç—  ');
      if gozineh4=6 then write('       šø¤¡        ');
  textcolor(5);
 if satr4<>14925 then
 begin
 gotoxy(2,satr4);
   write('');
 gotoxy(23,satr4);
   write('');
textcolor(3);{ ø÷õ¤ş¥}
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
      if gozineh4=1 then write('    ... ù¤‘“¤¢     ');
      if gozineh4=2 then write(' ¤à÷¢¤øõ ñ‘¨ù¢û‘ªõ ');
      if gozineh4=3 then write(' ¯ø“¤õ ñ‘¨ ©ş¤şø  ');
      if gozineh4=4 then write(' ¤à÷¢¤øõñ‘¨ö¢¤î í‘•');
      if gozineh4=5 then write('   ¢ø¤ø ¥õ¤ ¤şşç—  ');
      if gozineh4=6 then write('       šø¤¡        ');
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
{  ¤—÷ş ¢şóî  }
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
     sound(300);{ åø“ }
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
 write('    ... ù¤‘“¤¢     ');
 gotoxy(4,2);
 write(' ¤à÷¢¤øõ ñ‘¨ù¢û‘ªõ ');
 gotoxy(4,3);
 write(' ¯ø“¤õ ñ‘¨ ©ş¤şø  ');
 gotoxy(4,4);
 write(' ¤à÷¢¤øõñ‘¨ö¢¤î í‘•');
 gotoxy(4,5);
 write('   ¢ø¤ø ¥õ¤ ¤şşç—  ');
 gotoxy(4,6);
 write('       šø¤¡        ');
 end;
 getkey4;
 begin {    ù¤›÷• ö—¨“    }
    textcolor(14);
    textbackground(3);
   for j:=1 to 160 do
   write(#176);
    window(1,1,80,25);
 end;
end;
{***********************************************}
{  üîø¤ ü‘û¢şóî éş¤ã—   }
 procedure getkey;
 var
    code,gozineh,satr:integer;
    ch:char;
 function getkey:integer;
  const
    suton=7;
 begin
    {satr:=12;
    gozineh:=1;       { !!!!!! ùõ‘÷¤“ ¥ùî— öş}
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
{***********  --->  ¢şóî é¤ã—   ************}
     begin
          textcolor(1);
          textbackground(2);
        gotoxy(satr,7);
         if gozineh=1 then write('¢¤ê üõ‘¨');
         if gozineh=2 then write('ü¨‘óî ùõ‘÷¤“');
         if gozineh=3 then write('ö¤ş“¢ üõ‘¨');
         if gozineh=4 then write('–‘õ¢¡');
        gozineh:=gozineh+1;
         if gozineh>4 then gozineh:=1;
   {if gozineh=1 then satr:=12;}
   if gozineh>2 then satr:=satr+14
     else satr:=satr+12;
         if satr>55 then satr:=12;
          textcolor(1);
          textbackground(3);
           gotoxy(satr,7);
         if gozineh=1 then write('¢¤ê üõ‘¨');
         if gozineh=2 then write('ü¨‘óî ùõ‘÷¤“');
         if gozineh=3 then write('ö¤ş“¢ üõ‘¨');
         if gozineh=4 then write('–‘õ¢¡');
     end;
{    <ÄÄÙ ¢şóî éş¤ã— }
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
{************  ‘û¤›ş¨¤•  ö‘ş‘•   ************}
begin                   { ùõ‘÷¤“ üó¬ –õ¨ì }
textbackground(0);

clrscr;
menu;
getkey;
textbackground(0);
clrscr;
end.
