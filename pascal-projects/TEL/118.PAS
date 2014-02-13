Program tel118;
Uses crt,m1;
Type
         ArrayOfMonitor = array [1..4000] of byte;
         RecF = record
           Name : string;
           Family : string;
           Address : string;
           Tel     : string;
           work    : STring;
         End;
Var
 MainFile : File of RecF;
 Rec      : Recf;
 Menubar : Array [0..6] of string;
 Monitor : ArrayOfMonitor  absolute $B800:0;
 save    : ArrayOfMonitor;
 Temp    : String;
 ExitMenu : Boolean;
 RecPosition : longint;
{---------- insert record --------------}
Procedure add(pos:longint);
Begin
 Save := Monitor;
 wincadr(18,58,8,18,1,15);
 Fwrite(54,9,1,15,'ô‘÷');
 Fwrite(45,11,1,15,'üğ¢ø÷‘¡ ô‘÷');
 Fwrite(53,13,1,15,'öêó—');
 Fwrite(53,15,1,15,'§¤¢');
 Fwrite(54,17,1,15,'ñçª');
 with REc do
  begin
    inputstr(22,9,15,9,20,name);
    inputstr(22,11,15,9,20,family);
    inputstr(22,13,15,9,20,tel);
    inputstr(22,15,15,9,20,address);
    inputstr(22,17,15,9,20,work);
    wincadr(25,55,20,23,4,15);
    fwrite (40,21,4,15,' Œ¢¢¤ğ –“™ ‘ş ');
    menubar[1]:=' ùó“ ';
    menubar[2]:=' ¤ş¡ ';
    fwrite (27,21,15,0,menubar[1]);
    fwrite (27,22,4,0,menubar[2]);
    Exitmenu := False;
    repeat
       Popup(25,33,20,23,4,4,0,15,0,2,menubar);
       if key=28 then
        begin
          if menu=1 then
               begin
                 assign(mainfile,'tel.dat');
                 reset(MainFile);
                 if pos = -1 then seek (MainFile,filesize(MainFile))
                  else seek(MainFile,pos);
                 write(MainFile,rec);
                 close(MainFile);
                 ExitMenu := True
               end;
          If Menu = 2 Then ExitMenu := True
        end;
    until ExitMenu = True;
  end;
  monitor :=save;
  Menu :=1;
End;
{---------- insert record --------------}

{---------- list record --------------}
Procedure list;
var temp,i:word;
    T_name,T_fameley:string[20];
begin
   save :=monitor;
   wincadr (14,67,1,25,1,15);
   assign(MainFile,'tel.dat');
   reset(MainFile);
   temp:=filesize(MainFile);
   if temp =0 then
     begin
       wincadr(59,78,2,4,5,15);
       Fwrite(60,3,5,15,' !! –¨ üó‘¡ í÷‘“ ');
       readkey;
     end
   else
       for i:=0 to temp-1 do
        begin
          seek (MainFile,i);
          read(MainFile,rec);
          with rec Do
            begin
              if (name<>'delete_record') and (family<>'delete_record') and (tel<>'0000') then
              begin
                fwrite (55,2,1,15,'ô‘‹‹‹‹‹‹÷ ');
                fwrite (36,2,1,15,'ü‹ó‹şõ‘‹ê ');
                fwrite (17,2,1,15,'ö‹‹ê‹‹ó‹— ');
                fwrite (16,3,1,15,'-------------------------------------------------- ');
                fwrite (56,4+i,1,15,name);
                fwrite (36,4+i,1,15,family);
                fwrite (17,4+i,1,15,tel);
              end;
            end;
        end;
     readkey;
close(MainFile);
monitor :=save;
end;

{---------- list record --------------}

{---------- Show  record --------------}
Procedure ShowRecord(Str:char);
Var
   save1 : ArrayOfMonitor;
   TempStr : String;
   Found : boolean;
Begin
  Save1 :=  monitor;
  wincadr(20,54,20,22,4,15);
  Case str of
   'n' : Fwrite(42,21,4,15,'         ô‘÷');
   'f' : Fwrite(42,21,4,15,'üğ¢ø÷‘¡ ô‘÷');
   't' : Fwrite(42,21,4,15,'        öêó—');
   'a' : Fwrite(42,21,4,15,'        §¤¢');
  End;
  inputstr(21,21,15,0,20,tempstr);
  Found := FAlse;
  Assign(mainfile,'tel.dat');
  Reset(MainFile);
  While not eof(mainFile)do
  Begin
   read(mainFile,rec);
   Case str of
    'n' : if rec.name = tempstr then
            Begin
             Found := TRue;
             Break;
            End;
    'f' : if rec.family = tempstr then
            Begin
             Found := TRue;
             Break;
            End;
    't' : if rec.tel = tempstr then
            Begin
             Found := TRue;
             Break;
            End;
    'a' : if rec.address = tempstr then
            Begin
             Found := TRue;
             Break;
            End;
   end;
  End;
  recPosition := filepos(mainFile);
  Close(mainFile);
 If Found = False then
   Begin
     wincadr(59,78,2,4,5,15);
     Fwrite(60,3,5,15,'!! ¢ª÷ ¢ş• ü¢¤øî¤');
     readkey;
   End
 Else
   BEgin
     wincadr(20,59,1,7,1,15);
     Fwrite(44,2,1,15, ':          ô‘÷');
     Fwrite(44,3,1,15,': üğ¢ø÷‘¡ ô‘÷');
     Fwrite(44,4,1,15,':         öêó—');
     Fwrite(44,5,1,15,':         §¤¢');
     Fwrite(44,6,1,15,':         ñçª');
     Fwrite(22,2,1,15, rec.name);
     Fwrite(22,3,1,15, Rec.Family);
     Fwrite(22,4,1,15, Rec.tel);
     Fwrite(22,4,1,15, Rec.Address);
     Fwrite(22,6,15,1,Rec.work);
   End;
 Readkey;
 monitor := save1;
End;

{---------- Serach menu  --------------}
Procedure Search;
Begin
 save := monitor;
 Startear_Popup := 0;
 Repeat
  menubar[1]:='          ô‘÷ ';
  menubar[2]:=' üğ¢ø÷‘¡ ô‘÷ ';
  menubar[3]:='         öêó— ';
  menubar[4]:='         §¤¢ ';
  Popup(40,57,7,12,15,7,0,1,15,4,Menubar);
  If key = 28 then
    Begin
      if menu = 1 then Showrecord('n') ;
      if menu = 2 then Showrecord('f') ;
      if menu = 3 then Showrecord('t') ;
      if menu = 4 then Showrecord('a') ;
    End;
Until key =1;
  monitor := save;
  Menu := 4;
  Y:=5;
End;
{---------- Serach menu  --------------}

{---------- Edit menu  --------------}
Procedure edit;
var save3 : arrayofmonitor;
Begin
 save3 := monitor;
 Startear_Popup := 0;
 Repeat
  menubar[1]:='          ô‘÷ ';
  menubar[2]:=' üğ¢ø÷‘¡ ô‘÷ ';
  menubar[3]:='         öêó— ';
  menubar[4]:='         §¤¢ ';
  Popup(40,57,6,11,15,7,0,1,15,4,Menubar);
  If key = 28 then
    Begin
      if menu = 1 then
        Begin
         Showrecord('n') ;
         Add(REcPosition-1);
        End;
      if menu = 2 then
        Begin
         Showrecord('f') ;
         Add(REcPosition-1);
        End;
      if menu = 3 then
        Begin
         Showrecord('t') ;
         Add(REcPosition-1);
        End;
      if menu = 4 then
        Begin
         Showrecord('a') ;
         Add(REcPosition-1);
        End;
    End;
Until key =1;
  monitor := save3;
  Menu :=3;
  Y:=4;
End;
{---------- Serach menu  --------------}

{---------- Main Block --------------}

begin
 curscroff;
 textbackground(0);
 Clrscr;
 ajor(1,80,1,25,7,1,'±');
 Repeat
  menubar[1]:=' –‘ä‘ó¯ ¢ø¤ø ';
  menubar[2]:='         –¨şó ';
  menubar[3]:=' <     ©ş¤şø ';
  menubar[4]:=' <      ø›—¨› ';
  menubar[5]:='         šø¤¡ ';
  Popup(58,75,4,10,15,7,0,1,15,5,Menubar);
  If key = 28 then
    Begin
      if menu = 1 then add(-1);
      if menu = 2 then list;
      if menu = 3 then edit;
      if menu = 4 then Search;
      if menu = 5 then halt ;
    End;
Until key =0;
End.
end.

