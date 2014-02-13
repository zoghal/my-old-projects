uses crt,dos;
type rec_bOOK=record
                   nAME_B: STRING[20];
                   name_G:string[20];
                   data_g:string[22];
                   CODE:longint;

            end;
var f,ft: file of rec_BOOK;
    buf,buf1:rec_BOOK;

    Key:Char;
{*************************************}
fUNCTION geT_DATA:sTRING;
const
  days : array [0..6] of String[9] =
    ('Sunday','Monday','Tuesday',
     'Wednesday','Thursday','Friday',
     'Saturday');
var
  y, m, d, dow : Word;
  yt,mt,dt:string[22];
bEGIN
  GetDate(y,m,d,dow);
  Str(m,mt );
  Str(y,yt );
  Str(d,dt );
  Get_Data := days[dow]+ ', '+mt +'/'+ dt +'/'+ yt;
END;

procedure input;
Begin
Clrscr;
assign(f,'BookBank.dat');
reset(f);
with buf Do
     begin
     Write('enter Book Name = ');
     readln(name_B);
     Write('enter your Get Name = ');
     readln(Name_g);
     Writeln('todey is = ',get_data);
     data_g := get_data;
     Write('enter your number book = ');
     readln(code);
     seek (f,filesize(f));
     write(f,buf);
     Writeln('Record Saved In the Bank');
     Writeln('Press Any Key to Exit....');
readkey;
close(f);
end;
End;

procedure Search_one;
var temp,i:word;
    T_name,T_name_b:string[20];
begin
clrscr;
assign(f,'bookbank.dat');
reset(f);
     Write('enter your book Name = ');
     readln(T_name);
     Write('enter your get name  = ');
     readln(t_name_b);
     temp:=filesize(f);
     for i:=0 to temp-1 do
     begin
     seek (f,i);
     read(f,buf1);
     with buf1 Do
     begin
     if (name_b=t_name) and (name_g=t_name_b) then
     begin
     writeln;
     Writeln('enter Book Name = ',name_b);
     Writeln('enter your Get Name = ',name_g);
     Writeln('data is get book = ',data_g);
     Writeln('enter your number book = ',code);
     Writeln;
     Writeln('Press Any Key to exit');
     readkey;
     break;
     end;
     end;
     end;
close(f);
end;

procedure list;
var temp,i:word;
begin
     clrscr;
     assign(f,'bookbank.dat');
     reset(f);
     temp:=filesize(f);
     for i:=0 to temp-1 do
     begin
     seek (f,i);
     read(f,buf1);
     with buf1 Do
     begin
     if (name_b<>'delete_record') and (Name_g<>'delete_record') and (Code<>0) then
        begin
     Writeln('enter Book Name = ',name_b);
     Writeln('enter your Get Name = ',name_g);
     Writeln('data is get book = ',data_g);
     Writeln('enter your number book = ',code);
     Writeln;
     Writeln('Press Any Key to Next');
     readkey;
     writeln;
     end;
     end;
     end;
     close(f);
     Writeln('Press Any Key to exit');
     readkey;
end;

procedure updata;
var temp,i:word;
    T_name,T_fameley:string[20];
begin
assign(ft,'bookbank.dat');
rename(ft,'temp.dat');
assign(ft,'temp.dat');
reset(ft);
assign(f,'bookbank.dat');
rewrite(f);
     temp:=filesize(ft);
     for i:=0 to temp-1 do
     begin
     seek (ft,i);
     read(ft,buf1);
     with buf1 Do
     begin
     if (name_G<>'delete_record') and (NAME_B<>'delete_record') and (CODE<>0) then
        begin
         write(f,buf1);
        end;
     end;
     end;
close(ft);
erase(ft);
close(f);
end;

procedure delete;
var temp,i:word;
    T_name,T_name_b:string[20];
begin
clrscr;
assign(f,'bookbank.dat');
reset(f);
     Write('enter your book name = ');
     readln(T_name_b);
     Write('enter your get Name = ');
     readln(t_NAME);
     temp:=filesize(f);
     for i:=0 to temp-1 do
     begin
     seek (f,i);
     read(f,buf1);
     with buf1 Do
     begin
     if (name_G=t_name) and (NAME_B=T_NAME_B) then
     begin
      name_B:='delete_record';
      nAME_G:='delete_record';
      CODE:=0;
      seek (f,i);
      write(f,buf1);
      Writeln( 'Record deleted..');
      Writeln( 'Press any key to exit');
      Readkey;
      break;
     end;
     end;
     end;
close(f);
 updata;
end;


begin
Repeat
clrscr;
Writeln('1- Input ');
Writeln('2- Search The one ');
Writeln('3- Search All');
Writeln('4- Delete the record');
Writeln('5- Exit');
key := ReadKey;
Case Key Of
     '1' : Input;
     '2' : Search_one;
     '3' : list;
     '4' : Delete;
end;
until Key='5';
end.
