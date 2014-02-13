program maglob;
var a,d,s,y,sum:word;
begin
     write('enter a number:' );
     readln(a);
     s:=a div 100;
     a:=a mod 100;
     d:=a div 10;
     y:=a mod 10;
     sum:=y*100+d*10+s;
     write('varon a number := ' ,sum);
     readln;
end.

