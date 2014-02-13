#include <math.h>
#include <alloc.h>
#include <dos.h>
#include <graphics.h>
#include <stdio.h>
#include <conio.h>
#include <stdlib.h>
void adite_rasm();
void line_rasm(int x, int y);

/************************************/
#define NOT_MOVED 0
#define RIGHT     1
#define LEFT      2
#define UP        3
#define DOWN      4
#define XMAX      639
#define YMAX      199
void *buf;
int xold,yold;
void *buf1;
/************************************/
void mouse_reset(void)
{
 union REGS r;

 r.x.ax=0;
 int86(0x33,&r,&r);
 if ((int) r.x.ax !=-1)
  {
	printf("mouse hardware or software not installed ");
	exit(1);
  }
  if(r.x.bx !=2 )
  {
   printf ("tow_button mouse required");
   exit(1);
  }
}
/***********************************************************/
void cur_on(void)
{
 union REGS r;

 r.h.ah=1;
 r.h.ch=5;
 r.h.cl=9;
 int86(0x10,&r,&r);
}
/***********************************************************/
void cur_off(void)
{
 union REGS r;

 r.h.ah=1;
 r.h.ch=0;
 r.h.cl=0;
 int86(0x10,&r,&r);
}
/***********************************************************/
void cursor_off()
{
 union REGS r;

 r.x.ax=2;
 int86(0x33,&r,&r);
}
/***********************************************************/
void cursor_on(void)
{
 union REGS r;

 r.x.ax=1;
 int86(0x33,&r,&r);
}
/***********************************************************/
rightb_pressed(void)
{
 union REGS r;

 r.x.ax=3;
 int86(0x33,&r,&r);
 return r.x.bx & 2;
}
/***********************************************************/
leftb_pressed()
{
 union REGS r;
 r.x.ax=3;
 int86(0x33,&r,&r);
 return r.x.bx & 1;
}
/***********************************************************/
void mouse_motion(char *deltax,char *deltay)
{
 union REGS r;

 r.x.ax=11;
 int86(0x33,&r,&r);

 if (r.x.cx>0) *deltax=RIGHT;
 else if (r.x.cx<0) *deltax=LEFT;
 else *deltax = NOT_MOVED;

 if (r.x.dx>0) *deltay=DOWN;
 else if (r.x.dx<0) *deltay=UP;
 else *deltay=NOT_MOVED;
}
/***********************************************************/
void set_mouse_position(int x,int y)
{
 union REGS r;

 r.x.ax=4;
 r.x.cx=x;
 r.x.dx=y;
 int86(0x33,&r,&r);
}
/***********************************************************/
void get_mouse_xy(int *x,int *y)
{
 union REGS r;

 r.x.ax=3;
 int86(0x33,&r,&r);
 *x=r.x.cx;
 *y=r.x.dx;
}
/***********************************************************/
void mode(int mode_code)
{
 union REGS r;

 r.h.al = mode_code;
 r.h.ah = 0;
 int86(0x10,&r,&r);
}
/***********************************************************/
void goto_xy(int x,int y)
{
 union REGS r;

 r.h.ah = 2;
 r.h.dl = x;
 r.h.dh = y;
 r.h.bh = 0; /*page*/
 int86(0x10,&r,&r);
}
/***********************************************************/
 activ(void)
{
 union REGS r;

  r.x.ax=5;
  r.x.bx=0;
  int86(0x33,&r,&r);
  return r.x.bx & 1;
}
/***********************************************************/
int destination(int x1,int y1,int x2,int y2)
{
  return (int) sqrt(pow(x2-x1,2)+pow(y2-y1,2));
}
/***********************************************************/
 release(void)
{
 union REGS r;

  r.x.ax=6;
  r.x.bx=0;
  int86(0x33,&r,&r);
  return r.x.bx & 1;
}
/***********************************************************/

void wait_on(void)
{
 int x,y;
    while(rightb_pressed())
	{
      get_mouse_xy(&x,&y);
      setcolor(y);
      circle(x,y,x/10);
    }
    while(leftb_pressed())
	{
      get_mouse_xy(&x,&y);
      setcolor(9);
      lineto(x,y);
    }

}
/***********************************************************/
void set_graph(void)
{
   int gdriver = DETECT, gmode, errorcode;

   initgraph(&gdriver, &gmode, "v:\\bc\\bgi");
   errorcode = graphresult();
/* an error occurred */
   if (errorcode != grOk)
   {
      printf("Graphics error: %s\n", grapherrormsg(errorcode));
      printf("Press any key to halt:");
/* terminate with an error code */
      exit(1);
    }
}
/***********************************************************/
double_click(void)
{
  int b=0;
  goto_xy(0,0);
  if( leftb_pressed() )
       {
	b=activ();
	delay(400);
	b +=activ();
	if(b==2)
	return 1;
       }
  return 0;
}
/***********************************************************/

void main()
{
 char deltax,deltay;
 int x=0,y=0;
 int button,double_c=0;

 set_graph();
// mode (16);
 mouse_reset();
//line(55,143,560,345);
//setcolor(6);
//x =destination(55,143,560,345);
// putpixel(x,124,14);
// cursor_on();
 //cur_on();
 adite_rasm();
// goto_xy(60,0);
// printf("x=%4d   y=%4d",x,y);

// do
  // {
     //	if (double_c)
      //	printf("left button");
      //	mouse_motion(&deltax,&deltay);
      //	if( deltax || deltay )
       //	 {
	/*   switch(deltax)
	    {
	     case RIGHT:x++;
		break;
	     case LEFT:x--;
		break;
	    }
	   switch(deltay)
	    {
	     case UP:y--;
		break;
	     case DOWN:y++;
		break;
	    } */
     //  }
	 goto_xy(60,0);
//	 if(leftb_pressed())

       //	 printf("x=%4d   y=%4d",x,y);

   // if ( !((double_c=double_click() || (leftb_pressed() && rightb_pressed()) ) ))
     //	  {
	   get_mouse_xy(&x,&y);
	 //  moveto(x,y);
	 //  wait_on();
       //	  }
	 if(kbhit())
	  {
	   getch();
	  closegraph();
	 //break;
	 //  cleardevice();
	  }

//  }while( !(leftb_pressed() && rightb_pressed()) );
// getch();
//  mode (3);
 // cur_off();
getch();
}
/*******************/
void save_pixel(int x1, int y1, int x2, int y2, int cl[],int xl[],int yl[])
  {
   register int i,j,c=0;
   int col;
   
   if(x1<x2  && y2<y1){
      x1=x1; y1=y2; x2=x2; y2=y1;
   }
   else if(x1>x2  && y1<y2){
      x1=x2; y1=y1;x2=x1;y2=y2;
   }
   else if(x1>x2 && y1>y2){
      x1=x2;y1=y2;x2=x1;y2=y1;
   }
   for(i=y1;i<=y2;i++)
   {
       for(j=x1;j<=x2;j++) {
	  col=getpixel(i,j);
	  if(col!=getbkcolor()){
	    cl[c]=col;
	    xl[c]=j;
	    yl[c]=i;
	    c++;
	}
       }
  }

}

   // if(sambol==1)
       //	 putimage(x1,y1,buf1,XOR_PUT);
 
  // size=imagesize(x1,y1,x2,y2);
  // if(size!=-1)
//   {
   // buf1=malloc(size);
   // if(buf1)
    //	getimage(x1,y1,x2,y2,buf1);
   // if(sambol==1)
      //	 putimage(x,y,buf1,XOR_PUT);
  // }
//}
/*******************/
void restor_pixel(int cl[],int xl[],int yl[])
{
   register int i,j;
  // int c;
   // c=strlen(xl[]);
    
 // for(i=0;i<=100;i++)


   //{
       for(j=0;j<=100;j++) {
	  putpixel(xl[j],yl[j],cl[j]);
	 // c++;
       }
//}
}
/*******************/
void cursor()
{
 unsigned int size1;
 setcolor(4);
 line(10,70,50,70);
 line(30,55,30,85);
 size1=imagesize(10,55,50,85);
 if(size1!=-1)
     buf=malloc(size1);
 if(buf)
    getimage(10,55,50,85,buf);
    xold=10;yold=55;
 }
/************/
void cursor_move(int x,int y)
{
  putimage(xold,yold,buf,XOR_PUT);
  xold=x-20;yold=y-15;
  putimage(x-20,y-15,buf,XOR_PUT);
}
/****************/
void adite_rasm(void)
{
  void *buf1;
  int x1,y1,choice=1;
  int x=9,y=70;
    setbkcolor(15);
  //  setcolor(7);
  // setfillstyle(1, getmaxcolor());

/* draw the bar */
  // bar(0, 0, 600,400);

  cursor();
  set_mouse_position(60,70);
  cursor_move(60,70);

  for(;;)
  {
     switch(choice)
     {
	case 1:line_rasm(x,y); 


     }
  
     get_mouse_xy(&x,&y);
     cursor_move(x,y);
     if(rightb_pressed())
	   break;
   }

 }
/*********************/
void line_rasm(int x, int y)
{
    int cl[100];
    int xl[100];
    int yl[100];

  int x1,y1;
  get_mouse_xy(&x,&y);
  cursor_move(x,y);
  x1=x;y1=y;
  while(leftb_pressed())
  {

     // save_pixel( x1,  y1, x,  y, cl,xl, yl);

     get_mouse_xy(&x,&y);
     cursor_move(x,y);
      save_pixel( x1,  y1, x,  y, cl,xl, yl);

     if(rightb_pressed())
     {
       break;
     }
     delay(10);
    putpixel(x1,y1,getcolor());
    delay(10);
     line(x1,y1,x,y);
     restor_pixel(cl, xl, yl);

   //  restor_pixel( x1,  y1,  x2,  y2, color_pic);






  /* TempColor = getcolor();    // set to current color
   getpixel(x,y);
   color=getbkcolor();
   setcolor(color);    // set drawing color to background
   delay(10);
   line(x1,y1,x,y);
   setcolor(TempColor);*/       // set color back to current color
   }
  line(x1,y1,x,y);
  }

 