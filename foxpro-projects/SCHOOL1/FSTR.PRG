*:*********************************************************************
*:
*: Procedure file: D:\FOXPRO2\NOW\FSTR.PRG
*:
*:	   System:
*:	   Author:
*:	Copyright (c) 1992,
*:  Last modified: 07/03/169	 14:46
*:
*:  Procs & Fncts: FSTR()
*:
*:	    Calls: LEN()	      (function  in ?)
*:		 : CHR()	      (function  in ?)
*:		 : INKEY()	      (function  in ?)
*:		 : STUFF()	      (function  in ?)
*:		 : SUBSTR()	      (function  in ?)
*:		 : COL()	      (function  in ?)
*:		 : SPACE()	      (function  in ?)
*:		 : LEFT()	      (function  in ?)
*:		 : AT() 	      (function  in ?)
*:		 : RIGHT()	      (function  in ?)
*:
*:	Documented 10/12/92 at 18:11		   FoxDoc  version 2.10
*:*********************************************************************
param  row___wor,col___loc,str___rts
private i_______i , sl_____ls , istr_rtsi , fcol_locf , lcol_locl
private key___yek , eng___gne , nd_____dn , at_____ta , fc_____cf , con___noc , psp___psp
private st1___1ts , st2___2ts , st3___3ts , st4___4ts , st5___5ts , st6___6ts , st7___7ts
set talk off
set escape off
ctrl = 0

PRIVATE COLO,HCOL,WCOL,COL_O
COL_O=SET("COLOR TO")
COLO=COL_O
WCOL=AT(",",COLO)
COLO=RIGHT(COLO,LEN(COLO)-WCOL)
WCOL=AT(",",COLO)
HCOL=LEFT(COLO,WCOL-1)
SET COLOR TO &HCOL

if row___wor<0.or.row___wor>24.or.col___loc<1.or.col___loc>wcols()
   return (str___rts)
endif
store len(str___rts) to i_______i , sl_____ls
fcol_locf =col___loc
lcol_locl = fcol_locf+1-sl_____ls
if sl_____ls<1.or.lcol_locl<0
   return (str___rts)
endif
nd_____dn = 0
eng___gne = .f.
con___noc = .t.
istr_rtsi = str___rts
st1___1ts = " .Š':Œ!%="+chr(141)
st2___2ts = "þõä¨ª÷î“Ÿ›óê—ûð¬¡ú•ì®èãç™Ž"
st3___3ts = "ýôá§©öí’žšñé–ùï« ù”ë­œåâæ˜"
st4___4ts = st2___2ts+"¯à‹"
st5___5ts = "äáèåûý"
st6___6ts = "‘ãâçæúü"
st7___7ts = "‘ø¢¤¥ü£¦"+st1___1ts+st3___3ts
@ row___wor , lcol_locl say istr_rtsi
@ row___wor , fcol_locf say ""
do while i_______i>0
   key___yek = inkey(0)
   psp___psp = .t.
   do case
   case key___yek=7    && del  KEY
      istr_rtsi = " "+stuff(istr_rtsi,i_______i,1,"")
      @ row___wor , lcol_locl say substr(istr_rtsi,1,i_______i)
      if col()=0
      else
	 @ row___wor , col()-1 say ""
      endif
      if nd_____dn>0
	 @ row___wor , col()-nd_____dn say ""
	 i_______i = i_______i-nd_____dn
	 nd_____dn = 0
      endif
   case key___yek=127	&& backspace KEY
      if i_______i<sl_____ls
	 i_______i = i_______i+1
	 istr_rtsi = " "+stuff(istr_rtsi,i_______i,1,"")
	 @ row___wor , lcol_locl say substr(istr_rtsi,1,i_______i)
	 if col()=0
	 else
	    @ row___wor , col()-1 say ""
	 endif
      endif
      if nd_____dn>0
	 @ row___wor , col()-nd_____dn say ""
	 i_______i = i_______i-nd_____dn
	 nd_____dn = 0
      endif
   case key___yek=4    && left arow
      if col()<fcol_locf
	 @ row___wor , col()+1 say ""
	 i_______i = i_______i+1
      endif
      nd_____dn = 0
   case key___yek=19  && right arrow KEY
      if col()>lcol_locl
	 @ row___wor,col()-1 say ""
	 i_______i = i_______i-1
      endif
      nd_____dn = 0
   case key___yek=1  && home KEY
      @ row___wor , fcol_locf say ""
      i_______i = sl_____ls
      nd_____dn = 0
   case key___yek=6  && end KEY
      @ row___wor , lcol_locl say ""
      i_______i = 1
      nd_____dn = 0
   case key___yek=2   && c_row left
      istr_rtsi = space(sl_____ls-i_______i)+left(istr_rtsi,i_______i)
      @ row___wor , lcol_locl say istr_rtsi
      @ row___wor , fcol_locf say ""
      i_______i = sl_____ls
      nd_____dn = 0
   case key___yek=26  && c_arow right
      istr_rtsi = stuff(istr_rtsi,1,i_______i,space(i_______i))
      @ row___wor , lcol_locl say space(i_______i)
      if col()=0
      else
	 @ row___wor , col()-1 say ""
      endif
      nd_____dn = 0
   case key___yek=29
   case key___yek=13
      if at(substr(istr_rtsi,i_______i,1),st1___1ts)=0
	 i_______i = 0
      endif
      exit
   case key___yek>-10.and.key___yek<0.or.key___yek=5.or.key___yek=24.or.key___yek=9.or.key___yek=15
      ctrl = key___yek
      exit
   case key___yek=27  &&  esc KEY
      @ row___wor , lcol_locl say str___rts
      keyb "{ESC}"
      return (str___rts)

   case key___yek=28
      con___noc = .not.con___noc
   case key___yek=22  && insert KEY
      ins___sni = .not.ins___sni
      if ins___sni
*	 @ 0 , 40 say "š¤¢"
      else
*	 @ 0 , 40 say "   "
      endif
      @ row___wor , lcol_locl+i_______i-1 say ""
   case key___yek=126	&&  ~ KEY
      eng___gne = .not.eng___gne
      if nd_____dn>0
	 @ row___wor , col()-nd_____dn say ""
	 i_______i = i_______i-nd_____dn
	 nd_____dn = 0
      endif
   case key___yek>31.and.key___yek<126
      if eng___gne
	 if con___noc
	    if i_______i<sl_____ls
	       at_____ta = at(substr(istr_rtsi,i_______i+1,1),st2___2ts)
	       if at_____ta>0
		  fc_____cf = substr(st3___3ts,at_____ta,1)
		  if fc_____cf="ý"
		     if i_______i<sl_____ls-1
			if at(substr(istr_rtsi,i_______i+2,1),st4___4ts)>0
			endif
		     endif
		  endif
		  istr_rtsi = stuff(istr_rtsi,i_______i+1,1,fc_____cf)
		  @ row___wor , lcol_locl+i_______i say fc_____cf
		  if key___yek=32
		     psp___psp = .f.
		     if col()>1
			@ row___wor , col()-2 say ""
		     else
		     endif
		  endif
	       endif
	    endif
	    istr_rtsi = right(stuff(istr_rtsi,i_______i+1,0,chr(key___yek)),sl_____ls)
	    @ row___wor , lcol_locl say substr(istr_rtsi,1,i_______i)
	    if col()=0
	    else
	       @ row___wor , col()-1 say ""
	    endif
	    nd_____dn = nd_____dn+1
	    if nd_____dn=i_______i
	       exit
	    endif
	    if con___noc
	       if nd_____dn=1
		  at_____ta = at(substr(istr_rtsi,i_______i-1,1),st6___6ts)
		  if at_____ta>0
		  endif
	       endif
	    endif
	    loop
	 endif
      endif
      if key___yek=36.or.key___yek>39.and.key___yek<58.and..not.(key___yek=44.or.key___yek=46)
	 if con___noc
	    if i_______i<sl_____ls
	       at_____ta = at(substr(istr_rtsi,i_______i+1,1),st2___2ts)
	       if at_____ta>0
		  fc_____cf = substr(st3___3ts,at_____ta,1)
		  if fc_____cf="ý"
		  endif
		  istr_rtsi = stuff(istr_rtsi,i_______i+1,1,fc_____cf)
		  @ row___wor , lcol_locl+i_______i say fc_____cf
	       endif
	    endif
	 endif
	 istr_rtsi = right(stuff(istr_rtsi,i_______i+1,0,substr(fchr_rhcf,key___yek,1)),sl_____ls)
	 @ row___wor , lcol_locl say substr(istr_rtsi,1,i_______i)
	 if col()=0
	 else
	    @ row___wor , col()-1 say ""
	 endif
	 nd_____dn = nd_____dn+1
	 if nd_____dn=i_______i
	    exit
	 endif
	 if con___noc
	    if nd_____dn=1
	       at_____ta = at(substr(istr_rtsi,i_______i-1,1),st6___6ts)
	       if at_____ta>0
	       endif
	    endif
	 endif
	 loop
      endif
      if nd_____dn>0
	 @ row___wor , col()-nd_____dn say ""
	 i_______i = i_______i-nd_____dn
	 nd_____dn = 0
      endif
      fc_____cf = substr(fchr_rhcf,key___yek,1)
      if con___noc
	 at_____ta = at(fc_____cf,st1___1ts)
	 if at_____ta>0.and.i_______i<sl_____ls
	    at_____ta = at(substr(istr_rtsi,i_______i+1,1),st2___2ts)
	    if at_____ta>0
	       fc_____cf = substr(st3___3ts,at_____ta,1)
	       if fc_____cf="ý"
		  if i_______i<sl_____ls-1
		     if at(substr(istr_rtsi,i_______i+2,1),st4___4ts)>0
			fc_____cf = "ü"
		     endif
		  endif
	       endif
	       istr_rtsi = stuff(istr_rtsi,i_______i+1,1,fc_____cf)
	       @ row___wor , lcol_locl+i_______i say fc_____cf
	       if key___yek=32
		  psp___psp = .f.
		  if col()>1
		     @ row___wor , col()-2 say ""
		  else
		  endif
	       endif
	    endif
	 endif
	 fc_____cf = substr(fchr_rhcf,key___yek,1)
	 at_____ta = at(fc_____cf,st5___5ts)
	 if at_____ta>0.and.i_______i<sl_____ls
	    if at(substr(istr_rtsi,i_______i+1,1),st4___4ts)>0
	       fc_____cf = substr(st6___6ts,at_____ta,1)
	    endif
	 endif
	 at_____ta = at(fc_____cf,st6___6ts)
	 if at_____ta>0.and.i_______i<sl_____ls
	    if at(substr(istr_rtsi,i_______i+1,1),st7___7ts)>0
	       fc_____cf = substr(st5___5ts,at_____ta,1)
	    endif
	 endif
      endif
      if psp___psp
	 if ins___sni
	    istr_rtsi = right(stuff(istr_rtsi,i_______i+1,0,fc_____cf),sl_____ls)
	    @ row___wor , lcol_locl say substr(istr_rtsi,1,i_______i)
	 else
	    istr_rtsi = stuff(istr_rtsi,i_______i,1,fc_____cf)
	    @ row___wor , lcol_locl+i_______i-1 say fc_____cf
	 endif
	 if col()>1
	    @ row___wor , col()-2 say ""
	 else
	 endif
	 i_______i = i_______i-1
      endif
      if con___noc
	 if i_______i>0
	    if substr(istr_rtsi,i_______i,1)#" "
	       if at(fc_____cf,st7___7ts)>0
	       else
		  at_____ta = at(substr(istr_rtsi,i_______i,1),st5___5ts)
		  if at_____ta>0
		     istr_rtsi = stuff(istr_rtsi,i_______i,1,substr(st6___6ts,at_____ta,1))
		     @ row___wor , lcol_locl+i_______i-1 say substr(istr_rtsi,i_______i,1)
		     @ row___wor , lcol_locl+i_______i-1 say ""
		  endif
	       endif
	    endif
	 endif
      endif
   endcase
enddo
if con___noc
   if i_______i<sl_____ls
      at_____ta = at(substr(istr_rtsi,i_______i+1,1),st2___2ts)
      if at_____ta>0
	 fc_____cf = substr(st3___3ts,at_____ta,1)
	 if fc_____cf="ý"
	    if i_______i<sl_____ls-1
	       if at(substr(istr_rtsi,i_______i+2,1),st4___4ts)>0
		  fc_____cf = "ü"
	       endif
	    endif
	 endif
	 istr_rtsi = stuff(istr_rtsi,i_______i+1,1,fc_____cf)
	 @ row___wor , lcol_locl+i_______i say fc_____cf
      endif
   endif
endif


do case

case key___yek=13
keyboard "{ENTER}"

case key___yek=-1
keyboard "{DNARROW}{F2}{UPARROW}"

case key___yek=-2
keyboard "{DNARROW}{UPARROW}{F3}{DNARROW}{UPARROW}"

case key___yek=-3
keyboard "{DNARROW}{UPARROW}{F4}{DNARROW}{UPARROW}"

case key___yek=-4
keyboard "{DNARROW}{UPARROW}{F5}{DNARROW}{UPARROW}"

case key___yek=-5
keyboard "{DNARROW}{UPARROW}{F6}{DNARROW}{UPARROW}"

case key___yek=-6
keyboard "{DNARROW}{UPARROW}{F7}{DNARROW}{UPARROW}"

case key___yek=-7
keyboard "{DNARROW}{UPARROW}{F8}{DNARROW}{UPARROW}"

case key___yek=-8
keyboard "{DNARROW}{UPARROW}{F9}{DNARROW}{UPARROW}"

case key___yek=-9
keyboard "{DNARROW}{f10}{UPARROW}"

case key___yek=9
keyboard "{DNARROW}"

case key___yek=15
keyboard "{UPARROW}"

case key___yek=5
keyboard "{UPARROW}"

case key___yek=24
keyboard "{DNARROW}"

otherwise
keyboard "{DNARROW}"
endc


SET COLOR TO &COL_O
return (istr_rtsi)
*: EOF: FSTR.PRG
