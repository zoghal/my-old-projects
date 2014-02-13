uses crt,graph;

var
  key1,key2 : char ;
  countpad:1..6;
  K,X,c:word;
  gd,gm,r,fon:integer;
  XX:CHAR;
{**********************************************}
 procedure  pad(cpad,mode:integer);
  begin
   if mode = 2 then
       setcolor(0)
   else
       setcolor(3);

   case cpad  of
    1:   RECTANGLE(8,10,70,35);
    2:   rectangle(85,10,170,35);
    3:   rectangle(189,10,255,35);
    4:   rectangle(298,10,430,35);
    5:   rectangle(465,10,510,35);
    6:   rectangle(580,10,630,35);

   end; { case}

  end;
 {****************************************************}
 PROCEDURE TIMHA(mode:byte);
    BEGIN
       if mode = 1 then
         setcolor(15)
       else
         setcolor(0);

       rectangle(20,50,300,380);

       if mode = 1 then
         setcolor(12)
       else
         setcolor(0);


       settextstyle(1,0,1);
       outtextxy(25,55,'BRAZIL');
       outtextxy(25,75,'FRANCE');
       outtextxy(25,95,'ENGLAND');
       outtextxy(25,115,'ROMANIA');
       outtextxy(25,135,'TUNISIA');
       outtextxy(25,155,'U.S.A');
       outtextxy(25,175,'AUTRISHIA');
       outtextxy(25,195,'BOLGARIA');
       outtextxy(25,215,'MARAKESH');
       outtextxy(25,235,'KOREA.S');
       outtextxy(25,255,'ITALIYA');
       outtextxy(25,275,'IRAN');
       outtextxy(25,295,'JAPAN');
       outtextxy(25,315,'HOLLAND');
       outtextxy(25,335,'K.S.R');
       outtextxy(25,355,'ARJANTIN');
       outtextxy(170,55,'GERMANY');
       outtextxy(170,75,'SOUTH AFRICA');
       outtextxy(170,95,'SHILI');
       outtextxy(170,115,'KAMEROUN');
       outtextxy(170,135,'NORVEJH');
       outtextxy(170,155,'JAMAIKA');
       outtextxy(170,175,'DENMARK');
       outtextxy(170,195,'PARAGUAE');
       outtextxy(170,215,'SCATLAND');
       outtextxy(170,235,'SPAINE');
       outtextxy(170,255,'MEXICE');
       outtextxy(170,275,'NIJERIE');
       outtextxy(170,295,'YOGOSLAVIYA');
       outtextxy(170,315,'COROVACIA');
       outtextxy(170,335,'COLOMBIA');
       outtextxy(170,355,'BELJHICE');
 END;
{-------------------------------------------------}
PROCEDURE GROH(mode:integer);
     BEGIN
       if mode = 1 then
         setcolor(15)
       else
         setcolor(0);
       rectangle(80,50,240,330);

       if mode = 1 then
         setcolor(12)
       else
         setcolor(0);


       settextstyle(1,0,1);
       outtextxy(105,55,'GROH A');
       outtextxy(105,75,'GROH B');
       outtextxy(105,95,'GROH C');
       outtextxy(105,115,'GROH D');
       outtextxy(105,135,'GROH E');
       outtextxy(105,155,'GROH F');
       outtextxy(105,175,'GROH G');
       outtextxy(105,195,'GROH H');
       outtextxy(105,215,'1/8 FINAL');
       outtextxy(105,235,'1/4 FINAL');
       outtextxy(105,255,'1/2 FINAL');
       outtextxy(105,275,'RADEBANDY');
       outtextxy(105,295,'FINAL');
   END;
{-------------------------------------------------}
PROCEDURE JAD(mode:byte);
     BEGIN
       if mode = 1 then
         setcolor(15)
       else
         setcolor(0);
        rectangle(30,50,550,300);

       if mode = 1 then
         setcolor(12)
       else
         setcolor(0);

       settextstyle(1,0,1);
       outtextxy(45,55,'A');
       outtextxy(45,75,'BRAZIL');
       outtextxy(45,95,'SCATLAND');
       outtextxy(45,115,'MRACSH');
       outtextxy(45,135,'NORVEJH');
       outtextxy(45,175,'B');
       outtextxy(45,195,'ITALY');
       outtextxy(45,215,'SHILI');
       outtextxy(45,235,'KAMERON');
       outtextxy(45,255,'AUTRESH');
       outtextxy(145,55,'C');
       outtextxy(145,75,'FRANCE');
       outtextxy(145,95,'SOUTH AFRICA');
       outtextxy(145,115,'K.S.R');
       outtextxy(145,135,'DANMARK');
       outtextxy(145,175,'D');
       outtextxy(145,195,'SPANYA');
       outtextxy(145,215,'NEGERIA');
       outtextxy(145,235,'PARAGOA');
       outtextxy(145,255,'BOLGARIA');
       outtextxy(290,55,'E');
       outtextxy(290,75,'HOLAND');
       outtextxy(290,95,'BELJHEC');
       outtextxy(290,115,'S.KOREA');
       outtextxy(290,135,'MEXIC');
       outtextxy(290,175,'F');
       outtextxy(290,195,'GERMANY');
       outtextxy(290,215,'U.S.A');
       outtextxy(290,235,'IRAN');
       outtextxy(290,255,'YOGOSLAVYA');
       outtextxy(420,55,'G');
       outtextxy(420,75,'ROMANI');
       outtextxy(420,95,'KOLOMBYA');
       outtextxy(420,115,'TONES');
       outtextxy(420,135,'ENGLAND');
       outtextxy(420,175,'H');
       outtextxy(420,195,'ROMANI');
       outtextxy(420,215,'KOLOMBYA');
       outtextxy(420,235,'TONES');
       outtextxy(420,255,'ENGLAND');
    END;
{-------------------------------------------------}
   procedure rade(mode:byte);
    begin
       if mode = 1 then
         setcolor(15)
       else
         setcolor(0);

       rectangle(120,50,450,400);
       if mode = 1 then
         setcolor(12)
       else
         setcolor(0);

       settextstyle(1,0,1);
       outtextxy(125,70,'1 brazil');
       outtextxy(125,90,'2 france');
       outtextxy(125,110,'3 germany');
       outtextxy(125,130,'4 croaty');
       outtextxy(125,150,'5 argentin');
       outtextxy(125,170,'6 italy');
       outtextxy(125,190,'7 czech ');
       outtextxy(125,210,'8 yougoslavic');
       outtextxy(125,230,'9 nedherland');
       outtextxy(125,250,'10 england');
       outtextxy(125,270,'11 mexic');
        outtextxy(125,290,'12 rommania');
       outtextxy(125,310,'13 morocco ');
       outtextxy(125,330,'14 norway ');
       outtextxy(125,350,'15 chile');
       outtextxy(275,70,'16 spain');
       outtextxy(275,90,'17 united states');
       outtextxy(275,110,'18 denmark');
       outtextxy(275,130,'19 s.korea');
       outtextxy(275,150,'20 egvpt');
        outtextxy(275,170,'21 japan');
       outtextxy(275,190,'22 austria');
       outtextxy(275,210,'23 zombia');
       outtextxy(275,230,'24 paraguay');
       outtextxy(275,250,'25 sweden');
         outtextxy(275,270,'26 tunisia');
       outtextxy(275,290,'27 colombia');
       outtextxy(275,310,'28 s.africa');
       outtextxy(275,330,'29 slovakia');
       outtextxy(275,350,'30 k.s.r');
        end;
{-------------------------------------------------}
procedure exit(mode:byte);
 begin

        if mode = 1 then
         setcolor(15)
        else
         setcolor(0);
         rectangle(580,60,630,85);

       if mode = 1 then
         setcolor(12)
       else
         setcolor(0);

       settextstyle(1,0,1);
       outtextxy(585,62,'exit');

 end;
{-------------------------------------------------}
       procedure groha(mode:byte);
       begin
       if mode = 1 then
         setcolor(15)
       else
         setcolor(0);

       rectangle(100,100,620,400);
       if mode = 1 then
         setcolor(12)
       else
         setcolor(0);
       settextstyle(1,0,5);
       outtextxy(105,120,'berazil 2*** scatland 1');
       outtextxy(105,160,'moracco 2*** norvey 1');
       outtextxy(105,190,'scatland 1*** norvey 1');
       outtextxy(105,220,'brazil 3*** moracco 0');
       outtextxy(105,250,'brazil 1*** norvay 2');
       outtextxy(105,280,'scatland 0*** moracco 3');
       end;
{-------------------------------------------------}
       procedure grohb(mode:byte);
        begin
       if mode = 1 then
         setcolor(15)
       else
         setcolor(0);

          rectangle(100,100,620,400);
       if mode = 1 then
         setcolor(12)
       else
         setcolor(0);
          settextstyle(1,0,5);
          outtextxy(105,120,'italy 2*** chili 2');
       outtextxy(105,160,'kameron 1*** outrish 1');
       outtextxy(105,190,'italy 3*** kamron 1');
        outtextxy(105,220,'italy 2*** outrish 0');
       outtextxy(105,250,'shili 1*** outrish 1');
        outtextxy(105,280,'shili 2*** kameron 1');
       end;
{*****************************************************}
procedure  graphic;
begin

      FON:=INSTALLUSERFONT('SCRI.CHR');
      setbkcolor(8);
      settextstyle(4,0,5);
      setcolor(12);
      OUTTEXTXY(60,10,'*IN THE NAME OF GOD*');
      SETTEXTSTYLE(1,0,5);
      outtextxy(10,100,'WELL COM TO CUP SOFT WARE ');
      OUTTEXTXY(10,200,'WRITERS :');
      DELAY(500);
      OUTTEXTXY(10,250,'ALI BAHRAMIYAN ');
      delay(500);
       OUTTEXTXY(10,300,'VAHID SHAKERY');
       delay(500);
       OUTTEXTXY(10,350,'M.H BIGDELY  ');
       delay(500);
      settextstyle(fon,0,1);
      OUTTEXTXY(450,280,'  ˆë˛ıê§˙ì ¸Û‰ ');
      DELAY(500);
      outtextxy(450,330,'    ¸§Óë™ ¢˛ü¯ ');
      DELAY(500);
      OUTTEXTXY(450,380,'    ¸Û¢Ó˛ì.û.Ù ');
      DELAY(5000);
      CLEARDEVICE;
   SETBKCOLOR(8);
   SETCOLOR(1);
    arc(244,180,5,225,140);
   setcolor(1);
    arc(400,515,430,155,346);
    line(87,370,125,340);
    line(125,340,150,376);
    line(150,376,175,360);
    line(175,360,185,370);
    line(185,370,190,367);
    line(190,367,200,375);
    line(200,375,240,355);
    line(240,355,238,365);
    line(238,365,300,346);
    line(300,346,295,360);
    line(295,360,390,340);
    line(390,340,426,300);
    line(426,300,395,265);
    line(395,265,435,225);
    line(435,225,475,200);
    line(475,200,517,190);
    setfillstyle(1,1);
    floodfill(300,200,1);
    arc(120,200,278,100,59);
     setfillstyle(1,1);
    floodfill(300,200,1);
    arc(180,80,205,401,59);
    arc(315,75,145,325,59);
    arc(255,195,15,215,59);
    arc(380,200,92,155,59);
    settextstyle(13,0,9);
    outtextxy(215,180,'FRANCE 98');
    DELAY(2500);
    SETTEXTSTYLE(7,0,9);
    OUTTEXTXY(40,350,'FRANCE 98');
   delay(3000);
   CLEARDEVICE;
   SETBKCOLOR(8);
   setcolor(2);
   line(0,295,639,295);
   line(0,300,639,300);
   DELAY(200);
   line(0,310,639,310);
   line(0,329,639,329);
   DELAY(200);
   line(0,350,639,350);
   line(0,385,639,385);
   DELAY(200);
   line(0,430,639,430);
   line(0,479,639,479);
   DELAY(200);
   line(315,295,340,639);
   line(300,295,260,639);
   line(285,295,190,639);
   line(270,295,120,639);
   line(250,295,40,639);
   line(230,295,65,479);
   line(210,295,8,475);
   line(190,295,0,423);
   line(170,295,0,380);
   line(150,295,0,350);
   line(130,295,0,330);
   line(110,295,0,310);
   line(70,295,0,300);
   line(330,295,420,639);
   line(345,295,500,639);
   line(360,295,580,639);
   line(380,295,660,639);
   line(400,295,740,639);
   line(420,295,820,639);
   line(440,295,900,600);
   line(460,295,900,500);
   line(480,295,900,440);
   line(500,295,900,380);
   line(520,295,900,340);
   delay(1000);
   SETTEXTSTYLE(7,0,15);
    SETCOLOR(11);
      OUTTEXTXY(40,10,'* FIFA * ');
      DELAY(800);
      SETTEXTSTYLE(1,0,15);
      SETCOLOR(14);
   OUTTEXTXY(20,150,'FAIR');
   DELAY(500);
     SETTEXTSTYLE(7,0,20);
     setcolor(15);
    OUTTEXTXY(290,160,'*');
    delay(500);
   SETTEXTSTYLE(1,0,15);
   SETCOLOR(14);
   OUTTEXTXY(340,150,'PLAY');
   delay(1000);
   cleardevice;
end;

{ ****************************************************}
 begin
         gd:=detect;
         initgraph(gd,gm,'c:\tp\bgi');
         graphic;
         setbkcolor(8);
         rectangle(5,5,635,40);
         rectangle(5,40,635,479);
         setcolor(1);
         settextstyle(7,0,1);
         outtextxy(10,10,'teams');
         outtextxy(100,10,'games');
         outtextxy(190,10,'grophs');
         outtextxy(470,10,'help');
         outtextxy(300,10,'classification');
         outtextxy(580,10,'EXIT');

         setcolor(3);
         rectangle(8,10,70,35);
         countpad  := 1 ;

     repeat
       key1 := readkey ;
       case ord(key1) of
        13 :
            begin
             case countpad of
              1:
                begin
                 timha(1);
                 repeat until ord(readkey) = 27 ;
                 timha(2);
                end;
              2:
                begin
                 groh(1);
                 repeat until ord(readkey) = 27 ;
                 groh(2);
                end;
              3:
                begin
                 jad (1);
                 repeat until ord(readkey) = 27 ;
                 jad (2);
                end;
              4:
                begin
                 rade(1);
                 repeat until ord(readkey) = 27 ;
                 rade(2);
                end;
              5:
                begin
                 groha(1);
                 repeat until ord(readkey) = 27 ;
                 groha(2);
                 grohb(1);
                 repeat until ord(readkey) = 27 ;
                 grohb(2)


                end;
              6:
               begin
               exit(1);
               repeat
                 xx:=readkey;
                 if ord(xx) = 13 then
                   halt;

               until ord(xx) = 27 ;
               exit(2);
               end;
             end;
            end;
         0 :
            begin
              key2 := readkey;
              if ord(key2) = 77 then
               begin
                pad(countpad,2);

                if countpad = 6 then
                   countpad := 1
                else
                 countpad:= countpad + 1 ;
                pad(countpad,1);
               end;
              if ord(key2) = 75 then
               begin
                pad(countpad,2);

                if countpad = 1 then
                   countpad := 6
                else
                 countpad:= countpad - 1 ;
                pad(countpad,1);
               end;

            end;
      end; {for case}

     UNTIL FALSE
END.
