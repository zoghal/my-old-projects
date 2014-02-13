*:*********************************************************************
*:
*: Procedure file: D:\FOXPRO2\NOW\FDAT.PRG
*:
*:         System: 
*:         Author: 
*:      Copyright (c) 1992, 
*:  Last modified: 08/12/90      8:32
*:
*:  Procs & Fncts: FDAT()
*:
*:          Calls: RETURN()           (function  in ?)
*:               : LEN()              (function  in ?)
*:               : SUBSTR()           (function  in ?)
*:               : ASC()              (function  in ?)
*:               : STUFF()            (function  in ?)
*:               : CHR()              (function  in ?)
*:               : IIF()              (function  in ?)
*:               : INKEY()            (function  in ?)
*:               : AT()               (function  in ?)
*:               : SPACE()            (function  in ?)
*:               : VAL()              (function  in ?)
*:
*:      Documented 10/12/92 at 18:11               FoxDoc  version 2.10
*:*********************************************************************
parameters row,col,var
private row,col,var
private tmpvar,tmpa
private lenvar
PRIVATE COLO,HCOL,WCOL,COL_O
COL_O=SET("COLOR TO")
COLO=COL_O
WCOL=AT(",",COLO)
COLO=RIGHT(COLO,LEN(COLO)-WCOL)
WCOL=AT(",",COLO)
HCOL=LEFT(COLO,WCOL-1)
SET COLOR TO &HCOL


if row>24 .or. row<0 .or. col<1 .or. col>80
   return(var)
endif
lenvar=len(var)
col=col-lenvar+1
if col+lenvar>80 .or. col<0
   return(var)
endif
tmpvar=var
if lenvar<>10 .and. lenvar<>8
   
   return(tmpvar)
endif
if lenvar=8
   var=substr(var,1,2)+'/'+ substr(var,4,2)+'/'+ substr(var,7,2)
else
   var=substr(var,1,4)+'/'+ substr(var,6,2)+'/'+ substr(var,9,2)
endif
******************
* convert to farsi
******************
i=0
do while i<>lenvar
   i=i+1
   a=asc(substr(var,i,1))
   if a>=48 .and. a<=57
      var=stuff(var,i,1,chr(a+80))
   endif
enddo
******************
i=1
a=0
ins___sni=.f.
do while .t.
   do while i<>lenvar+1
      if substr(var,i,1)='/'
         i=iif(a=19,i-1,i+1)
      endif
      @ row,col say var
      @ row,col+i-1 say ''
      a=inkey(0)
      h_____h=a
      if a=22
         if ins___sni
            ins___sni=.f.
         *   @ 0 , 40 say "   "
         else
            ins___sni=.t.
          *  @ 0 , 40 say "š¤¢"
         endif
      endif
      do case
      case (a>=-9 .and. a<=-1) .or. a=5 .or. a=24 .or. a=15 .or. a=9

         ctrl=a
         exit
         return(var)
      case a=47  && '/'
         tmpa=at('/',substr(var,i))
         i=iif(tmpa=0,i,i+tmpa)
      case a=7   && delete
         if i=lenvar .or. substr(var,i+1,1)='/'
            var=stuff(var,i,1,' ')
            loop
         endif
         tmpa=iif(at('/',substr(var,i))<>0,at('/',substr(var,i))+i-1,0)
         if tmpa<>0
            tmpa=substr(var,i+1,tmpa-i-1)+' '
         else
            tmpa=substr(var,lenvar,1)+' '
         endif
         var=stuff(var,i,len(tmpa),tmpa)
      case a=127   && back space
         if i<>1
            if substr(var,i-1,1)='/'
               i=i-2
               var=stuff(var,i,1,' ')
               loop
            endif
            tmpa=iif(at('/',substr(var,i))<>0,at('/',substr(var,i))+i-1,0)
            if tmpa<>0
               tmpa=substr(var,i,tmpa-i)+' '
            else
               tmpa=substr(var,lenvar,1)+' '
            endif
            i=i-1
            var=stuff(var,i,len(tmpa),tmpa)
         endif
      case a=13   && enter
         exit
      case (a>=48 .and. a<=57) .or. a=32   && '0..9' or ' '
         tmpa=iif(at('/',substr(var,i))=0,0,at('/',substr(var,i))+i-1)
         tmpa=iif(tmpa=0,substr(var,lenvar-1,1),substr(var,i,tmpa-i-1))
         a=iif(a=32,32,a+80)
         var=stuff(var,i,1,chr(a))
         i=i+1
         if .not. ins___sni
            loop
         endif
         if i=lenvar+1 .or. substr(var,i,1)='/'
         else
            var=stuff(var,i,len(tmpa),tmpa)
         endif
      case a=27   && escape
         ctrl=0
		exit
         return(tmpvar)
      case a=4    && arrow rigth
         if i<>lenvar
            i=i+1
         endif
      case a=19   && arrow left
         if i<>1
            i=i-1
         endif
      endcase
   enddo
   **********************
   *if a=27
      ctrl=0
      *wait
      *exit
      *return(tmpvar)
   *endif
   @ row,col say var
   ******************
   * convert to latin
   ******************
   tmpa=var
   i=0
   do while i<>len(tmpa)
      i=i+1
      a=asc(substr(tmpa,i,1))
      if a>=128 .and. a<=137
         tmpa=stuff(tmpa,i,1,chr(a-80))
      endif
   enddo
   ******************
   tmpyy=substr(tmpa,1,at('/',var)-1)
   tmpmm=substr(tmpa,at('/',var)+1,2)
   tmpdd=substr(tmpa,at('/',var)+4,2)
   if tmpyy<>space(len(tmpyy))
      if val(tmpyy)>1500
         ?? chr(7)
         
         i=1
         loop
      endif
   endif
   if tmpmm<>'  '
      if val(tmpmm)<1 .or. val(tmpmm)>12
         ?? chr(7)
               
         i=1+at('/',var)
         loop
      endif
   endif
   if tmpdd<>'  '
      do case
      case val(tmpmm)<7
         if val(tmpdd)<1 .or. val(tmpdd)>31
            ?? chr(7)
            i=4+at('/',var)
            loop
         endif
      otherwise
         if val(tmpdd)<1 .or. val(tmpdd)>30
            ?? chr(7)
            i=4+at('/',var)
            loop
         endif
      endcase
   endif
   ctrl=0
   

do case

case h_____h=27
keyboard "{ESC}"

case h_____h=13
keyboard "{ENTER}"

case h_____h=-1
keyboard "{F2}{DNARROW}{UPARROW}"

case h_____h=-2
keyboard "{F3}{DNARROW}{UPARROW}"

case h_____h=-3
keyboard "{F4}{DNARROW}{UPARROW}"

case h_____h=-4
keyboard "{F5}{DNARROW}{UPARROW}"

case h_____h=-5
keyboard "{F6}{DNARROW}{UPARROW}"

case h_____h=-6
keyboard "{F7}{DNARROW}{UPARROW}"

case h_____h=-7
keyboard "{F8}{DNARROW}{UPARROW}"

case h_____h=-8
keyboard "{F9}{DNARROW}{UPARROW}"

case h_____h=-9
keyboard "{F10}{DNARROW}{UPARROW}"

case h_____h=9
keyboard "{DNARROW}"

case h_____h=15
keyboard "{UPARROW}"

case h_____h=5
keyboard "{UPARROW}"

case h_____h=24
keyboard "{DNARROW}"

otherwise
if h_____h>=48 .and. h_____h<=57
keyb "{ENTER}"
else
??chr(7)
endif
endc
SET COLOR TO &COL_O
   return(var)
enddo
*: EOF: FDAT.PRG
