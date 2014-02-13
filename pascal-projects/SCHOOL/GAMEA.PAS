program g;
uses crt;
var
sum9,f,sum1,sum8,sum6,sum7,sum2,sum3,sum5,sum4: integer;
begin
clrscr;
write('enter a number=');
readln(f);
sum1:=f div 10000;
f:=f mod 10000;
sum3:=f div 1000;
sum4:=f mod 1000;
sum5:=f div 100;
sum6:=f mod 100;
sum7:=f div 10;
sum8:=f mod 10;
sum9:=sum1+sum3+sum4;
writeln('sum >>',sum5);

readln

end.