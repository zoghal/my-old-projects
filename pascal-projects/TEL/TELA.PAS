uses crt;
type rec_tel=record
                   name:string[12];
                   fameley:string[12];
                   tel:longint;

            end;
var Rec : Array[1..100] of rec_tel;
    Key:Char;
    XX : Byte;

{*************************************}
procedure input;
Begin
Clrscr;
with REc[XX] Do
     begin
     Write('enter your Name = ');
     readln(name);
     Write('enter your Fameley = ');
     readln(Fameley);
     Write('enter your tel = ');
     readln(Tel);
     Writeln('Record Saved In the Bank');
     Writeln('Press Any Key to Exit....');
     xx:=xx+1;
readkey;
end;
End;

procedure Search_one;
var temp,i:word;
    T_name,T_fameley:string[20];
begin
clrscr;
     Write('enter your Name = ');
     readln(T_name);
     Write('enter your Fameley = ');
     readln(t_Fameley);
     for i:=1 to 100 do
     begin
     with rec[i] Do
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
end;

procedure list;
var temp,i:word;
    T_name,T_fameley:string[20];
begin
     clrscr;
     for i:=1 to 100 do
     begin
     with rec[i] Do
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
end;

procedure delete;
var temp,i:word;
    T_name,T_fameley:string[20];
begin
clrscr;
     Write('enter your Name = ');
     readln(T_name);
     Write('enter your Fameley = ');
     readln(t_Fameley);
     for i:=1 to 100 do
     begin
     with rec[i] Do
     begin
     if (name=t_name) and (fameley=t_fameley) then
     begin
     name:='delete_record';
     fameley:='delete_record';
     tel:=0;
     break;
     end;
     end;
     end;
end;


begin
xx:=1;
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
