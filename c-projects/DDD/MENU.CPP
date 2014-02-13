#include <graphics.h>
#include <stdio.h>
#include <stdlib.h>
#include <conio.h>
void main(void)
 {
   int  dr = DETECT, mode, errorcode;
   int r1,i1,i2,i3,i4,i5,i6,i7,i8,i9,i10,i11,i12;
   clrscr();
   initgraph(&dr, &mode, "f:\\comp\\c\\bc\\bgi");
   errorcode = graphresult();
   if (errorcode != 0) {
   printf(" graphics Error :%s\n", grapherrormsg(errorcode));
   exit(1);
   }
/*   for(r1=0;r1<15;++r1){*/

   setcolor(4);
   setbkcolor(1);
   i2=0;
   i1=30;
  /* i3=100;
   i4=100;
   i5=150;
   i6=350;
   i7=390;
   i8=400;
   i9=500;
   i10=220;
   i11=340;
   i12=0;         */


  while(i2<220) {

    ++i2;
/*   ++i3;
   --i4;
   ++i5;
   --i6;
   --i7;
   --i8;
   --i9;
   ++i12;
   cleardevice();
int i[12] = {i1,i2,i3,i4,i5,i6,i7,i8,i9,i10 };
   drawpoly(6, i);    */
   cleardevice();
   outtextxy(i1,i2,     "                      ö‘þ‘•");
   outtextxy(i1,(i2+40),"¢þøª üõ š¤‘¡ ô—¨þ¨ ¥ öø÷î");
   outtextxy(i1,(i2+80),"                 ¤¢úð÷ ¢¡");
   settextstyle(0,0,2);
    }

   getch();
   closegraph();
   }

