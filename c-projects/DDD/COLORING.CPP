#include <graphics.h>
#include <string.h>
#include <dos.h>
#include <stdio.h>
#include <stdlib.h>
#include <conio.h>
void wr_ram();
int ramz();
/*extern void window(int row1,int col1,int row2,int col2,int sayeh,int t,int colorm,int colors,int casem,int time);
int farsi,fars;
void ser(void); */
void main(void)
 {
 // wr_ram();
 ramz();
  /* int dr = DETECT, mode, errorcode;
   int i,i1,r1,r2,r;
   clrscr();
   initgraph(&dr, &mode, "f:\\comp\\c\\bc\\bgi");
   errorcode = graphresult();
   if (errorcode != 0) {
   printf(" graphics Error :%s\n", grapherrormsg(errorcode));
   exit(1);
   }
   farsi = installuserfont("SANS.CHR");
    cleardevice();
    //	  window(10,10,630,460,3,6,2,-1,2,6);
/*    setcolor(1);
    for(i=1;i<240;i+=10) {
      delay(15);
      cleardevice();
      settextstyle(farsi,0,4);
      setcolor(3);
      outtextxy((640-i),(i-100),"†™¶ˆÛã");
      setcolor(2);
      outtextxy(i,(i-100),"Úó©˝©");
      setcolor(3);
      outtextxy((660-i),(450-i),"ÔÛåÂ");
      setcolor(4);
      outtextxy(i,(450-i),"MS DOS");
      }
   ser();

   //  ++i;
    //if (i>479)
    //i=1;
   getch();	 	  window(10,10,630,460,3,6,2,-1,2,6);
   // }	  while(kbhit());
       //	    cleardevice();
	 window(10,10,625,460,1,10,1,-1,5,8);
	//  settextstyle(farsi,0,3);
       //	outtextxy(100,100,"dos");
/*	    cleardevice();
	  window(160,111,500,300,2,5,1,5,5,8);
	    cleardevice();
	  window(160,111,500,300,4,10,1,-1,5,8);
	    cleardevice();
	  window(160,111,500,300,5,10,1,-1,5,8);
	    cleardevice();
	  window(160,111,500,300,6,10,1,-1,5,8);
	    cleardevice();
	  window(160,111,500,300,7,10,1,-1,5,8);
	    cleardevice();
	  window(160,111,500,300,8,10,1,-1,5,8);
	    cleardevice();
	  window(160,111,500,300,9,10,1,-1,5,8);*/
       /*	    for (r = 5; r <=200; r +=5) {
    for (r1 = 5; r1 <=25000; r1 +=5)
      r1+=2;
  setcolor(GREEN);
  circle(320, 240, r);
       }
  getch();
  for (i =100; i <=550;++i) {
   for (r2 = 5; r2 <=25000; ++r2)
     r2+=2;
  putpixel(i,240,LIGHTBLUE);
     }
  getch();
  for (i =0; i <=500;++i) {
    for (r2 = 5; r2 <=25000; ++r2)

      r2+=2;
  putpixel(320,i,YELLOW);
     }
     getch();
      for (r = 5; r <=50; r +=3) {
    for (r1 = 5; r1 <=25000; r1 +=5)
      r1+=2;
  setcolor(WHITE);
  circle(120, 140, r);
       }

      for (r = 5; r <=50; r +=3) {
    for (r1 = 5; r1 <=25000; r1 +=5)
      r1+=2;
  setcolor(BLUE);
  circle(380, 400, r);
       }
     for (i =50; i <=500;++i) {
    for (r2 = 5; r2 <=25000; ++r2)
      r2+=2;
  putpixel((i+80),i,YELLOW);
     }
     getch();
      for (i =500; i <= 50;--i) {
	for (r2 = 5; r2 <=25000; ++r2)
      r2+=2;
       for (i1 =50; i1 >= 500;++i1);
   /* for (r2 = 5; r2 <=25000; ++r2)
      r2+=2;
     }      */

/*   getch();
   closegraph(); */
   }
//////////////

void ser(void)
{
   sound(3000);
   delay(100);
   nosound();
 }

/////////////////////////////////////////////////////////////////////////////
		//=== function window  ====//
void window(int row1,int col1,int row2,int col2,int sayeh,int t,
	    int colorm,int colors,int casem,int time)
{
   int t1,x1,x2,y1,y2,i=0;
   setcolor(colors);
   switch(sayeh)
   {
   case 1:
    //   setcolor(colors);
// for(x1=row1-t ,y1=col1-t ,x2=row2+t ,y2=col2+t ; i<t ;i++,x1++,y1++,x2--,y2--){
//       break;

   case 3:
	for(x1=row1-t ,y1=col1-t ,x2=row2+t ,y2=col2+t ; i<t ;
	    i++,x1++,y1++,x2--,y2--)
	{
	   rectangle(x1,y1,x2,y2);
	   if ((colors==-1)||(colors==99))
	      setcolor(i);
	}
	break;
   case 4:
	moveto(row1,col1);
	for(i=0;i<t;i++,row1++,col1++,row2--,col2--)
	{
	setcolor(colors);            lineto(row2,col1);
	setcolor(colorm);            lineto(row2,col2);
	setcolor(colors);            lineto(row1,col2);
	setcolor(colorm);            lineto(row1,col1);
	}
	break;
   case 5:
	moveto(row1,col1);
	for(i=0;i<t;i++,row1++,col1++,row2--,col2--)
	{
	setcolor(colorm);            lineto(row2,col1);	setcolor(colorm);            lineto(row2,col2);
	setcolor(colors);            lineto(row1,col2);
	setcolor(colors);            lineto(row1,col1);
	}

 } //end switch(sayeh)

   setcolor(colorm);
   switch(casem)
   {
   case 1:
       for( ;row1!=row2;row1++,col1++,row2--,col2--)
       {
       delay(time);
       rectangle(row1,col1,row2,col2);
       }
       break;

  case 2:

       for( ;row1!=row2;row1++,col1++,row2--,col2--)
       {
       delay(time);
	 rectangle(row1,col1,row2,col2);
       }
       break;
  case 3:
	setcolor(colorm);
	for( ;col1!=col2 ; col1++)
	{
	  delay(time);
	  line(row1,col1,row2,col1);
	}

  case 4:
	for(i=0,t1=col2-col1; i<t ; col1++,col2--,i++)
	  delay(time);
	  line(row1,col1,row2,col2);
	break;
  case 5:
	for(i=0,t1=((col2-col1)/2)+1; i<t1 ; col1=col1+2,col2=col2-2,i++)
	{
	  delay(time);
	  line(row1,col1,row2,col1);
	  line(row1,col2,row2,col2);
	}
	break;
  case 6:
	setcolor(colorm);
	for(i=0,t1=((row2-row1)/2)+1; i<t1 ; row1=row1+2,row2=row2-2,i++)
	{
	  delay(time);
	  line(row1,col1,row1,col2);
	  line(row2,col1,row2,col2);
	}
	break;
  case 7:
	  setfillstyle(1,colorm);
	  bar(row1-1,col1-1,row2+1,col2+1);
  } //end switch(casem)
 } //end window
//*********************  RAMZ  ******************
//*********************  RAMZ  ******************
int ramz()
  {
     struct ramz{
	char name[15];
	};
     typedef struct ramz rmz;
     rmz  rm;
     FILE *p;
     char k,r[15];
     int i;
     p=fopen("tech","rb");
     if(p==NULL)
      {
       gotoxy(40,30);
       printf("\n EROR:  £´ı¶åì <<tech >> Ô˛åÍ  ");
       getch();
       exit(1);
      }
     textbackground(0);
     clrscr();
     for(i=0;i<20;i++)
       r[i]=NULL;
     gotoxy(25,10);
     printf("        £˝ıÌ£•ãˆ ã• Ùåó¶Û•       ");
     gotoxy(24,10);
     for(i=0;i<15;i++)
      {
	gotoxy(25-i,10);
	k=getch();

 //   _setcursortype(_NORMALCURSOR);
     _setcursortype(_NOCURSOR);// (turns off the cursor)
	printf("*");
	if(k==13)
	 break;
	r[i]=k;
      }
     fread(&rm,sizeof(rm),1,p);
     fclose(p);
     clrscr();
     if(strcmp(r,rm.name)==0)
      {
	 _setcursortype(_NORMALCURSOR);
	gotoxy(25,10);
	printf("•˝˝Ëó åÛ´ ¶Û• ¯Ì£˝ó©˙ÔÉ˛åÉÛå˛â");
	gotoxy(25,12);
	printf("        <<  n å˛ y >>  £ıÌã£˝ï");
	gotoxy(25,12);
	k=getch();
	if(k=='y')
	 {
	  wr_ram();
	  return 1;
	 }
	if(k=='n') //{
	 return 1;
       //	 break;}
	if(k!='n' || k!='y'){
	sound(500);
	delay(100);
	nosound();}
      }
     else
      return 0;
 }



//******************  WR_RAM   *******************
//******************  WR_RAM   *******************
void wr_ram()
  {
    struct ramz{
      char name[30];
	};
    typedef struct ramz rmz;
    rmz  rm;
    FILE *p;
    char k,r[20];
    clrscr();
    p=fopen("tech","wb");
    if(p==NULL)
     {
      gotoxy(40,30);
      printf("\n EROR:   £´ı¶åì Ô˛åÍ  ");
      getch();
      exit(1);
     }
    textbackground(6);
    clrscr();
    textcolor(1);
 //   window1(20,6,60,12,13,1);
    gotoxy(20,12);
    printf(" £˝ıÌ £•ãˆ¶Û• êñ˘õ Ú©ã êÌ˛    :");
// gotoxy(20,12);
    gets(r);
    strcpy(rm.name, r);
    if(!r[0])
     {
      fclose(p);
      //break;
      return;
     }
    fwrite(&rm,sizeof(rm), 1,p);
     fclose(p);
  }
