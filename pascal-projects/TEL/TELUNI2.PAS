Program tel;
uses crt;
type rec=record
                   name:string;
                   family:string;
                   tel:longint;
                   add : string;
                   Work : string;
            end;

var nfile : file of rec;
    temp:rec;
    Kilid:Char;

{*************************************}
procedure new;
Begin
Clrscr;
assign(nfile,'tel.dat');
reset(nfile);
     Write('���� ���� �� ��� = ');
     readln(temp.name);
     Write('���� ���� �� ������ = ');
     readln(temp.Family);
     Write('���� ������ ��� = ');
     readln(temp.Tel);
     Write('���� ������ ���� = ');
     readln(temp.add);
     Write('���� ���� �� �� = ');
     readln(temp.work);
     seek (nfile,filesize(nfile));
     write(nfile,temp);
     Writeln('���� ���� �� ������ ����� ���� �� ����� ');
readln;
close(nfile);
End;

procedure edit;
var t,i:integer;
    name,fameley:string;
begin
clrscr;
assign(nfile,'tel.dat');
reset(nfile);
     Write('���� ���� �� ��� = ');
     readln(name);
     Write('���� ���� �� ������ = ');
     readln(Fameley);

     t:=filesize(nfile);
     for i:=0 to t-1 do
     begin
     seek (nfile,i);
     read(nfile,temp);
     if (temp.name=name) and (temp.family=fameley) then
     begin
      Clrscr;
     Write('���� ���� �� ��� = ');
     readln(temp.name);
     Write('���� ���� �� ������ = ');
     readln(temp.Family);
     Write('���� ������ ��� = ');
     readln(temp.Tel);
     Write('���� ������ ���� = ');
     readln(temp.add);
     Write('���� ���� �� �� = ');
     readln(temp.work);
      seek (nfile,i);
      write(nfile,temp);
     Writeln('���� ���� �� ������ ����� ���� �� ����� ');
     readln;
      break;
     end
     Else Writeln('��� ���� ������');
     end;
close(nfile);
end;



procedure name;
var t,i:word;
    Search:string;
begin
clrscr;
assign(nfile,'tel.dat');
reset(nfile);
     Write('���� ���� �� ��� = ');
     readln(Search);
     t:=filesize(nfile);
     for i:=0 to t-1 do
     begin
     seek (nfile,i);
     read(nfile,temp);
     if (temp.name=Search) then
     begin
     writeln;
     Writeln('���� ���� �� ��� = ',temp.name);
     Writeln('���� ���� �� ������ = ',temp.Family);
     Writeln('���� ������ ��� = ',temp.tel);
     Writeln('���� ������ ���� = ',temp.add);
     Writeln('���� ���� �� �� = ',temp.work);
     Writeln;
     Writeln(' ���� ���� �� ������ ����� ����');
     readln;
     end;
     end;
close(nfile);
end;

procedure family;
var t,i:word;
    Search:string;
begin
clrscr;
assign(nfile,'tel.dat');
reset(nfile);
     Write('���� ���� �� ������ = ');
     readln(Search);
     t:=filesize(nfile);
     for i:=0 to t-1 do
     begin
     seek (nfile,i);
     read(nfile,temp);
     if (temp.family=Search) then
     begin
     writeln;
     Writeln('���� ���� �� ��� = ',temp.name);
     Writeln('���� ���� �� ������ = ',temp.Family);
     Writeln('���� ������ ��� = ',temp.tel);
     Writeln('���� ������ ���� = ',temp.add);
     Writeln('���� ���� �� �� = ',temp.work);
     Writeln;
     Writeln(' ���� ���� �� ������ ����� ����');
     readln;
     end;
     end;
close(nfile);
end;


procedure telphone;
var t,i:word;
    Search:integer;
begin
clrscr;
assign(nfile,'tel.dat');
reset(nfile);
     Write('���� ������ ��� = ');
     readln(Search);
     t:=filesize(nfile);
     for i:=0 to t-1 do
     begin
     seek (nfile,i);
     read(nfile,temp);
     if (temp.tel=Search) then
     begin
     writeln;
     Writeln('���� ���� �� ��� = ',temp.name);
     Writeln('���� ���� �� ������ = ',temp.Family);
     Writeln('���� ������ ��� = ',temp.tel);
     Writeln('���� ������ ���� = ',temp.add);
     Writeln('���� ���� �� �� = ',temp.work);
     Writeln;
     Writeln(' ���� ���� �� ������ ����� ����');
     readln;
     end;
     end;
close(nfile);
end;

procedure addres;
var t,i:word;
    Search:string;
begin
clrscr;
assign(nfile,'tel.dat');
reset(nfile);
     Write('������� ���� = ');
     readln(Search);
     t:=filesize(nfile);
     for i:=0 to t-1 do
     begin
     seek (nfile,i);
     read(nfile,temp);
     if (temp.add=Search) then
     begin
     writeln;
     Writeln('���� ���� �� ��� = ',temp.name);
     Writeln('���� ���� �� ������ = ',temp.Family);
     Writeln('���� ������ ��� = ',temp.tel);
     Writeln('���� ������ ���� = ',temp.add);
     Writeln('���� ���� �� �� = ',temp.work);
     Writeln;
     Writeln(' ���� ���� �� ������ ����� ����');
     readln;
     end;
     end;
close(nfile);
end;

procedure work;
var t,i:word;
    Search:string;
begin
clrscr;
assign(nfile,'tel.dat');
reset(nfile);
     Write('���� ���� �� �� = ');
     readln(Search);
     t:=filesize(nfile);
     for i:=0 to t-1 do
     begin
     seek (nfile,i);
     read(nfile,temp);
     if (temp.work=Search) then
     begin
     writeln;
     Writeln('���� ���� �� ��� = ',temp.name);
     Writeln('���� ���� �� ������ = ',temp.Family);
     Writeln('���� ������ ��� = ',temp.tel);
     Writeln('���� ������ ���� = ',temp.add);
     Writeln('���� ���� �� �� = ',temp.work);
     Writeln;
     Writeln(' ���� ���� �� ������ ����� ����');
     readln;
     end;
     end;
close(nfile);
end;



begin
Repeat
clrscr;
Writeln('1-  ��� ');
Writeln('2-  ������ ');
Writeln('3- ��� ��� �� ����� ');
Writeln('4- ������ ��� �� ����� ');
Writeln('5- ��� ��� �� ����� ');
Writeln('6- ���� ��� �� ����� ');
Writeln('7-  �� ��� �� �����');
Writeln('8- ����');
kilid :=  readkey;

Case kilid Of
     '1' : new;
     '2' : edit;
     '3' : name;
     '4' : family;
     '5' : telphone;
     '6' : addres;
     '7' : work;
end;
until kilid='8';
end.
