#include <string.h>
#include <math.h>
int Ins_snI,Con___noC;
int Ctrl;

char
  Fchr_rhcF[125]="                                !ï.,%Šğ()x+ø-¦/€‚ƒ„…†‡ˆ‰íîü=Œ'©òâü˜’ñ‘ù–öôú ­ë§éáã«çåæ›•:‹•ª£¥ş™“óû—÷õ¢¡Ÿ®ì¨êä¤¬¯èàš”œ";
char
  Fcgr_rhcF[125]="                                !ğ.,%Šğ()x+ø-¦/€‚ƒ„…†‡ˆ‰íîıŒ'©òâü˜’ñ‘ù–öôú ­ë§éáã«çåæ›”:‹•ª£¥ş™“óû—÷õ¢¡Ÿ®ì¨êä¤¬¯èàš•œ";
char   fchr[125]="                                ,!ï.,%Šğ()*+ø-¦/€‚ƒ„…†‡ˆ‰íîü=Œ©òâü˜’ñ‘ù–öôıòú ­ë§éåæ›”:‹•ª£¥ş™“óû–÷õ¢¡Ÿì¨êä¤¬¯èàš•œ";

void stuff(char Expc1[],int Expn1,int Expn2,char Expc2[])
{
  int k,j,i,Len,Lenstr;
  Lenstr=strlen(Expc1);
  for(j=Expn1-1;j<=Lenstr-1-Expn2;j++)
    Expc1[j]=Expc1[j+Expn2];
  Len=strlen(Expc2);
  Expc1[Lenstr-Expn2+strlen(Expc2)]=NULL;
  for(k=j;j<strlen(Expc1);j++)
     Expc1[k]=' ';
  j=strlen(Expc1)-1;
  while(j>=Expn1-1)
  {
    Expc1[j+Len]=Expc1[j];
    j--;
  }
  j=Expn1-1; i=0;
  while(j<Expn1+Len-1)
  {
    Expc1[j]=Expc2[i];
    i++;
    j++;
  }
  Expc1[Lenstr+Len-Expn2]=NULL;
}
/* *****            AT            **** */
int At(char Ch,char Expc[])

{
 char *s;
 int j;
 s=strchr(Expc,Ch);
 if (s==NULL)
   return(0);
 else
  return(strlen(Expc)-strlen(s)+1);
}
/* **************************************************** */
void substr(char Hstr[],int Pos___soP,int Num,char st[])
{
  int  len,m,j;
  m=0;
  len=strlen(Hstr);
  for(j=Pos___soP-1;j<=Num+Pos___soP-1;j++){
    st[m] = Hstr[j];
    m++;
 }
 if (Pos___soP-1 < len )
//   return (NULL);
// else{
 st[Num]=NULL;
 }

/* ******************************************************* */
void left(char Expc[],int Expn,char st[])
{
 substr(Expc,1,Expn,st);
}
/* ********              RIGHT           ***** */
void right(char Expc[],int Expn,char st[])
{
  int i,k;
  i=0;
  for(k=strlen(Expc)-Expn;k<strlen(Expc);k++)
  {
    st[i]=Expc[k];
    i++;
   }
   st[i]=NULL;
 }
/* ******           FSTR          ***** */
char *Fstr(int winx,int Row,int Col,char *str)
{
  char Istr[80],sth[80],st[80],Fc_____cF1[80];
  char  st5[8]="äáèåûı";
  char  st6[8]="‘ãâçæúü";
  char  st7[47]="‘ø¢¤¥£¦";
  char st1[11]=" .Š':Œ!%=";
  char st2[31]="şõä¨ª÷î“Ÿ›óê—ûğ¬¡ú•ì®èãç™";
  char st3[27]="ıôá§©öí’šñé–ùï« ù”ë­œâæ˜";
  char st4[31];
  int num___mun,key,inkey,flag;
  int
   Ins_snI,Con___noC,I_______I,Sl_____lS,Fcol_locF,Psp_psP,Lcol_locL,Nd,Eng_gnE;
  char
    AT___TA,Fc_____cF,ch;

  flag=1;
  st1[11]=NULL;
  strcpy(sth,st2);
  strcat(st2,"¯à‹");
  strcpy(st4,st2);
  strcpy(st2,sth);
  strcat(st7,st1);
  strcat(st7,st3);
  st2[31]=NULL;
  st7[47]=NULL;
  st5[7]=NULL;
  st6[7]=NULL;
  st3[27]=NULL;
  st4[31]=NULL;
  I_______I=strlen(str);
  Sl_____lS=I_______I;
 // Ctrl=0;
  Ins_snI=0;
  if ((Row<1) || (Row>24) || (Col < 1) || (Col >80))
    return(str);
  Fcol_locF=winx-Col;
  Lcol_locL=Fcol_locF+1-Sl_____lS;
 if( (Sl_____lS<1) | (Lcol_locL<0) )
     return(str);
  Nd=0; Eng_gnE=0; Con___noC=1;
  strcpy(Istr,str);
  gotoxy(Lcol_locL,Row);
//  cprintf("%s",Istr);
  gotoxy(Fcol_locF,Row);
  while ( (I_______I >0) && (flag==1))
  {
    key=getch();
    if (key==0)
      inkey=getch();
    inkey=inkey+20;
    Psp_psP=1;
    switch(key) {
       case  0:
	      switch(inkey){
		 case  103:
		     stuff(Istr,I_______I,1,"");
		     sth[0]=' ';
		     sth[1]=NULL;
		     strcat(sth,Istr);
		     strcpy(Istr,sth);
		     substr(Istr,1,I_______I,st);
		     gotoxy(Lcol_locL,Row);
		     cprintf("%s",st);
		     if(wherex()!=0)
		     gotoxy(wherex()-1,Row);
		     if (Nd > 0){
			 gotoxy(wherex()-Nd,Row);
			 I_______I=I_______I-Nd;
			 Nd=0;
		     } /*if*/
		     break;
		 case 97:
		      if (wherex()<Fcol_locF) {
			gotoxy(wherex()+1,Row);
			I_______I=I_______I+1;
		       }
		      Nd=0;
		      break;
		 case 95:
		      if (wherex()>Lcol_locL) {
			gotoxy(wherex()-1,Row);
			I_______I=I_______I-1;
		       }
		      Nd=0;
		      break;
		 case 91:
		     gotoxy(Fcol_locF,Row);
		     I_______I=Sl_____lS;
		     Nd=0;
		     break;
		 case 99:
		     gotoxy(Lcol_locL,Row);
		     I_______I=1;
		     Nd=0;
		     break;
		 case 102:
		     Ins_snI=!Ins_snI;
		     if (Ins_snI){
			  gotoxy(40,1);
			  cprintf("š¤¢");
		     } /* if inf*/
		     else{
			  gotoxy(40,1);
			  cprintf("   ");
		     } /* else*/
		     gotoxy(Lcol_locL+I_______I-1,Row);
		     break;
		 case 79:
		       Con___noC=!Con___noC;
		       break;
	       //	 default:
		 //  Ctrl=inkey;
      }
    break;
       case  7:
	      stuff(Istr,I_______I,1,"");
	      sth[0]=' ';
	      sth[1]=NULL;
	      strcat(st1,Istr);
	      strcpy(Istr,st1);
	      substr(Istr,1,I_______I,sth);
	      strcpy(Istr,sth);
	      gotoxy(Lcol_locL,Row);
	      cprintf("%s",Istr);
	      if(wherex()!=0)
		gotoxy(wherex()-1,Row);
	      if (Nd > 0){
		 gotoxy(wherex()-Nd,Row);
		 I_______I=I_______I-Nd;
		 Nd=0;
	      } /*if*/
	      break;
	case 127:
	case 8:
		if (I_______I < Sl_____lS){
		I_______I=I_______I+1;
		stuff(Istr,I_______I,1,"");
		st[0]=' ';
		st[1]=NULL;
		strcat(st,Istr);
		strcpy(Istr,st);
		gotoxy(Lcol_locL,Row);
		substr(Istr,1,I_______I,st);
		cprintf("%s",st);
		if(wherex()!=0)
		  gotoxy(wherex()-1,Row);
		if (Nd > 0){
		  gotoxy(wherex()-Nd,Row);
		  I_______I=I_______I-Nd;
		  Nd=0;
		}  /* if*/
	       } /* if */
	       break;
	case 4:
	     /* left arrow */
	      if (wherex()<Fcol_locF)
	      {
		gotoxy(wherex()+1,Row);
		I_______I=I_______I+1;
	      }
	      Nd=0;
	      break;
	case 19:
	      /* right arrow */
	       if (wherex()>Lcol_locL)
	      {
		gotoxy(wherex()-1,Row);
		I_______I=I_______I-1;
	      }
	      Nd=0;
	      break;
	case 1:
	   /* home */
	      gotoxy(Fcol_locF,Row);
	      I_______I=Sl_____lS;
	      Nd=0;
	      break;
	case 6:
	  /* end */
	      gotoxy(Lcol_locL,Row);
	      I_______I=1;
	      Nd=0;
	      break;
	case 2:
	       strnset(st,' ',Sl_____lS-I_______I);
	       st[Sl_____lS-I_______I]=NULL;
	       left(Istr,I_______I,sth);
	       strcat(st,sth);
	       strcpy(Istr,st);
	       gotoxy(Lcol_locL,Row);
	       cprintf("%s",Istr);
	       gotoxy(Fcol_locF,Row);
	       I_______I=Sl_____lS;
	       Nd=0;
	       break;
	case 26:
	       strnset(st,' ',I_______I);
	       st[I_______I]=NULL;
	       stuff(Istr,1,I_______I,st);
	       gotoxy(Lcol_locL,Row);
	       cprintf("%s",st);
	       if (wherex() != 0)
		  gotoxy(wherex()-1,Row);
	       Nd=0;
	       break;
	case 29:
	       break;
	case 13:
	      substr(Istr,I_______I,1,st);
	      ch=st[0];
	      num___mun=At(ch,st1);
	      if (num___mun != 0)
		 I_______I=0;
	      flag=0;
	      break;
	case 27:
	       gotoxy(Lcol_locL,Row);
	       cprintf("%s",str);
	       return(str);
	case 28:
	       Con___noC=~Con___noC;
	       break;
	case 22:
	     /* insert */
	       Ins_snI=!Ins_snI;
	       if (Ins_snI){
		  gotoxy(40,0);
		  cprintf("š¤¢");
	       } /* if inf*/
	       else{
		  gotoxy(40,0);
		  cprintf("   ");
	       } /* else*/
	       gotoxy(Lcol_locL+I_______I-1,Row);
	       break;
	case 126:
	case  96:
	       Eng_gnE=~Eng_gnE;
	       if (Nd > 0)
	       {
		 gotoxy(wherex()-Nd,Row);
		 I_______I=I_______I-Nd;
		 Nd=0;
		} /* if nd>0 */
		break;
	default:
	      if ( (key > 31) && (key < 126) &&(I_______I!=0)){
		if (Eng_gnE){
		  if (Con___noC){
		    if (I_______I < Sl_____lS){
		     substr(Istr,I_______I+1,1,st);
		     ch=st[0];
		      AT___TA = At(ch,st2);
		      if (AT___TA > 0 ){
			substr(st3,AT___TA,1,st);
			Fc_____cF=st[0];
			if (Fc_____cF == 'ı'){
			  if (I_______I<Sl_____lS-1)  {
			    substr(Istr,I_______I+2,1,st);
			    ch=st[0];
			    /*num___mun=At(ch,st4) ;
			    if(num___mun > 0);
			      Fc_____cF='ü';*/
			  } /* if I_______I<Sl_____lS */
			} /* if Fc_____cF='ı'*/
			Fc_____cF1[0]=Fc_____cF;
			Fc_____cF1[1]=NULL;
			stuff(Istr,I_______I+1,1,Fc_____cF1);
			gotoxy(Lcol_locL+I_______I,Row);
			cprintf("%c",Fc_____cF);
			if (key==32){
			  Psp_psP=0;
			  if (wherex() > 1)
			    gotoxy(wherex()-2,Row);
			}/* if key==32 */
		       }/* At */
		    }/* I_______I<Sl_____lS */
		    Fc_____cF1[0]=key;
		    Fc_____cF1[1]=NULL;
		    stuff(Istr,I_______I+1,0,Fc_____cF1);
		    right(Istr,Sl_____lS,sth);
		    strcpy(Istr,sth);
		    gotoxy(Lcol_locL,Row);
		    substr(Istr,1,I_______I,st);
		    cprintf("%s",st);
		    if ( wherex() != 0)
		       gotoxy(wherex()-1,Row);
		    Nd=Nd+1;
		    if (Nd == I_______I)
		      return(Istr);
		    if (Con___noC){
		       if (Nd==1){
			  substr(Istr,I_______I-1,1,st);
			  ch=st[0];
			 AT___TA=At(ch,st6);
			}/* if Nd == 1 */
		    }/* if con */
		    continue;
		  }/* if con */
		}/* if Eng_gnE */
	      if ( (key == 36) || ((key>39) && (key < 58 ) && !((key==44)||(key==46 )))&&(I_______I!=0) ){
		if (Con___noC){
		   if (I_______I<=Sl_____lS){
		      substr(Istr,I_______I,1,st);
		      ch=st[0];
		     AT___TA=At(ch,st2);
		     if (AT___TA > 0){
			substr(st3,AT___TA,1,st);
			Fc_____cF=st[0];
			Fc_____cF1[0]=st[0];
			Fc_____cF1[1]=NULL;
			stuff(Istr,I_______I+1,1,Fc_____cF1);
			gotoxy(Lcol_locL+I_______I,Row);
			cprintf("%c",Fc_____cF);
		     } /* if AT___TA */
		   } /* if I_______I<Sl_____lS */
		} /* if con */
		substr(Fchr_rhcF,key,1,sth);
		stuff(Istr,I_______I+1,0,sth);
		right(Istr,Sl_____lS,sth);
		strcpy(Istr,sth);
		gotoxy(Lcol_locL+I_______I-1,Row);
		substr(Istr,I_______I,1,st);
		cprintf("%s",st);
		if(wherex() != 0)
		  gotoxy(wherex()-2,Row);
		Nd++;
		if (Nd==I_______I)
		  return(0);
		I_______I-=Nd;
		Nd=0;
		if (Con___noC){
		  if(Nd==1)  {
		    substr(Istr,I_______I-1,1,st);
		    ch=st[0];
		    AT___TA=At(ch,st6);
		  } /* if Nd==1 */
		}/* if Con___noC */
		continue;
	      } /* if key==36 ... */
	      if (Nd > 0){
		gotoxy(wherex()-Nd,Row);
		I_______I=I_______I-Nd;
		Nd=0;
	      } /* if Nd>0 */
	      substr(Fchr_rhcF,key,1,st);
	      Fc_____cF=st[0];
	      if (Con___noC){
		AT___TA=At(Fc_____cF,st1);
		if ((AT___TA > 0) && (I_______I!=0)){
		   substr(Istr,I_______I+1,1,st);
		   if (st!=NULL){
		   ch=st[0];
		   AT___TA=At(ch,st2);
		   if (AT___TA >0) {
		     substr(st3,AT___TA,1,st);
		     Fc_____cF=st[0];
		     if (Fc_____cF == 'ı'){
			if (I_______I<Sl_____lS){
			  substr(Istr,I_______I+2,1,st);
			  ch=st[0];
			  num___mun=At(ch,st4);
			  if (num___mun > 0)
			    Fc_____cF='ü';
			}/* if I_______I<Sl_____lS */
		     }/* if Fc_____cF=='ı' */
		     Fc_____cF1[0]=Fc_____cF;
		     Fc_____cF1[1]=NULL;
		     stuff(Istr,I_______I+1,1,Fc_____cF1);
		     gotoxy(Lcol_locL+I_______I,Row);
		     cprintf("%c",Fc_____cF);
		     if (key ==  32){
		       Psp_psP = 0;
		       if (wherex() > 1 )
			 gotoxy(wherex()-2,Row);
		     } /* if key==32 */
		   }/* if AT___TA>0 */
		  }/* if st != NULL*/
		} /* if AT___TA>0 ... */
		substr(Fchr_rhcF,key,1,st);
		Fc_____cF=st[0];
		AT___TA=At(Fc_____cF,st5);
		if ( (AT___TA > 0) && (I_______I<Sl_____lS)){
		  substr(Istr,I_______I+1,1,st);
		  ch=st[0];
		  num___mun=At(ch,st4);
		  if (num___mun > 0){
		    substr(st6,AT___TA,1,st);
		    Fc_____cF=st[0];
		  } /* if num___mun>0 */
		}/* if At>0 ... */
		AT___TA=At(Fc_____cF,st6);
		if ( (AT___TA > 0) &&(I_______I < Sl_____lS)){
		substr(Istr,I_______I+1,1,st);
		ch=st[0];
		num___mun=At(ch,st7);
		  if(num___mun > 0){
		    substr(st5,AT___TA,1,st);
		    Fc_____cF=st[0];
		  } /* if num___mun>0 */
		 } /* if AT___TA>0 ... */
	      } /* if Con___noC */
	      if (Psp_psP){
		if (Ins_snI) {
		  Fc_____cF1[0]=Fc_____cF;
		  Fc_____cF1[1]=NULL;
		  stuff(Istr,I_______I+1,0,Fc_____cF1);
		  right(Istr,Sl_____lS,sth);
		  strcpy(Istr,sth);
		  gotoxy(Lcol_locL,Row);
		  substr(Istr,1,I_______I,st);
		  cprintf("%s",st);
		}/* if ins */
		else {
		   Fc_____cF1[0]=Fc_____cF;
		   Fc_____cF1[1]=NULL;
		   stuff(Istr,I_______I,1,Fc_____cF1);
		   gotoxy(Lcol_locL+I_______I-1,Row);
		   cprintf("%c",Fc_____cF);
	       } /* else */
	       if (wherex() > 1)
		 gotoxy(wherex()-2,Row);
	       I_______I=I_______I-1;
	      } /* if psp */
	      if (Con___noC==1) {
		 if (I_______I > 0){
		   substr(Istr,I_______I,1,st);
		   if( st[0] != ' '){
		      if (At(Fc_____cF,st7) == 0) {
			 substr(Istr,I_______I,1,st);
			 ch=st[0];
			 AT___TA=At(ch,st5);
			 if (AT___TA > 0){
			    substr(st6,AT___TA,1,sth);
			    stuff(Istr,I_______I,1,sth);
			    gotoxy(Lcol_locL+I_______I-1,Row);
			    substr(Istr,I_______I,1,st);
			    cprintf("%s",st);
			    gotoxy(Lcol_locL+I_______I-1,Row);
			 } /* if AT___TA>0 */
		      } /* if AT___TA==0 */
		   }/* if substr!=' ' */
		 }/*if I>0 */
	      }/* if con */
	  }/* if 31<key<126*/
	} /* switch */
  }/* while */
  if (Con___noC==1){
    if(I_______I<Sl_____lS){
       substr(Istr,I_______I+1,1,st);
       ch=st[0];
       AT___TA=At(ch,st2);
       if (AT___TA > 0 ){
	  substr(st3,AT___TA,1,st);
	  Fc_____cF=st[0];
	  if (Fc_____cF=='ı'){
	    if ( I_______I < Sl_____lS-1){
	      substr(Istr,I_______I+2,1,st);
	      ch=st[0];
	      if (At(ch,st4) > 0)
		Fc_____cF='ü';
	    }/* if I<Sl_____lS */
	  }/* if Fc_____cF=='ı' */
	  Fc_____cF1[0]=Fc_____cF;
	  Fc_____cF1[1]=NULL;
	  stuff(Istr,I_______I+1,1,Fc_____cF1);
	  gotoxy(Lcol_locL+I_______I,Row);
	  cprintf("%c",Fc_____cF);
	  gotoxy(wherex()-1,Row);
       } /* if AT___TA>0 */
    }/* if I<Sl_____lS */
  }/* if Con___noC */
  strcpy(str,Istr);
  return(str);
}
/*  fstr*/

long int fnum(int winx,int row___wor,int col___loc,
	       long int num___mun,int nl_____ln,int dl_____ld)
{
int I_______I , Pp_____pP , Ptr___rtP , Fcol_locF ,
	      Lcol_locL , Key___yeK , Inm___nmI;
int flag,Key___yeK1,Ins___snI,k,sign;
long int i_i;
long int j;
long int  jj;
char ah_ha[30],aa_aa[30],Inum_munI[30],Inm_mnI[30],af_fa[30];
Ins___snI=0;
Ctrl = 0;
flag=1;
if ( (row___wor<1) || (row___wor>24) || (col___loc<1) || (col___loc>80)|| (dl_____ld<0)|| (dl_____ld>15))
   goto  RETU;    //return (num___mun);
Lcol_locL = winx-col___loc;
Fcol_locF = Lcol_locL+1-nl_____ln;
if(( nl_____ln<dl_____ld+1)|| (Fcol_locF<0))
   goto RETU; //return (num___mun);
if (num___mun<0)
   I_______I = 1;
else
   I_______I = 0;
if (dl_____ld>0)
   I_______I = I_______I+1;
gcvt(num___mun,nl_____ln,Inum_munI);
for(i_i=0;i_i<nl_____ln;i_i++)
      *(af_fa+i_i)=' ';
i_i=strlen(Inum_munI);
af_fa[nl_____ln-i_i]=NULL;
strcat(Inum_munI,af_fa);
I_______I = 1;
jj=1;
if (dl_____ld!=0){
for(i_i=0;i_i<=nl_____ln-dl_____ld;i_i++)
      jj*=10;
}
num___mun=atof(Inum_munI);
num___mun/=jj;
while (I_______I<=nl_____ln){
   substr(Inum_munI,I_______I,1,af_fa);
   af_fa[1]=NULL;
   j=af_fa[0];
   substr(Fcgr_rhcF,j,1,af_fa);
   af_fa[1]=NULL;
   stuff(Inum_munI,I_______I,1,af_fa);
   I_______I ++;
 }
if (dl_____ld==0)
   Pp_____pP = nl_____ln+1;
else{
   Pp_____pP = dl_____ld;
   af_fa[0]=',';
   af_fa[1]=NULL;
   strcpy(aa_aa,Inum_munI);
   stuff(Inum_munI,Pp_____pP,0,af_fa);
   stuff(Inum_munI,nl_____ln+1,1,"");
}
for(j=0;j<nl_____ln;j++)
  *(Inm_mnI+j)=' ';
stuff(Inm_mnI,1,strlen(Inum_munI),Inum_munI);
Inm_mnI[nl_____ln]=NULL;
gotoxy(Fcol_locF,row___wor);
cprintf("%s",Inum_munI);
if (Pp_____pP==1){
   gotoxy(Fcol_locF+1 ,row___wor);
   I_______I = 2;
}
else{
   gotoxy(Fcol_locF,row___wor);
   I_______I = 1;
}
while ((I_______I<=nl_____ln)&&(flag==1)){
   Key___yeK = getch();
   if (Key___yeK==0)
     Key___yeK1=getch();
   switch(Key___yeK){
      case 0:
	   switch (Key___yeK1){
	       case  83:
		    if (I_______I != dl_____ld){
		    if (I_______I<Pp_____pP)
		       Ptr___rtP = Pp_____pP+1;
		    else
		       Ptr___rtP = nl_____ln+1;
		    stuff(Inum_munI,Ptr___rtP,0," ");
		    stuff(Inum_munI,I_______I,1,"");
		    gotoxy(wherex(),row___wor);
		    substr(Inum_munI,I_______I,Ptr___rtP-I_______I,af_fa);
		    cprintf("%s",af_fa);
		    gotoxy(Fcol_locF+I_______I-1,row___wor);
		    }
		    break;
		case 77:
		    if (wherex()<Lcol_locL){
			I_______I ++;
			if (I_______I==Pp_____pP){
			    I_______I ++;
			    gotoxy(wherex()+2,row___wor);
			}
		       else
			   gotoxy(wherex()+1,row___wor);
		     }
		     break;
	       case 75:
		  if (wherex()>Fcol_locF){
		       I_______I --;
		       gotoxy(wherex()-1,row___wor);
		       if (I_______I==Pp_____pP){
			if (Pp_____pP>1){
			    I_______I --;
			    gotoxy(wherex()-1,row___wor);
			}
			else{
			    I_______I ++;
			    gotoxy(wherex()+1,row___wor);
			}
		    }
		  }
		  break;
	       case 71:
		 if (Pp_____pP==1){
		   gotoxy(Fcol_locF+1,row___wor);
		   I_______I = 2;
		 }
		 else{
		    gotoxy(Fcol_locF,row___wor);
		    I_______I = 1;
		 }
		 break;
	       case 79:
		    gotoxy(Lcol_locL,row___wor);
		    I_______I = nl_____ln;
		    break;
	       case 82:
		   Ins___snI = !(Ins___snI);
		   if (Ins___snI){
		      gotoxy(40,1);
		      cprintf("š¤¢");
		   }
		   else{
		      gotoxy(40,1);
		      cprintf("   ");
		   }
		    gotoxy(Fcol_locF+I_______I-1 ,row___wor);
		    break;
	     }
	     break;
      case 127:
      case 8:
	   if (I_______I>1){
	      I_______I --;
	      if (I_______I==Pp_____pP){
		 I_______I --;
		 gotoxy(wherex()-1,row___wor);
	      }
	      if (I_______I<Pp_____pP)
		 Ptr___rtP = Pp_____pP;
	      else
		 Ptr___rtP = nl_____ln+1;
	      stuff(Inum_munI,Ptr___rtP,0," ");
	      stuff(Inum_munI,I_______I,1,"");
	      gotoxy(wherex()-1,row___wor);
	      substr(Inum_munI,I_______I,Ptr___rtP-I_______I,ah_ha);
	      cprintf("%s",ah_ha);
	      gotoxy(Fcol_locF+I_______I-1,row___wor);
	   }
	   break;
      case 7:
	   if (I_______I<Pp_____pP)
	      Ptr___rtP = Pp_____pP;
	   else
	      Ptr___rtP = nl_____ln+1;
	   stuff(Inum_munI,Ptr___rtP,0," ");
	   stuff(Inum_munI,I_______I,1,"");
	   gotoxy(wherex(),row___wor);
	   substr(Inum_munI,I_______I,Ptr___rtP-I_______I,ah_ha);
	   cprintf("%s",ah_ha);
	   gotoxy(Fcol_locF+I_______I-1,row___wor);
	   break;
      case 4:
	   if (wherex()<Lcol_locL){
	      I_______I ++;
	      if (I_______I==Pp_____pP){
		 I_______I ++;
		 gotoxy(wherex()+2,row___wor);
	      }
	      else
		 gotoxy(wherex()+1,row___wor);
	   }
	   break;
      case 19:
	   if (wherex()>Fcol_locF){
	      I_______I --;
	      gotoxy(wherex()-1,row___wor);
	      if (I_______I==Pp_____pP){
		 if (Pp_____pP>1){
		    I_______I --;
		    gotoxy(wherex()-1,row___wor);
		 }
		 else{
		    I_______I ++;
		    gotoxy(wherex()+1,row___wor);
		 }
	      }
	   }
	   break;
      case 35:
      case 44:
      case 46:
      case 47:
	   if (dl_____ld==0)
	      flag=0;
	   if (I_______I<Pp_____pP){
	      strnset(af_fa,' ',(Pp_____pP-I_______I));
	      substr(Inum_munI,1,I_______I-1,ah_ha);
	      strcat(af_fa,ah_ha);
	      right(Inum_munI,dl_____ld+1,ah_ha);
	      strcat(af_fa,ah_ha);
	      gotoxy(Fcol_locF,row___wor);
	      substr(Inum_munI,1,Pp_____pP,ah_ha);
	      cprintf("%s",ah_ha);
	      I_______I = Pp_____pP+1;
	   }
	   break;
      case 1:
	   if (Pp_____pP==1){
	      gotoxy(Fcol_locF+1,row___wor);
	      I_______I = 2;
	   }
	   else{
	      gotoxy(Fcol_locF,row___wor);
	      I_______I = 1;
	   }
	   break;
      case 6:
	   gotoxy(Lcol_locL,row___wor);
	   I_______I = nl_____ln;
	   break;
      case 13:
	   flag=0;
	   break;
      case 27:
	   gotoxy(Fcol_locF,row___wor);
	   cprintf("%s",Inm_mnI);
	   goto  RETU;  //return (num___mun);
     case 22:
	   Ins___snI = !(Ins___snI);
	   if (Ins___snI){
	      gotoxy(40,1);
	      cprintf("š¤¢");
	   }
	   else{
	      gotoxy(40,1);
	      cprintf("   ");
	   }
	   gotoxy(Fcol_locF+I_______I-1 ,row___wor);
	   break;
      default:
	   if ( ((Key___yeK>-10)&&(Key___yeK<0)) || (Key___yeK==5 ) || (Key___yeK==24)){
	   Ctrl = Key___yeK;
	   I_______I = 1;
	   flag=0;
	   }
	   if ((Key___yeK==32)||(Key___yeK==43)||(Key___yeK==45)||((Key___yeK>47)&& (Key___yeK<58))){
	   if (Ins___snI){
	      if (I_______I<Pp_____pP){
		 substr(Fcgr_rhcF,Key___yeK,1,aa_aa);
		 substr(Fcgr_rhcF,Key___yeK,1,ah_ha);
		 strcpy(af_fa,Inum_munI);
		 stuff(Inum_munI,I_______I,0,ah_ha);
		 left(Inum_munI,Pp_____pP-1,aa_aa);
		 strcpy(Inum_munI,af_fa);
		 right(Inum_munI,dl_____ld+1,af_fa);
		 strcat(aa_aa,af_fa);
		 strcpy(Inum_munI,aa_aa);
		 if(dl_____ld!=0)
		    stuff(Inum_munI,dl_____ld,0,",");
		 gotoxy(wherex(),row___wor);
		 substr(Inum_munI,I_______I,Pp_____pP-I_______I,ah_ha);
		 cprintf("%s",ah_ha);
		 j=wherex();
		 if(j==Lcol_locL-dl_____ld-1)
		   cprintf(",");
	      }
	      else{
		 substr(Fcgr_rhcF,Key___yeK,1,aa_aa);
		 stuff(Inum_munI,I_______I,0,aa_aa);
		 left(Inum_munI,nl_____ln,Inum_munI);
		 gotoxy(wherex(),row___wor);
		 substr(Inum_munI,I_______I,nl_____ln+1-I_______I,ah_ha);
		 cprintf("%s",ah_ha);
	     }
	     I_______I ++;
	      if (I_______I==Pp_____pP)
		 I_______I ++;
	      if (I_______I>nl_____ln)
		 flag=0;
	      gotoxy(Fcol_locF+I_______I-1 ,row___wor);
	   }
	   else{
	      if((Key___yeK<58)&&(Key___yeK>47)){
	      substr(Fcgr_rhcF,Key___yeK,1,ah_ha);
	      stuff(Inum_munI,I_______I,1,ah_ha);
	      substr(Fcgr_rhcF,Key___yeK,1,ah_ha);
	      cprintf("%s",ah_ha);
	      I_______I ++;
	      if ((I_______I==Pp_____pP)&&(I_______I<nl_____ln)){
		 I_______I ++;
		 cprintf(",");
		 gotoxy(wherex(),row___wor);
	      }
	    }
	   }
    }
   }
}
k=0;
while(Inum_munI[k]=='*')
  k++;
if (k!=0){
 strnset(aa_aa,'€',k);
 aa_aa[k]=NULL;
 stuff(Inum_munI,1,k,aa_aa);
}
k=0;
while (Inum_munI[k]=='€')
  k++;
if ((I_______I>1)&&(I_______I<nl_____ln+1)){
   strcpy(aa_aa,Inum_munI);
   for(j=0;j<nl_____ln+1-I_______I;j++)
      *(af_fa+j)=' ';
   af_fa[nl_____ln+1-I_______I]=NULL;
   stuff(aa_aa,I_______I,nl_____ln+1-I_______I,af_fa);
   strcpy(Inum_munI,aa_aa);
}
if(I_______I==dl_____ld+1)
   *(Inum_munI+dl_____ld-1)=' ';
flag=1;
if((I_______I<dl_____ld)||(I_______I==dl_____ld+1))
  flag=0;
if ((dl_____ld>0)&&(flag))
   stuff(Inum_munI,Pp_____pP,1,".");
I_______I = 1;
while (I_______I<=nl_____ln){
    substr(Inum_munI,I_______I,1,af_fa);
   j=At(af_fa[0],Fcgr_rhcF);
   af_fa[0]=j;
   if ((j!=0)&&(j!=35)&&(j!=1))
      stuff(Inum_munI,I_______I,1,af_fa);
   I_______I ++;
}
num___mun=0;
j=0;
num___mun=atof(Inum_munI);
if(dl_____ld==1)
    nl_____ln++;
i_i=0;
for(i_i=0;i_i<k;i_i++)
  *(Inum_munI+nl_____ln-1-i_i)=' ';
left(Inum_munI,nl_____ln-i_i,ah_ha);
strcpy(Inum_munI,ah_ha);
if(i_i!=0) {
  strnset(af_fa,'0',i_i);
  af_fa[i_i]=NULL;
}
if (i_i!=0){
   strcat(af_fa,Inum_munI);
   strcpy(Inum_munI,af_fa);
}
strcpy(af_fa,",");
if(Inum_munI[0]=='0')
   stuff(Inum_munI,2,1,"");
if ((dl_____ld>0)&&(dl_____ld<nl_____ln)&&(flag))
      stuff(Inum_munI,dl_____ld,1,af_fa);

I_______I = 1;
while (I_______I<=nl_____ln){
    substr(Inum_munI,I_______I,1,af_fa);
   j=atoi(af_fa);
   if (af_fa[0] != ' ')
      j=j+48;
   if (af_fa[0] == ',')
     j=36;
   if (af_fa[0]==' ')
     j=1;
   if (af_fa[0]=='-')
     j=45;
   substr(Fcgr_rhcF,j,1,af_fa);
   stuff(Inum_munI,I_______I,1,af_fa);
   I_______I ++;
}
if ((dl_____ld>0)&(flag))
   stuff(Inum_munI,Pp_____pP,1,",");
gotoxy(Fcol_locF,row___wor);
Inum_munI[nl_____ln]=NULL;
cprintf("%s",Inum_munI);
k=0;
while(Inum_munI[k]=='€')
 k++;
stuff(Inum_munI,1,k,"");
gotoxy(Fcol_locF,row___wor);
cprintf("%s",Inum_munI);

RETU: return (num___mun);
}

//*******************************************************************
char *fnts(float num___mun,int nl_____ln,int dl_____ld){
int I_______I,sign ;
char nst___tsn[80],af[80],af2[80];
if ((dl_____ld<0)||(dl_____ld>15)||(nl_____ln<dl_____ld+1))
   return ("");
gcvt(num___mun,nl_____ln,nst___tsn);
if (dl_____ld>0){
   I_______I = nl_____ln;
   while (I_______I>0){
      substr(nst___tsn,I_______I,1,af);
      if (af[0]!='0')
	 break;
      else
	 I_______I --;
   }
   strnset(af,' ',nl_____ln-I_______I);
    left(nst___tsn,I_______I,af2);
   strcpy(nst___tsn,af2);
   strcat(nst___tsn,af);

}
I_______I = 1;
while (I_______I<=nl_____ln){
   substr(nst___tsn,I_______I,1,af);
   sign=atoi(af);
   if ((sign!=0)||(af[0]!='.')){

   sign=sign+47;
   af[0]=Fchr_rhcF[sign];
   stuff(nst___tsn,I_______I,1,af);
   }
   I_______I ++;
}
stuff(nst___tsn,dl_____ld,1,",");
nst___tsn[nl_____ln]=NULL;
return (nst___tsn);
}

/* ************************************** */


char *fnst(int row___wor,int col___loc,char *nst___tsn){
int j,I_______I , nsl___lsn ,fcol_locf , locl_locl , key___yek,key___yek1,flag,ins___sni;
char  inst_tsni[80],af[80],af2[80];
int pd=0;
flag=1;
Ctrl = 0;
ins___sni=0;

if ( (row___wor<1) || (row___wor>24) || (col___loc<1) ||(col___loc>80))
   return (nst___tsn);
nsl___lsn = strlen(nst___tsn);
locl_locl = 80-col___loc;
fcol_locf = locl_locl+1-nsl___lsn;
if ((nsl___lsn<1)||(fcol_locf<0))
   return (nst___tsn);
strcpy(inst_tsni,nst___tsn);
gotoxy(fcol_locf,row___wor);
//cprintf("%s",inst_tsni);
gotoxy(fcol_locf,row___wor);
I_______I = 1;
while ((I_______I<=nsl___lsn)&&(flag==1)){
   key___yek = getch();
   if (key___yek==0)
     key___yek1=getch();
   switch (key___yek){
      case 0:
	    switch(key___yek1){
	    case 83:
		 stuff(inst_tsni,nsl___lsn+1,0," ");
		 stuff(inst_tsni,I_______I,1,"");
		 gotoxy(wherex(),row___wor);
		 substr(inst_tsni,I_______I,nsl___lsn+1-I_______I,af);
		 cprintf("%s",af);
		 gotoxy(fcol_locf+I_______I-1,row___wor);
		 break;
	     case 77:
		  if (wherex()<locl_locl){
		      I_______I ++;
		      gotoxy(wherex()+1,row___wor);
		   }
		   break;
	     case 75:
                     if (wherex()>fcol_locf){
			I_______I --;
			gotoxy(wherex()-1,row___wor);
		     }
		     break;
	     case 71:
		    gotoxy(fcol_locf,row___wor);
		    I_______I = 1;
		    break;
	     case 79:
		   gotoxy(locl_locl,row___wor);
		   I_______I = nsl___lsn;
		   break;
	     case 82:
		 ins___sni = !(ins___sni);
		 if (ins___sni){
		    gotoxy(40,1);
		    cprintf("š¤¢");
		  }
		 else {
		     gotoxy(40,1);
		     cprintf("   ");
		 }
		 gotoxy(fcol_locf+I_______I-1,row___wor);
		 break;
	      }
	      break;
      case 127:
      case 8:
           if (I_______I>1){
	     I_______I --;
	      stuff(inst_tsni,nsl___lsn+1,0," ");
	      stuff(inst_tsni,I_______I,1,"");
	      gotoxy(wherex()-1,row___wor);
	      substr(inst_tsni,I_______I,nsl___lsn+1-I_______I,af);
	      cprintf("%s",af);
              gotoxy(fcol_locf+I_______I-1,row___wor);
            }
            break;
      case 7:
	   stuff(inst_tsni,nsl___lsn+1,0," ");
	   stuff(inst_tsni,I_______I,1,"");
	   gotoxy(wherex(),row___wor);
	   substr(inst_tsni,I_______I,nsl___lsn+1-I_______I,af);
	   cprintf("%s",af);
           gotoxy(fcol_locf+I_______I-1,row___wor);
           break;
      case 4:
           if (wherex()<locl_locl){
              I_______I ++;
              gotoxy(wherex()+1,row___wor);
           }
	   break;
      case 19:
	   if (wherex()>fcol_locf){
              I_______I --;
	      gotoxy(wherex()-1,row___wor);
	   }
           break;
      case 1:
            gotoxy(fcol_locf,row___wor);
            I_______I = 1;
            break;
       case 6:
	    gotoxy(locl_locl,row___wor);
            I_______I = nsl___lsn;
	    break;
       case 13:
            flag=0;
            break;
       case 27:
            gotoxy(fcol_locf,row___wor);
	    cprintf("%s",nst___tsn);
            return (nst___tsn);

       case 22:
	    ins___sni = !(ins___sni);
	    if (ins___sni){
	       gotoxy(40,1);
	       cprintf("š¤¢");
            }
            else {
                gotoxy(40,1);
	       cprintf("   ");
            }
            gotoxy(fcol_locf+I_______I-1,row___wor);
            break;
      default:
	if( ( key___yek>-10)&&(key___yek<0)||(key___yek==5)||(key___yek==24)){
            Ctrl = key___yek;
	    return (inst_tsni);
        }
      if ((key___yek>46)&&(key___yek<58)||(key___yek==32)){
	   if (ins___sni){
	       af2[0]=fchr[key___yek];
	       stuff(inst_tsni,I_______I,0,af2);
	       left(inst_tsni,nsl___lsn,inst_tsni);
	       gotoxy(wherex(),row___wor);
	       substr(inst_tsni,I_______I,nsl___lsn+1-I_______I,af);
	       cprintf("%s",af);
	       if (I_______I<nsl___lsn)
		  gotoxy(fcol_locf+I_______I,row___wor);
	       I_______I ++;
	    }
	    else{
	       af[0]=fchr[key___yek];
	       af[1]=NULL;
	       stuff(inst_tsni,I_______I,1,af);
	       cprintf("%s",af);
	       I_______I ++;
	    } /*else*/
	} /*if*/
	else {
	  if(((key___yek==46)||(key___yek==44)||(key___yek==47))&&(pd==0)){
	       stuff(inst_tsni,I_______I,0,".");
	       left(inst_tsni,nsl___lsn,inst_tsni);
	       gotoxy(wherex(),row___wor);
	       substr(inst_tsni,I_______I,nsl___lsn+1-I_______I,af);
	       cprintf("%s",af);
	       if (I_______I<nsl___lsn)
		  gotoxy(fcol_locf+I_______I,row___wor);
	       I_______I ++;
	      pd=1;
	     }
	else if(((key___yek==45)||(key___yek==43))&&(I_______I==1)){
	       af2[0]=fchr[key___yek];
	       stuff(inst_tsni,I_______I,0,af2);
	       left(inst_tsni,nsl___lsn,inst_tsni);
	       gotoxy(wherex(),row___wor);
	       substr(inst_tsni,I_______I,nsl___lsn+1-I_______I,af);
	       cprintf("%s",af);
	       if (I_______I<nsl___lsn)
		  gotoxy(fcol_locf+I_______I,row___wor);
	       I_______I ++;
	 }
	else {
	  af[0]=7;
	  af[1]=NULL;
	  cprintf("%s",af);
	}
      }
      } /*case*/
    } /*while*/

if ((I_______I>1)&&(I_______I<nsl___lsn+1)){
   strnset(af,' ',nsl___lsn+1-I_______I);
   stuff(inst_tsni,I_______I,nsl___lsn+1-I_______I,"");
   strcat(af,inst_tsni);
}
flag=1;
if (I_______I==1){
   j=strlen(inst_tsni);
   while ((j>=0)&&(flag==1)){
     if(inst_tsni[j]==' ')
       j--;
     else{
       inst_tsni[j]=NULL;
       flag=0;
     }
   }
   I_______I = strlen(inst_tsni);
   strnset(af,' ',nsl___lsn-I_______I);
   strcat(af,inst_tsni);
}
gotoxy(fcol_locf,row___wor);
inst_tsni[nsl___lsn]=NULL;
cprintf("%s",inst_tsni);
return (inst_tsni);
}

char *fdat(int row,int col)
{
 char st[9];
 char sst1[3];
 char sst2[3];
 char sst3[3];
 char *str;
if ( row<0 || row>24 || col<0 || col>80 ) return;
	 strcpy(str,"         ");
	 strcpy(sst1,"  ");
	 strcpy(sst2,"  ");
	 strcpy(sst3,"  ");
	 gotoxy(78-col,row);
	 cprintf("%c",'/');
	 gotoxy(75-col,row);
	 cprintf("%c",'/');

       do{
	 do{
	 strcpy(sst1,fnst(row,col,sst1));
	 if (strcmp(sst1,"€€")!=0 && strcmp(sst1,"ƒ") <= 0) break;
	 delay(50);
	 cprintf("%c",'\7');
	 }  while(1);
	 gotoxy(78-col,row);
	 cprintf("%c",'/');
	 do{
	 strcpy(sst2,fnst(row,col+3,sst2));
	 if (strcmp(sst2,"€€")!=0 && strcmp(sst2,"‚") <=0) break;
	 delay(50);
	 cprintf("%c",'\7');
	 } while(1);
	 if(strcmp(sst2,"€†") <=0 )  break;
	 if ( strcmp(sst1,"ƒ€")<=0) break;
	    delay(50);
	    cprintf("%c",'\7');
       } while(1);
	  gotoxy(75-col,row);
	 cprintf("%c",'/');
       do{
	  strcpy(sst3,fnst(row,col+6,sst3));
	  if (strcmp(sst3,"€€")!=0 ) break;
	  delay(50);
	  cprintf("%c",'\7');
       } while(1);
	    strcpy(st,sst3);
	    st[2]='/';
	    st[3]='\0';
	    strcat(st,sst2);
	    st[5]='/';
	    st[6]='\0';
	    strcat(st,sst1);

	    strcpy(str,st);
return (str);
}

