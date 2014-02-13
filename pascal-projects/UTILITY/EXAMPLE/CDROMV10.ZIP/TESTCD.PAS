program Test_XTREME_CDROM_Unit;

uses
 Crt,
 CDRom;

var
 Ch    : Char;
 B     : Byte;
 W1,
 W2    : Word;
 Track : Byte;

procedure Background;

var
 First,
 Last   : Byte;
 Time   : Word;

begin
 clrscr;
 repeat
  first := cd_first_track;
 until (cd_error and 32768) = 0;
 repeat
  last := cd_last_track;
 until (cd_error and 32768) = 0;
 for b := first to last do
  begin
   time := cd_track_time(b);
   writeln('Song ',b,'  Length ',time div 60,':',time mod 60);
  end;
 gotoxy(35,9);
 writeln(' ''O''  = Open Tray');
 gotoxy(35,10);
 writeln(' ''C''  = Close Tray');
 gotoxy(35,11);
 writeln(' ''P''  = Play');
 gotoxy(35,12);
 writeln(' ''S''  = Stop');
 gotoxy(35,13);
 writeln(' ''R''  = Resume');
end;

begin
 Background;
 repeat
  if keypressed then
   begin
    ch := upcase(readkey);
    if ch = 'O' then
     begin
      cd_open_tray;
     end;
    if ch = 'C' then
     begin
      cd_close_tray;
      Background;
     end;
    if ch = 'P' then
     begin
      gotoxy(55,11);
      write('Enter Track : ');
      readln(Track);
      if (Track >= cd_first_track) and (Track <= cd_last_track) then
       begin
        cd_play(track, cd_track_length(track));
       end;
      gotoxy(55,11);
      write('                    ');
     end;
    if ch = 'S' then
     begin
      if cd_playing then
       begin
        cd_stop;
        gotoxy(30,15);
        write('                                                  ');
       end;
     end;
    if ch = 'R' then
     begin
      if not cd_playing then cd_resume;
     end;
   end;
  if cd_playing then
   begin
    gotoxy(30,15);
    write('Track : ',cd_current_track,
          ' Track Time : ',cd_current_track_time div 60,':',cd_current_track_time mod 60,
          ' Disk Time : ',cd_current_disk_time div 60,':',cd_current_disk_time mod 60,'     ');
   end;
 until ch = #27;
end.