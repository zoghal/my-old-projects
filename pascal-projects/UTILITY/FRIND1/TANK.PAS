{********** ��� ��� ��  *************}
{********** ���� ������ *************}
{*******  77/9/18 ����� �� **********}
program tank3;
uses graph,crt;
var
   d,e:integer;
   c:pointer;{ ��ꑟ ���� }
   g:integer;
   {h:integer;}
   i,j:integer;
  gd,gm, ggoox:integer;
   ggooy:integer;
   ii:integer;
   h,k,l:integer;
   var m:array[1..700] of integer;
   var m2:array[1..700] of integer;
   n,o,p,q:integer;
   ij:integer;
   emtyaz:integer;
   em,em1:integer;
procedure z;
var a,b:integer;
var c:integer;
   begin
   a:=detect;
   initgraph(a,b,'d:\programs\tp\bgi');
begin
for c:=1 to 13 do
begin{text}
setcolor(0);
setbkcolor(0);
    settextstyle(triplexfont,horizdir,20);{��� �� ����� ���ꐤ� ���� ��� ������� ����}
     setusercharsize(6,2,c-1,0);{ ���� ������� �ꗤ�� ��� ���� }
     outtextxy(50,2,'GAME TANK');{ ����� �� ��� ���� ������ ���� ���� }
     delay(19);
setcolor(4);
    settextstyle(triplexfont,horizdir,20);{��� �� ����� ���ꐤ� ���� ��� ������� ����}
     setusercharsize(6,2,c,0);{ ���� ������� �ꗤ�� ��� ���� }
     outtextxy(50,2,'GAME TANK');{ ����� �� ��� ���� ������ ���� ���� }
    end;{endtext}
  Readln;
  CloseGraph;
end;
end;

procedure foun;
var c:integer;
begin
for c:=1 to 13 do
begin{text}
setcolor(0);
setbkcolor(0);
    settextstyle(triplexfont,horizdir,20);{��� �� ����� ���ꐤ� ���� ��� ������� ����}
     setusercharsize(6,2,c-1,0);{ ���� ������� �ꗤ�� ��� ���� }
     outtextxy(50,2,'GAME OVER');{ ����� �� ��� ���� ������ ���� ���� }
     delay(19);
setcolor(4);
    settextstyle(triplexfont,horizdir,20);{��� �� ����� ���ꐤ� ���� ��� ������� ����}
     setusercharsize(6,2,c,0);{ ���� ������� �ꗤ�� ��� ���� }
     outtextxy(50,2,'GAME OVER');{ ����� �� ��� ���� ������ ���� ���� }
    end;{endtext}
  Readln;
  CloseGraph;
  HALT(1);
end;
procedure zirsafheh;
var a,b:integer;{initgraph}
   begin
   a:=detect;
   initgraph(a,b,'d:\programs\tp\bgi');
    begin{ ��ꬤ�� ���� ����� }
    setbkcolor(8);{ ����� ��� }
    cleardevice;{ ���ꐤ� ��� ���� 푕 }
    rectangle(10,10,getmaxx,getmaxy);{ ���� ������ ��� }
    rectangle(20,70,422,470);{ ���� ������ ��� }
     begin{text}
     settextstyle(triplexfont,horizdir,3);{��� �� ����� ���ꐤ� ���� ��� ������� ����}
     setusercharsize(3,3,1,0);{ ���� ������� �ꗤ�� ��� ���� }
     outtextxy(30,20,'GAME TANK');{ ����� �� ��� ���� ������ ���� ���� }
     setusercharsize(1,2,2,2);
     outtextxy(530,435,'EMTYAZ :');
     setusercharsize(1,2,2,2);
     outtextxy(430,120,'MARHALEA :');
     outtextxy(430,435,'PAUSE :');
     end;{endtext}
      begin{tank}
      setfillstyle(9,6);{color}{( ��� ) ����� ���}
      bar(200,400,270,465);{ ���� ������ ��� }
      setfillstyle(1,5);
      fillellipse(234,430,20,25);{��� �� ����}
      rectangle(230,360,238,405);
      {rectangle(200,360,270,465);}{ ��ꑟ �� ���� ������ }
      end;
  {readln;
  closegraph;}
    end;
  end;
procedure key2;
 var code:integer;
       ch:char;
 function getkey:integer;
  begin
  ch:=readkey;
  if ord(ch)<>0 then getkey:=ord(ch)
  else getkey:=ord(readkey);
  end;{getkey}
  begin
  repeat
  begin
  randomize;
  h:=random(385);
  if h<60 then h:=60;
  if h mod 2<>0 then h:=h+1;
  if h>382 then h:=382;
  m[l]:=h;
  m2[l]:=k; l:=l+1;
  setcolor(4);{color}{( ��� ) ����� ���}
  circle(m[n],m2[n],3);
  n:=n+1;
  o:=(random(5)+1);
  {for ii:=1 to 40 do}
    begin
    {delay(1);}
    {setcolor(8);{color}{( ��� ) ����� ���}
    {circle(h,k,4);}
    {delay(7);}
    for ii:=1 to 2 do
    begin
    setcolor(8);{color}{( ��� ) ����� ���}
    circle(m[o],m2[o],3);
    m2[o]:=m2[o]+7;
    setcolor(4);{color}{( ��� ) ����� ���}
    circle(m[o],m2[o],3);
    if m2[o]>352 then p:=1;
    if p=1 then foun;{��������������� �������(��������)����������� ������}
    end;
  setcolor(15);
  end;
  k:=77{75};
  {k:=170;
  h:=234;}
  end;
  code:=getkey;
  if code=77 then{ ���� ���}
  begin
  SOUND(999);
  DELAY(7);
  NOSOUND;
  {rectangle(d200,360,e270,465);}{ ��ꑟ �� ���� ������ }
  setfillstyle(9,6);{color}{( ��� ) ����� ���}
  bar(d,400,e,465);{ ���� ������ ��� }
  setfillstyle(1,5);
  fillellipse(g,430,20,25);{��� �� ����}
  rectangle(i,360,j,405);
  setfillstyle(9,8);{( ��� ) ����� ���}
  bar(d,360,e,465);{ ���� 푕}
  d:=d+7;e:=e+7;
  if d>350 then d:=350;
  if e>420 then e:=420;
  setfillstyle(9,6);
  bar(d,400,e,465);{ ���� ������ ��� }
  g:=g+7;{h:=h+3;}
  i:=i+7;j:=j+7;
  if g>385 then g:=385;
  setfillstyle(1,5);
  fillellipse(g,430,20,25);{��� �� ����}
  if i>380 then i:=380;
  if j>388 then j:=388;
  rectangle(i,360,j,405);
  ggoox:=ggoox+7;
  if ggoox>382 then ggoox:=382;
  if p=1 then foun;
   end;
 if code=75 then{ ���� ���}
  begin
  SOUND(899);
  DELAY(7);
  NOSOUND;
  {rectangle(d200,360,e270,465);}{ ��ꑟ �� ���� ������ }
  setfillstyle(9,6);{color}{( ��� ) ����� ���}
  bar(d,400,e,465);{ ���� ������ ��� }
  setfillstyle(1,5);
  fillellipse(g,430,20,25);{��� �� ����}
  rectangle(i,360,j,405);
  setfillstyle(9,8);{( ��� ) ����� ���}
  bar(d,360,e,465);{ ���� 푕}
  d:=d-7;e:=e-7;
  if d<25 then d:=25;
  if e<95 then e:=95;
  setfillstyle(9,6);
  bar(d,400,e,465);{ ���� ������ ��� }
  g:=g-7;{h:=h+3;}
  i:=i-7;j:=j-7;
  if g<60 then g:=60;
  setfillstyle(1,5);
  fillellipse(g,430,20,25);{��� �� ����}
  if i<55 then i:=55;
  if j<63 then j:=63;
  rectangle(i,360,j,405);
  ggoox:=ggoox-7;
  if ggoox<60 then ggoox:=60;
  if p=1 then foun;
  end;

  if code=32 then
  begin
   begin
       Sound(999);        { Beep }
       Delay(5);        { For 200 ms }
       NoSound;           { Relief! }
   end;
   setcolor(4);{color}{( ��� ) ����� ���}
   {circle(ggoox,ggooy,6);}
   setfillstyle(1,0);
   fillellipse(ggoox,ggooy,5,5);{��� �� ����}
    for ii:=1 to 39 do
    begin
    delay(7);
    setcolor(8);{color}{( ��� ) ����� ���}
    {circle(ggoox,ggooy,6);}
    setfillstyle(8,8);
    fillellipse(ggoox,ggooy,5,5);{��� �� ����}
    for ij:=1 to 10 do
    begin
    if m2[q]=ggooy then
    begin
    m2[q]:=m2[q]-7;
    emtyaz:=emtyaz+1;
    setcolor(4);
    if ggooy>81 then
    begin
    outtextxy(610,em,'�');
    em:=em-1;
    end;
    end;
    q:=q+1;
    end;
    q:=1;
    ij:=1;
    ggooy:=ggooy-7;
    delay(7);
    setcolor(4);{color}{( ��� ) ����� ���}
   { circle(ggoox,ggooy,6);}
   setfillstyle(1,0);
   fillellipse(ggoox,ggooy,5,5);{��� �� ����}
    end;
   setcolor(15);
   ggooy:=350;
   q:=1;
   ij:=1;
   if p=1 then foun;
   end;
  until code=27;
  end;
  begin
  d:=200;e:=270;
  g:=234;{h:=430;}
  i:=230;j:=238;
  ggoox:=234;
  ggooy:=350;
  h:=0;{234;}
  k:=77{75};
  l:=1;
  n:=1;
  o:=0;
  p:=0;
  q:=1;
  em:=450;
  em1:=1;
  emtyaz:=0;
  z;
  zirsafheh;
  key2;
  begin
  cleardevice;
  closegraph;
  clrscr;
  end;
  end.
