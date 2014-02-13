uses crt;
type rec_tel=record
                   name:string;
                   family:string;
                   tel:string;
                   addres : string;
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
     readln(Family);
     Write('enter your tel = ');
     readln(Tel);
     Write('enter your adress = ');
     readln(addres);
     seek (f,filesize(f));
     write(f,buf);
     Writeln('Record Saved In the Bank');
     Writeln('Press Any Key to Exit....');
readkey;
close(f);
end;
End;

procedure edit;
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
     if (name=t_name) and (family=t_fameley) then
     begin
      Clrscr;

      Write('enter new Name = ');
      readln(name);
      Write('enter new Fameley = ');
      readln(Family);
      Write('enter new tel = ');
      readln(Tel);
      Write('enter new adress = ');
      readln(addres);
      seek (f,i);
      write(f,buf1);
      Writeln('Record Saved In the Bank');
      Writeln('Press Any Key to Exit....');
      readkey;
      break;
     end
     Else Writeln('Rocord not found');
     end;
     end;
close(f);
{updata;}
end;



procedure Search_name;
var temp,i:word;
    TSearch:string;
begin
clrscr;
assign(f,'tel.dat');
reset(f);
     Write('enter your Name = ');
     readln(TSearch);
     temp:=filesize(f);
     for i:=0 to temp-1 do
     begin
     seek (f,i);
     read(f,buf1);
     with buf1 Do
     begin
     if (name=TSearch) then
     begin
     writeln;
     Writeln('enter your Name = ',name);
     Writeln('enter your Fameley = ',Family);
     Writeln('enter your tel = ',tel);
     Writeln('enter your address = ',addres);
     Writeln;
     Writeln('Press Any Key to exit');
     readkey;
     break;
     end;
     end;
     end;
close(f);
end;

procedure Search_family;
var temp,i:word;
    TSearch:string;
begin
clrscr;
assign(f,'tel.dat');
reset(f);
     Write('enter your Family = ');
     readln(TSearch);
     temp:=filesize(f);
     for i:=0 to temp-1 do
     begin
     seek (f,i);
     read(f,buf1);
     with buf1 Do
     begin
     if (family=TSearch) then
     begin
     writeln;
     Writeln('enter your Name = ',name);
     Writeln('enter your Fameley = ',Family);
     Writeln('enter your tel = ',tel);
     Writeln('enter your address = ',addres);
     Writeln;
     Writeln('Press Any Key to exit');
     readkey;
     break;
     end;
     end;
     end;
close(f);
end;


procedure Search_tel;
var temp,i:word;
    TSearch:string;
begin
clrscr;
assign(f,'tel.dat');
reset(f);
     Write('enter your Tel = ');
     readln(TSearch);
     temp:=filesize(f);
     for i:=0 to temp-1 do
     begin
     seek (f,i);
     read(f,buf1);
     with buf1 Do
     begin
     if (tel=TSearch) then
     begin
     writeln;
     Writeln('enter your Name = ',name);
     Writeln('enter your Fameley = ',Family);
     Writeln('enter your tel = ',tel);
     Writeln('enter your address = ',addres);
     Writeln;
     Writeln('Press Any Key to exit');
     readkey;
     break;
     end;
     end;
     end;
close(f);
end;

procedure Search_addres;
var temp,i:word;
    TSearch:string;
begin
clrscr;
assign(f,'tel.dat');
reset(f);
     Write('enter your adres = ');
     readln(TSearch);
     temp:=filesize(f);
     for i:=0 to temp-1 do
     begin
     seek (f,i);
     read(f,buf1);
     with buf1 Do
     begin
     if (addres=TSearch) then
     begin
     writeln;
     Writeln('enter your Name = ',name);
     Writeln('enter your Fameley = ',Family);
     Writeln('enter your tel = ',tel);
     Writeln('enter your address = ',addres);
     Writeln;
     Writeln('Press Any Key to exit');
     readkey;
     break;
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
     if (name=t_name) and (family=t_fameley) then
     begin
     name:='delete_record';
     family:='delete_record';
     tel:='';
     seek (f,i);
     write(f,buf1);
     break;
     end;
     end;
     end;
close(f);
{updata;}
end;


begin
Repeat
clrscr;
Writeln('1- Input ');
Writeln('2- Edit ');
Writeln('3- Search By name ');
Writeln('4- Search By Family ');
Writeln('5- Search By Tel ');
Writeln('6- Search By Address ');
Writeln('7- Delete the record');
Writeln('8- Exit');
key := ReadKey;
Case Key Of
     '1' : Input;
     '2' : edit;
     '3' : Search_name;
     '4' : Search_family;
     '5' : Search_tel;
     '6' : Search_addres;
     '7' : Delete;
end;
until Key='8';
end.
