uses crt,graph,dos;
var
 www	 :integer;
 i	 :word;
 x,y,z :byte;
 gd,gm	 :integer;

 procedure menu;
   var
     a	:integer;
    begin
{---------------------welcome-----------------------------------------------}
      textcolor (7);
      for i :=1 to 1999 do write ('±');
	  begin
	    textcolor(14);
	    textbackground(7);
	    gotoxy(1,1);
	    writeln('                                                                                ');
	  end;
      textcolor(5);
      gotoxy(5,1);
      write(' šø¤‹‹‹¡ ');
      gotoxy(17,1);
      write(' ü‹ê¤‹ãõ ');
      gotoxy(29,1);
      write(' ö‘—‹¨õ¥ ');
      gotoxy(41,1);
      write(' ¥‹şş‘‹• ');
      gotoxy(53,1);
      write(' ö‘—¨‹“‘— ');
      gotoxy(65,1);
      write(' ¤‘‹‹ú‹‹“ ');
   end;
   {  help}
   PROCEDURE HELP(leftcol,toprow,rightcol,btmrow:integer);
    var i,j:integer;
    begin
    textbackground(7);
    window (20,9,60,14);
    clrscr;
    textcolor(0);
    write(' ');
    write(chr(201));
    for i:=(leftcol+2)to (rightcol-2)do
    begin
     write(chr(205));
     end;
    writeln(chr(187));
    for i:=(toprow+1)to(btmrow-1) do
    begin
    write(' ');
    write(chr(186));
    for j:=(leftcol+2) to (rightcol-2) do
       begin
	write(' ');
	 end;
       writeln(chr(186));
      end;
     write(' ');
     write(chr(200));
   for i:=(leftcol+2)to (rightcol-2) do
     begin
       write (chr(205));
     end;
     write(chr(188));
     TEXTCOLOR(1+128);
     gotoxy(14,1);
     write('****TAGVEM****');
     TEXTCOLOR(1);
     gotoxy(10,2);
     write('‘‹‹‹‹û¢‹‹‹‹ş‹‹‹‹ó‹‹‹‹î');
     gotoxy(3,4);
     write('ALT + D                    DOS ù—¨øş•');
     gotoxy(3,5);
     write('ALT + X                         šø¤‹¡');
     READKEY;
     textcolor(7);
     textbackground(0);
     window(20,9,60,15);
     for j:=1 to 246 do write(#177);
     window(1,1,80,25);
    end;
{***********************************************}
{    ’‘¡—÷ ù÷ş¥ğ}
 procedure s1;           {  šø¤¡ üó¬ ıø÷õ  }
    begin
      clrscr;
      window (1,1,80,25);
      textbackground(0);
      textcolor (7);
      clrscr;
      write('ü÷¥ø¨ ó‘¬ ¢õŸõ');
      delay(500);
      halt;
    end;
{*************************************************}
  procedure s2(leftcol,toprow,rightcol,btmrow:integer);   { üê¤ãõ üó¬ ıø÷õ  }
   var i,j:integer;
   begin
   textbackground(7);
   window (20,9,60,18);
   clrscr;
   textcolor(0);
	write(' ');
	write(chr(201));
	for i:=(leftcol+2)to (rightcol-2)do
	      begin
		write(chr(205));
	      end;
	      writeln(chr(187));
	 for i:=(toprow+1)to(btmrow-1) do
	      begin
		 write(' ');
		 write(chr(186));
	 for j:=(leftcol+2) to (rightcol-2) do
	       begin
		  write(' ');
	       end;
	       writeln(chr(186));
	       end;
	  write(' ');
	  write(chr(200));
	for i:=(leftcol+2)to (rightcol-2) do
		begin
		   write (chr(205));
		end;
		write(chr(188));
		TEXTCOLOR(1+128);
		gotoxy(14,1);
		write('****TAGVEM****');
		textcolor(1);
		gotoxy(6,2);
		write(' ôø¨ ñ‘¨ ù“ –¨ ëóã—õ ù¦¤• öş');
		textcolor(0);
		gotoxy(10,3);
		write(' ’‘‹ó‹ì‹÷ ö‘‹—‹¨¤‹÷‹û');
		textcolor(1);
		gotoxy(27,4);
		write(' : ö‘ğ¢÷¨şø÷');
		gotoxy(9,5);
		write('         -2   ü÷¥ø¨ó‘¬¢õŸõ -1');
		gotoxy(3,7);
		write('<< ı‘ì üş‘õ÷û¤ ø íõî ‘“ ù¦¤• öş >>');
		TEXTCOLOR(0);
		gotoxy(13,8);
		write('<< üğş“ ñşş‘õ¨ >>');
		textcolor(1);
		gotoxy(8,9);
		write('.<< –¨ ù¢ª ôşà÷— ø ùşú— >>');
		TEXTCOLOR(0);
		gotoxy(4,10);
		write('F1 : HELP');
    READKEY;
     textcolor(7);
     textbackground(0);
     window(20,9,60,19);
     for j:=1 to 410 do write(#177);
     window(1,1,80,25);
    end;
{------------*****************------------****************------------------}
procedure s3;       {  ö‘—¨õ¥ üó¬ ıø÷õ  }
procedure DAY;      {  ı¢ üä¤ê ıø÷õ  }
 var
 j :integer;
  name:array[1..65] of string[100];
	   i,first,last,n:byte;
	   ch:char;
           F:TEXT;
begin
    textcolor(7);
      textbackground(0);
      window(27,2,39,6);
      for j:=1 to 50 do write(#177);
      window(1,1,80,25);
{ ôşøì— ñîª}
assign(f,'P~M.MAH');
reset (f);
for i:=1 to 65 do
begin
readln (f,name[i]);
end;
close(f);
{  üş‘ó‘“ ı‘û¤›÷•}
	     window (11,3,72,5);
	     textbackground(1);
	     textcolor(3+128);
	     clrscr;
	     GOTOXY (16,1);
	     WRITE (' ı¢');
	     textcolor(7);
	     GOTOXY (5,2);
	     WRITE ('           –‘‹“‹¨‘‹÷‹õ            ı.ô  ô.ë  ô.©   ô‘‹‹ş ');
	     GOTOXY (5,3);
	     WRITE ('                                  M.J ¤.«         ù—êû ');
	    {	‘û –î¤Ÿ áø¤ª}
	    window(1,1,80,25);
	    textbackground(0);
	    textcolor (8);
	    for i := 4 to 6 do
	    begin
	    gotoxy(73,i);
	    write(#177#177);
	    end;
	    for i := 13 to 73 do
	    begin
	    gotoxy(i,6);
	    write(#177#177);
	    end;
	    for i := 8 to 21 do
	    begin
	    gotoxy(74,i);
	    write(#177#177);
	    end;
	    for i := 12 to 74 do
	    begin
	    gotoxy(i,22);
	    write(#177#177);
	    end;
	    window(10,7,73,21);
	    textbackground(7);
	    textcolor(0);
	    clrscr;
	    for i:=1 to 14 do
	    begin
	      gotoxy(1,i);write(name[i]);
	    end;
	    first:=1;
	    last:=14;
	    repeat
		  repeat
		  ch:=readkey;
		  if ch=#0 then ch:=readkey else if ch<>#27 then ch:=#0;
	    until  ch in[#72,#80,#27];
	    case  ch of
	    #80:if last<>63then
		   begin
			gotoxy(1,1);
			delline;
			inc(last);
			inc(first);
			gotoxy(1,14);write(name[last]);
		    end;
	    #72:if first<> 1 then
		   begin
			gotoxy(1,1);
			insline;
			dec(last);
			dec(first);
			gotoxy(1,1);write(name[first]);
		   end;
	       end;
	     until ch=#27;
	     begin
	     window(1,2,75,25);
	     textbackground(0);
	     textcolor(7);
	     gotoxy(1,1);
	     for j:= 1 to 1624 do write(#177);
	     textbackground(7);
	     window(27,2,39,4);
	     clrscr;
	     textcolor(5);
    for j:=1 to 3 do
       begin
	 gotoxy(2,j);
	 write('');
       end;
    for j:=1 to 3 do
       begin
	 gotoxy(12,j);
	 write('');
       end;
    begin
      textcolor(5);
      gotoxy(4,1);
      write('     ı¢ ');
      gotoxy(4,2);
      write('  öõ‹ú“ ');
      gotoxy(4,3);
      write('  ¢÷ê¨ ');
    end;
    end;
    END;
{----------}
procedure BAHMAN;      {   öõú“ üä¤ê ıø÷õ  }
 var
 j :integer;
  name:array[1..65] of string[100];
	   i,first,last,n:byte;
	   ch:char;
           F:TEXT;
begin
    textcolor(7);
      textbackground(0);
      window(27,2,39,6);
      for j:=1 to 50 do write(#177);
      window(1,1,80,25);
{ ôşøì— ñîª}
assign(f,'Z~B.MAH');
reset (f);
for i:=1 to 65 do
begin
readln (f,name[i]);
end;
close(f);
{  üş‘ó‘“ ı‘û¤›÷•}
	     window (11,3,72,5);
	     textbackground(1);
	     textcolor(3+128);
	     clrscr;
	     GOTOXY (16,1);
	     WRITE ('  öõú“');
	     textcolor(7);
	     GOTOXY (5,2);
	     WRITE ('           –‘‹“‹¨‘‹÷‹õ            ı.ô  ô.ë  ô.©   ô‘‹‹ş ');
	     GOTOXY (5,3);
	     WRITE ('                                  M.J ¤.«         ù—êû ');
	    {	‘û –î¤Ÿ áø¤ª}
	    window(1,1,80,25);
	    textbackground(0);
	    textcolor (8);
	    for i := 4 to 6 do
	    begin
	    gotoxy(73,i);
	    write(#177#177);
	    end;
	    for i := 13 to 73 do
	    begin
	    gotoxy(i,6);
	    write(#177#177);
	    end;
	    for i := 8 to 21 do
	    begin
	    gotoxy(74,i);
	    write(#177#177);
	    end;
	    for i := 12 to 74 do
	    begin
	    gotoxy(i,22);
	    write(#177#177);
	    end;
	    window(10,7,73,21);
	    textbackground(7);
	    textcolor(0);
	    clrscr;
	    for i:=1 to 14 do
	    begin
	      gotoxy(1,i);write(name[i]);
	    end;
	    first:=1;
	    last:=14;
	    repeat
		  repeat
		  ch:=readkey;
		  if ch=#0 then ch:=readkey else if ch<>#27 then ch:=#0;
	    until  ch in[#72,#80,#27];
	    case  ch of
	    #80:if last<>63then
		   begin
			gotoxy(1,1);
			delline;
			inc(last);
			inc(first);
			gotoxy(1,14);write(name[last]);
		    end;
	    #72:if first<> 1 then
		   begin
			gotoxy(1,1);
			insline;
			dec(last);
			dec(first);
			gotoxy(1,1);write(name[first]);
		   end;
	       end;
	     until ch=#27;
	     begin
	     window(1,2,75,25);
	     textbackground(0);
	     textcolor(7);
	     gotoxy(1,1);
	     for j:= 1 to 1624 do write(#177);
	     textbackground(7);
	     window(27,2,39,4);
	     clrscr;
	     textcolor(5);
    for j:=1 to 3 do
       begin
	 gotoxy(2,j);
	 write('');
       end;
    for j:=1 to 3 do
       begin
	 gotoxy(12,j);
	 write('');
       end;
    begin
      textcolor(5);
      gotoxy(4,1);
      write('     ı¢ ');
      gotoxy(4,2);
      write('  öõ‹ú“ ');
      gotoxy(4,3);
      write('  ¢÷ê¨ ');
    end;
    end;
    END;
{-----------}
procedure ASFAND;      {   ¢÷ê¨ üä¤ê ıø÷õ  }
 var
 j :integer;
  name:array[1..65] of string[100];
	   i,first,last,n:byte;
	   ch:char;
           F:TEXT;
begin
    textcolor(7);
      textbackground(0);
      window(27,2,39,6);
      for j:=1 to 50 do write(#177);
      window(1,1,80,25);
{ ôşøì— ñîª}
assign(f,'Z~A.MAH');
reset (f);
for i:=1 to 65 do
begin
readln (f,name[i]);
end;
close(f);
{  üş‘ó‘“ ı‘û¤›÷•}
	     window (11,3,72,5);
	     textbackground(1);
	     textcolor(3+128);
	     clrscr;
	     GOTOXY (16,1);
	     WRITE ('  ¢÷ê¨');
	     textcolor(7);
	     GOTOXY (5,2);
	     WRITE ('           –‘‹“‹¨‘‹÷‹õ            ı.ô  ô.ë  ô.©   ô‘‹‹ş ');
	     GOTOXY (5,3);
	     WRITE ('                                  M.J ¤.«         ù—êû ');
	    {	‘û –î¤Ÿ áø¤ª}
	    window(1,1,80,25);
	    textbackground(0);
	    textcolor (8);
	    for i := 4 to 6 do
	    begin
	    gotoxy(73,i);
	    write(#177#177);
	    end;
	    for i := 13 to 73 do
	    begin
	    gotoxy(i,6);
	    write(#177#177);
	    end;
	    for i := 8 to 21 do
	    begin
	    gotoxy(74,i);
	    write(#177#177);
	    end;
	    for i := 12 to 74 do
	    begin
	    gotoxy(i,22);
	    write(#177#177);
	    end;
	    window(10,7,73,21);
	    textbackground(7);
	    textcolor(0);
	    clrscr;
	    for i:=1 to 14 do
	    begin
	      gotoxy(1,i);write(name[i]);
	    end;
	    first:=1;
	    last:=14;
	    repeat
		  repeat
		  ch:=readkey;
		  if ch=#0 then ch:=readkey else if ch<>#27 then ch:=#0;
	    until  ch in[#72,#80,#27];
	    case  ch of
	    #80:if last<>63then
		   begin
			gotoxy(1,1);
			delline;
			inc(last);
			inc(first);
			gotoxy(1,14);write(name[last]);
		    end;
	    #72:if first<> 1 then
		   begin
			gotoxy(1,1);
			insline;
			dec(last);
			dec(first);
			gotoxy(1,1);write(name[first]);
		   end;
	       end;
	     until ch=#27;
	     begin
	     window(1,2,75,25);
	     textbackground(0);
	     textcolor(7);
	     gotoxy(1,1);
	     for j:= 1 to 1624 do write(#177);
	     textbackground(7);
	     window(27,2,39,4);
	     clrscr;
	     textcolor(5);
    for j:=1 to 3 do
       begin
	 gotoxy(2,j);
	 write('');
       end;
    for j:=1 to 3 do
       begin
	 gotoxy(12,j);
	 write('');
       end;
    begin
      textcolor(5);
      gotoxy(4,1);
      write('     ı¢ ');
      gotoxy(4,2);
      write('  öõ‹ú“ ');
      gotoxy(4,3);
      write('  ¢÷ê¨ ');
    end;
    end;
    END;

{---------}
   var
     j,s		   :integer;
 procedure getkey3;
    var
       code3,gozineh3,satr3:integer;
       ch3		   :char;
       satee3		   :integer;
   function getkey3	   :integer;
      begin
	ch3:=readkey;
	if ord(ch3)<>0	then
	   getkey3:=ord(ch3)
	else
	 begin
	   getkey3:=ord(readkey);
	 end;
	end;
      begin
	repeat
	  code3:=getkey3;
	  {exit}
      if code3=45 then
      begin
      clrscr;
      window (1,1,80,25);
      textbackground(0);
      textcolor (7);
      clrscr;
      write('ü÷¥ø¨ ó‘¬ ¢õŸõ');
      delay(500);
      halt;
      end;
       {----öşş‘•-----}
	  if code3=80 then
	     begin
	       textcolor(5);
	       gotoxy(3,satr3);
	       if gozineh3=1 then write('      ı¢ ');
	       if gozineh3=2 then write('   öõ‹ú“ ');
	       if gozineh3=3 then write('   ¢÷ê¨ ');
	       if satr3<=3 then
		  begin
		    textcolor(5);
		    gotoxy(2,satr3);
		    write('');
		    gotoxy(12,satr3);
		    write('');
		  end;
	       satr3:=satr3+1;
	       if satr3>3 then satr3:=1;
	       gozineh3:=gozineh3+1;
	       if gozineh3>3 then gozineh3:=1;
	     end;
	  begin
	    textcolor(0+128);
	    gotoxy(3,satr3);
	    if gozineh3=1 then write('       ı¢ ');
	    if gozineh3=2 then write('    öõ‹ú“ ');
	    if gozineh3=3 then write('    ¢÷ê¨ ');
	    textcolor(5);
	    gotoxy(2,satr3);
	    write('');
	    gotoxy(12,satr3);
	    write('');
	  end;
    {-------‘ó‘“--- ------}
	  if code3=72 then
	     begin
	       textcolor(5);
	       gotoxy(3,satr3);
	       if gozineh3=1 then write('      ı¢ ');
	       if gozineh3=2 then write('   öõ‹ú“ ');
	       if gozineh3=3 then write('   ¢÷ê¨ ');
	       satr3:=satr3-1;
	       if satr3<1 then satr3:=3;
	       gozineh3:=gozineh3-1;
	       if gozineh3<1 then gozineh3:=3;
	     end;
	  begin
	    textcolor(0+128);
	    gotoxy(3,satr3);
	    if gozineh3=1 then write('      ı¢ ');
	    if gozineh3=2 then write('   öõ‹ú“ ');
	    if gozineh3=3 then write('   ¢÷ê¨ ');
	    textcolor(1+128);
	    gotoxy(2,satr3);
	    write(#14);
	    gotoxy(12,satr3);
	    write(#14);
	  end;
       {------------------------}
{  ¤—÷ş ¢şóî  }
	  if code3=13 then
	     begin
	       if gozineh3=1 then DAY;            { ı¢ üä¤ê ıø÷õ ö—ê¤  }
	       if gozineh3=2 then BAHMAN;  {  öõú“ üä¤ê ıø÷õ ö—ê¤ }
	       if gozineh3=3 then asfand;    { ¢÷ê¨ üä¤ê ıø÷õ ö—ê¤  }
	     end;
	until code3=27;
     end;
  begin
    textbackground(7);
    window(27,2,39,4);
    clrscr;
    sound(300);{ åø“ }
    delay(100);
    nosound;
    textcolor(5);
    for j:=1 to 3 do
       begin
	 gotoxy(2,j);
	 write('');
       end;
    for j:=1 to 3 do
       begin
	 gotoxy(12,j);
	 write('');
       end;
    begin
      textcolor(5);
      gotoxy(4,1);
      write('     ı¢ ');
      gotoxy(4,2);
      write('  öõ‹ú“ ');
      gotoxy(4,3);
      write('  ¢÷ê¨ ');
    end;
    getkey3;
    begin {    ù¤›÷• ö—¨“    }
      textcolor(7);
      textbackground(0);
      window(27,2,39,6);
      for j:=1 to 50 do write(#177);
      window(1,1,80,25);
    end;
  end;
{--------------*************------------******************------------------}
procedure s4;       {  ¥şş‘• üó¬ ıø÷õ  }
procedure MEAHR;      { ¤úõ üä¤ê ıø÷õ  }
 var
 j :integer;
  name:array[1..65] of string[100];
	   i,first,last,n:byte;
	   ch:char;
           F:TEXT;
begin
    textcolor(7);
      textbackground(0);
      window(38,2,51,6);
      for j:=1 to 50 do write(#177);
      window(1,1,80,25);
{ ôşøì— ñîª}
assign(f,'P~M.MAH');
reset (f);
for i:=1 to 65 do
begin
readln (f,name[i]);
end;
close(f);
{  üş‘ó‘“ ı‘û¤›÷•}
	     window (11,3,72,5);
	     textbackground(1);
	     textcolor(3+128);
	     clrscr;
	     GOTOXY (16,1);
	     WRITE ('¤úõ');
	     textcolor(7);
	     GOTOXY (5,2);
	     WRITE ('           –‘‹“‹¨‘‹÷‹õ            ı.ô  ô.ë  ô.©   ô‘‹‹ş ');
	     GOTOXY (5,3);
	     WRITE ('                                  M.J ¤.«         ù—êû ');
	    {	‘û –î¤Ÿ áø¤ª}
	    window(1,1,80,25);
	    textbackground(0);
	    textcolor (8);
	    for i := 4 to 6 do
	    begin
	    gotoxy(73,i);
	    write(#177#177);
	    end;
	    for i := 13 to 73 do
	    begin
	    gotoxy(i,6);
	    write(#177#177);
	    end;
	    for i := 8 to 21 do
	    begin
	    gotoxy(74,i);
	    write(#177#177);
	    end;
	    for i := 12 to 74 do
	    begin
	    gotoxy(i,22);
	    write(#177#177);
	    end;
	    window(10,7,73,21);
	    textbackground(7);
	    textcolor(0);
	    clrscr;
	    for i:=1 to 14 do
	    begin
	      gotoxy(1,i);write(name[i]);
	    end;
	    first:=1;
	    last:=14;
	    repeat
		  repeat
		  ch:=readkey;
		  if ch=#0 then ch:=readkey else if ch<>#27 then ch:=#0;
	    until  ch in[#72,#80,#27];
	    case  ch of
	    #80:if last<>63then
		   begin
			gotoxy(1,1);
			delline;
			inc(last);
			inc(first);
			gotoxy(1,14);write(name[last]);
		    end;
	    #72:if first<> 1 then
		   begin
			gotoxy(1,1);
			insline;
			dec(last);
			dec(first);
			gotoxy(1,1);write(name[first]);
		   end;
	       end;
	     until ch=#27;
	     begin
	     window(1,2,75,25);
	     textbackground(0);
	     textcolor(7);
	     gotoxy(1,1);
	     for j:= 1 to 1624 do write(#177);
	     textbackground(7);
	     window(38,2,51,4);
	     clrscr;
	     textcolor(5);
    for j:=1 to 3 do
       begin
	 gotoxy(2,j);
	 write('');
       end;
    for j:=1 to 3 do
       begin
	 gotoxy(13,j);
	 write('');
       end;
    begin
      textcolor(5);
          gotoxy(4,1);
      write('¤‹‹ú‹‹õ ');
      gotoxy(4,2);
      write('ö‘‹‹‹“ ');
      gotoxy(4,3);
      write('    ¤£ ');
    end;
    end;
    END;
{-------}
procedure ABAN;      { ö‘“ üä¤ê ıø÷õ  }
 var
 j :integer;
  name:array[1..65] of string[100];
	   i,first,last,n:byte;
	   ch:char;
           F:TEXT;
begin
    textcolor(7);
      textbackground(0);
      window(38,2,51,6);
      for j:=1 to 50 do write(#177);
      window(1,1,80,25);
{ ôşøì— ñîª}
assign(f,'P~A.MAH');
reset (f);
for i:=1 to 65 do
begin
readln (f,name[i]);
end;
close(f);
{  üş‘ó‘“ ı‘û¤›÷•}
	     window (11,3,72,5);
	     textbackground(1);
	     textcolor(3+128);
	     clrscr;
	     GOTOXY (16,1);
	     WRITE (' ö‘“');
	     textcolor(7);
	     GOTOXY (5,2);
	     WRITE ('           –‘‹“‹¨‘‹÷‹õ            ı.ô  ô.ë  ô.©   ô‘‹‹ş ');
	     GOTOXY (5,3);
	     WRITE ('                                  M.J ¤.«         ù—êû ');
	    {	‘û –î¤Ÿ áø¤ª}
	    window(1,1,80,25);
	    textbackground(0);
	    textcolor (8);
	    for i := 4 to 6 do
	    begin
	    gotoxy(73,i);
	    write(#177#177);
	    end;
	    for i := 13 to 73 do
	    begin
	    gotoxy(i,6);
	    write(#177#177);
	    end;
	    for i := 8 to 21 do
	    begin
	    gotoxy(74,i);
	    write(#177#177);
	    end;
	    for i := 12 to 74 do
	    begin
	    gotoxy(i,22);
	    write(#177#177);
	    end;
	    window(10,7,73,21);
	    textbackground(7);
	    textcolor(0);
	    clrscr;
	    for i:=1 to 14 do
	    begin
	      gotoxy(1,i);write(name[i]);
	    end;
	    first:=1;
	    last:=14;
	    repeat
		  repeat
		  ch:=readkey;
		  if ch=#0 then ch:=readkey else if ch<>#27 then ch:=#0;
	    until  ch in[#72,#80,#27];
	    case  ch of
	    #80:if last<>63then
		   begin
			gotoxy(1,1);
			delline;
			inc(last);
			inc(first);
			gotoxy(1,14);write(name[last]);
		    end;
	    #72:if first<> 1 then
		   begin
			gotoxy(1,1);
			insline;
			dec(last);
			dec(first);
			gotoxy(1,1);write(name[first]);
		   end;
	       end;
	     until ch=#27;
	     begin
	     window(1,2,75,25);
	     textbackground(0);
	     textcolor(7);
	     gotoxy(1,1);
	     for j:= 1 to 1624 do write(#177);
	     textbackground(7);
	     window(38,2,51,4);
	     clrscr;
	     textcolor(5);
    for j:=1 to 3 do
       begin
	 gotoxy(2,j);
	 write('');
       end;
    for j:=1 to 3 do
       begin
	 gotoxy(13,j);
	 write('');
       end;
    begin
      textcolor(5);
      gotoxy(4,1);
      write('¤‹‹ú‹‹õ ');
      gotoxy(4,2);
      write('ö‘‹‹‹“ ');
      gotoxy(4,3);
      write('    ¤£ ');
    end;
    end;
    END;
{---------------}
procedure AZAR;      {¤£ üä¤ê ıø÷õ  }
 var
 j :integer;
  name:array[1..65] of string[100];
	   i,first,last,n:byte;
	   ch:char;
           F:TEXT;
begin
    textcolor(7);
      textbackground(0);
      window(38,2,51,6);
      for j:=1 to 50 do write(#177);
      window(1,1,80,25);
{ ôşøì— ñîª}
assign(f,'P~AZ.MAH');
reset (f);
for i:=1 to 65 do
begin
readln (f,name[i]);
end;
close(f);
{  üş‘ó‘“ ı‘û¤›÷•}
	     window (11,3,72,5);
	     textbackground(1);
	     textcolor(3+128);
	     clrscr;
	     GOTOXY (16,1);
	     WRITE (' ¤£');
	     textcolor(7);
	     GOTOXY (5,2);
	     WRITE ('           –‘‹“‹¨‘‹÷‹õ            ı.ô  ô.ë  ô.©   ô‘‹‹ş ');
	     GOTOXY (5,3);
	     WRITE ('                                  M.J ¤.«         ù—êû ');
	    {	‘û –î¤Ÿ áø¤ª}
	    window(1,1,80,25);
	    textbackground(0);
	    textcolor (8);
	    for i := 4 to 6 do
	    begin
	    gotoxy(73,i);
	    write(#177#177);
	    end;
	    for i := 13 to 73 do
	    begin
	    gotoxy(i,6);
	    write(#177#177);
	    end;
	    for i := 8 to 21 do
	    begin
	    gotoxy(74,i);
	    write(#177#177);
	    end;
	    for i := 12 to 74 do
	    begin
	    gotoxy(i,22);
	    write(#177#177);
	    end;
	    window(10,7,73,21);
	    textbackground(7);
	    textcolor(0);
	    clrscr;
	    for i:=1 to 14 do
	    begin
	      gotoxy(1,i);write(name[i]);
	    end;
	    first:=1;
	    last:=14;
	    repeat
		  repeat
		  ch:=readkey;
		  if ch=#0 then ch:=readkey else if ch<>#27 then ch:=#0;
	    until  ch in[#72,#80,#27];
	    case  ch of
	    #80:if last<>63then
		   begin
			gotoxy(1,1);
			delline;
			inc(last);
			inc(first);
			gotoxy(1,14);write(name[last]);
		    end;
	    #72:if first<> 1 then
		   begin
			gotoxy(1,1);
			insline;
			dec(last);
			dec(first);
			gotoxy(1,1);write(name[first]);
		   end;
	       end;
	     until ch=#27;
	     begin
	     window(1,2,75,25);
	     textbackground(0);
	     textcolor(7);
	     gotoxy(1,1);
	     for j:= 1 to 1624 do write(#177);
	     textbackground(7);
	     window(38,2,51,4);
	     clrscr;
	     textcolor(5);
    for j:=1 to 3 do
       begin
	 gotoxy(2,j);
	 write('');
       end;
    for j:=1 to 3 do
       begin
	 gotoxy(13,j);
	 write('');
       end;
    begin
      textcolor(5);
      gotoxy(4,1);
      write('¤‹‹ú‹‹õ ');
      gotoxy(4,2);
      write('ö‘‹‹‹“ ');
      gotoxy(4,3);
      write('    ¤£ ');
    end;
    end;
    END;
{--------------}
 var
   j,s			 :integer;
 procedure getkey4;
   var
     code4,gozineh4,satr4:integer;
     ch4		 :char;
     satee4		 :integer;
 function getkey4	  :integer;
   begin
     ch4:=readkey;
     if ord(ch4)<>0  then
	getkey4:=ord(ch4)
      else
	 begin
	   getkey4:=ord(readkey);
	 end;
     end;
   begin
     repeat
       code4:=getkey4;
       {exit}
       if code4=45 then
      begin
      clrscr;
      window (1,1,80,25);
      textbackground(0);
      textcolor (7);
      clrscr;
      write('ü÷¥ø¨ ó‘¬ ¢õŸõ');
      delay(500);
      halt;
      end;
       {----öşş‘•-----}
       if code4=80 then
	  begin
	    textcolor(5);
	    gotoxy(3,satr4);
	    if gozineh4=1 then write(' ¤‹‹ú‹‹õ ');
	    if gozineh4=2 then write(' ö‘‹‹‹“ ');
	    if gozineh4=3 then write('     ¤£ ');
	    if satr4 <=3 then
	    begin
	       textcolor(5);
	       gotoxy(2,satr4);
	       write('');
	       gotoxy(13,satr4);
	       write('');
	       end;
	       satr4:=satr4+1;
	    if satr4>3 then satr4:=1;
	    gozineh4:=gozineh4+1;
	    if gozineh4>3 then gozineh4:=1;
	  end;
       begin
	 textcolor(0+128);
	 gotoxy(3,satr4);
	    if gozineh4=1 then write(' ¤‹‹ú‹‹õ ');
	    if gozineh4=2 then write(' ö‘‹‹‹“ ');
	    if gozineh4=3 then write('     ¤£ ');
	 textcolor(5);
	 gotoxy(2,satr4);
	 write('');
	 gotoxy(13,satr4);
	 write('');
       end;
    {-------‘ó‘“--- ------}
    if code4=72 then
	  begin
	    textcolor(5);
	    gotoxy(3,satr4);
	    if gozineh4=1 then write(' ¤‹‹ú‹‹õ ');
	    if gozineh4=2 then write(' ö‘‹‹‹“ ');
	    if gozineh4=3 then write('     ¤£ ');
	    satr4:=satr4-1;
	    if satr4<1 then satr4:=3;
	    gozineh4:=gozineh4-1;
	    if gozineh4<1 then gozineh4:=3;
	  end;
       begin
	 textcolor(0+128);
	 gotoxy(3,satr4);
	 if gozineh4=1 then write(' ¤‹‹ú‹‹õ ');
	 if gozineh4=2 then write(' ö‘‹‹‹“ ');
	 if gozineh4=3 then write('     ¤£ ');
	 textcolor(1+128);
	 gotoxy(2,satr4);
	 write(#14);
	 gotoxy(13,satr4);
	 write(#14);
       end;
       {------------------------}
{  ¤—÷ş ¢şóî  }
   if code4=13 then
      begin
	if gozineh4=1 then MEAHR; { ¤úõ üä¤ê ıø÷õ ö—ê¤  }
	if gozineh4=2 then ABAN;    {  ö‘“ üä¤ê ıø÷õ ö—ê¤  }
	if gozineh4=3 then AZAR;      { ¤£ üä¤ê ıø÷õ ö—ê¤  }
      end;
  until code4=27;
     end;
  begin
    textbackground(7);
    window(38,2,51,4);
    clrscr;
    sound(300);{ åø“ }
    delay(100);
    nosound;
    textcolor(5);
    for j:=1 to 3 do
       begin
	 gotoxy(2,j);
	 write('');
       end;
    for j:=1 to 3 do
       begin
	 gotoxy(13,j);
	 write('');
       end;
    begin
      textcolor(5);
      gotoxy(4,1);
      write('¤‹‹ú‹‹õ ');
      gotoxy(4,2);
      write('ö‘‹‹‹“ ');
      gotoxy(4,3);
      write('    ¤£ ');
    end;
    getkey4;
    begin {    ù¤›÷• ö—¨“    }
      textcolor(7);
      textbackground(0);
      window(38,2,51,6);
      for j:=1 to 50 do write(#177);
      window(1,1,80,25);
    end;
  end;
 {-------------*****************-----------*******************---------------}
 procedure s5;  {  ö‘—¨“‘—  üó¬ ıø÷õ  }
 procedure TER;      { ¤ş— üä¤ê ıø÷õ  }
 var
 j :integer;
  name:array[1..65] of string[100];
	   i,first,last,n:byte;
	   ch:char;
           F:TEXT;
begin
    textcolor(7);
      textbackground(0);
      window(63,2,78,6);
      for j:=1 to 50 do write(#177);
      window(1,1,80,25);
{ ôşøì— ñîª}
assign(f,'T~T.MAH');
reset (f);
for i:=1 to 65 do
begin
readln (f,name[i]);
end;
close(f);
{  üş‘ó‘“ ı‘û¤›÷•}
	     window (11,3,72,5);
	     textbackground(1);
	     textcolor(3+128);
	     clrscr;
	     GOTOXY (16,1);
	     WRITE ('¤ş—');
	     textcolor(7);
	     GOTOXY (5,2);
	     WRITE ('           –‘‹“‹¨‘‹÷‹õ            ı.ô  ô.ë  ô.©   ô‘‹‹ş ');
	     GOTOXY (5,3);
	     WRITE ('                                  M.J ¤.«         ù—êû ');
	    {	‘û –î¤Ÿ áø¤ª}
	    window(1,1,80,25);
	    textbackground(0);
	    textcolor (8);
	    for i := 4 to 6 do
	    begin
	    gotoxy(73,i);
	    write(#177#177);
	    end;
	    for i := 13 to 73 do
	    begin
	    gotoxy(i,6);
	    write(#177#177);
	    end;
	    for i := 8 to 21 do
	    begin
	    gotoxy(74,i);
	    write(#177#177);
	    end;
	    for i := 12 to 74 do
	    begin
	    gotoxy(i,22);
	    write(#177#177);
	    end;
	    window(10,7,73,21);
	    textbackground(7);
	    textcolor(0);
	    clrscr;
	    for i:=1 to 14 do
	    begin
	      gotoxy(1,i);write(name[i]);
	    end;
	    first:=1;
	    last:=14;
	    repeat
		  repeat
		  ch:=readkey;
		  if ch=#0 then ch:=readkey else if ch<>#27 then ch:=#0;
	    until  ch in[#72,#80,#27];
	    case  ch of
	    #80:if last<>63then
		   begin
			gotoxy(1,1);
			delline;
			inc(last);
			inc(first);
			gotoxy(1,14);write(name[last]);
		    end;
	    #72:if first<> 1 then
		   begin
			gotoxy(1,1);
			insline;
			dec(last);
			dec(first);
			gotoxy(1,1);write(name[first]);
		   end;
	       end;
	     until ch=#27;
	     begin
	     window(1,2,75,25);
	     textbackground(0);
	     textcolor(7);
	     gotoxy(1,1);
	     for j:= 1 to 1624 do write(#177);
	     textbackground(7);
	     window(51,2,64,4);
	     clrscr;
	     textcolor(5);
    for j:=1 to 3 do
       begin
	 gotoxy(2,j);
	 write('');
       end;
    for j:=1 to 3 do
       begin
	 gotoxy(13,j);
	 write('');
       end;
    begin
      textcolor(5);
      gotoxy(4,1);
      write('¤‹‹ş‹‹— ');
      gotoxy(4,2);
      write('¢¢¤‹‹õ ');
      gotoxy(4,3);
      write('¤øş¤ú‹ª ');
    end;
    end;
    END;
{-----------------}
procedure MORDAD;      { ¢¢¤øõ üä¤ê ıø÷õ  }
 var
 j :integer;
  name:array[1..65] of string[100];
	   i,first,last,n:byte;
	   ch:char;
           F:TEXT;
begin
    textcolor(7);
      textbackground(0);
      window(63,2,78,6);
      for j:=1 to 50 do write(#177);
      window(1,1,80,25);
{ ôşøì— ñîª}
assign(f,'T~M.MAH');
reset (f);
for i:=1 to 65 do
begin
readln (f,name[i]);
end;
close(f);
{  üş‘ó‘“ ı‘û¤›÷•}
	     window (11,3,72,5);
	     textbackground(1);
	     textcolor(3+128);
	     clrscr;
	     GOTOXY (16,1);
	     WRITE ('¢¢¤õ');
	     textcolor(7);
	     GOTOXY (5,2);
	     WRITE ('           –‘‹“‹¨‘‹÷‹õ            ı.ô  ô.ë  ô.©   ô‘‹‹ş ');
	     GOTOXY (5,3);
	     WRITE ('                                  M.J ¤.«         ù—êû ');
	    {	‘û –î¤Ÿ áø¤ª}
	    window(1,1,80,25);
	    textbackground(0);
	    textcolor (8);
	    for i := 4 to 6 do
	    begin
	    gotoxy(73,i);
	    write(#177#177);
	    end;
	    for i := 13 to 73 do
	    begin
	    gotoxy(i,6);
	    write(#177#177);
	    end;
	    for i := 8 to 21 do
	    begin
	    gotoxy(74,i);
	    write(#177#177);
	    end;
	    for i := 12 to 74 do
	    begin
	    gotoxy(i,22);
	    write(#177#177);
	    end;
	    window(10,7,73,21);
	    textbackground(7);
	    textcolor(0);
	    clrscr;
	    for i:=1 to 14 do
	    begin
	      gotoxy(1,i);write(name[i]);
	    end;
	    first:=1;
	    last:=14;
	    repeat
		  repeat
		  ch:=readkey;
		  if ch=#0 then ch:=readkey else if ch<>#27 then ch:=#0;
	    until  ch in[#72,#80,#27];
	    case  ch of
	    #80:if last<>63then
		   begin
			gotoxy(1,1);
			delline;
			inc(last);
			inc(first);
			gotoxy(1,14);write(name[last]);
		    end;
	    #72:if first<> 1 then
		   begin
			gotoxy(1,1);
			insline;
			dec(last);
			dec(first);
			gotoxy(1,1);write(name[first]);
		   end;
	       end;
	     until ch=#27;
	     begin
	     window(1,2,75,25);
	     textbackground(0);
	     textcolor(7);
	     gotoxy(1,1);
	     for j:= 1 to 1624 do write(#177);
	     textbackground(7);
	     window(51,2,64,4);
	     clrscr;
	     textcolor(5);
    for j:=1 to 3 do
       begin
	 gotoxy(2,j);
	 write('');
       end;
    for j:=1 to 3 do
       begin
	 gotoxy(13,j);
	 write('');
       end;
    begin
      textcolor(5);
      gotoxy(4,1);
      write('¤‹‹ş‹‹— ');
      gotoxy(4,2);
      write('¢¢¤‹‹õ ');
      gotoxy(4,3);
      write('¤øş¤ú‹ª ');
      end;
    end;
    END;
{--------------}
procedure SAHREVAR;      {¤øş¤úª üä¤ê ıø÷õ }
 var
 j :integer;
  name:array[1..65] of string[100];
	   i,first,last,n:byte;
	   ch:char;
           F:TEXT;
begin
    textcolor(7);
      textbackground(0);
      window(63,2,78,6);
      for j:=1 to 50 do write(#177);
      window(1,1,80,25);
{ ôşøì— ñîª}
assign(f,'T~S.MAH');
reset (f);
for i:=1 to 65 do
begin
readln (f,name[i]);
end;
close(f);
{  üş‘ó‘“ ı‘û¤›÷•}
	     window (11,3,72,5);
	     textbackground(1);
	     textcolor(3+128);
	     clrscr;
	     GOTOXY (16,1);
	     WRITE ('¤øş¤úª');
	     textcolor(7);
	     GOTOXY (5,2);
	     WRITE ('           –‘‹“‹¨‘‹÷‹õ            ı.ô  ô.ë  ô.©   ô‘‹‹ş ');
	     GOTOXY (5,3);
	     WRITE ('                                  M.J ¤.«         ù—êû ');
	    {	‘û –î¤Ÿ áø¤ª}
	    window(1,1,80,25);
	    textbackground(0);
	    textcolor (8);
	    for i := 4 to 6 do
	    begin
	    gotoxy(73,i);
	    write(#177#177);
	    end;
	    for i := 13 to 73 do
	    begin
	    gotoxy(i,6);
	    write(#177#177);
	    end;
	    for i := 8 to 21 do
	    begin
	    gotoxy(74,i);
	    write(#177#177);
	    end;
	    for i := 12 to 74 do
	    begin
	    gotoxy(i,22);
	    write(#177#177);
	    end;
	    window(10,7,73,21);
	    textbackground(7);
	    textcolor(0);
	    clrscr;
	    for i:=1 to 14 do
	    begin
	      gotoxy(1,i);write(name[i]);
	    end;
	    first:=1;
	    last:=14;
	    repeat
		  repeat
		  ch:=readkey;
		  if ch=#0 then ch:=readkey else if ch<>#27 then ch:=#0;
	    until  ch in[#72,#80,#27];
	    case  ch of
	    #80:if last<>63then
		   begin
			gotoxy(1,1);
			delline;
			inc(last);
			inc(first);
			gotoxy(1,14);write(name[last]);
		    end;
	    #72:if first<> 1 then
		   begin
			gotoxy(1,1);
			insline;
			dec(last);
			dec(first);
			gotoxy(1,1);write(name[first]);
		   end;
	       end;
	     until ch=#27;
	     begin
	     window(1,2,75,25);
	     textbackground(0);
	     textcolor(7);
	     gotoxy(1,1);
	     for j:= 1 to 1624 do write(#177);
	     textbackground(7);
	     window(51,2,64,4);
	     clrscr;
	     textcolor(5);
    for j:=1 to 3 do
       begin
	 gotoxy(2,j);
	 write('');
       end;
    for j:=1 to 3 do
       begin
	 gotoxy(13,j);
	 write('');
       end;
    begin
      textcolor(5);
      gotoxy(4,1);
      write('¤‹‹ş‹‹— ');
      gotoxy(4,2);
      write('¢¢¤‹‹õ ');
      gotoxy(4,3);
      write('¤øş¤ú‹ª ');
    end;
    end;
    END;
{--------------}
 var   j,s			 :integer;
 procedure getkey5;
   var
     code5,gozineh5,satr5:integer;
     ch5		 :char;
     satee5		 :integer;
 function getkey5	  :integer;
   begin
     ch5:=readkey;
     if ord(ch5)<>0  then
	getkey5:=ord(ch5)
      else
	 begin
	   getkey5:=ord(readkey);
	 end;
     end;
   begin
     repeat
       code5:=getkey5;
       {exit}
       if code5=45 then
      begin
      clrscr;
      window (1,1,80,25);
      textbackground(0);
      textcolor (7);
      clrscr;
      write('ü÷¥ø¨ ó‘¬ ¢õŸõ');
      delay(500);
      halt;
      end;
       {----öşş‘•-----}
       if code5=80 then
	  begin
	    textcolor(5);
	    gotoxy(3,satr5);
	    if gozineh5=1 then write(' ¤‹‹ş‹‹— ');
	    if gozineh5=2 then write(' ¢¢¤‹‹õ ');
	    if gozineh5=3 then write(' ¤øş¤ú‹ª ');
	    if satr5 <=3 then
	    begin
	       textcolor(5);
	       gotoxy(2,satr5);
	       write('');
	       gotoxy(13,satr5);
	       write('');
	       end;
	       satr5:=satr5+1;
	    if satr5>3 then satr5:=1;
	    gozineh5:=gozineh5+1;
	    if gozineh5>3 then gozineh5:=1;
	  end;
       begin
	 textcolor(0+128);
	 gotoxy(3,satr5);
	    if gozineh5=1 then write(' ¤‹‹ş‹‹— ');
	    if gozineh5=2 then write(' ¢¢¤‹‹õ ');
	    if gozineh5=3 then write(' ¤øş¤ú‹ª ');
	 textcolor(5);
	 gotoxy(2,satr5);
	 write('');
	 gotoxy(13,satr5);
	 write('');
       end;
    {-------‘ó‘“--- ------}
    if code5=72 then
	  begin
	    textcolor(5);
	    gotoxy(3,satr5);
	    if gozineh5=1 then write(' ¤‹‹ş‹‹— ');
	    if gozineh5=2 then write(' ¢¢¤‹‹õ ');
	    if gozineh5=3 then write(' ¤øş¤ú‹ª ');
	    satr5:=satr5-1;
	    if satr5<1 then satr5:=3;
	    gozineh5:=gozineh5-1;
	    if gozineh5<1 then gozineh5:=3;
	  end;
       begin
	 textcolor(0+128);
	 gotoxy(3,satr5);
	 if gozineh5=1 then write(' ¤‹‹ş‹‹— ');
	 if gozineh5=2 then write(' ¢¢¤‹‹õ ');
	 if gozineh5=3 then write(' ¤øş¤ú‹ª ');
	 textcolor(1+128);
	 gotoxy(2,satr5);
	 write(#14);
	 gotoxy(13,satr5);
	 write(#14);
       end;
       {------------------------}
{  ¤—÷ş ¢şóî  }
   if code5=13 then
      begin
	if gozineh5=1 then TER;         { ¤ş— üä¤ê ıø÷õ ö—ê¤  }
       	if gozineh5=2 then MORDAD;        { ¢¢¤øõ üä¤ê ıø÷õ ö—ê¤  }
	if gozineh5=3 then SAHREVAR;        { ¤øş¤úª üä¤ê ıø÷õ ö—ê¤  }
      end;
  until code5=27;
     end;
  begin
    textbackground(7);
    window(51,2,64,4);
    clrscr;
    sound(300);{ åø“ }
    delay(100);
    nosound;
    textcolor(5);
    for j:=1 to 3 do
       begin
	 gotoxy(2,j);
	 write('');
       end;
    for j:=1 to 3 do
       begin
	 gotoxy(13,j);
	 write('');
       end;
    begin
      textcolor(5);
      gotoxy(4,1);
      write('¤‹‹ş‹‹— ');
      gotoxy(4,2);
      write('¢¢¤‹‹õ ');
      gotoxy(4,3);
      write('¤øş¤ú‹ª ');
    end;
    getkey5;
    begin {    ù¤›÷• ö—¨“    }
      textcolor(7);
      textbackground(0);
      window(51,2,64,6);
      for j:=1 to 50 do write(#177);
      window(1,1,80,25);
    end;
  end;
{-------------****************------------****************------------------}
 procedure s6;	 { ¤‘ú“  üó¬ ıø÷õ  }
 procedure farvarden;{ öş£¤ø¤ê üä¤ê ıø÷õ  }
 var
 j :integer;
  name:array[1..65] of string[100];
	   i,first,last,n:byte;
	   ch:char;
           F:TEXT;
begin
    textcolor(7);
      textbackground(0);
      window(63,2,78,6);
      for j:=1 to 50 do write(#177);
      window(1,1,80,25);
{ ôşøì— ñîª}
assign(f,'b~F.MAH');
reset (f);
for i:=1 to 65 do
begin
readln (f,name[i]);
end;
close(f);
{  üş‘ó‘“ ı‘û¤›÷•}
	     window (11,3,72,5);
	     textbackground(1);
	     textcolor(3+128);
	     clrscr;
	     GOTOXY (14,1);
	     WRITE (' ö‹‹‹‹ş   ¢   ¤   ø   ¤‹‹‹‹‹‹‹‹‹ê');
	     textcolor(7);
	     GOTOXY (5,2);
	     WRITE ('           –‘‹“‹¨‘‹÷‹õ            ı.ô  ô.ë  ô.©   ô‘‹‹ş ');
	     GOTOXY (5,3);
	     WRITE ('                                  M.A  ô.£   é     ù—êû ');
	    {	‘û –î¤Ÿ áø¤ª}
	    window(1,1,80,25);
	    textbackground(0);
	    textcolor (8);
	    for i := 4 to 6 do
	    begin
	    gotoxy(73,i);
	    write(#177#177);
	    end;
	    for i := 13 to 73 do
	    begin
	    gotoxy(i,6);
	    write(#177#177);
	    end;
	    for i := 8 to 21 do
	    begin
	    gotoxy(74,i);
	    write(#177#177);
	    end;
	    for i := 12 to 74 do
	    begin
	    gotoxy(i,22);
	    write(#177#177);
	    end;
	    window(10,7,73,21);
	    textbackground(7);
	    textcolor(0);
	    clrscr;
	    for i:=1 to 14 do
	    begin
	      gotoxy(1,i);write(name[i]);
	    end;
	    first:=1;
	    last:=14;
	    repeat
		  repeat
		  ch:=readkey;
		  if ch=#0 then ch:=readkey else if ch<>#27 then ch:=#0;
	    until  ch in[#72,#80,#27];
	    case  ch of
	    #80:if last<>65then
		   begin
			gotoxy(1,1);
			delline;
			inc(last);
			inc(first);
			gotoxy(1,14);write(name[last]);
		    end;
	    #72:if first<> 1 then
		   begin
			gotoxy(1,1);
			insline;
			dec(last);
			dec(first);
			gotoxy(1,1);write(name[first]);
		   end;
	       end;
	     until ch=#27;
	     begin
	     window(1,2,75,25);
	     textbackground(0);
	     textcolor(7);
	     gotoxy(1,1);
	     for j:= 1 to 1624 do write(#177);
	     textbackground(7);
	     window(63,2,76,4);
	     clrscr;
	     textcolor(5);
    for j:=1 to 3 do
       begin
	 gotoxy(2,j);
	 write('');
       end;
    for j:=1 to 3 do
       begin
	 gotoxy(13,j);
	 write('');
       end;
    begin
      textcolor(5);
      gotoxy(3,1);
      write(' öş¢¤ø¤‹ê ');
      gotoxy(3,2);
      write(' –ªú“ş¢¤ ');
      gotoxy(3,3);
      write(' ¢¢¤‹‹‹¡ ');
    end;
	     end;
	     END;
{-------------------}
 procedure ordebhast;  { –ªú“ş¢¤ üä¤ê ıø÷õ  }
 var
 j :integer;
  name:array[1..65] of string[100];
	   i,first,last,n:byte;
	   ch:char;
           F:TEXT;
begin
    textcolor(7);
      textbackground(0);
      window(63,2,78,6);
      for j:=1 to 50 do write(#177);
      window(1,1,80,25);
{ ôşøì— ñîª}
assign(f,'b~A.MAH');
reset (f);
for i:=1 to 65 do
begin
readln (f,name[i]);
end;
close(f);

{  üş‘ó‘“ ı‘û¤›÷•}
	     window (11,3,72,5);
	     textbackground(1);
	     textcolor(3+128);
	     clrscr;
	     GOTOXY (15,1);
	     WRITE (' –‹‹‹‹ª‹‹‹‹ú‹‹‹‹“‹‹‹ş   ¢   ¤   ');
	     textcolor(7);
	     GOTOXY (5,2);
	     WRITE ('           –‘‹“‹¨‘‹÷‹õ            ı.ô  ô.ë  ô.©   ô‘‹‹ş ');
	     GOTOXY (5,3);
	     WRITE ('                                  A.M  «.ô        ù—êû ');
	    {	‘û –î¤Ÿ áø¤ª}
	    window(1,1,80,25);
	    textbackground(0);
	    textcolor (8);
	    for i := 4 to 6 do
	    begin
	    gotoxy(73,i);
	    write(#177#177);
	    end;
	    for i := 13 to 73 do
	    begin
	    gotoxy(i,6);
	    write(#177#177);
	    end;
	    for i := 8 to 21 do
	    begin
	    gotoxy(74,i);
	    write(#177#177);
	    end;
	    for i := 12 to 74 do
	    begin
	    gotoxy(i,22);
	    write(#177#177);
	    end;
	    window(10,7,73,21);
	    textbackground(7);
	    textcolor(0);
	    clrscr;
	    for i:=1 to 14 do
	    begin
	      gotoxy(1,i);write(name[i]);
	    end;
	    first:=1;
	    last:=14;
	    repeat
		  repeat
		  ch:=readkey;
		  if ch=#0 then ch:=readkey else if ch<>#27 then ch:=#0;
	    until  ch in[#72,#80,#27];
	    case  ch of
	    #80:if last<>63then
		   begin
			gotoxy(1,1);
			delline;
			inc(last);
			inc(first);
			gotoxy(1,14);write(name[last]);
		    end;
	    #72:if first<> 1 then
		   begin
			gotoxy(1,1);
			insline;
			dec(last);
			dec(first);
			gotoxy(1,1);write(name[first]);
		   end;
	       end;
	     until ch=#27;
	     begin
	     window(1,2,75,25);
	     textbackground(0);
	     textcolor(7);
	     gotoxy(1,1);
	     for j:= 1 to 1624 do write(#177);
	     textbackground(7);
	     window(63,2,76,4);
	     clrscr;
	     textcolor(5);
    for j:=1 to 3 do
       begin
	 gotoxy(2,j);
	 write('');
       end;
    for j:=1 to 3 do
       begin
	 gotoxy(13,j);
	 write('');
       end;
    begin
      textcolor(5);
      gotoxy(3,1);
      write(' öş¢¤ø¤‹ê ');
      gotoxy(3,2);
      write(' –ªú“ş¢¤ ');
      gotoxy(3,3);
      write(' ¢¢¤‹‹‹¡ ');
    end;
	     end;
	     END;
{-------------------}
procedure khordad;      { ¢¢¤¡ üä¤ê ıø÷õ  }
 var
 j :integer;
  name:array[1..65] of string[100];
	   i,first,last,n:byte;
	   ch:char;
           F:TEXT;
begin
    textcolor(7);
      textbackground(0);
      window(63,2,78,6);
      for j:=1 to 50 do write(#177);
      window(1,1,80,25);
{ ôşøì— ñîª}
assign(f,'b~KH.MAH');
reset (f);
for i:=1 to 65 do
begin
readln (f,name[i]);
end;
close(f);
{  üş‘ó‘“ ı‘û¤›÷•}
	     window (11,3,72,5);
	     textbackground(1);
	     textcolor(3+128);
	     clrscr;
	     GOTOXY (16,1);
	     WRITE ('¢             ¢      ¤‹‹‹‹‹‹‹‹¡');
	     textcolor(7);
	     GOTOXY (5,2);
	     WRITE ('           –‘‹“‹¨‘‹÷‹õ            ı.ô  ô.ë  ô.©   ô‘‹‹ş ');
	     GOTOXY (5,3);
	     WRITE ('                                  M.J ¤.«         ù—êû ');
	    {	‘û –î¤Ÿ áø¤ª}
	    window(1,1,80,25);
	    textbackground(0);
	    textcolor (8);
	    for i := 4 to 6 do
	    begin
	    gotoxy(73,i);
	    write(#177#177);
	    end;
	    for i := 13 to 73 do
	    begin
	    gotoxy(i,6);
	    write(#177#177);
	    end;
	    for i := 8 to 21 do
	    begin
	    gotoxy(74,i);
	    write(#177#177);
	    end;
	    for i := 12 to 74 do
	    begin
	    gotoxy(i,22);
	    write(#177#177);
	    end;
	    window(10,7,73,21);
	    textbackground(7);
	    textcolor(0);
	    clrscr;
	    for i:=1 to 14 do
	    begin
	      gotoxy(1,i);write(name[i]);
	    end;
	    first:=1;
	    last:=14;
	    repeat
		  repeat
		  ch:=readkey;
		  if ch=#0 then ch:=readkey else if ch<>#27 then ch:=#0;
	    until  ch in[#72,#80,#27];
	    case  ch of
	    #80:if last<>63then
		   begin
			gotoxy(1,1);
			delline;
			inc(last);
			inc(first);
			gotoxy(1,14);write(name[last]);
		    end;
	    #72:if first<> 1 then
		   begin
			gotoxy(1,1);
			insline;
			dec(last);
			dec(first);
			gotoxy(1,1);write(name[first]);
		   end;
	       end;
	     until ch=#27;
	     begin
	     window(1,2,75,25);
	     textbackground(0);
	     textcolor(7);
	     gotoxy(1,1);
	     for j:= 1 to 1624 do write(#177);
	     textbackground(7);
	     window(63,2,76,4);
	     clrscr;
	     textcolor(5);
    for j:=1 to 3 do
       begin
	 gotoxy(2,j);
	 write('');
       end;
    for j:=1 to 3 do
       begin
	 gotoxy(13,j);
	 write('');
       end;
    begin
      textcolor(5);
      gotoxy(3,1);
      write(' öş¢¤ø¤‹ê ');
      gotoxy(3,2);
      write(' –ªú“ş¢¤ ');
      gotoxy(3,3);
      write(' ¢¢¤‹‹‹¡ ');
    end;
    end;
    END;
{---------------}
{ ¢şóî éş¤ã—}
   var
   j,s			 :integer;
 procedure getkey6;
   var
     code6,gozineh6,satr6:integer;
     ch6		 :char;
     satee6		 :integer;
 function getkey6	 :integer;
   begin
     ch6:=readkey;
     if ord(ch6)<>0  then
	getkey6:=ord(ch6)
      else
	 begin
	   getkey6:=ord(readkey);
	 end;
     end;
   begin
     repeat
       code6:=getkey6;
       {----öşş‘•-----}
       if code6=80 then
	  begin
	    textcolor(5);
	    gotoxy(3,SATR6);
	    if gozineh6=1 then write(' öş¢¤ø¤‹ê ');
	    if gozineh6=2 then write(' –ªú“ş¢¤ ');
	    if gozineh6=3 then write(' ¢¢¤‹‹‹¡ ');
	    if SATR6 <=3 then
	    begin
	       textcolor(5);
	       gotoxy(2,SATR6);
	       write('');
	       gotoxy(13,SATR6);
	       write('');
	       end;
	    SATR6:=SATR6+1;
	    if SATR6>3 then SATR6:=1;
	    gozineh6:=gozineh6+1;
	    if gozineh6>3 then gozineh6:=1;
	  end;
       begin
	 textcolor(0+128);
	 gotoxy(3,SATR6);
	 if gozineh6=1 then write(' öş¢¤ø¤‹ê ');
	 if gozineh6=2 then write(' –ªú“ş¢¤ ');
	 if gozineh6=3 then write(' ¢¢¤‹‹‹¡ ');
	 textcolor(5);
	 gotoxy(2,SATR6);
	 write('');
	 gotoxy(13,SATR6);
	 write('');
       end;
    {-------‘ó‘“--- ------}
    if code6=72 then
	  begin
	    textcolor(5);
	    gotoxy(3,SATR6);
	    if gozineh6=1 then write(' öş¢¤ø¤‹ê ');
	    if gozineh6=2 then write(' –ªú“ş¢¤ ');
	    if gozineh6=3 then write(' ¢¢¤‹‹‹¡ ');
	    SATR6:=SATR6-1;
	    if SATR6<1 then SATR6:=3;
	    gozineh6:=gozineh6-1;
	    if gozineh6<1 then gozineh6:=3;
	  end;
       begin
	 textcolor(0+128);
	 gotoxy(3,SATR6);
	 if gozineh6=1 then write(' öş¢¤ø¤‹ê ');
	 if gozineh6=2 then write(' –ªú“ş¢¤ ');
	 if gozineh6=3 then write(' ¢¢¤‹‹‹¡ ');
	 textcolor(1+128);
	 gotoxy(2,satr6);
	 write(#14);
	 gotoxy(13,satr6);
	 write(#14);
       end;
      if code6=45 then
      begin
      clrscr;
      window (1,1,80,25);
      textbackground(0);
      textcolor (7);
      clrscr;
      write('ü÷¥ø¨ ó‘¬ ¢õŸõ');
      delay(500);
      halt;
      end;
       {------------------------}
{  ¤—÷ş ¢şóî  }
   if code6=13 then
      begin
	if gozineh6=1 then FARVARDEN;{ öş¢¤ø¤ê üä¤ê ıø÷õ ù“ ö—ê¤ }
	if gozineh6=2 then ordebhast; { –ªú“ş¢¤ üä¤ê ıø÷õ ù“ ö—ê¤ }
	if gozineh6=3 then khordad;    {¢¢¤¡ üä¤ê ıø÷õ ù“ ö—ê¤ }
      end;
  until code6=27;
     end;
  begin
    textbackground(7);
    window(63,2,76,4);
    clrscr;
    sound(300);{ åø“ }
    delay(100);
    nosound;
    textcolor(5);
    for j:=1 to 3 do
       begin
	 gotoxy(2,j);
	 write('');
       end;
    for j:=1 to 3 do
       begin
	 gotoxy(13,j);
	 write('');
       end;
    begin
      textcolor(5);
      gotoxy(3,1);
      write(' öş¢¤ø¤‹ê ');
      gotoxy(3,2);
      write(' –ªú“ş¢¤ ');
      gotoxy(3,3);
      write(' ¢¢¤‹‹‹¡ ');
    end;
    getkey6;
    begin {    ù¤›÷• ö—¨“    }
      textcolor(7);
      textbackground(0);
      window(63,2,78,6);
      for j:=1 to 50 do write(#177);
      window(1,1,80,25);
    end;
  end;
     {	 üó¬ ıø÷õ}
{   ü—ú› ü‘û¢şóî éş¤ã—	 }
 procedure getkey;
   var
     code,gozineh,satr:integer;
     ch,s	       :char;
 function getkey      :integer;
    const
      suton = 7;
    begin
      ch:=readkey;
      if ord(ch)<>0 then
      getkey:=ord(ch)
	  else
	     begin
	       getkey:=ord(readkey);
     end;
 end;
 begin
    repeat
       code:=getkey;
       if code=75 then
{*********** <---  ¢şóî é¤ã—   ************}
	   begin
	   textcolor(5);
	   textbackground(7);
	   gotoxy(satr,1);
	   if gozineh=1 then write(' šø¤‹‹‹¡ ');
	   if gozineh=2 then write(' ü‹ê¤‹ãõ ');
	   if gozineh=3 then write(' ö‘—‹¨õ¥ ');
	   if gozineh=4 then write(' ¥‹şş‘‹• ');
	   if gozineh=5 then write(' ö‘—¨‹“‘— ');
	   if gozineh=6 then write(' ¤‘‹‹ú‹‹“ ');
	   gozineh:=gozineh-1;
	   if gozineh>6 then gozineh:=8;
	   if gozineh<3 then satr:=satr-12
	       else satr:=satr-12;
		  if satr<5 then
		     begin
		       gozineh:=6;
		       satr:=satr+72;
		     end;
	   textcolor(15+128);
	   textbackground(0);
	   gotoxy(satr,1);
	   if gozineh=1 then write(' šø¤‹‹‹¡ ');
	   if gozineh=2 then write(' ü‹ê¤‹ãõ ');
	   if gozineh=3 then write(' ö‘—‹¨õ¥ ');
	   if gozineh=4 then write(' ¥‹şş‘‹• ');
	   if gozineh=5 then write(' ö‘—¨‹“‘— ');
	   if gozineh=6 then write(' ¤‘‹‹ú‹‹“ ');
      END;
      if code=77 then
{***********  --->  ¢şóî é¤ã—	************}
	 begin
	   textcolor(5);
	   textbackground(7);
	   gotoxy(satr,1);
	   if gozineh=1 then write(' šø¤‹‹‹¡ ');
	   if gozineh=2 then write(' ü‹ê¤‹ãõ ');
	   if gozineh=3 then write(' ö‘—‹¨õ¥ ');
	   if gozineh=4 then write(' ¥‹şş‘‹• ');
	   if gozineh=5 then write(' ö‘—¨‹“‘— ');
	   if gozineh=6 then write(' ¤‘‹‹ú‹‹“ ');
	   gozineh:=gozineh+1;
	   if gozineh>6 then gozineh:=1;
	   if gozineh>3 then satr:=satr+12
	      else satr:=satr+12;
	   if satr>66 then satr:=5;
	   textcolor(15+128);
	   textbackground(0);
	   gotoxy(satr,1);
	   if gozineh=1 then write(' šø¤‹‹‹¡ ');
	   if gozineh=2 then write(' ü‹ê¤‹ãõ ');
	   if gozineh=3 then write(' ö‘—‹¨õ¥ ');
	   if gozineh=4 then write(' ¥‹şş‘‹• ');
	   if gozineh=5 then write(' ö‘—¨‹“‘— ');
	   if gozineh=6 then write(' ¤‘‹‹ú‹‹“ ');
      END;
      if code=59 then
      begin
      help (18,6,58,11);
      end;
      if code=45 then
      begin
      clrscr;
      textbackground(0);
      textcolor (7);
      clrscr;
      write('ü÷¥ø¨ ó‘¬ ¢õŸõ');
      delay(500);
      halt;
      end;
{-----------------------------<ÄÄÙ ¢şóî éş¤ã—------------------------------- }
      if code=13 then
	 begin
	   gotoxy(13,13);
	   if gozineh=1 then s1;{  šø¤¡ ¤›ş¨ø¤• ù“ ö—ê¤ }
	   if gozineh=2 then s2(18,6,58,15);{ üê¤ãõ ¤›ş¨ø¤• ù“ ö—ê¤ }
	   if gozineh=3 then s3;{ ö‘—¨õ¥ ¤›ş¨ø¤• ù“ ö—ê¤ }
	   if gozineh=4 then s4;{ ¥şş‘• ¤›ş¨ø¤• ù“ ö—ê¤ }
	   if gozineh=5 then s5;  { ö‘—¨“‘— ¤›ş¨ø¤• ù“ ö—ê¤ }
	   if gozineh=6 then s6;  { ¤‘ú“ ¤›ş¨ø¤• ù“ ö—ê¤ }
	 end;
    until (www=27);
 end;
{------------------------ ‘û¤›ş¨¤•  ö‘ş‘• -----------------------------------}
{****************************************************************************}
			  { ùõ‘÷¤“ üó¬ –õ¨ì }
begin
   Gd := Detect;
   InitGraph(Gd, Gm,'  ');
   x:=61;
   y:=15;
     for i:=1 to 6 do
       begin
	  delay(50);
	  Window(x,y,61,18);	    { .....ø ù¤›÷• üşøªî –î¤Ÿ }
	  Textcolor(2);
	  clrscr;
	  x:=x-9;
	  y:=y-1;
       end;
  settextstyle(1,0,8);
  textcolor (5);
  outtextxy(160,160,'TAGVEM');
  delay(1000);
  closegraph;
  clrscr;
  textbackground(0);
  window(1,1,80,25);
  clrscr;
  menu;   { ø÷õ üó¬ ¤›ş¨ø¤•}
  getkey; { ‘û¢şóî üó¬ ¤›ş¨ø¤•}
  textbackground(0);
  clrscr;
end.
