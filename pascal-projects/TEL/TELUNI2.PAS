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
     Write('¢ş÷î ¢¤ø ¤ ô‘÷ = ');
     readln(temp.name);
     Write('¢ş÷î ¢¤ø ¤ üóşõ‘ê = ');
     readln(temp.Family);
     Write('¢ş÷î ¢¤ø¤ öêó— = ');
     readln(temp.Tel);
     Write('¢ş÷î ¢¤ø¤ §¤¢ = ');
     readln(temp.add);
     Write('¢ş÷î ¢¤ø ¤ ñç¨ = ');
     readln(temp.work);
     seek (nfile,filesize(nfile));
     write(nfile,temp);
     Writeln('¢şû¢ ¤‘ªê ¤ ü¢şóşî ùõ¢ ü¤“ ¢ª ù¤ş¡£ ');
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
     Write('¢ş÷î ¢¤ø ¤ ô‘÷ = ');
     readln(name);
     Write('¢ş÷î ¢¤ø ¤ üóşõ‘ê = ');
     readln(Fameley);

     t:=filesize(nfile);
     for i:=0 to t-1 do
     begin
     seek (nfile,i);
     read(nfile,temp);
     if (temp.name=name) and (temp.family=fameley) then
     begin
      Clrscr;
     Write('¢ş÷î ¢¤ø ¤ ô‘÷ = ');
     readln(temp.name);
     Write('¢ş÷î ¢¤ø ¤ üóşõ‘ê = ');
     readln(temp.Family);
     Write('¢ş÷î ¢¤ø¤ öêó— = ');
     readln(temp.Tel);
     Write('¢ş÷î ¢¤ø¤ §¤¢ = ');
     readln(temp.add);
     Write('¢ş÷î ¢¤ø ¤ ñç¨ = ');
     readln(temp.work);
      seek (nfile,i);
      write(nfile,temp);
     Writeln('¢şû¢ ¤‘ªê ¤ ü¢şóşî ùõ¢ ü¤“ ¢ª ù¤ş¡£ ');
     readln;
      break;
     end
     Else Writeln('¢ª÷ ¢ş• –‘¬¡ªõ');
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
     Write('¢ş÷î ¢¤ø ¤ ô‘÷ = ');
     readln(Search);
     t:=filesize(nfile);
     for i:=0 to t-1 do
     begin
     seek (nfile,i);
     read(nfile,temp);
     if (temp.name=Search) then
     begin
     writeln;
     Writeln('¢ş÷î ¢¤ø ¤ ô‘÷ = ',temp.name);
     Writeln('¢ş÷î ¢¤ø ¤ üóşõ‘ê = ',temp.Family);
     Writeln('¢ş÷î ¢¤ø¤ öêó— = ',temp.tel);
     Writeln('¢ş÷î ¢¤ø¤ §¤¢ = ',temp.add);
     Writeln('¢ş÷î ¢¤ø ¤ ñçª = ',temp.work);
     Writeln;
     Writeln(' ¢şû¢ ¤‘ªê ¤ ü¢şóşî ùõ¢ ü¤“');
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
     Write('¢ş÷î ¢¤ø ¤ üóşõ‘ê = ');
     readln(Search);
     t:=filesize(nfile);
     for i:=0 to t-1 do
     begin
     seek (nfile,i);
     read(nfile,temp);
     if (temp.family=Search) then
     begin
     writeln;
     Writeln('¢ş÷î ¢¤ø ¤ ô‘÷ = ',temp.name);
     Writeln('¢ş÷î ¢¤ø ¤ üóşõ‘ê = ',temp.Family);
     Writeln('¢ş÷î ¢¤ø¤ öêó— = ',temp.tel);
     Writeln('¢ş÷î ¢¤ø¤ §¤¢ = ',temp.add);
     Writeln('¢ş÷î ¢¤ø ¤ ñçª = ',temp.work);
     Writeln;
     Writeln(' ¢şû¢ ¤‘ªê ¤ ü¢şóşî ùõ¢ ü¤“');
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
     Write('¢ş÷î ¢¤ø¤ öêó— = ');
     readln(Search);
     t:=filesize(nfile);
     for i:=0 to t-1 do
     begin
     seek (nfile,i);
     read(nfile,temp);
     if (temp.tel=Search) then
     begin
     writeln;
     Writeln('¢ş÷î ¢¤ø ¤ ô‘÷ = ',temp.name);
     Writeln('¢ş÷î ¢¤ø ¤ üóşõ‘ê = ',temp.Family);
     Writeln('¢ş÷î ¢¤ø¤ öêó— = ',temp.tel);
     Writeln('¢ş÷î ¢¤ø¤ §¤¢ = ',temp.add);
     Writeln('¢ş÷î ¢¤ø ¤ ñçª = ',temp.work);
     Writeln;
     Writeln(' ¢şû¢ ¤‘ªê ¤ ü¢şóşî ùõ¢ ü¤“');
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
     Write('¢ş÷î¢¤ø¤ §¤¢ = ');
     readln(Search);
     t:=filesize(nfile);
     for i:=0 to t-1 do
     begin
     seek (nfile,i);
     read(nfile,temp);
     if (temp.add=Search) then
     begin
     writeln;
     Writeln('¢ş÷î ¢¤ø ¤ ô‘÷ = ',temp.name);
     Writeln('¢ş÷î ¢¤ø ¤ üóşõ‘ê = ',temp.Family);
     Writeln('¢ş÷î ¢¤ø¤ öêó— = ',temp.tel);
     Writeln('¢ş÷î ¢¤ø¤ §¤¢ = ',temp.add);
     Writeln('¢ş÷î ¢¤ø ¤ ñçª = ',temp.work);
     Writeln;
     Writeln(' ¢şû¢ ¤‘ªê ¤ ü¢şóşî ùõ¢ ü¤“');
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
     Write('¢ş÷î ¢¤ø ¤ ñçª = ');
     readln(Search);
     t:=filesize(nfile);
     for i:=0 to t-1 do
     begin
     seek (nfile,i);
     read(nfile,temp);
     if (temp.work=Search) then
     begin
     writeln;
     Writeln('¢ş÷î ¢¤ø ¤ ô‘÷ = ',temp.name);
     Writeln('¢ş÷î ¢¤ø ¤ üóşõ‘ê = ',temp.Family);
     Writeln('¢ş÷î ¢¤ø¤ öêó— = ',temp.tel);
     Writeln('¢ş÷î ¢¤ø¤ §¤¢ = ',temp.add);
     Writeln('¢ş÷î ¢¤ø ¤ ñçª = ',temp.work);
     Writeln;
     Writeln(' ¢şû¢ ¤‘ªê ¤ ü¢şóşî ùõ¢ ü¤“');
     readln;
     end;
     end;
close(nfile);
end;



begin
Repeat
clrscr;
Writeln('1-  š¤¢ ');
Writeln('2-  ©ş¤şø ');
Writeln('3- ô‘÷ ’¨Ÿ ¤“ ø›—¨› ');
Writeln('4- üóşõ‘ê ’¨Ÿ ¤“ ø›—¨› ');
Writeln('5- öêó— ’¨Ÿ ¤“ ø›—¨› ');
Writeln('6- §¤¢ ’¨Ÿ ¤“ ø›—¨› ');
Writeln('7-  ñçª ’¨Ÿ ¤“ ø›—¨›');
Writeln('8- šø¤¡');
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
