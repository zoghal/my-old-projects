program  qrad(output);
uses crt,graph;
var
    gd,gm:integer;
    x,y:word;
(* ********************************************************************* *)
(* ********************************************************************* *)
procedure one;

 begin
       rectangle(87,87,578,370);
       rectangle(90,89,580,373);
       for x:=100 to   570 do
         begin
            delay(1);
            for  y:=98  to 360 do
                putpixel(x,y,3);
         end;
end;
(* ********************************************************************* *)
(* ********************************************************************* *)
procedure   tow;
begin
     setbkcolor(8);
     setcolor(14);
     SetTextStyle(defaultfont, HorizDir, 3);
    outtextxy(30,10,'WELCOME TO RESIDENT TIME ');
    outtextxy(155,50,'#  soft ware  #');
    delay(100);


               SetTextStyle(defaultfont, HorizDir, 2);
    setcolor(4);
     delay(300);
     outtextxy(110,135,'.–¨ù¢ªôşìõùàê‘Ÿ¤¢ô—¨ş¨ –ä‘¨');
     delay(100);
     outtextxy(130,210,'’‘óì÷ö‘—¨¤÷û¤—øş•õ‘î¥î¤õ');
     delay(100);
        SetTextStyle(defaultfont, HorizDir, 1);
     outtextxy(140,290,'$ â÷‘ì ö‘ş¢¢õü¢úõ _ ü¨ø¤ğ¢şŸø $');
end;
procedure endprogram;
var
   k:longint;
begin
     randomize;
     x:=getmaxX;
     y:=getmaxY;
     for k:=1 to 310000 do
          putpixel(random(x),random(y),random(16));
     delay(200);
end;
(* ++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++ *)
begin
    clrscr;
    gd:=detect;
    initgraph(gd,gm,'a:\');
    one;
    tow;
    delay(2500);
    endprogram;
    closegraph;
end.

