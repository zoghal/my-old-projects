#include <graphics.h>
#include <stdlib.h>
#include <stdio.h>
#include <conio.h>

int main(void)
{
   char p[8]={1};

   int i,gdriver = DETECT, gmode, errorcode;


   initgraph(&gdriver, &gmode, "");

   errorcode = graphresult();
   if (errorcode != grOk)  /* an error occurred */
   {
      printf("Graphics error: %s\n", grapherrormsg(errorcode));
      printf("Press any key to halt:");
      getch();
      exit(1); /* terminate with an error code */
   }


   setbkcolor(1);
   setcolor(2);
   circle(150, 150, 40);
  // setfillpattern(p,3);
  // floodfill(152,154,GREEN);
   circle(130, 140, 5);
   circle(175,140, 5);
    setcolor(2);
   circle(150,154,5 );
  /* for(i=160; i<170;++i){
   arc(150,160,40,56,55);
   arc(150,165,40,40,55);}*/
   line(150,190,150,210);
   line(151,190,151,210);
   line(152,190,152,210);
   line(153,190,153,210);
    line(150,110,140,115);
     line(153,190,153,210);
      line(153,190,153,210);
       line(153,190,153,210);
   line(154,190,154,210);
   getch();
   closegraph();
   return 0;
}

