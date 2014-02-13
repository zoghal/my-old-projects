#include <graphics.h>
#include <stdio.h>
#include <stdlib.h>
#include <conio.h>
void main(void)
 {
   int dr = DETECT, mode, errorcode;
   int p1[8] = {100, 100, 300, 100, 200, 200, 100, 100};
   int p2[8] = {150, 120, 250, 120, 200, 170, 150, 120};
   clrscr();
   initgraph(&dr, &mode, "d:\\bc\\bgi");
   errorcode = graphresult();
   if (errorcode != 0) {
   printf(" graphics Error :%s\n", grapherrormsg(errorcode));
   exit(1);
   }
   cleardevice();
   setcolor(WHITE);
   setbkcolor(BLACK);

   rectangle(100, 100, 300, 200);
   getch();

   setfillstyle(4, CYAN);
   bar(120, 120, 180, 200);
   getch();

   setfillstyle(2, GREEN);
   bar3d(210, 120, 270, 200, 15, 0);
   getch();

   setfillstyle(5, RED);
   bar3d(210, 120, 270, 200, 15, 0);
   outtextxy(220, 130, "salam");
   getch();

   cleardevice();
   drawpoly(4, p1);
   getch();

   fillpoly(4, p2);
   getch();                 /*       neviseh     */

   settextstyle(0, 0, 8);
   outtextxy(320, 230, "salam");
   getch();

   settextstyle(1, 0, 8);
   outtextxy(350, 130, "salam");
   getch();

   settextstyle(2, 0, 10);
   outtextxy(300,330, "salam");
   getch();

   settextstyle(3, 1, 10);
   outtextxy(200,130, "salam");
   getch();

   settextstyle(4, 1, 10);
   outtextxy(150,230, "salam");
   getch();


		    /*  end neviseh   */
   bar(50, 50 ,100, 100);
   getch();
   bar3d(120,120, 135, 233, 3, 0);
   getch();

   fillellipse(300, 300, 100, 150);
   getch();
   sector(300,300,0, 150, 100, 150);
   getch();


   closegraph();
   }

