#define COMAX  80
#define R_ARRO  77
#define L_ARRO  75
#define PAGEUP  73
#define PAGEDN  81
#define U_ARRO  72
#define D_ARRO  80
#define F10     68
#define ESC     27
#define ENTER   13
#define BK_SPC  8
#define FALSE   0
#define TRUE    1
#define DEL    83
#define HOME   71
#define END    79
#define INS    82

/*----------------------------------------------------------------------------------------------------------------------------------*/
int popup(char *menu[],int count,int fit,int x,int y,int len,int atrib)
{
register int i;
unsigned char *tsp;
int endx,endy,choise,vmode;

   if ((x>24)||(x<0)||(y>79)||(y<0)){
     printf("range");
     return -2;
   }
   vmode=Pvideo_mode();
   if((vmode!=2)&&(vmode!=3)&&(vmode!=7)){
     printf("video must be in 80");
     printf("column text mode");
     exit(1);
   }
 /* for(i=0;i<count;i++)
     if (strlen(menu[i])>len)
       len=strlen(menu[i]);*/
  endy=len+2+y;
  endx=fit+1+x;
  if ((endx+1>24)||(endy+1>79))
  {
    return -2;
  }
  tsp=(unsigned char *) malloc(2*(endx-x+1)*(endy-y+1));
  if(!tsp)
    exit(1);
      Psave_screen(x,endx,y,endy,tsp);
      Pdraw_border(x,y,endx,endy,0x70);
 if(count>fit)  Pwrite_char(endx,y+((endy-y)/2),31,0x80);
    Pdisplay_menu(menu,x+1,y+1,fit,0,atrib);
 choise=Pget_resp(x+1,y,count,fit,menu,endx,endy,atrib);
 Prestore_screen(x,endx,y,endy,tsp);
 free(tsp);
 return choise;
 }
/*-----------------------------------------------------------------------*/
 Pdisplay_menu(char *menu[],int x,int y,int fit,int index,int atrib)
{
  register int i;
  for(i=index;i<fit+index;i++,x++)
    Pwrite_string(x,y,menu[i],atrib);
return;
}
/*   **************************************************** */
 Pdraw_border(int startx,int starty,int endx,int endy,int attrib){
register int i;
char far *v,far *t;
char  far  *vid_mem=(char far *)0xb8000000;
  v=vid_mem;
  t=v;
  for(i=startx+1;i<endx;i++){
    v+=(i*160)+starty*2;
    *v++=179;
    *v=attrib;
    v=t;
    v+=(160*i)+endy*2;
    *v++=179;
    *v=attrib;
    v=t;
  }
  for(i=starty+1;i<endy;i++){
    v+=(startx*160)+i*2;
    *v++=196;
    *v=attrib;
    v=t;
    v+=(endx*160)+i*2;
    *v++=196;
    *v=attrib;
    v=t;
  }
  Pwrite_char(startx,starty,218,attrib);
  Pwrite_char(startx,endy,191,attrib);
  Pwrite_char(endx,starty,192,attrib);
  Pwrite_char(endx,endy,217,attrib);
return ;
}
/*   ********************************************** */
int  Pget_resp(int x,int y,int count,int fit,char *menu[],int endx,int endy,int atrib){
union inkey{
	    char ch[2];
	    int  i;
	    }c;

int j,t;
int arrow_choice=0,key_choice;
int index=0;
  y++;

  gotoxy(y+1,x+1);
  Pwrite_string(x,y,menu[0],0x30);
  for(;;){
/*while(!bioskey(1));*/
    c.i=bioskey(0);
  gotoxy(y+1,x+1+arrow_choice);
  Pwrite_string(x+arrow_choice,y,menu[arrow_choice+index],atrib);
  if(c.ch[0]){
   /* key_choice=Pis_in(keys,tolower(chr));
    if(key_choice)
      return key_choice-1; */

 switch(c.ch[0]){
    case  ENTER : return (arrow_choice+index);
    case  BK_SPC : arrow_choice++;
	       if(arrow_choice==fit){
		     arrow_choice=fit-1;
			index++;   if(index>count-fit){
			  if(count>fit){
			 Pwrite_char(endx,y+((endy-y)/2),196,0x40);
			/* if(!strcmp(title,"")) Pwrite_char(x-1,y+((endy-y)/2),30,bordercolor); else Pwrite_char(x-1,y+1,30,bordercolor);*/
			  }
			 index=count-fit;
		       }
	   Pdisplay_menu(menu,x,y,fit,index,atrib);
		 }
	       break;

	    /* default :

	       for(j=0;j<tedad;++j) if(c.i==(*keyresp[j])) return (c.i);
		break;   */

    case 'F':
    case 'f':

	     index=search_cho(menu);
	      arrow_choice=0;
	      Pdisplay_menu(menu,x,y,fit,index,atrib);
	      break;
    case ESC  : return -1;
    }
  }
  else{
  switch(c.ch[1]){
    case L_ARRO:
    case U_ARRO: arrow_choice--;
		if(arrow_choice<0){
		     arrow_choice=0;
			index--;    if(index<0){
			 if(count>fit){
			 /*if (!strcmp(title,"")) Pwrite_char(x-1,y+((endy-y)/2),196,bordercolor);  else Pwrite_char(x-1,y+1,196,bordercolor);*/
			 Pwrite_char(endx,y+((endy-y)/2),31,0x40);
			 }
			 index=0;
		      }
	   Pdisplay_menu(menu,x,y,fit,index,atrib);
		 }
		break;
       case R_ARRO:
       case D_ARRO: arrow_choice++;
		if(arrow_choice>=fit){
		     arrow_choice=fit-1;
			index++;   if(index>count-fit){
			 if(count>fit){
			 Pwrite_char(endx,y+((endy-y)/2),196,0x40);
			 /*if(!strcmp(title,""))
			    Pwrite_char(x-1,y+((endy-y)/2),30,bordercolor);
			 else
			    Pwrite_char(x-1,y+1,30,bordercolor); */
			 }
			 index=count-fit;
		    }
	   Pdisplay_menu(menu,x,y,fit,index,atrib);
		 }
		break;

      case PAGEUP:
		arrow_choice-=fit;
		if(arrow_choice<0){
		     arrow_choice=0;
			index-=fit;    if(index<0){
			 if(count>fit){
			 /*if (!strcmp(title,"")) Pwrite_char(x-1,y+((endy-y)/2),196,bordercolor);  else Pwrite_char(x-1,y+1,196,bordercolor);*/
			 Pwrite_char(endx,y+((endy-y)/2),31,0x40);
			 }
			 index=0;
		      }
	   Pdisplay_menu(menu,x,y,fit,index,atrib);
		 }
		break;

      case PAGEDN:
		arrow_choice+=fit;
		if(arrow_choice>=fit){
		     arrow_choice=fit-1;
			index+=fit;   if(index>count-fit){
			 if(count>fit){
			 Pwrite_char(endx,y+((endy-y)/2),196,0x40);
			 /*if(!strcmp(title,""))
			    Pwrite_char(x-1,y+((endy-y)/2),30,bordercolor);
			 else
			    Pwrite_char(x-1,y+1,30,bordercolor); */
			 }
			 index=count-fit;
		    }
	   Pdisplay_menu(menu,x,y,fit,index,atrib);
		 }
		break;

   }
 }
  gotoxy(y+1,x+1+arrow_choice);

  Pwrite_string(x+arrow_choice,y,menu[arrow_choice+index],0x30);

  }
}
/*   **************************************************** */
 Pwrite_string(int x,int y,char *p,int attrib){
register int i;
char far *v;

  char  far  *vid_mem=(char far *)0xb8000000;
  v=vid_mem;
  v+=(x*160)+y*2;
  for(i=y;*p;i++){
    *v++=*p++;
    *v++=attrib;
  }
  *v++=' ';
  *v++=attrib;
return;
}
/*   **************************************************** */
 Pwrite_char(int x,int y,char ch,int attrib){
char far *v;
  char  far  *vid_mem=(char far *)0xb8000000;
  v=vid_mem;
  v+=(x*160)+y*2;
  *v++=ch;
  *v=attrib;
return;
}
/*   **************************************************** */
Psave_screen(int startx,int endx,int starty,int endy,unsigned char *buf_ptr){
register int i,j;
char far *v,far *t;
char  far  *vid_mem=(char far *)0xb8000000;
v=vid_mem;
for(i=starty;i<=endy;i++)
  for(j=startx;j<=endx;j++){
    t=v+(j*160)+i*2;
    *buf_ptr++=*t++;
    *buf_ptr++=*t;
//    *(t-1)='\x2f';
  }
return;
}
  /********************************************************/
 Prestore_screen(int startx,int endx,int starty,int endy,unsigned char *buf_ptr){
register int i,j;
char far *v,far *t;
char  far  *vid_mem=(char far *)0xb8000000;
v=vid_mem;
t=v;
for(i=starty;i<=endy;i++)
  for(j=startx;j<=endx;j++){
    v=t;
    v+=(j*160)+i*2;
    *v++=*buf_ptr++;
    *v=*buf_ptr++;
  }
return;
}
/*   **************************************************** */
Pvideo_mode(){
     union REGS  r;
     r.h.ah=15;
     return int86(0x10,&r,&r)&255;
}
/*   **************************************************** */
Pis_in(char *s,char c){
register int i;
for(i=0;*s;i++)
  if(*s++==c)
    return i+1;
    return 0;
}

/*------------------------------------------------------------*/
int  search_cho(char  *menu[])
    {
    int i;
    //unsigned char *pp;
    char  *pstr=NULL;
    char  sta[3],stx[3];
    char  sti[3],stc[1];
    char menst[10][41];
    char pp[126];
      pstr = calloc(3, sizeof(char));
      //pp=(unsigned char *) malloc(2*21*3);
     if(!pp || !pstr)
     exit(1);
    gettext(20,20,40,22,pp);
    window(20,20,40,22);
    textattr(3*16|15);
    clrscr();
    gotoxy(2,1);
    cprintf("ê¥  ú© £þøï •þ’˜");
    gotoxy(10,2);
    cprintf(":¥û« òù‘");
    strcpy(pstr,"   ");
    textattr(6*16|15);
    pstr=Fstr(20,2,15,pstr);
    strcpy(sta,pstr);
      stc[0]=sta[2];
      sta[2]=sta[0];
      sta[0]=stc[0];
   i=-1;
   do{
   i++;
   strcpy(menst[i],menu[i]);
   substr(menst[i],38,3,stx);
   strcpy(sti,stx);
   stc[0]=sti[2];
   sti[2]=sti[0];
   sti[0]=stc[0];
  //Prestore_screen(19,23,19,40,pp);
 // free(pp);
 }while(strncmp(sti,sta,1) && strncmp(sti,sta,2) && strncmp(sti,sta,3) && i<10 );
   puttext(20,20,40,22,pp);
    // Prestore_screen(19,23,19,40,pp);
    // free(pp);
   return i;
}
/*------------------------------------------------------------------*/
