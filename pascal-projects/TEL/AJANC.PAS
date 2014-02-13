Program Ajanc;
Uses crt,msscrt;
Type
     temp = array [1..4000] of byte;
     records =record
                   Code:longint;
                   Name:string;
                   addr:String;
                   tel:longint;
            end;

var
    f,ft: file of records;
    buf,buf1:records;
    a : array [0..4] of string;
    mon : temp  absolute $B800:0;
    save : temp;
    exitT :boolean;
{--------------- Start Procedure Code ----------------}
Procedure newS;
Begin
 save :=mon;
 assign(f,'data.dat');
 reset(f);
 wincadr(25,55,8,16,7,15);
with buf Do
     begin
     fwrite (26,9,7,0,' Code Shear :  ');
     fwrite (26,11,7,0,' Name       : ');
     fwrite (26,13,7,0,' Addres     :');
     fwrite (26,15,7,0,' Telphone   :');
     Inputnum(38,9,0,0,14,1,14,'',code);
     Inputstr(38,11,0,0,14,1,14,'',name);
     Inputstr(38,13,0,0,14,1,14,'',addr);
     Inputnum(38,15,0,0,14,1,9,'',tel);
      wincadr(25,55,20,23,4,15);
      fwrite (27,21,4,15,'Save servic?!');
      a[1]:=' yes ';
      a[2]:=' no  ';
       fwrite (48,21,15,0,a[1]);
       fwrite (48,22,4,0,a[2]);
      exiTt :=false;
repeat
           Popup(46,54,20,23,4,4,0,15,0,2,a);
       if key=28 then
        begin
          if menu=1 then
               begin
                 seek (f,filesize(f));
                 write(f,buf);
                 exitT:=true;
               end;
          if menu=2 then exitT:=true;
        end;
      until exitT=true;
menu :=0;
close(f);
end;
mon :=save;
End;
{----------***********************************-}
procedure list;
var temp,i:word;
    T_name,T_fameley:string[20];
        temp1 :string;

begin
   save :=mon;
   wincadr (1,79,1,25,1,15);
     assign(f,'DATA.dat');
     reset(f);
     temp:=filesize(f);
     if temp =0 then
     begin
      wincadr(59,78,2,4,5,15);
      Fwrite(60,3,5,15,' DataBase Is Empty ');
      readkey;
     end
     else
      begin
     for i:=0 to temp-1 do
     begin
     seek (f,i);
     read(f,buf1);
     with buf1 Do
     begin
     if (name<>'delete_record') and  (tel<>0000) then
        begin
     fwrite (3,2,1,15,'Code ');
     fwrite (15,2,1,15,'Name ');
     fwrite (30,2,1,15,'Addres ');
     fwrite (60,2,1,15,'TEl ');
     fwrite (3,3,1,15,'--------------------------------------------------------------- ');
     str(CODE,temp1);
     fwrite (3,4+i,1,15,TEMP1);
     fwrite (15,4+i,1,15,name);
     fwrite (30,4+i,1,15,ADDR);
     str(tel,temp1);
     fwrite (60,4+i,1,15,temp1);
     end;
     end;
     end;
     readkey;
     end;
close(f);
mon :=save;
end;

{---------************************----------}
procedure update;
var temp,i:word;
    T_name,T_famely:string[20];
begin
save:=mon;
assign(ft,'DATA.dat');
rename(ft,'temp.dat');
assign(ft,'temp.dat');
reset(ft);
assign(f,'DATA.dat');
rewrite(f);
temp:=filesize(ft);
  if temp =0 then
     else
     begin
     for i:=0 to temp-1 do
     begin
     seek (ft,i);
     read(ft,buf1);
     with buf1 Do
     begin
     if (name<>'delete_record') and (tel<>0000) then
        begin
         write(f,buf1);
        end;
     end;
     end;
  end;
close(ft);
erase(ft);
close(f);
mon:=save;
end;

{********************************************************}
procedure delete;
var temp,i:word;
    T_name:string;
    T_code: longint;
    del : boolean;
Begin
del :=false;
save:=mon;
assign(f,'data.dat');
reset(f);
     temp:=filesize(f);
     if temp =0 then
      begin
      wincadr(57,78,2,4,5,15);
      Fwrite(58,3,5,15,' Data Base Is Empty ');
     READKEY;
     mon:=save;
      EXIT;
     end
     else
     begin
 wincadr(25,56,8,12,7,15);
 fwrite (26,9,7,0,' Code Servic : ');
 fwrite (26,11,7,0,' Name       : ');
 Inputnum(39,9,0,0,14,1,14,'',T_code);
 Inputstr(39,11,0,0,14,1,14,'',T_Name);
     for i:=0 to temp-1 do
     begin
     seek (f,i);
     read(f,buf1);
     with buf1 Do
     begin
     if (name=t_name) and (code=t_code) then
     begin
     name:='delete_record';
     tel:=0000;
     seek (f,i);
     write(f,buf1);
     del :=true;
     break;
     end;
     end;
     end;
     End;
close(f);
if del = true then
     begin
      wincadr(9,75,2,4,5,15);
      Fwrite(10,3,5,15,' The Record is Erased!!, Press Any key To update Data Base  ');
      readkey;
     end
     else
     begin
      wincadr(9,48,2,4,5,15);
      Fwrite(10,3,5,15,' The Record Not Found, Plaes Try!!');
      readkey;
     end;
     MON :=SAVE;
 update;


end;



{--------------- Start Main Code ------------------------}
Begin
textbackground(0);
 clrscr;
 ajor (1,80,1,25,15,1,'±');
Repeat
a[1]:=' New Servic ';
a[2]:=' Del Servic ';
a[3]:=' List''s Servis ';
a[4]:=' Exit ';
  Popup(32,50,9,14,15,7,0,1,15,4,a);
  If key = 28 then
    Begin
      if menu = 1 then news;
      if menu = 3 then list;
      if menu = 2 then delete;
      if menu = 4 then halt ;
    End;
Until key =1;

End.
