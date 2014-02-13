#include <stdio.h>
#include <conio.h>
#include <stdlib.h>
#include <string.h>
//*****************************
int mainmenu (void);

void giva ( void );
void givb ( void );
//*****************************
struct set
	   {
	    int size;
	    char ozve [20][10];
	   }A,B,SUBSET;
//*****************************
struct sumset
	   {
	     int size;
	     char ozve[40][11];
	   }SUMSET;
//*****************************
void main()
{
 char ch;
 int i,j;
 do{
    switch( mainmenu ())
    {
      case 0:
	     {
	      giva();
	      break;
	     }
      case 1:{
	      givb();
	      break;
	     }
      case 2:{
	      clrscr();
	      puts("Enter your choise of set for display > > A or B ");
	      switch( ch=getch() )
		{
		 case  'a':{
			    printf("set A = : { ");
			     for(i=0;i<A.size;i++)
				 printf("%s,",A.ozve[i]);
			    printf(" }");
			    break;
			   }
		 case  'b':{
			    printf("set B = : { ");
			     for(i=0;i<B.size;i++)
				 printf("%s,",B.ozve[i]);
			    printf(" }");
			    break;
			   }
	       }
	      break;
	     }
      case 3:{
	      SUMSET.size=A.size+B.size;
	      for(i=0;i<A.size;i++)
		  strcpy(SUMSET.ozve[i],A.ozve[i]);
	      for(i=0;i<B.size;i++)
		  strcpy(SUMSET.ozve[i+A.size],B.ozve[i]);
	      printf("set SUMSET = : { ");
	      for(i=0;i<SUMSET.size;i++)
	      printf("%s,",SUMSET.ozve[i]);
	      printf(" }");
	      break;
	     }
      case 4:{
	      SUBSET.size=0;
	      for(i=0;i<A.size;i++)
		for(j=0;j<B.size;j++)
		 if( !strcmp( A.ozve[i],B.ozve[j]) )
		   {
		    strcpy(SUBSET.ozve[i],A.ozve[i]);
		    SUBSET.size ++;
		   }
	      printf("set SUBSET = : { ");
	      for(i=0;i<SUBSET.size;i++)
	      printf("%s,",SUBSET.ozve[i]);
	      printf(" }");
	      break;
	     }
      case 5:exit(0);
    }
    ch=getch();
   }while(ch!=27);
}
//************************************
int mainmenu (void)
 {
  int l1=0,i;
  char ch;
  char menu[6][50] = {
		      " Give set   A  ...",
		      " Give set   B  ...",
		      " Display Sets  ...",
		      " A U B         ...",
		      " A ^ B         ...",
		      " Exit          ..."
		     };
  textbackground ( 0 );
  textcolor ( 5 );
  clrscr ();
  gotoxy ( 27, 5 );
  cprintf (  "ÚÄ±ÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄ±Ä¿" );
  for (  i=6; i<12; i++ )
   {
    gotoxy ( 27, i );
    cprintf ("³                      ³" );
   }
  gotoxy ( 27, 12 );
  cprintf (  "ÀÄ±ÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄ±ÄÙ" );
  do
  {
    for ( i=0; i<=5;i++)
     {
      if(i==l1) textbackground(2);
      else textbackground(7);
      gotoxy ( 30, i + 6 );
      cprintf ( "%s", menu[i] );
     }
   ch=getch();
   if(ch==80) l1++ ;
   if(ch==72) l1-- ;
   if( l1<0 ) l1=5;
   if( l1>5) l1=0 ;
   }while(ch!=13);
   textbackground(0);
   clrscr();
return(l1);
}
//*************************************
void giva ( void )
 {
  int j;
  clrscr ();
  puts("how many eleman has set A ? :");
  scanf("%d",&A.size);
  for(j=0;j<A.size;j++)
   {
    printf ( "Enter eleman %d of set A : ", j+1 );
    scanf ( "%s",&A.ozve[j]);
   }
 }
//********************************
void givb ( void )
 {
  int j;
  clrscr ();
  puts("how many eleman has set B ? :");
  scanf("%d",&B.size);
  for(j=0;j<B.size;j++)
   {
    printf ( "Enter eleman %d of set B : ", j+1 );
    scanf ( "%s",&B.ozve[j] );
   }
 }
//*******************************
