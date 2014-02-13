void  get_text(int y,int x2, char str[35],int time,int color,int color_bk)
{
  struct{
	char  word[35];
	}book2;
  int j=0,l,y2,lating=0,k=550,key1=0;
  char strs[35],str4[35],str5[35],ch,key2;
  setcolor(color);
  setfillstyle(1,color_bk);
   settextjustify(LEFT_TEXT,LEFT_TEXT);
   bar(y,x2,y+time*10,x2+30);
     strset(str4,'\0');
     strset(str,'\0');
     y2=y;
  do{
    strset(str5,'\0');
      do{
	key2=0;
	sc.c=get_key();
	key2=sc.ch[1];
     }while((key2>=59&&key2<=70));
       if((key2==72||key2==71||key2==82||key2==75||key2==77||key2==80||key2==83))
       switch (key2){
		case 71:
		     lating=0;
		     break;
		case 72:
			break;
		  case 75:
		       if(j>=1){
			y2-=10;
			j--;
			}
			else if(j==0){
				j=0;
				}
		       bar(y,x2+20,y+time*10,x2+30);
			outtextxy(y2,x2+30,"-");
			break;
		case 77:
		       if(j<time){
		      y2+=10;
			j++;
			}
			else if(j==time){
				j=time;
				}
		 bar(y,x2+20,y+time*10,x2+30);
		 outtextxy(y2,x2+30,"-");
		    break;
		 case 80:
		       break;
	       case 82:lating=1;
		      break;
	       case 83:
		     strcpy(str4,str);
		     strcpy(str5,str4);
		     for(l=0;l<j;l++)
		     str4[l]=str5[l];
		     for(l=j;l<time;l++)
		     str4[l]=str5[l+1];
		     strcpy(str,str4);
		     bar(y,x2,y+time*10,x2+30);
		     outtextxy(y,x2+15,str);
		     outtextxy(y2,x2+30,"-");
		break;
	     }
	 else switch(sc.ch[0]){
	       case 27:
		       break;
	       case '\r':
		      settextjustify(RIGHT_TEXT,RIGHT_TEXT);
		      return;
	     case 8:
		    if(j>0){
		    strcpy(str4,str);
		    strcpy(str5,str4);
		    for(l=0;l<j-1;l++)
		    str4[l]=str5[l];
		    for(l=j-1;l<time;l++)
		     str4[l]=str5[l+1];
		     strcpy(str,str4);
		     gotoxy(1,x2);
		     bar(y,x2,y+time*10,x2+30);
		     outtextxy(y,x2+15,str);
		     y2-=10;
		     j--;
		    bar(y,x2+25,y+time*10,x2+30);
		     outtextxy(y2,x2+30,"-");
		     }
	       break;
	     case  32:if(strlen(str)==time)
			break;
		    strcpy(str4,str);
		     strcpy(str5,str4);
		     for(l=0;l<j;l++)
		     str4[l]=str5[l];
		     str4[j]=' ';
		     for(l=j;l<time;l++)
		     str4[l+1]=str5[l];
		     strcpy(str,str4);
		     bar(y,x2,y+time*10,x2+30);
		     outtextxy(y,x2+15,str);
		     outtextxy(y2,x2+30,"-");
		     break;
	    default :
		    if(strlen(str)>=time-1)
			break;
		  ch=sc.ch[0];
		strcpy(str4,str);
		strcpy(str5,str4);
		if(lating==1||(ch=='1')||(ch=='2')||(ch=='3')||(ch=='4')||(ch=='5')||(ch=='6')||(ch=='7')||(ch=='8')||(ch=='9')||(ch=='0')){
		for(l=0;l<j;l++)
		  str4[l]=str5[l];
		  str4[j]=ch;
		for(l=j;l<time-1;l++)
		     str4[l+1]=str5[l];
		     strcpy(str,str4);
		     j++;y2+=10;
		  }
		else{
		   for(l=0;l<j;l++)
		  str4[l]=str5[l];
		  str4[j]=farsi2[strchr(latin,ch)-p];
		  for(l=j;l<time-1;l++)
		     str4[l+1]=str5[l];
		     strcpy(str,str4);
		     if((ch=='E')||(ch=='F')||(ch=='J')||(ch=='~')||(ch==':')||(ch=='T')||(ch=='"')){
		      strcpy(str4,str);
		      strcpy(str5,str4);
		      for(l=0;l<j;l++)
		  str4[l]=str5[l];
		  str4[j]='';
		   for(l=j;l<time-1;l++)
		     str4[l+1]=str5[l];
		     strcpy(str,str4);
		     }
		    if((ch=='S')||(ch=='A')||(ch=='W')||(ch=='Q')){
		      strcpy(str4,str);
		      strcpy(str5,str4);
		      for(l=0;l<j;l++)
		  str4[l]=str5[l];
		  str4[j]=' ';
		   for(l=j;l<time-1;l++)
		     str4[l+1]=str5[l];
		     strcpy(str,str4);
		     }
		     }
		bar(y,x2,y+(time+2)*10,x2+30);
		outtextxy(y,x2+15,str);
		bar(y,x2+25,y+time*10,x2+30);
		outtextxy(y2,x2+30,"-");
		 }
    }while(1);
}
