PROGRAM ANTI_VIRUS_ASKARES;
USES CRT,DOS;
Type
 FName = String[12];
VAR
   f :file of char;
    www	 :integer;
   path_file_virus:STRING;
   X,X1:WORD;
   drv:string[3];
   CH:CHAR;
   DOOO :BOOLEAN;
(****************************************************************************)
PROCEDURE MENU(leftcol,toprow,rightcol,btmrow:integer;COLOR:BYTE);
    var i,j:integer;
    begin
    textcolor(COLOR);
    write(' ');
    write(chr(201));
    for i:=(leftcol+2)to (rightcol-2)do
    begin
     write(chr(205));
     end;
    writeln(chr(187));
    for i:=(toprow+1)to(btmrow-1) do
    begin
    write(' ');
    write(chr(186));
    for j:=(leftcol+2) to (rightcol-2) do
       begin
	write(' ');
	 end;
       writeln(chr(186));
      end;
     write(' ');
     write(chr(200));
   for i:=(leftcol+2)to (rightcol-2) do
     begin
       write (chr(205));
     end;
     write(chr(188));
    end;
(****************************************************************************)
procedure drive;
 procedure getkey;
   var
     code,gozineh,satr:integer;
     ch,s	       :char;
 function getkey      :integer;
    const
      suton = 7;
    begin
      ch:=readkey;
      if ord(ch)<>0 then
      getkey:=ord(ch)
	  else
	     begin
	       getkey:=ord(readkey);
     end;
 end;
 begin
    repeat
       code:=getkey;
       if code=75 then
{*********** <---  ¢þóî é¤ã—   ************}
	   begin
	   textcolor(1);
	   textbackground(7);
	   gotoxy(satr,1);
           if gozineh=1 then write(' A: ');
	   if gozineh=2 then write(' C: ');
	   if gozineh=3 then write(' D: ');
	   if gozineh=4 then write(' E: ');
	   gozineh:=gozineh-1;
	   if gozineh>4 then gozineh:=4;
	   if gozineh<1 then satr:=satr-6
	       else satr:=satr-5;
		  if satr<1 then
		     begin
		       gozineh:=4;
		       satr:=satr+21;
		     end;
	   textcolor(15);
	   textbackground(0);
	   gotoxy(satr,1);
	   if gozineh=1 then write(' A: ');
	   if gozineh=2 then write(' C: ');
	   if gozineh=3 then write(' D: ');
	   if gozineh=4 then write(' E: ');
      END;
      if code=77 then
{***********  --->  ¢þóî é¤ã—	************}
	 begin
	   textcolor(1);
	   textbackground(7);
            gotoxy(satr,1);
           if gozineh=1 then write(' A: ');
	   if gozineh=2 then write(' C: ');
	   if gozineh=3 then write(' D: ');
	   if gozineh=4 then write(' E: ');
	   	   gozineh:=gozineh+1;
	   if gozineh>4 then gozineh:=1;
	   if gozineh>1 then satr:=satr+5
	      else satr:=satr+5;
	   if satr>20 then satr:=2;
	   textcolor(15);
	   textbackground(0);
	   gotoxy(satr,1);
           if gozineh=1 then write(' A: ');
	   if gozineh=2 then write(' C: ');
	   if gozineh=3 then write(' D: ');
	   if gozineh=4 then write(' E: ');
	   END;
{-----------------------------<ÄÄÙ ¢þóî éþ¤ã—------------------------------- }
      if code=13 then
	 begin
           gotoxy(13,13);
	   if gozineh=1 then drv:='A:\';
	   if gozineh=2 then drv:='C:\';
           if gozineh=3 then drv:='D:\';
	   if gozineh=4 then drv:='e:\';
           exit;
           end;
    until (www=27);
 end;
begin
WINDOW(1,1,80,26);
TEXTBACKGROUND(0);
WINDOW(40,10,64,14);
CLRSCR;
TEXTBACKGROUND(7);
WINDOW(38,9,62,13);
CLRSCR;
MENU(1,1,25,5,0);
TEXTBACKGROUND(7);
WINDOW(40,11,60,11);
CLRSCR;
textcolor(1);
gotoxy(3,1);
write('A:');
gotoxy(8,1);
write('C:');
gotoxy(13,1);
write('D:');
gotoxy(18,1);
write('E:');
getkey;
TEXTBACKGROUND(1);
WINDOW(35,7,64,14);
CLRSCR;
WINDOW(1,1,80,26);
end;
(****************************************************************************)
procedure help;
begin
window(1,1,80,26);
TEXTBACKGROUND(0);
WINDOW(11,8,70,18);
CLRSCR;
TEXTBACKGROUND(5);
WINDOW(9,7,68,17);
CLRSCR;
MENU(1,2,60,12,7);
TEXTCOLOR(0);
GOTOXY(28,1); { }WRITELN('HELP');
GOTOXY(28,5); { }WRITELN('I AM ASKARES');
REPEAT UNTIL KEYPRESSED;
WINDOW(1,1,80,26);
TEXTBACKGROUND(1);
WINDOW(9,7,70,18);
CLRSCR;
WINDOW(1,1,80,26);
TEXTBACKGROUND(0);
WINDOW(8,10,25,20);
CLRSCR;
TEXTBACKGROUND(11);
WINDOW(6,9,23,19);
CLRSCR;
 MENU(1,0,18,10,0);
 TEXTCOLOR(0);
 GOTOXY(4,2);{ } WRITELN('F1  : HELP');
 GOTOXY(4,4);{ } WRITELN('F2  : DRIVE');
 GOTOXY(4,6);{ } WRITELN('F3  : FIND');
 GOTOXY(4,8);{ } WRITELN('F4  : CLEAN');
 GOTOXY(4,10);{ } WRITELN('F10 : EXIT');
end;
(****************************************************************************)
procedure test;
var
ss: string[4];
a:boolean;
I:BYTE;
begin
ASSIGN(F,path_file_virus);
SETFATTR(F,0);
reset (f);
ss[0]:=#4;
SEEK(F,8242-4);
a:=false;
X:=X+1;
if filesize(f)=8320 then
while not eof(f) do
begin
      read(f,ss[4]);
      for i:=2 to 4 do
      ss[i-1]:=ss[i];
      IF ss='P200' THEN
      BEGIN
      WRITEln (path_file_virus,'        YES VIRUS ASKARES');
      close(f);
      exit;
      END
      ELSE
      begin
      a:=true;
      end;
        end;
        IF A=TRUE THEN
      BEGIN
      X:=X+1;
      WRITEln (path_file_virus);

      END
      else WRITEln (path_file_virus);
        close(f);
end;
(****************************************************************************)
procedure test1;
var
ss: string[4];
a:boolean;
I:BYTE;
begin
ASSIGN(F,path_file_virus);
SETFATTR(F,0);
reset (f);
ss[0]:=#4;
SEEK(F,8242-4);
a:=false;
X:=X+1;
if filesize(f)=8320 then
while not eof(f) do
begin
      read(f,ss[4]);
      for i:=2 to 4 do
      ss[i-1]:=ss[i];
      IF ss='P200' THEN
      BEGIN
      WRITEln (path_file_virus,'        YES VIRUS ASKARES');
      WRITELN(' THE FILE VIRUS IN THE DELETE ....');
      WRITELN;
      delay (150);
      close(f);
      ERASE(F);
      exit;
      END
      ELSE
      begin
      a:=true;
      end;
        end;
       IF A=TRUE THEN
      BEGIN
      X:=X+1;
      WRITEln (path_file_virus);
      END
            else WRITEln (path_file_virus);
        close(f);
end;
(****************************************************************************)
Function FindFile ( Dir : DirStr; Name : FName; B:BOOLEAN) : String;
 Var
  R : SearchRec;
 Begin
  DosError := 0;
  FindFirst ( Dir + Name, AnyFile, R );
  While DosError = 0 Do
   Begin
 path_file_virus:= Dir + R.Name ;
IF B=TRUE THEN TEST1
ELSE TEST;
     FINDNEXT(R);
   End;
  FindFirst ( Dir + '*.*', AnyFile, R );
  While DosError = 0 Do
   Begin
    If ( R.Attr And Directory = Directory ) And
       ( R.Name <> '.' ) And ( R.Name <> '..' ) Then
     FindFile := FindFile ( Dir + R.Name + '\', Name,FALSE );
    FindNext ( R );
   End;
   x:=0;
 End;
(****************************************************************************)
PROCEDURE FIND;
BEGIN
WINDOW(1,1,80,26);
TEXTBACKGROUND(0);
WINDOW(5,8,79,21);
CLRSCR;
TEXTBACKGROUND(5);
WINDOW(3,7,77,20);
CLRSCR;
MENU(1,2,75,15,7);
TEXTBACKGROUND(5);
WINDOW(5,8,75,19);
CLRSCR;
TEXTCOLOR(15);
 FindFile (drv,'*.exe',FALSE );
WRITELN;
WRITE('PRESS ANY KEY TO CONTNION');
REPEAT UNTIL KEYPRESSED;
WINDOW(1,1,80,25);
TEXTBACKGROUND(1);
WINDOW(2,7,80,22);
CLRSCR;
WINDOW(1,1,80,26);
TEXTBACKGROUND(0);
WINDOW(8,10,25,20);
CLRSCR;
TEXTBACKGROUND(11);
WINDOW(6,9,23,19);
CLRSCR;
 MENU(1,0,18,10,0);
 TEXTCOLOR(0);
 GOTOXY(4,2);{ } WRITELN('F1  : HELP');
 GOTOXY(4,4);{ } WRITELN('F2  : DRIVE');
 GOTOXY(4,6);{ } WRITELN('F3  : FIND');
 GOTOXY(4,8);{ } WRITELN('F4  : CLEAN');
 GOTOXY(4,10);{ } WRITELN('F10 : EXIT');
 END;
(****************************************************************************)
PROCEDURE CLEAN;
BEGIN
WINDOW(1,1,80,26);
TEXTBACKGROUND(0);
WINDOW(11,8,70,18);
CLRSCR;
TEXTBACKGROUND(5);
WINDOW(9,7,68,17);
CLRSCR;
MENU(1,2,60,12,7);
TEXTBACKGROUND(5);
WINDOW(11,8,66,16);
CLRSCR;
TEXTCOLOR(15);
FindFile (drv,'*.exe',TRUE );
WRITELN;
WRITE('PRESS ANY KEY TO CONTNION');
REPEAT UNTIL KEYPRESSED;
WINDOW(1,1,80,26);
TEXTBACKGROUND(1);
WINDOW(9,7,70,18);
CLRSCR;
WINDOW(1,1,80,26);
TEXTBACKGROUND(0);
WINDOW(8,10,25,20);
CLRSCR;
TEXTBACKGROUND(11);
WINDOW(6,9,23,19);
CLRSCR;
 MENU(1,0,18,10,0);
 TEXTCOLOR(0);
 GOTOXY(4,2);{ } WRITELN('F1  : HELP');
 GOTOXY(4,4);{ } WRITELN('F2  : DRIVE');
 GOTOXY(4,6);{ } WRITELN('F3  : FIND');
 GOTOXY(4,8);{ } WRITELN('F4  : CLEAN');
 GOTOXY(4,10);{ } WRITELN('F10 : EXIT');
END;
(****************************************************************************)
procedure exit_p;
begin
window(1,1,80,26);
clrscr;
TEXTBACKGROUND(0);
textcolor(7);
WINDOW(1,1,80,25);
CLRSCR;
halt;
  end;
(* ************************************************************************ *)
Begin
X:=1;
X1:=0;
 clrscr;
TEXTBACKGROUND(1);
WINDOW(1,1,80,25);
CLRSCR;
TEXTBACKGROUND(0);
WINDOW(20,3,60,4);
CLRSCR;
TEXTBACKGROUND(4);
WINDOW(18,2,58,3);
CLRSCR;
textcolor(0);
gotoXy(10,1);
writeLN(' ANTI VIRUS ASKARES ');
gotoXy(13,2);
WRITE ( '  VERSION 1.1   ');
WINDOW(1,1,80,25);
TEXTBACKGROUND(0);
WINDOW(8,10,25,20);
CLRSCR;
TEXTBACKGROUND(11);
WINDOW(6,9,23,19);
CLRSCR;
 MENU(1,0,18,10,0);
 TEXTCOLOR(0);
 GOTOXY(4,2);{ } WRITELN('F1  : HELP');
 GOTOXY(4,4);{ } WRITELN('F2  : DRIVE');
 GOTOXY(4,6);{ } WRITELN('F3  : FIND');
 GOTOXY(4,8);{ } WRITELN('F4  : CLEAN');
 GOTOXY(4,10);{ } WRITELN('F10 : EXIT');
   repeat
  ch :=readkey;
  case ch of
  #0:
  begin
  ch :=readkey;
  case ch of
  #59:HELP ;
  #60 :DRIVE;
  #61 :FIND ;
  #62 : CLEAN;
  #68 :exit_p;
  end;
  END;
  END;
  UNTIL DOOO;
 END.