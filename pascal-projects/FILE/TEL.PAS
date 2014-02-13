uses crt;
type rec_tel=record
                   name:string[12];
                   fameley:string[12];
                   tel:longint;

            end;
var f,ft: file of rec_tel;
    buf,buf1:rec_tel;
    Key:Char;

{*************************************}
procedure input;
Begin
Clrscr;
assign(f,'tel.dat');
reset(f);
with buf Do
     begin
     Write('enter your Name = ');
     readln(name);
     Write('enter your Fameley = ');
     readln(Fameley);
     Write('enter your tel = ');
     readln(Tel);
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
    T_name,T_fameley:string[20];
begin
clrscr;
assign(f,'tel.dat');
reset(f);
     Write('enter your Name = ');
     readln(T_name);
     Write('enter your Fameley = ');
     readln(t_Fameley);
     temp:=filesize(f);
     for i:=0 to temp-1 do
     begin
     seek (f,i);
     read(f,buf1);
     with buf1 Do
     begin
     if (name=t_name) and (fameley=t_fameley) then
     begin
     writeln;
     Writeln('enter your Name = ',name);
     Writeln('enter your Fameley = ',Fameley);
     Writeln('enter your tel = ',tel);
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
    T_name,T_fameley:string[20];
begin
     clrscr;
     assign(f,'tel.dat');
     reset(f);
     temp:=filesize(f);
     for i:=0 to temp-1 do
     begin
     seek (f,i);
     read(f,buf1);
     with buf1 Do
     begin
     if (name<>'delete_record') and (fameley<>'delete_record') and (tel<>0) then
        begin
          Writeln('enter your Name = ',name);
     Writeln('enter your Fameley = ',Fameley);
     Writeln('enter your tel = ',tel);
     Writeln;
     Writeln('Press Any Key to exit');
     readkey;
     writeln;
     end;
     end;
     end;
close(f);
end;

procedure delete;
var temp,i:word;
    T_name,T_fameley:string[20];
begin
clrscr;
assign(f,'tel.dat');
reset(f);
     Write('enter your Name = ');
     readln(T_name);
     Write('enter your Fameley = ');
     readln(t_Fameley);
     temp:=filesize(f);
     for i:=0 to temp-1 do
     begin
     seek (f,i);
     read(f,buf1);
     with buf1 Do
     begin
     if (name=t_name) and (fameley=t_fameley) then
     begin
     name:='delete_record';
     fameley:='delete_record';
     tel:=0;
     seek (f,i);
     write(f,buf1);
     break;
     end;
     end;
     end;
close(f);
end;

procedure updata;
var temp,i:word;
    T_name,T_fameley:string[20];
begin
assign(ft,'tel.dat');
rename(ft,'temp.dat');
assign(ft,'temp.dat');
reset(ft);
assign(f,'tel.dat');
rewrite(f);
     temp:=filesize(ft);
     for i:=0 to temp-1 do
     begin
     seek (ft,i);
     read(ft,buf1);
     with buf1 Do
     begin
     if (name<>'delete_record') and (fameley<>'delete_record') and (tel<>0) then
        begin
         write(f,buf1);
        end;
     end;
     end;
close(ft);
erase(ft);
close(f);
end;

procedure sort;
begin


end;

begin
Repeat
clrscr;
Writeln('1- Input ');
Writeln('2- Search The one ');
Writeln('3- Search All');
Writeln('4- Delete the record');
Writeln('5- update');
Writeln('6- sort');
Writeln('7- Exit');
key := ReadKey;
Case Key Of
     '1' : Input;
     '2' : Search_one;
     '3' : list;
     '4' : Delete;
     '5' : updata;
     '6' : sort;
end;
until Key='7';
end.
