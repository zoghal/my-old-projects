{$I-,V-}
program Telephone;            {      öêó— : ùõ‘÷¤“ ô‘÷     }



uses crt,DOS;                { ù¢ª ù¢‘ê—¨ ü‘ú—ş÷øş éş¤ã— }
type rec=record              {     öêó— ù¢¢ ¢¤øî¤ éş¤ã— }
      name:string[20];
      adres:string[40];
      tel:string[15];
      namecity:string[20];
      citycod:string[15];
      namecountry:string[20];
      countrycod:string[15];
     end;
var trec,test:rec;                {             ‘û¤şşç—õ éş¤ã— }
    data:file of rec;
    a:char;
    i,j,Xnum:byte;
    R:REGISTERS;
Function  DelBlank ( S : String ) : String;
Var
 I, J : Byte;
Begin
 J := 1;
 For I := 1 To Ord ( S(.0.) ) Do
  Begin
   If S(.I.) = #32 Then
    Continue;
   DelBlank(.J.) := S(.I.);
   Inc ( J );
  End;
 DelBlank(.0.) := Chr ( J - 1 );
End;
{******************* üî¨ ¤—î¤‘î ù¢÷û¢ ¤şşç— ***************************}
procedure changeCHAR(LINE1,LINE2,LINE3,LINE4,LINE5,LINE6,LINE7,
                     LINE8,LINE9,LINEA,LINEB,LINEC,LINED,LINEE,
                     LINEF,LINEG,ASCIICODE:BYTE);
begin
                  { ü¯‘“—¤ ¤ê‘“ öø÷ä ù“ ùàê‘Ÿ –÷õğ¨ ¥ ù¢‘ê—¨ }
                  {                 .¤ê‘“ ù“ ‘û¤—õ¤‘• ö¢‘—¨¤ê ø }
  mem[$0000:00]:=LINE1; mem[$0000:01]:=LINE2; mem[$0000:02]:=LINE3;
  mem[$0000:03]:=LINE4; mem[$0000:04]:=LINE5; mem[$0000:05]:=LINE6;
  mem[$0000:06]:=LINE7; mem[$0000:07]:=LINE8; mem[$0000:08]:=LINE9;
  mem[$0000:09]:=LINEA; mem[$0000:10]:=LINEB; mem[$0000:11]:=LINEC;
  mem[$0000:12]:=LINED; mem[$0000:13]:=LINEE; mem[$0000:14]:=LINEF;
  mem[$0000:15]:=LINEG;
  r.ah:=$11;        {      §¢ â“‘— ù¤‘õª }
  r.al:=$10;        { §¢ â“‘— -¤ş¥ ù¤‘õª }
  r.bh:=16;         { VGA ü¤“¤—î¤‘î á‘ê—¤}
  r.bl:=0;
  r.cx:=1;
  r.dx:=ASCIICODE;
  r.es:=10;
  r.bp:=10;
  intr($11,r);      { ¤—î¤‘î ñîª ¤şşç— ü¤“ 10h ùêìø ü÷ø¡¤ê }
end;
{************************ (ô—ş) ù÷ş¥ğ ¤ğªş‘õ÷ ***************************}
procedure print(col,row,fc,bc,back,sayeh:byte;s:string;bool:boolean);
var
  num,col2:byte;
begin
  gotoxy(col,row);
  if bool=true then
    begin
      textcolor(7);
      textbackground(0);
      write('İŞ');
    end;
  textcolor(fc);
  textbackground(bc);
  write(s);
  textcolor(sayeh);
  textbackground(back);
  write('Ü');
  gotoxy(col+1,row+1);
  if bool=true then col2:=2+col+length(s) else col2:=col+length(s);
  for num:=col+1 to col2 do
    write('ß');
end;

{************************* Set a RGB palette ************************************}
procedure SetPalette(ColorNumber,RedValue,GreenValue,BlueValue : byte);
begin
   (*  port[$3C8]:=ColorNumber;      { ù¢‘—¨¤ê VGA –¤‘î I/O –¤ø• ù“ ï÷¤ ù¤‘õª }
                                   { .¢øªşõ                                 }
     port[$3C9]:=RedValue;         {  ù“ ôû¤¨ –ª• Šü“ ø ¥“¨ Š¥õ¤ì ü‘û¤¢ìõ }
     port[$3C9]:=GreenValue;       { ¥õ¤ì ü‘û¤¢ìõ.¢÷øªşõ ù¢‘—¨¤ê 3C9h –¤ø• }
     port[$3C9]:=BlueValue; *)       {  .¢÷—¨û †ƒ ‘— € şŸ¬ ¢¢ä ü“ ø ¥“¨ ø }

end;

{               ù¢ª ù¢‘ê—¨ ü‘úğ÷¤ –ó‘• ù¢÷÷î éş¤ã—                         }
procedure SetPalettes;
begin
     SetPalette( 00 , 00 , 00 , 21 );
     SetPalette( 01 , 10 , 21 , 63 );
     SetPalette( 02 , 10 , 63 , 10 );
     SetPalette( 03 , 10 , 63 , 63 );
     SetPalette( 04 , 63 , 21 , 00 );
     SetPalette( 05 , 65 , 24 , 21 );
     SetPalette( 06 , 70 , 30 , 63 );
     SetPalette( 07 , 75 , 33 , 10 );
end;
{******************* –‘äò¯ ©ş‘õ÷ ¢¤“ ù¢÷÷î í‘• *************************}
procedure clear;
var yrows,xcols,xyz:byte;
begin
  textcolor(7);
  textbackground(1);
  for yrows:=1 to 13 do
    begin
      for xyz:=1 to 5 do
        for xcols:=1 to 63 do
          begin
            gotoxy(xcols,yrows);
            write(' ');
          end;
    end;
end;
{******************************** ‘õ÷û¤ *********************************}
procedure help;
           begin
               textcolor(4);textbackground(2);
               gotoxy(5, 1);write('ÚÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄ¿');
               gotoxy(5, 2);write('³ÿÿÿ      ÿÿöêó—ÿ–‘äò¯ÿù¦ø¤•ÿ       ÿÿ³');textcolor(15);
               gotoxy(5, 3);write('³ü÷‘õşó¨¢şõŸøôª—Ÿõü¤¢÷î¨¢õŸ:ù¢÷¨şø÷  ³');
               gotoxy(5, 4);write('³ÿÿÿÿÿÿ    ²ÿProgrammers Groupÿ  ÿ    ÿ³');textcolor(14);
               GOTOXY(5, 5);WRITE('³ÿÿÿÿ:ÿ¢¤¢ÿ¢ø›øÿù÷ş¥ğÿ7ÿüó¬ÿıø÷õÿ¤¢ÿÿ³');
               gotoxy(5, 6);write('³ÿÿÿùŸê¬ÿöşÿ©ş‘õ÷ÿı¤“ÿ`‘õ÷û¤`ÿıø÷õÿÿ³');
               gotoxy(5, 7);write('³ÿÿÿö¢ø¥êÿı¤“ÿ`ùê‘®ÿ`ÿıø÷õÿ.¢ª‘“şõÿÿ³');
               gotoxy(5, 8);write('³ÿÿÿ`ø›—¨›`ÿıø÷õÿøÿ¢ª‘“şõÿ¢ş¢›ÿ–‘äò¯ÿÿ³');
               gotoxy(5, 9);write('³ÿÿ ` é£Ÿ`ÿÿ.¢ª‘“şõÿ–‘äò¯ÿö—ê‘şÿı¤“ÿÿ³');
               gotoxy(5,10);write('³  .–¨ ¤ê÷ íş –‘¬¡ªõ ö¢¤î  í‘•  ü¤“  ³');
               gotoxy(5,11);write('³ .¢û¢ üõ ö‘ª÷ ¤ ¤úª íş¢î ` ¤úª¢î `   ³');
               gotoxy(5,12);write('³ .¢û¢ üõ ö‘ª÷ ¤ ¤øªî íş¢î  `¤øªî¢î ` ³ ');
               gotoxy(5,13);write('ÀÄÄÄÄÄÄÄÄÄÄ  .¢şû¢ ¤‘ªê ¤  ENTER ¢şóî Ù');
               gotoxy(80,25);
               a:=readkey;
               a:=#1;
               clear;
           end;
{*************************** ü¨¤‘ê ù“ ¢şóî ùŸê¬ ñş¢“— ********************}
procedure farsi(x:char);
begin
  if a='`' then a:='•';if a='~' then a:='”';if a='q' then a:='®';
  if a='Q' then a:='­';if a='W' then a:='«';if a='w' then a:='¬';
  if a='E' then a:='˜';if a='e' then a:='™';if a='R' then a:='ë';
  if a='r' then a:='ì';if a='T' then a:='é';if a='t' then a:='ê';
  if a='Y' then a:='å';if a='y' then a:='è';if a='U' then a:='á';
  if a='u' then a:='ä';if a='I' then a:='ù';if a='i' then a:='û';
  if a='O' then a:=' ';if a='o' then a:='¡';if a='P' then a:='';
  if a='p' then a:='Ÿ';if a='{' then a:='š';if a='[' then a:='›';
  if a='}' then a:='œ';if a=']' then a:='';if a='A' then a:='©';
  if a='a' then a:='ª';if a='S' then a:='§';if a='s' then a:='¨';
  if a='D' then a:='ü';if a='d' then a:='ş';if a='F' then a:='’';
  if a='f' then a:='“';if a='G' then a:='ñ';if a='g' then a:='ó';
  if a='H' then a:='‘';if a='h' then a:='';if a='J' then a:='–';
  if a='j' then a:='—';if a='K' then a:='ö';if a='k' then a:='÷';
  if a='L' then a:='ô';if a='l' then a:='õ';if a=':' then a:='í';
  if a=';' then a:='î';if a='"' then a:='ï';if a=#39 then a:='ğ';
  if a='Z' then a:='æ';if a='z' then a:='à';if a='X' then a:='ç';
  if a='x' then a:='¯';if a='C' then a:='â';if a='c' then a:='¥';
  if a='V' then a:='ã';if a='v' then a:='¤';if a='B' then a:='ò';
  if a='b' then a:='£';if a='N' then a:='ú';if a='n' then a:='¢';
  if a='M' then a:='';if a='m' then a:='';if a='<' then a:='<';
  if a=',' then a:='ø';if a='>' then a:='>';if a='.' then a:='.';
  if a='?' then a:='Œ';if a='/' then a:='/';if a='\' then a:='¦';
  if a='|' then a:='';if a=#48 then a:='€';if a=#49 then a:='';
  if a=#50 then a:='‚';if a=#51 then a:='ƒ';if a=#52 then a:='„';
  if a=#53 then a:='…';if a=#54 then a:='†';if a=#55 then a:='‡';
  if a=#56 then a:='ˆ';if a=#57 then a:='‰';if a=#32 then a:=#32;
  if a='@' then a:='ı';
end;
{*********** ùõ‘÷¤“ ù¢¢ ñş‘ê ù“ ¢ş¢› ü—‘äò¯ ¢óşê ö¢¤î ùê‘® *************}
procedure add;
begin
  textcolor(0);textbackground(3);
  PRINT(1,4,12,3,1,0,'ÿÿÿÿÿÿÿÿÿÿ¢ş÷îÿ¢¤øÿ¤ÿ¤à÷ÿ¢¤øõÿ«¡ªÿ–‘äò¯‘ê¯óÿÄ¿',TRUE);
  print(1,5,1,3,0,0,'³ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿ:ÿÿô‘÷ÿ³',false);
  print(1,6,1,3,0,0,'³ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿ:ÿ§¤¢ÿ³',false);
  print(1,7,1,3,0,0,'³ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿ:ÿöêó—ÿù¤‘õªÿ³',false);
  print(1,8,1,3,0,0,'ÀÄÿEscÿ=ÿ¤à÷ÿé¤¬ÿÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÙ',false);
  with trec do
    begin
    name:='';
     textbackground(3);
     textcolor(14);
     repeat
       gotoxy(44-length(name)-1,5);
       a:=readkey;
       if a=#27 then
         begin
           a:=#1;
           clear;
           exit;
         end;
       if a=#8 then
         delete(name,1,1);
       if (a<>#8)and(a<>#13)and(length(name)<20) then
         begin
           farsi(a);
           name:=a+name;
         end;
       gotoxy(43-length(name),5);
       write('ÿ',name);
     until a=#13;
     adres:='';
     repeat
       gotoxy(43-length(adres),6);
       a:=readkey;
       if a=#27 then
         begin
           a:=#1;
           clear;
           exit;
         end;
       if a=#8 then
         delete(adres,1,1);
       if (a<>#8)and(a<>#13)and(length(adres)<40) then
         begin
           farsi(a);
           adres:=a+adres;
         end;
       gotoxy(43-length(adres),6);
       write('ÿ',adres);
    until a=#13;
    tel:='';
    repeat
       gotoxy(22+length(tel),7);
       a:=readkey;
       if a=#27 then
         begin
           a:=#1;
           clear;
           exit;
         end;
       if a=#8 then
         delete(tel,length(tel),1);
       if (a<>#8)and(a<>#13) then
         begin
           farsi(a);
           tel:=tel+a;
         end;
       gotoxy(22,7);
       write(tel,'ÿ');
    until a=#13;
    end;
    assign(data,'tell118.dat');
  reset(data);
  if ioresult<>0 then rewrite(data);
  seek(data,filesize(data)+1);
  write(data,trec);
  close(data);
  clear;
end;
{**************************** ù¢¢ ñş‘ê ¤¢ ø›—¨› ***************************}
procedure search;
var nam:string[20];
    TELL:string[15];
    sh:array [1..10] of string[20];
    cl,x:byte;
begin
  assign(data,'tell118.dat');
  reset(data);
  if ioresult<>0 then
    begin
      textcolor(7);textbackground(4);
      gotoxy(20,5);write('ÚÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÿñ‘îªÿíşÿÄ¿');
      gotoxy(20,6);write('³ÿ.¢ª÷¢ş•ÿTELL118.DATÿñş‘êÿ³');
      gotoxy(20,7);write('ÀÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÙ');
      a:=readkey;
      a:=#1;
      clear;
      exit;
    end;
  textcolor(15);
  textbackground(6);
  sh[3]:='ÿöêó—ÿ';
  sh[5]:='ÿÿô‘÷ÿ';
  print(42,3,14,4,1,8,''+SH[3],FALSE);
  PRINT(42,5,14,2,1,8,' '+SH[5],FALSE);
  x:=3;
 repeat
  a:=readkey;
  if a=#13 then
    begin
      if x = 5 then
        begin
          TEXTCOLOR(15);
          TEXTBACKGROUND(4);
          gotoxy(20,8) ;write('ÚÄÄÄÄÄÄÄÄÿô‘÷ÿÄÄÄÄÄÄÄÄ¿');
          gotoxy(20,9) ;write('³ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿ³');
          gotoxy(20,10);write('ÀÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÙ');
      nam:='';
      repeat
        gotoxy(41-length(nam),9);
        a:=readkey;
        if a=#27 then
          begin
            a:=#1;
            clear;
            close(data);
            exit;
          end;
        if a=#8 then
          delete(nam,1,1);
        if (a<>#8)and(a<>#13)and(length(nam)<20) then
          begin
            farsi(a);
            nam:=a+nam;
          end;
        gotoxy(41-length(nam),9);textcolor (7);
        write('ÿ',nam);
     until a=#13;
         Xnum:=0;
         repeat
           read(data,trec);
           with trec do
           begin
             if nam=name then
               begin
                 TEXTCOLOR(14);TEXTBACKGROUND(5);
                 GOTOXY(1,4);WRITE('ÚÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄ¿');
                 GOTOXY(1,5);WRITE('³ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿ:ÿÿô‘÷ÿ³');
                 GOTOXY(1,6);WRITE('³ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿ:ÿ§¤¢ÿ³');
                 GOTOXY(1,7);WRITE('³ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿ:ÿöêó—ÿù¤‘õªÿ³');
                 GOTOXY(1,8);WRITE('ÀÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÙ');
                 textcolor(10);
                 gotoxy(47-length(name),5);write(name);
                 gotoxy(47-length(adres),6);write(adres);
                 gotoxy(40-length(tel),7);write(tel);
                 Xnum:=Xnum+1;
                 gotoxy(45,4);write('ÿ',Xnum,'ÿ');
                 a:=readkey;
               end;
           end;
          until eof(data);
          textbackground(4);
          TEXTCOLOR(14);
          gotoxy(20,7);write('ÚÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄ¿');
          gotoxy(20,8);write('³ÿ¢ª÷¢ş•ÿ–‘äò¯ÿ³');
          gotoxy(20,9);write('ÀÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÙ');
          a:=readkey;
          close(data);
          clear;
          exit;
        end;
      if x = 3 then
        begin
          TEXTCOLOR(15);
          TEXTBACKGROUND(4);
          gotoxy(20,8); write('ÚÄÄÄÄÄÄÄÿöêó—ÿÄÄÄÄÄÄÄ¿');
          gotoxy(20,9) ;write('³ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿ³');
          gotoxy(20,10);write('ÀÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÙ');
    tell:='';
    textcolor(10);
    repeat
       gotoxy(22+length(tell),9);
       a:=readkey;
        if a=#27 then
          begin
            a:=#1;
            clear;
            close(data);
            exit;
          end;
       if a=#8 then
         delete(tell,length(tell),1);
       if (a<>#8)and(a<>#13) then
         begin
           farsi(a);
           tell:=tell+a;
         end;
       gotoxy(22,9);
       write(tell,'ÿ');
    until a=#13;
         Xnum:=0;
         repeat
           read(data,trec);
           with trec do
           begin
             if tell=tel then
               begin
                 TEXTCOLOR(0);TEXTBACKGROUND(3);
                 GOTOXY(1,4);WRITE('ÚÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄ¿');
                 GOTOXY(1,5);WRITE('³ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿ:ÿÿô‘÷ÿ³');
                 GOTOXY(1,6);WRITE('³ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿ:ÿ§¤¢ÿ³');
                 GOTOXY(1,7);WRITE('³ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿ:ÿöêó—ÿù¤‘õªÿ³');
                 GOTOXY(1,8);WRITE('ÀÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÙ');
                 textcolor(14);
                 gotoxy(47-length(name),5);write(name);
                 gotoxy(47-length(adres),6);write(adres);
                 gotoxy(40-length(tel),7);write(tel);
                 Xnum:=Xnum+1;
                 gotoxy(45,4);write('ÿ',Xnum,'ÿ');
                 a:=readkey;
               end;
           end;
          until eof(data);
          TEXTCOLOR(14);
          textbackground(4);
          gotoxy(20,7 );write('ÚÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄ¿');
          gotoxy(20,8 );write('³ÿ¢ª÷¢ş•ÿ–‘äò¯ÿ³');
          gotoxy(20,9 );write('ÀÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÙ');
          a:=readkey;
          close(data);
          clear;
        end;
        exit;
      end;
  if a=#0 then
    begin
      a:=readkey;
      textcolor(15);textbackground(7);
      print(42,x,14,2,1,8,'ÿ'+sh[x],false);
      if a=#72 then
        begin
          x:=x-2;
          if x<3 then x:=5;
        end;
      if a=#80 then
        begin
          x:=x+2;
          if x>5 then x:=3;
        end;
      textcolor(14);textbackground(2);
      PRINT(42,x,14,4,1,8,''+sh[x],FALSE);
    end;
  until (a=#75) or (a=#77) or (a=#27);
  a:=#1;
  close(data);
  clear;
end;
{++++++----------------------------------¤úª¢î--------------------------++++++++++}

procedure ool;
begin
  textcolor(0);textbackground(3);
  PRINT(1,4,12,3,1,0,'ÿÿÿÿÿÿÿÿÿ                 ¢ş÷î¢¤ø¤¤úª ¢î‘ê¯óÿÄ¿',TRUE);
  print(1,5,1,3,0,0,'³ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿ  ÿ: ¤úªÿô‘÷ ÿ³',false);
  print(1,6,1,3,0,0,'³ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿ       ÿÿÿÿÿÿ:ÿ¤úª¢îÿ³',false);
  print(1,7,1,3,0,0,'ÀÄÿEscÿ=ÿ¤à÷ÿé¤¬ÿÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÙ',false);
  with trec do
    begin
    namecity:='';
     textbackground(3);
     textcolor(14);
     repeat
       gotoxy(40-length(namecity)-1,5);
       a:=readkey;
       if a=#27 then
         begin
           a:=#1;
           clear;
           exit;
         end;
       if a=#8 then
         delete(namecity,1,1);
       if (a<>#8)and(a<>#13)and(length(namecity)<20) then
         begin
           farsi(a);
           namecity:=a+namecity;
         end;
       gotoxy(39-length(namecity),5);
       write('ÿ',namecity);
     until a=#13;
    citycod:='';
    repeat
       gotoxy(22+length(citycod),6);
       a:=readkey;
       if a=#27 then
         begin
           a:=#1;
           clear;
           exit;
         end;
       if a=#8 then
         delete(citycod,length(citycod),1);
       if (a<>#8)and(a<>#13) then
         begin
           farsi(a);
           citycod:=citycod+a;
         end;
       gotoxy(22,6);
       write(citycod,'ÿ');
    until a=#13;
    citycod := delblank ( citycod );
    namecity := delblank ( namecity );
    end;
    assign(data,'tell.dat');
  reset(data);
  if ioresult<>0 then rewrite(data);
  seek(data,filesize(data));
  write(data,trec);
  close(data);
  clear;
end;


{++++++-------------------------------------¤úª¢î ø›—¨›---------------------------++++}
procedure rrr;
var nam:string[20];
   TELL :string[15];
   sh:array [1..10] of string[20];
  test, cl,x:byte;
begin
  assign(data,'tell.dat');
  reset(data);
  if ioresult<>0 then
    begin
      textcolor(7);textbackground(4);
      gotoxy(20,5);write('ÚÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÿñ‘îªÿíşÿÄ¿');
      gotoxy(20,6);write('³ÿ.¢ª÷¢ş•ÿtell.DATÿñş‘ê   ÿ³');
      gotoxy(20,7);write('ÀÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÙ');
      a:=readkey;
      a:=#1;
      clear;
      exit;
    end;
  textcolor(15);
  textbackground(7);
  sh[3]:='ÿ¤úª¢îÿ';
  sh[5]:='ÿ¤úªÿô‘÷ÿ';
  print(42,3,14,4,1,8,''+SH[3],FALSE);
  PRINT(42,5,14,2,1,8,' '+SH[5],FALSE);
  x:=3;
 repeat
  a:=readkey;
  if a=#13 then
    begin
      if x = 5 then
        begin
          TEXTCOLOR(15);
          TEXTBACKGROUND(4);
          gotoxy(20,8) ;write('ÚÄÄÄÄÄÄÄÄ¤úªÿô‘÷ÿÄÄÄÄÄ¿');
          gotoxy(20,9) ;write('³ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿ³');
          gotoxy(20,10);write('ÀÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÙ');
      nam:='';
      repeat
        gotoxy(39-length(nam),9);
        a:=readkey;
        if a=#27 then
          begin
            a:=#1;
            clear;
            close(data);
            exit;
          end;
        if a=#8 then
          delete(nam,1,1);
        if (a<>#8)and(a<>#13)and(length(nam)<20) then
          begin
            farsi(a);
            nam:=a+nam;
          end;
        gotoxy(41-length(nam),9);textcolor (7);
        write('ÿ',nam);
     until a=#13;
         nam := delblank ( nam );
         Xnum:=0;
         seek ( data, 0 );
         repeat
           read(data,trec);
          with trec do
           begin
             if nam=namecity then
               begin
                 TEXTCOLOR(14);TEXTBACKGROUND(5);
                 GOTOXY(1,4);WRITE('ÚÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄ¿');
                 GOTOXY(1,5);WRITE('³ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿ: ¤úªÿô‘÷ÿ³');
                 GOTOXY(1,6);WRITE('³ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿ      :  ¤úª¢î ³');
                 GOTOXY(1,7);WRITE('ÀÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÙ');
                 textcolor(10);
                 gotoxy(44-length(namecity),5);write(namecity);
                 gotoxy(40-length(citycod),6);write(citycod);
                 Xnum:=Xnum+1;
                 gotoxy(45,4);write('ÿ',Xnum,'ÿ');
                 a:=readkey;
                 break;
               end;
           end;
          until eof(data);
          textbackground(4);
          TEXTCOLOR(14);
          gotoxy(20,7);write('ÚÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄ¿');
          gotoxy(20,8);write('³ÿ¢ª÷¢ş•ÿ–‘äò¯ÿ³');
          gotoxy(20,9);write('ÀÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÙ');
          a:=readkey;
          close(data);
          clear;
          exit;
        end;
      if x = 3 then
        begin
          TEXTCOLOR(15);
          TEXTBACKGROUND(4);
          gotoxy(20,8); write('ÚÄÄÄÄÄÄÄÿ¤úª¢îÄÄÄÄÄÄÄ¿');
          gotoxy(20,9) ;write('³ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿ³');
          gotoxy(20,10);write('ÀÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÙ');
    tell:='';
    textcolor(10);
    repeat
       gotoxy(22+length(tell),9);
       a:=readkey;
        if a=#27 then
          begin
            a:=#1;
            clear;
            close(data);
            exit;
          end;
       if a=#8 then
         delete(tell,length(tell),1);
       if (a<>#8)and(a<>#13) then
         begin
           farsi(a);
           tell:=tell+a;
         end;
       gotoxy(22,9);
       write(tell,'ÿ');
    until a=#13;
         tell := delblank ( tell );
         Xnum:=0;
         repeat
           read(data,trec);
           with trec do
           begin
             if tell=citycod then
               begin
                 TEXTCOLOR(0);TEXTBACKGROUND(3);
                 GOTOXY(1,4);WRITE('ÚÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄ¿');
                 GOTOXY(1,5);WRITE('³ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿ  ÿÿÿÿ:¤úªô‘÷ ³');
                 GOTOXY(1,6);WRITE('³ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿ       : ¤úª¢îÿ³');
               GOTOXY(1,7);WRITE ( 'ÀÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÙ');
                 textcolor(14);
                 gotoxy(44-length(namecity),5);write(namecity);
                 gotoxy(40-length(citycod),6);write(citycod);
                 Xnum:=Xnum+1;
                 gotoxy(45,4);write('ÿ',Xnum,'ÿ');

                 a:=readkey;
                 break;
               end;
           end;
          until eof(data);
          TEXTCOLOR(14);
          textbackground(4);
          gotoxy(20,7 );write('ÚÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄ¿');
          gotoxy(20,8 );write('³ÿ¢ª÷¢ş•ÿ–‘äò¯ÿ³');
          gotoxy(20,9 );write('ÀÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÙ');
          a:=readkey;
          close(data);
          clear;
        end;
        exit;
      end;
  if a=#0 then
    begin
      a:=readkey;
      textcolor(15);textbackground(7);
      print(42,x,14,2,1,8,'ÿ'+sh[x],false);
      if a=#72 then
        begin
          x:=x-2;
          if x<3 then x:=5;
        end;
      if a=#80 then
        begin
          x:=x+2;
          if x>5 then x:=3;
        end;
      textcolor(14);textbackground(2);
      PRINT(42,x,14,4,1,8,''+sh[x],FALSE);
    end;
  until (a=#75) or (a=#77) or (a=#27);
  a:=#1;
  close(data);
  clear;
end;
{++++++---------------------------------------¤øªî¢î---------------------++++++++++}
procedure hhh;
begin
  textcolor(0);textbackground(3);
  PRINT(1,4,12,3,1,0,'ÿÿÿÿÿÿÿÿÿ                ¢ş÷î¢¤ø¤¤øªî ¢î‘ê¯óÿÄ¿',TRUE);
  print(1,5,1,3,0,0,'³ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿ:¤øªîÿô‘÷ÿ³',false);
  print(1,6,1,3,0,0,'³ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿ       ÿÿÿÿ :ÿ¤øªî¢îÿ³',false);
  print(1,7,1,3,0,0,'ÀÄÿEscÿ=ÿ¤à÷ÿé¤¬ÿÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÙ',false);
  with trec do
    begin
    namecountry:='  ';
     textbackground(3);
     textcolor(14);
     repeat
       gotoxy(40-length(namecountry)-1,5);
       a:=readkey;
       if a=#27 then
         begin
           a:=#1;
           clear;
           exit;
         end;
       if a=#8 then
         delete(namecountry,1,1);
       if (a<>#8)and(a<>#13)and(length(namecountry)<20) then
         begin
           farsi(a);
           namecountry:=a+namecountry;
         end;
       gotoxy(39-length(namecountry),5);
       write('ÿ',namecountry);
     until a=#13;
    countrycod:='';
    repeat
       gotoxy(22+length(countrycod),6);
       a:=readkey;
       if a=#27 then
         begin
           a:=#1;
           clear;
           exit;
         end;
       if a=#8 then
         delete(countrycod,length(countrycod),1);
       if (a<>#8)and(a<>#13) then
         begin
           farsi(a);
           countrycod:=countrycod+a;
         end;
       gotoxy(22,6);
       write(countrycod,'ÿ');
    until a=#13;
    countrycod := delblank ( countrycod );
    namecountry := delblank ( namecountry );
    end;
    assign(data,'te18.dat');
  reset(data);
  if ioresult<>0 then rewrite(data);
  seek(data,filesize(data)+1);
  write(data,trec);
  close(data);
  clear;
end;
{++++++-------------------------------------¤øªî¢î ø›—¨›---------------------------++++}
procedure yyy;

var nam:string[20];
   TELL :string[15];
   sh:array [1..10] of string[20];
    cl,x:byte;
begin
  assign(data,'te18.dat');
  reset(data);
  if ioresult<>0 then
    begin
      textcolor(7);textbackground(4);
      gotoxy(20,5);write('ÚÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÿñ‘îªÿíşÿÄ¿');
      gotoxy(20,6);write('³ÿ.¢ª÷¢ş•ÿte18.DATÿñş‘ê   ÿ³');
      gotoxy(20,7);write('ÀÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÙ');
      a:=readkey;
      a:=#1;
      clear;
      exit;
    end;
  textcolor(15);
  textbackground(7);
  sh[3]:='ÿ¤øªî¢îÿ';
  sh[5]:='ÿ¤øªîÿô‘÷ÿ';
  print(42,3,14,4,1,8,''+SH[3],FALSE);
  PRINT(42,5,14,2,1,8,' '+SH[5],FALSE);
  x:=3;
 repeat
  a:=readkey;
  if a=#13 then
    begin
      if x = 5 then
        begin
          TEXTCOLOR(15);
          TEXTBACKGROUND(4);
          gotoxy(20,8) ;write('ÚÄÄÄÄÄÄÄ¤øªîÿô‘÷ÿÄÄÄÄÄ¿');
          gotoxy(20,9) ;write('³ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿ³');
          gotoxy(20,10);write('ÀÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÙ');
      nam:='';
      repeat
        gotoxy(39-length(nam),9);
        a:=readkey;
        if a=#27 then
          begin
            a:=#1;
            clear;
            close(data);
            exit;
          end;
        if a=#8 then
          delete(nam,1,1);
        if (a<>#8)and(a<>#13)and(length(nam)<20) then
          begin
            farsi(a);
            nam:=a+nam;
          end;
        gotoxy(41-length(nam),9);textcolor (7);
        write('ÿ',nam);
     until a=#13;
         nam := delblank ( nam );
         Xnum:=0;
         repeat
           read(data,trec);
           with trec do
           begin
             if nam=namecountry then
               begin
                 TEXTCOLOR(14);TEXTBACKGROUND(5);
                 GOTOXY(1,4);WRITE('ÚÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄ¿');
                 GOTOXY(1,5);WRITE('³ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿ:¤øªîÿô‘÷ÿ³');
                 GOTOXY(1,6);WRITE('³ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿ          : ¤øªí ¢î ³');
                 GOTOXY(1,7);WRITE('ÀÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÙ');
                 textcolor(10);
                 gotoxy(44-length(namecountry),5);write(namecountry);
                 gotoxy(40-length(countrycod),6);write(countrycod);
                 Xnum:=Xnum+1;
                 gotoxy(45,4);write('ÿ',Xnum,'ÿ');
                 a:=readkey;
                 break;
               end;
           end;
          until eof(data);
          textbackground(4);
          TEXTCOLOR(14);
          gotoxy(20,7);write('ÚÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄ¿');
          gotoxy(20,8);write('³ÿ¢ª÷¢ş•ÿ–‘äò¯ÿ³');
          gotoxy(20,9);write('ÀÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÙ');
          a:=readkey;
          close(data);
          clear;
          exit;
        end;
      if x = 3 then
        begin
          TEXTCOLOR(15);
          TEXTBACKGROUND(4);
          gotoxy(20,8); write('ÚÄÄÄÄÄÄÿ¤øªî¢îÄÄÄÄÄÄÄ¿');
          gotoxy(20,9) ;write('³ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿ³');
          gotoxy(20,10);write('ÀÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÙ');
    tell:='';
    textcolor(10);
    repeat
       gotoxy(22+length(tell),9);
       a:=readkey;
        if a=#27 then
          begin
            a:=#1;
            clear;
            close(data);
            exit;
          end;
       if a=#8 then
         delete(tell,length(tell),1);
       if (a<>#8)and(a<>#13) then
         begin
           farsi(a);
           tell:=tell+a;
         end;
       gotoxy(22,9);
       write(tell,'ÿ');
    until a=#13;
         tell := delblank ( tell );
         Xnum:=0;
         repeat
           read(data,trec);
           with trec do
           begin
             if tell=countrycod then
               begin
                 TEXTCOLOR(0);TEXTBACKGROUND(3);
                 GOTOXY(1,4);WRITE('ÚÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄ¿');
                 GOTOXY(1,5);WRITE('³ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿ  ÿÿÿÿ:¤øªîô‘÷ ³');
                 GOTOXY(1,6);WRITE('³ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿ        : ¤øªî¢îÿ³');
                 GOTOXY(1,7);WRITE('ÀÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÙ');
                 textcolor(14);
                 gotoxy(44-length(namecountry),5);write(namecountry);
                 gotoxy(40-length(countrycod),6);write(countrycod);
                 Xnum:=Xnum+1;
                 gotoxy(45,4);write('ÿ',Xnum,'ÿ');
                 a:=readkey;
                 break;
               end;
           end;
          until eof(data);
          TEXTCOLOR(14);
          textbackground(4);
          gotoxy(20,7 );write('ÚÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄ¿');
          gotoxy(20,8 );write('³ÿ¢ª÷¢ş•ÿ–‘äò¯ÿ³');
          gotoxy(20,9 );write('ÀÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÙ');
          a:=readkey;
          close(data);
          clear;
        end;
        exit;
      end;
  if a=#0 then
    begin
      a:=readkey;
      textcolor(15);textbackground(7);
      print(42,x,14,2,1,8,'ÿ'+sh[x],false);
      if a=#72 then
        begin
          x:=x-2;
          if x<3 then x:=5;
        end;
      if a=#80 then
        begin
          x:=x+2;
          if x>5 then x:=3;
        end;
      textcolor(14);textbackground(2);
      PRINT(42,x,14,4,1,8,''+sh[x],FALSE);
    end;
  until (a=#75) or (a=#77) or (a=#27);
  a:=#1;
  close(data);
  clear;
end;
{++++++---------------------------------ø÷õ---------------------------++++++++++}
procedure menu;
var mnu:array[1..18]of string[20];
    row,xx:byte;
begin
  mnu[4]:=     'ÿ ‘õ÷û¤ÿ';
  mnu[6]:='ù¤‘õªö¢¤îùê‘®';
  mnu[8]:=  'ÿ   ¤úª ¢îÿ';
  mnu[10]:=  'ÿ  ¤øªî ¢îÿ';
  mnu[12]:= 'ÿ öêó—ø›—¨›ÿ';
  mnu[14]:= 'ÿ  ¤úªø›—¨›ÿ';
  mnu[16]:= '  ¤øªîø›—¨›ÿ';
  mnu[18]:=     '   šø¤¡ ';
  textbackground(1);
  print(65,2,12,3,1,0,' öêó— –‘äò¯ ',true);
  for row:=4 to 19 do
    begin
      print(65,row,4,2,1,8,'ÿ'+mnu[row]+'ÿ',false);
      row:=row+1;
    end;
  CHANGECHAR(0,127,127,96,97,97,97,111,111,97,97,97,96,127,127,0,221);
  CHANGECHAR(0,252,252,12,12,12,12,236,236,12,12,12,12,252,252,0,222);
  textcolor(4);textbackground(1);
  row:=4;
  repeat
    gotoxy(80,25);
    REPEAT
     (* R.AX:=3;
      INTR($33,R);
      IF R.BX>0 THEN
          BEGIN
            IF (R.CX>519)AND(R.CX<625) THEN
               BEGIN
                 IF (R.DX>23)AND(R.DX<33)THEN
                     HELP;
                 IF (R.DX>39)AND(R.DX<49)THEN
                     ADD;
                 IF(R.DX>55)AND(R.DX<65)THEN
                     SEARCH;
                 IF(R.DX>71)AND(R.DX<81)THEN
                     BEGIN
                         TEXTCOLOR(7);
                         TEXTBACKGROUND(0);
                         CLRSCR;
                         HALT;
                     END;
               END;
         END;
      R.AX:=01;
      INTR($33,R);*)
    UNTIL KEYPRESSED;
    a:=readkey;
    if a=#13 then
      begin
        gotoxy(67,row+1);
        write('             ');
        gotoxy(66,row);write(' ');
        textcolor(14);textbackground(2);
        gotoxy(67,row);
        write(' ',mnu[row],' ');
        if row=4 then help;
        if row=6 then add;
        if row=8 then ool ;
        if row=10 then hhh;
        if row=12 then search;
        if row=14 then rrr;
        if row=16 then yyy;
        if row=18 then
          begin
           textcolor(7);
           textbackground(0);
           clrscr;
           halt;
          end;
      end;
    if a=#0 then
      begin
        gotoxy(80,25);
        a:=readkey;
      end;
    textcolor(2);textbackground(1);
    print(66,row,4,2,1,8,'ÿ'+mnu[row]+'ÿ',false);
        case a of
            #59:help;
            #60:add;
            #61:search;
            #72:{ ssa;}
               begin
                if row<6 then row:=18
                Else
                row:=row-2;
              end;
            #80:
              begin
                row:=row+2;
                if row>18 then row:=4;
              end;
        END;
    textcolor(14);textbackground(1);
    print(66,row,14,4,1,7,''+mnu[row]+'',false);
  until a=#27;
clrscr;
end;
{€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€}
{                                  ùõ‘÷¤“ üó¬ –õ¨ì                        }
{............................................................................}
begin
  textbackground(1);
 {---------.–¨ ù¢ª ù¢‘ê—¨ ‘ú÷ ¥ öêó— ¤¢ ùî ù¦şø ü‘û¤—î¤‘î ôşà÷— -----}
  changechar(0,0,0,16,24,28,254,255,254,28,24,16,0,0,0,0,16);
  changechar(0,0,0,8,24,56,127,255,127,56,24,8,0,0,0,0,17);
  changechar(0,60,126,127,255,255,255,127,127,63,31,15,7,3,1,0,220);
  changechar(0,120,252,252,254,254,254,252,252,248,240,224,192,128,0,0,221);
  changechar(0,0,60,62,127,127,127,63,63,31,15,7,3,1,0,0,222);
  changechar(0,0,120,248,252,252,252,248,248,240,224,192,128,0,0,0,223);
  changechar(0,60,66,129,153,165,161,161,165,153,129,66,60,0,0,0,178);
  changechar(255,255,255,255,255,255,255,255,0,0,0,0,0,0,0,0,223);
  changechar(0,0,0,0,0,0,0,0,255,255,255,255,255,255,255,255,220);
  clrscr;
  textcolor(4);
  setpalettes;          {‘úğ÷¤ –ó‘• éş¤ã— }
  menu;
end.