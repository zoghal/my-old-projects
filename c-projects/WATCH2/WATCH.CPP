#include <graphics.h>
#include <math.h>
#include <stdlib.h>
#include <dos.h>
#include <conio.h>
 char s[2];
 struct time time1, time2;
 unsigned char sss, hhh, mmm, ss100;
 int gd, gm;
 int midx, midy, r, maxx, maxy, i;
void main (void)
{
 gd = DETECT;
 initgraph ( &gd, &gm, "" );
 maxx = getmaxx();
 maxy = getmaxy();
 midx = maxx / 2;
 midy = maxy / 2;
 r = midx / 2;
 setcolor ( 0 );
 setfillstyle ( 1, 15 );
 bar ( 0, 0, maxx, maxy );
 setfillstyle ( 1, 0 );
 fillellipse ( midx, midy, midx / 50, floor((midy / 50)*(maxx/maxy)));
 setlinestyle ( 0, 0, 3 );
 circle ( midx, midy, r+4 );
 settextstyle (7, 0, 2);
 settextjustify ( CENTER_TEXT, CENTER_TEXT );
 for (i=0; i<60; i++ )
  {
   if (!(i % 5))
    circle (midx + floor(cos(3.14/30*i)*(r+4)),
	    midy + floor(sin(3.14/30*i)*(r+4)), 3 );
   else
    line (midx + floor(cos(3.14/30*i)*(r-7)),midy + floor(sin(3.14/30*i)*(r-7)),
	  midx + floor(cos(3.14/30*i)*r),midy + floor(sin(3.14/30*i)*r));
  }
 settextstyle (7, 0, 3);
 settextjustify ( CENTER_TEXT, CENTER_TEXT );
 for (i=1; i<13; i++)
  {
   itoa ( i, s, 10 );
   outtextxy ( midx + floor((r - 25) * cos(-3.14/2+(i*(3.14/6)))),
	       midy + floor((r - 25) * sin(-3.14/2+(i*(3.14/6)))), s );
  }
 setcolor ( 2 );
 settextstyle ( 7, 0, 3 );
 outtextxy ( midx, midy - r / 2 + 10, "SEIKO" );
 settextstyle ( 0, 0, 1 );
 outtextxy ( midx, midy - r / 4, "Watch Project" );
 settextstyle ( 5, 0, 1 );
 outtextxy ( midx, midy + r / 3, "Water Proof" );
 gettime ( &time1 );
 hhh = time1.ti_hour;
 mmm = time1.ti_min;
 sss = time1.ti_sec;
 ss100 = time1.ti_hund;
 setwritemode ( XOR_PUT );
 line ( midx, midy, midx + floor((r-55)*cos(-3.14/2+(hhh*(3.14/6)+(mmm*3.14/360)))),
		    midy + floor((r-55)*sin(-3.14/2+(hhh*(3.14/6)+(mmm*3.14/360)))));
 line ( midx, midy, midx + floor((r-20)*cos(-3.14/2+(mmm*(3.14/30)+(sss*3.14/1800)))),
		    midy + floor((r-20)*sin(-3.14/2+(mmm*(3.14/30)+(sss*3.14/1800)))));
 setlinestyle ( 0, 0, 1 );
 line ( midx, midy, midx + floor((r-15)*cos(-3.14/2+(sss*(3.14/30)))),
		    midy + floor((r-15)*sin(-3.14/2+(sss*(3.14/30)))));
 setfillstyle ( 1, 0 );
 for (i=1; i<=(hhh%12); i++)
  bar ( 10, maxy - (i % 12)*10, 20, maxy - (i % 12)*10 + 8);
 for (i=1; i<=mmm; i++)
  bar ( 40, maxy - i*2, 50, maxy - i*2);
 for (i=1; i<=sss; i++)
  bar ( 70, maxy - i*2, 80, maxy - i*2);
 settextstyle ( 0, 0, 0 );
 setcolor ( 0 );
 for (i=1; i<=12; i++)
  {
   itoa ( i, s, 10 );
   settextjustify ( LEFT_TEXT, CENTER_TEXT );
   outtextxy ( 21, 5 + maxy - (i % 12)*10, s );
   itoa ( i*60/12, s, 10);
   settextjustify ( CENTER_TEXT, CENTER_TEXT );
   outtextxy ( 59, maxy - (i % 12)*10, s );
  }
 setcolor ( 15 );
 line (10, maxy - 121, 80, maxy - 121 );
 setcolor ( 0 );
 settextstyle ( 0, 1, 1 );
 settextjustify ( CENTER_TEXT, CENTER_TEXT );
 outtextxy ( 15, maxy - 140, "hour" );
 outtextxy ( 45, maxy - 148, "minute" );
 outtextxy ( 75, maxy - 148, "second" );
 do
 {
  if (kbhit())
   if (getch() == 27)
    break;
  gettime ( &time1 );
  if (sss != time1.ti_sec)
   {
    if (time1.ti_sec < sss )
     {
      setfillstyle ( 1, 15 );
      bar ( 70, maxy - 120, 80, maxy );
      setfillstyle ( 1, 0 );
     }
    if (time1.ti_min < mmm)
     {
      setfillstyle ( 1, 15 );
      bar ( 40, maxy - 120, 50, maxy );
      setfillstyle ( 1, 0 );
     }
    if (time1.ti_hour < hhh)
     {
      setfillstyle ( 1, 15 );
      bar ( 10, maxy - 120, 20, maxy );
      setfillstyle ( 1, 0 );
     }
    bar ( 10, maxy - (time1.ti_hour % 12)*10, 20, maxy - (time1.ti_hour % 12)*10 + 8);
    bar ( 40, maxy - time1.ti_min*2, 50, maxy - time1.ti_min*2);
    bar ( 70, maxy - time1.ti_sec*2, 80, maxy - time1.ti_sec*2);
    setcolor ( 2 );
    if (sss != time1.ti_sec)
     {
       setlinestyle ( 0, 0, 3 );
       line ( midx, midy, midx + floor((r-55)*cos(-3.14/2+(hhh*(3.14/6)+(mmm*3.14/360)))),
			  midy + floor((r-55)*sin(-3.14/2+(hhh*(3.14/6)+(mmm*3.14/360)))));
       line ( midx, midy, midx + floor((r-20)*cos(-3.14/2+(mmm*(3.14/30)+(sss*3.14/1800)))),
			  midy + floor((r-20)*sin(-3.14/2+(mmm*(3.14/30)+(sss*3.14/1800)))));
     }
    setlinestyle ( 0, 0, 1 );
    line ( midx, midy, midx + floor((r-15)*cos(-3.14/2+(sss*(3.14/30)))),
		       midy + floor((r-15)*sin(-3.14/2+(sss*(3.14/30)))));
    if (sss != time1.ti_sec)
     {
       setlinestyle ( 0, 0, 3 );
       line ( midx, midy, midx + floor((r-55)*cos(-3.14/2+(time1.ti_hour*(3.14/6)+(time1.ti_min*3.14/360)))),
			  midy + floor((r-55)*sin(-3.14/2+(time1.ti_hour*(3.14/6)+(time1.ti_min*3.14/360)))));
       line ( midx, midy, midx + floor((r-20)*cos(-3.14/2+(time1.ti_min*(3.14/30)+(time1.ti_sec*3.14/1800)))),
			  midy + floor((r-20)*sin(-3.14/2+(time1.ti_min*(3.14/30)+(time1.ti_sec*3.14/1800)))));
     }
    setlinestyle ( 0, 0, 1 );
    line ( midx, midy, midx + floor((r-15)*cos(-3.14/2+(time1.ti_sec*(3.14/30)))),
		    midy + floor((r-15)*sin(-3.14/2+(time1.ti_sec*(3.14/30)))));
    hhh = time1.ti_hour;
    mmm = time1.ti_min;
    sss = time1.ti_sec;
    ss100 = time1.ti_hund;
   }
 } while (1);
 closegraph();
}