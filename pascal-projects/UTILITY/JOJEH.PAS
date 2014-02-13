program prog74;
uses crt,graph;
var size, x,y,x1,x2,y1,y2,r,d1,d2,i:integer;
p:pointer;
begin
initgraph(x,Y,'C:\compiler\tp\bgi');
setfillstyle(1,14);
fillellipse(300,250,60,90);
{rectangel(230,160,370,360);}
setcolor(2);
line(240,250,350,200);
line(242,230,340,185);
line(330,172,245,210);
line(255,190,315,162);
line(305,200,305,185);
line(290,188,290,173);
line(280,215,280,230);
line(265,200,265,217);
setcolor(6);
for  i:=1  to  10  do
begin
circle(295,250,i);
circle(330,250,i);
end;
setcolor(0);
line(285,235,305,237);
line(320,240,340,230);
line(310,265,300,270);
line(310,265,322,270);
setcolor(12);
arc(310,260,210,330,30);
fillellipse(295,340,30,15);
fillellipse(340,340,30,15);
size:=imagesize(230,160,370,360);
    getmem(p,size);
getimage(230,160,370,360,p^);
putimage(230,160,p^,1);
for i:=1 to 100 do
begin
putimage(100+i,123,p^,1);
delay(40);
putimage(100+i,123,p^,1);
end;
putimage(100+i,123,p^,1);
readln;
end.
 {setfillstyle(4,12);
fillellipse(295,340,30,15);
fillellipse(340,340,30,15);
readln;
end.}



