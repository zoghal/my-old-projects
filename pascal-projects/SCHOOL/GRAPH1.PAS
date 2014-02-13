program graph1;
uses crt,graph;
var
  gd,gm:Integer;
  x1,x2,y1,y2:Integer;
  i,c,d :byte;
begin
  X1 :=135;
  X2:=50;
  initgraph(gd,gm,'c:\tp\bgi');
  cleardevice;
  setfillstyle(9,15);
  bar (50,250,372,450);
  setfillstyle(9,7);
  bar (372,250,550,450);
  FOR I:=1 TO 65 DO
  BEGIN
  LINE (X1,30,X2,250);
  X1:=X1+5;
  X2:=X2+5;
  END;
  LINE (454,30,550,250);
  SETCOLOR(1);
  CIRCLE (455,145,30);
  readkey;
  closegraph;
end.