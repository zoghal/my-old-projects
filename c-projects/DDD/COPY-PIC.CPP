#include <conio.h>
#include <stdio.h>
#include <stdlib.h>
#include <dos.h>
#include <graphics.h>
int farsi;
void ser(void);
void window(int row1,int col1,int row2,int col2,int sayeh,int t,
	    int colorm,int colors,int casem,int time);

main()
{
	   printf("%s"," lkjlhò—©ý©  ª¦öó‹");
	   getch();
	  void box(int, int,int,int,int);
	   int driver=DETECT, mode=0;
	   int i;
	   unsigned size;
	   void *buf;
	   initgraph(&driver, &mode, "d:\\bc\\bgi");
	   box(20,20,200,200,15);
	   setcolor(RED);
	   line(20,20,200,200);
	   setcolor(GREEN);
	   line(20,200,200,20);
	   getch();
	 //   size = imagesize(x, y-ARROW_SIZE, x+(4*ARROW_SIZE), y+ARROW_SIZE);
	   size = imagesize(20,20,200,200);
	   if( size !=4)
	      {
		buf=malloc(size);
		if(buf)
		 {
		   getimage(20,20,200,200,buf);
		   putimage(100,100,buf,COPY_PUT);
		   getimage(300,50,240,240,buf
		   );
		 }
	      }
	    outtext("press akey ");

 farsi = installuserfont("SANS.CHR");
    cleardevice();
    setcolor(1);
    for(i=1;i<240;i+=10)
    {
      delay(12);
      cleardevice();
      settextstyle(2/*farsi*/,0,7);
      setcolor(1);
      outtextxy(i,i," ò—©ý©  ª¦öó‹");

      setcolor(2);
      outtextxy((639-i),i,"MS-DOS  ïóŒå");
      setcolor(3);
      outtextxy((639-i),(400-i),"DOS");
      setcolor(4);
      outtextxy(i,(400-i),"DOS");
      }
 // ser();
 
   //////////////

/*void ser(void)
{
   sound(1000);
   delay(40);
   nosound();
 } */ 
   settextstyle(farsi,1,2);
  setcolor(3);
  gotoxy(0,0);
  outtext(" –©‹ ü«þŒó¦‹ øóŒõ¥“ ôþ‹");
   settextstyle(farsi, 0, 5);
  outtext(" –©‹ ü«þŒó¦‹ øóŒõ¥“ ôþ‹");

	    getch();
	    restorecrtmode();
	    closegraph();
	  }
     void box(int startx,int starty, int endx, int endy, int color)
	 {
	 setcolor(color);
	 rectangle(startx,starty,endx,endy);
       }
