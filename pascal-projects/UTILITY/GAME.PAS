program game;
uses crt;
label
 start;
var key,x,y :byte;
I :WORD;
PROCEDURE BOMB;
BEGIN
GOTOXY(0,0);
 FOR I:=0 TO 2000 DO
 BEGIN
 DELAY(1);
 textcolor(trunc(random ((16-1)+1)));
 WRITE('°');
END;
END;

procedure start_devar;
begin
for i:=1 to 24 do
   begin
     textcolor(trunc(random ((16-1)+1)));
     gotoxy(0,i);
     write(#220);
     gotoxy(80,i);
     write(#220);
   end;
end;

procedure toop(x,y :word);
begin
  textcolor(15);
  gotoxy(x,y);
  write(#177);
  gotoxy(x-2,y+1);
  write('±±±±±');
  gotoxy(x-2,y+2);
  write('±±±±±');
end;

begin
start:
randomize;
textcolor(0);
textbackground(0);
clrscr;
x:=35;
y:=22;
toop(x,y);
  repeat
    start_devar;
    key :=ord(readkey);
    clrscr;
    if key=72 then
       begin
         if y<>1 then y:=y-1;
         toop(x,y);
       end;
    if key=80 then
       begin
         if y<> 22 then y:=y+1;
         toop(x,y);
       end;
    if key=77 then
       begin
         if x=77 then
            begin
              BOMB;
              GOTO start;
            end;
         x:=x+1;
         toop(x,y);
       end;
    if key=75 then
       begin
           if x=4 then
            begin
            BOMB;
            GOTO start;
            end;

         x:=x-1;
         toop(x,y);
       end;
  until key = 27;
end.