uses crt,dos;
type rec_bOOK=record
                   nAME_B: STRING[20];
                   name_G:string[20];
                   data_g:string[22];
                   CODE:longint;

            end;
var Rec : Array[1..100] of rec_BOOK;
    II : Byte;
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
     Write('enter Book Name = ');
     readln(rec[II].name_B);

     Write('enter your Get Name = ');
     readln(rec[II].Name_g);

     Writeln('todey is = ',get_data);
     rec[II].data_g := get_data;

     Write('enter your number book = ');
     readln(rec[II].code);
     Writeln('Record Saved In the Bank');
     Writeln('Press Any Key to Exit....');
     Readkey;
     ii:=ii+1;
End;

procedure Search_one;
var temp,i:word;
    T_name,T_name_b:string[20];
begin
clrscr;
     Write('enter your book Name = ');
     readln(T_name);
     Write('enter your get name  = ');
     readln(t_name_b);
     for i:=1 to 100 do
     begin
     with rec[I] Do
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
end;

procedure list;
var temp,i:word;
begin
     clrscr;
     for i:=1 to 100 do
     begin
     with rec[I] Do
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
     Writeln('Press Any Key to exit');
     readkey;
end;

procedure delete;
var temp,i:word;
    T_name,T_name_b:string[20];
begin
clrscr;
     Write('enter your book name = ');
     readln(T_name_b);
     Write('enter your get Name = ');
     readln(t_NAME);
     for i:=1 to 100 do
     begin
     with Rec[i] Do
     begin
     if (name_G=t_name) and (NAME_B=T_NAME_B) then
     begin
      name_B:='delete_record';
      nAME_G:='delete_record';
      CODE:=0;
      Writeln( 'Record deleted..');
      Writeln( 'Press any key to exit');
      Readkey;
      break;
     end;
     end;
     end;
end;

begin
II := 1;

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
