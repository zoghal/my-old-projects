USES crt;
var  x:word;
label 10;
begin
     clrscr;
     x:=1;
10:  write(x,' ');
     x:=x+1;
{     if x<101 then goto 10;}
      goto 10;
     readln;
end.