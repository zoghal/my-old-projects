program graph2;
uses crt,graph;
var
  gd,gm:Integer;
  x1,x2,y1,y2:Integer;
  i,c,d :byte;
begin

  initgraph(gd,gm,'c:\tp\bgi');
  CLEARDEVICE;
  ARC (280,270,178,360,180);
  LINE (100,100,100,270);
   LINE (460,100,460,270);
   X1:=135;
  FOR I :=1 TO 15 DO
  BEGIN
  ARC (X1,55,180,360,50);
  X1:=X1+21;
  END;
  X2:=35;
  FOR I:=1 TO 10 DO
  BEGIN
  CIRCLE (180,180,X2);
  X2:=X2-2
  END;

  readkey;
  closegraph;
end.