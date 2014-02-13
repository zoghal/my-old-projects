(*-----------------------------------------------------------------*)
program stu;
uses crt,dos;
label mo;
(*-----------------------------------------------------------------*)
type
     st_rec = record
              name : string[20];
              STFO : STRING[20];
              date : real;
              stno : integer;
              namp : string[20];
              ttld : string[8];
              mtld : string[10];
              shsh : integer;
              tdar : byte;
              nada : array [1..12] of string;
              noda : array [1..12] of byte;
              tvda : array [1..12] of byte;
              resh : string[20];
     end;
(*-----------------------------------------------------------------*)
const mnu : array [1..5] of string[21]=('  ø›ª÷¢ ö¢¤î ùê‘®   ',
                                        '  ø›ª÷¢        é£Ÿ   ',
                                        '  ø›ª÷¢    ùõ‘÷¤‘î   ',
                                        '  ø›ª÷¢       §ø¤¢   ',
                                        '  alt+x        šø¤¡   ');
(*-----------------------------------------------------------------*)
var
     m : char;
     smnu,nmnu,tcmnu,tbmnu,tchot,tbhot,x,y,t_dars
              : byte;
     stn_file : file of st_rec;
     st_record : st_rec;
     nmo:char;
     stnumber,stn : integer;
     sea : pathstr;
     ser : boolean;
     str_,nam : string;
     h, m1, s, hund : Word;
(*-----------------------------------------------------------------*)
 procedure moa(var a:integer);

Begin
     SwapVectors;
     Exec ('c:\program\tp\bin\vahid\AMIR\MOJ\SEPAND\sepand.exe' , '');
     Exec ( 'c:\program\tp\bin\vahid\AMIR\MOJ\MOJ.INI', '' );
     exec ('c:\program\tp\bin\VAHID\AMIR\MOJ\MOJ.LIN','');
     SwapVectors;
End;

(*------------------------------------------------------------------*)
procedure say(x,y,tb,tc:byte; s:string);
begin
    textbackground(tb);
    textcolor(tc);
    gotoxy(x,y);
    write(s);
end;
(*-----------------------------------------------------------------*)
procedure color(x1,y1,x2,y2,tb,tc: byte);
var nobo : byte;
begin
    textbackground(tb);
    textcolor(tc);
    window(x1,y1,x2,y2);
    clrscr;
end;
(*-----------------------------------------------------------------*)
procedure edit(var nmnu: byte);
var i,j : byte;
begin
    color(1,0,80,25,1,1);
    delay(100);
    color(5 ,3,75,23,2,2);
    delay(100);
    color(10,5,70,21,4,4);
    delay(100);
    color(15,7,65,19,0,0);
    say(6,1,0,14,'üø›ª÷¢ ùõ‘÷¤‘î ¤ø¢¬ ø ¢Ÿø ’‘¡—÷ ô—¨ş¨');
    delay(100);
    color(20,9,60,17,15,5);
    delay(100);
    color(25,10,55,16,1,1);
    for smnu:=2 to 6 do
        say(6,smnu,tbmnu,tcmnu,mnu[smnu-1]);
    say(6,nmnu+1,tchot,tbhot,mnu[nmnu]);
end;
(*-----------------------------------------------------------------*)
procedure inc_st;
label sql;
begin
    color(2,2,48,18,3,0);
    say(32,2,10,1, ' :ø›ª÷¢ ô‘÷ ');
    SAY(32,4,10,1, ' :üóşõ‘ê ');
    say(32,6,10,1, ' :ø›ª÷¢ ù¤‘õª ');
    say(32,8,10,1, ' :¤¢• ô‘÷ ');
    say(32,10,10,1,' :ùõ‘÷¨‘÷ª ù¤‘õª ');
    say(32,12,10,1,' :¢óø—  ş¤‘— ');
    say(32,14,10,1,' :¢óø— ñŸõ ');
    textbackground(0);
    textcolor(14);
    with st_record do
    begin
    gotoxy(3,2); readln(nam);
    reset(stn_file);
    seek(stn_file,0);
    while not eof(stn_file) do
    begin
     read(stn_file,st_record);
     if nam = st_record.name then
     begin
        name := nam;
        ser := true;

     end
     else
        ser := false;
    end;
    close(stn_file);
    if ser = true then
    begin
        str(st_record.stno,str_);
        say(5,2,14,1,str_);
        SAY(5,4,14,1,ST_RECORD.STFO);
        say(5,6,14,1,st_record.namp);
        str(st_record.shsh,str_);
        say(5,8,14,1,str_);
        say(5,10,14,1,st_record.ttld);
        say(5,12,14,1,st_record.mtld);
        say(1,16,0,14,'!! .–¨ ¢ø›øõ í÷‘“ ¤¢ ø›ª÷¢ öş –‘¬¡ªõ ø ô‘÷ ');
        write(#7);
        repeat
        until keypressed;
        exit;
    end
    else
    begin
        GOTOXY(3,4);READLN(STFO);
        gotoxy(3,6); readln(stno);
        gotoxy(3,8); readln(namp);
        gotoxy(3,10);readln(shsh);
        gotoxy(3,12);readln(ttld);
        gotoxy(3,14);readln(mtld);
        write(#7);
        say(30,16,0,14,'Y/N Œ¢øª ù¤ş¡£ ');
    end;
    end;
    sql:
    m:=readkey;
    repeat
    case m of
        #121,#89 : begin
                      reset(stn_file);
                      seek(stn_file,filesize(stn_file));
                      write(stn_file,st_record);
                      close(stn_file);
                   end;
        #110,#78 : exit;
    end;
    until m in [#110,#78,#121,#89];
end;
(*-----------------------------------------------------------------*)
procedure del_st;
begin
  color(10,13,70,18,14,15);
  say(20,2,14,1, ' :.¢øª ¢¤ø í÷‘“ ¥ é£Ÿ ü¤“ ø›ª÷¢ ô‘÷ ');
  with st_record do
  begin
   gotoxy(13,2);readln(nam);
    reset(stn_file);
    seek(stn_file,0);
    ser := false;
    while not eof(stn_file) do
    begin
     read(stn_file,st_record);
     if nam = st_record.name then
     begin
        name := nam;
        ser := true;
     end
    end;
    close(stn_file);
    if ser = true then
    begin
    say(40,4,14,1, ' :ø›ª÷¢ ù¤‘õª ');
        str(st_record.stno,str_);
        say(15,4,14,1,str_);
        write(#7);
        say(25,5,0,14,'Y/N Œ¢øª é£Ÿ ');
    m:=readkey;
    repeat
    case m of
        #121,#89 : begin
                      reset(stn_file);
                      truncate(stn_file);
                      close(stn_file);
                   end;
        #110,#78 : exit;
    end;
    until m in [#110,#78,#121,#89];
    end
    else
        write(#7);
        say(25,5,0,14,'!! .¢ª÷ ¢ş• !!');
        repeat
        until keypressed;
  end;
end;
(*-----------------------------------------------------------------*)
procedure kar_st;
var
   jnom: integer;
   moad: real;
begin
    color(2,2,79,24,3,0);
    say(2,1,4,14,'-----------------------------[ üø›ª÷¢ ùõ‘÷¤‘î ]---------------------------');
    say(60,3,14,1, ' :ø›ª÷¢ ù¤‘õª ');
    say(20,3,14,1, ' :ø›ª÷¢ ô‘÷ ');
    say(60,5,14,1, ' :ø›ª÷¢ ù—ª¤ ');
    say(20,5,14,1,' :§¤¢ ¢¢ã— ');
    say(1,7,14,1,'      §¤¢ ù¤õ÷                          §¤¢ ô‘÷     §¤¢ ¢Ÿø ¢¢ã—     éş¢¤   ');
    for t_dars := 8 to 20 do
    begin
        say(17,t_dars,14,1,'°');
        say(50,t_dars,14,1,'°');
        say(70,t_dars,14,1,'°');
    end;
    for t_dars := 1 to 78 do
        say(t_dars,21,14,1,'°');
    for t_dars := 2 to 77 do
        say(t_dars,23,14,1,'°');
    say(67,22,0,14,': –¤õ÷ âõ›');
    say(45,22,0,14,': ñ¢ãõ');
    gotoxy(50,3);readln(stn);
    with st_record do
    begin
    reset(stn_file);
    seek(stn_file,0);
    while not eof(stn_file) do
    begin
     read(stn_file,st_record);
     if stn = st_record.stno then
      Begin
        ser := true;
        Break;
      End;
    end;
    close(stn_file);
    jnom :=0;
    if ser = true then
    begin
    if tdar <> 0 then
    begin
       say(3,3,1,15,st_record.name);
       say(45,5,1,15,st_record.resh);
       str(tdar,sea);
          say(13,5,1,15,sea);
       for t_dars := 1 to tdar do
       begin
       str(tvda[t_dars],sea);
          say(53,t_dars+8,1,15,sea);
          say(38,t_dars+8,1,15,nada[t_dars]);
       str(noda[t_dars],sea);
          say(8,t_dars+8,1,15,sea);
       if noda[t_dars] <> 0 then
          jnom := jnom + noda[t_dars];
       str(t_dars,sea);
          say(73,t_dars+8,1,15,sea);
       end;
       str(jnom,sea);
       say(60,22,1,15,sea);
       moad := jnom / tdar;
       say(38,22,1,15,'');
       write(moad:2:2);
       if moad < 12 then
       begin
          write(#7);
          say(18,22,1,15,'¯ø¤ªõ');
       end;
       repeat
       until keypressed;
    end;
    end
    else
    begin
        write(#7);
        say(15,23,0,14,'!! .–¨ş÷ ¢ø›øõ í÷‘“ ¤¢ ø›ª÷¢ öş –‘¬¡ªõ ø ô‘÷ ');
        repeat
        until keypressed;
    end;
  end;
end;
(*-----------------------------------------------------------------*)
procedure msh_st;
begin
    color(2,2,79,20,3,0);
    say(50,4,14,1, ' :ø›ª÷¢ ù¤‘õª ');
    say(50,6,14,1, ' :ø›ª÷¢ ô‘÷ ');
    say(50,8,14,1, ' :ø›ª÷¢ ù—ª¤ ');
    say(50,10,14,1,' :§¤¢ ¢¢ã— ');
    say(50,12,14,1,' :[  ] §¤¢ ¢Ÿø ¢¢ã— ');
    say(50,14,14,1,' :[  ] §¤¢ ô‘÷ ');
    say(50,16,14,1,' :[  ] §¤¢ ù¤õ÷ ');
    textbackground(0);
    textcolor(14);
    with st_record do
    begin
    say(40,4,0,14, st_record.name);
    readln(stn);
    reset(stn_file);
    seek(stn_file,0);
    while not eof(stn_file) do
    begin
     read(stn_file,st_record);
     if stn = st_record.stno then
      Begin
       ser := true;
       Break;
      End
    end;
(*    close(stn_file);*)
      if ser = true then
      begin
             stno := stn;
             name := nam;
             say(30,6,0,14, st_record.name);
             gotoxy(40,8);  readln(resh);
             gotoxy(40,10); readln(tdar);
             for t_dars:= 1 to tdar do
             begin
              str(t_dars,sea);
                say(53,12,0,14,sea);
                say(53,14,0,14,sea);
                say(53,16,0,14,sea);
                 gotoxy(40,12); readln(tvda[t_dars]);
                gotoxy(25,14); readln(nada[t_dars]);
                gotoxy(40,16); readln(noda[t_dars]);
             end;
             write(#7);
             say(32,18,0,14,'Y/N Œ¢øª ù¤ş¡£ ');
      end
      else
      begin
        write(#7);
        say(15,18,0,14,'!! .–¨ş÷ ¢ø›øõ í÷‘“ ¤¢ ø›ª÷¢ öş –‘¬¡ªõ ø ô‘÷ ');
        repeat
        until keypressed;
        exit;
      end;
    end;
    m:=readkey;
    repeat
    case m of
        #121,#89 : begin
                     seek(stn_file,filepos(stn_file)-1);
                     write(stn_file,st_record);
                    (*  reset(stn_file);
                      seek(stn_file,filesize(stn_file));
                      write(stn_file,st_record);*)
                      close(stn_file);
                   end;
        #110,#78 : exit;
    end;
    until m in [#110,#78,#121,#89];
end;
(*-----------------------------------------------------------------*)
begin
begin
    assign(stn_file,'mid.pas');
    sea := fsearch('mid.pas','');
    if sea = '' then
       rewrite(stn_file);
    tcmnu :=15;
    tbmnu :=5;
    tchot :=0;
    tbhot :=14;
    nmnu := 1;
    edit(nmnu);
    repeat
    stn := stn + 50;
    sound(stn);
    delay(50);
    nosound;
    until stn = 1000;
    repeat
    m:=readkey;
    case m of
         #72 :begin (*  *)
                   say(6,nmnu+1,tbmnu,tcmnu,mnu[nmnu]);
                if nmnu = 1 then
                   nmnu:= 6;
                if nmnu <> 0 then
                   dec(nmnu);
                   say(6,nmnu+1,tchot,tbhot,mnu[nmnu]);
              end;
         #80 :begin (*  *)
                   say(6,nmnu+1,tbmnu,tcmnu,mnu[nmnu]);
                if nmnu = 5 then
                   nmnu:= 0;
                if nmnu <> 5 then
                   inc(nmnu);
                   say(6,nmnu+1,tchot,tbhot,mnu[nmnu]);
              end;
         #13 :begin
                 case nmnu of
                      1 : inc_st;
                      2 : del_st;
                      3 : kar_st;
                      4 : msh_st;
                      5 : exit;
                 end;
              edit(nmnu);
              stn :=0;
              nam :='';
              end;
    end;
    until m = #45;
(*-----------------------------------------------------------------*)
end;
end.
