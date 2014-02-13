
Program Telfhone(input,output);
uses crt,msscrt;
type
    temp = array [1..4000] of byte;
    rec_tel=record
                   name:string;
                   famely:string;
                   tel:longint;
            end;

var f,ft: file of rec_tel;
    buf,buf1:rec_tel;
    a : array [0..5] of string;
    mon : temp  absolute $B800:0;
    save : temp;
    temp1 :string;
    exit :boolean;
procedure input;
Begin
save :=mon;
assign(f,'tel.dat');
reset(f);
wincadr(27,53,8,14,7,15);
with buf Do
     begin
     fwrite (43,9,7,0,' :    ô‘÷ ');
     fwrite (44,11,7,0,': üóşõ‘ê ');
     fwrite (44,13,7,0,':   öêó— ');
     Inputstr(27,9,0,0,14,1,14,'',name);
     Inputstr(27,11,0,0,14,1,14,'',famely);
     Inputnum(27,13,0,0,14,1,9,'',tel);
      wincadr(25,55,20,23,4,15);
      fwrite (40,21,4,15,' Œ¢¢¤ğ –“™ ‘ş ');
      a[1]:=' ùó“ ';
      a[2]:=' ¤ş¡ ';
       fwrite (27,21,15,0,a[1]);
       fwrite (27,22,4,0,a[2]);
      exit :=false;
repeat
           Popup(25,33,20,23,4,4,0,15,0,2,a);
       if key=28 then
        begin
          if menu=1 then
               begin
                 seek (f,filesize(f));
                 write(f,buf);
                 exit:=true;
               end;
          if menu=2 then exit:=true;
        end;
      until exit=true;
menu :=0;
close(f);
end;
mon :=save;
End;

procedure list;
var temp,i:word;
    T_name,T_fameley:string[20];
begin
   save :=mon;
   wincadr (14,67,1,25,1,15);
     assign(f,'tel.dat');
     reset(f);
     temp:=filesize(f);
     if temp =0 then
     begin
      wincadr(59,78,2,4,5,15);
      Fwrite(60,3,5,15,' !! –¨ üó‘¡ í÷‘“ ');
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
     if (name<>'delete_record') and (famely<>'delete_record') and (tel<>0000) then
        begin
     fwrite (55,2,1,15,'ô‘‹‹‹‹‹‹÷ ');
     fwrite (36,2,1,15,'ü‹ó‹şõ‘‹ê ');
     fwrite (17,2,1,15,'ö‹‹ê‹‹ó‹— ');
     fwrite (16,3,1,15,'-------------------------------------------------- ');
     fwrite (52,4+i,1,15,name);
     fwrite (33,4+i,1,15,famely);
     str(tel,temp1);
     fwrite (16,4+i,1,15,temp1);
     end;
     end;
     end;
     readkey;
     end;
close(f);
mon :=save;
end;

procedure delete;
var temp,i:word;
    T_name,T_famely:string;
    del : boolean;
begin
del :=false;
save:=mon;
assign(f,'tel.dat');
reset(f);
     temp:=filesize(f);
     if temp =0 then
      begin
      wincadr(59,78,2,4,5,15);
      Fwrite(60,3,5,15,' !! –¨ üó‘¡ í÷‘“ ');
      readkey;
     end
     else
     begin
 wincadr(27,53,8,12,7,15);
 fwrite (43,9,7,0,' :    ô‘÷ ');
 fwrite (44,11,7,0,': üóşõ‘ê ');
 Inputstr(27,9,0,0,14,1,14,'',T_name);
 Inputstr(27,11,0,0,14,1,14,'',T_famely);
     for i:=0 to temp-1 do
     begin
     seek (f,i);
     read(f,buf1);
     with buf1 Do
     begin
     if (name=t_name) and (famely=t_famely) then
     begin
     name:='delete_record';
     famely:='delete_record';
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
      wincadr(11,78,2,4,5,15);
      Fwrite(12,3,5,15,' !!¢ş÷î ’‘¡—÷¤ù÷şú“ù÷ş¥ğ.¢ªù¢¥ –õ‘óä í÷‘“¤¢ –‘¬¡ªõöş‘“ü¢¤øî¤ ');
      readkey;
     end
     else
     begin
      wincadr(38,78,2,4,5,15);
      Fwrite(39,3,5,15,' !!¢¤¢÷ ¢ø›ø í÷‘“¤¢ –‘¬¡ªõöş‘“ü¢¤øî¤ ');
      readkey;
     end;

mon :=save;
end;

procedure updata;
var temp,i:word;
    T_name,T_famely:string[20];
begin
save:=mon;
assign(ft,'tel.dat');
rename(ft,'temp.dat');
assign(ft,'temp.dat');
reset(ft);
assign(f,'tel.dat');
rewrite(f);
temp:=filesize(ft);
  if temp =0 then
      begin
      wincadr(59,78,2,4,5,15);
      Fwrite(60,3,5,15,' !! –¨ üó‘¡ í÷‘“ ');
      readkey;
     end
     else
     begin
     for i:=0 to temp-1 do
     begin
     seek (ft,i);
     read(ft,buf1);
     with buf1 Do
     begin
     if (name<>'delete_record') and (famely<>'delete_record') and (tel<>0000) then
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

Begin
curscroff;
textbackground(0);
Clrscr;
 ajor(1,80,1,25,7,1,'±');
Repeat
a[1]:='      ¢ø¤ø ';
a[2]:='      –¨şó ';
a[3]:='       é£Ÿ ';
a[4]:=' ö¢¤îù÷şú“ ';
a[5]:='      šø¤¡ ';
  Popup(34,48,9,15,15,7,0,1,15,5,a);
  If key = 28 then
    Begin
      if menu = 1 then Input;
      if menu = 2 then list;
      if menu = 3 then delete;
      if menu = 4 then updata;
      if menu = 5 then halt ;
    End;
Until key =1;
End.