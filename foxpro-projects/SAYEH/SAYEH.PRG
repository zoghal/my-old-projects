clear
clear all
rest from fchr
use
set date ymd
set color to 
set talk off
do while .t.
set color to w+/1
@0,0,24,79 box "±±±±±±±±±"
set color to 7/8
@0,0,0,79 box "ÛÛÛÛÛÛÛÛÛ"
set color to
on key label alt+x cancel
defi menu main color sche 3
defi pad a of main prom " šø¤¡ " at 0,11
defi pad b of main prom " –‘÷‘îõ " 
defi pad c of main prom " ü¤şğ –¨şó "
defi pad d of main prom " –‘ä‘ó¯ ©¤¥ğ "
defi pad e of main prom " –‘ä‘ó¯ ¢ø¤ø " 
*******
on sele pad a of main cancel
on sele pad e of main acti popu input
on sele pad d of main acti popu output
on sele pad c of main acti popu list
on sele pad b of main acti popu need
********************
*********************************************************************
defi popu input from 1,70 margin color sche 2 shado
defi bar 1 of input prom " ü¤êàõ ü‘ì "
defi bar 2 of input prom "\-"
defi bar 3 of input prom " üş‘®¤ ô÷‘¡ "
*/////
on sele bar 1 of input do arach
on sele bar 3 of input do reazaye
*********************************************************************
defi popu output from 1,46 margin color sche 2 shado
defi bar 1 of output prom " ü¤êàõ  ü‘ì "
defi bar 2 of output prom "\-"
defi bar 3 of output prom " üş‘®¤  ô÷‘¡ "
on sele bar 1 of output do list_arach
on sele bar 3 of output do list_reazaye
*********************************************************************
defi popu list from 1,30 margin color sche 2 shado
defi bar 1 of list prom " ü¤êàõ  ü‘ì "
defi bar 2 of list prom "\-"
defi bar 3 of list prom " üş‘®¤  ô÷‘¡ "
****/**/*/
*on sele bar 1 of list
*on sele bar 3 of list
*********************************************************************
defi popu need from 1,17 margin color sche 2 shado
defi bar 1 of need prom " ü¤êàõ  ü‘ì "
defi bar 2 of need prom "\-"
defi bar 3 of need prom " üş‘®¤  ô÷‘¡ "
*********************************************************************
acti menu main pad d
enddo
************************* enter procedure ************************
*************************proc input arach********************
procedure arach
use
use mozafari
do input
use
return
*********************** proc input MRs reazaye********************
procedure reazaye
use
use reazaye
do input
use
return
*********************** proc list arach ***************
proc list_arach
use
use mozafari
do list
use
return
********************** proc list MRS reazaye ****************
proc list_reazaye
use
use reazaye
do list
use
return
******************** procedure input ****************************
proc input
defi wind input from 5,20  to 20,60 double shad title " –‘ä‘ó¯ ¢ø¤ø " COLOR W+/B
acti wind input 
***************************** menu 1 *******************************
set cursor off
temp_day=space(10)
@1,35 say "¥ø¤"
@1,12 say " ş¤‘—"
@4,33 say "öø÷ä"
@7,31 say "ñî æó“õ"
@9,30 say "¤‘î÷‘—¨“ "
@11,32 say "¤‘îû¢“"
@3,16,5,31 BOX "ÉÍ»º¼ÍÈº"
@4,17 SAY " ”‹‹‹‹ş‘‹‹‹‹— "
@0,24,2,33 BOX "ÉÍ»º¼ÍÈº"
@1,26 SAY "ù‹“÷‹ª"
@1,1 say "  /  /  "
set color to w+/3
@7,20 say "ÿÿÿÿÿÿÿÿÿ0"
@9,20 say "ÿÿÿÿÿÿÿÿÿ0"
@11,20 say "ÿÿÿÿÿÿÿÿÿ0"
set color to 15/15
@0,24,2,33 BOX "ÉÍ»º¼ÍÈºÛ"
set color to w+/15
@0,24,2,33 BOX "ÉÍ»º¼ÍÈº"
@1,26 SAY "ù‹“÷‹ª"
set color to w+/1
key=inkey(0)
temp_day="ù‹“÷‹ª"
if key=13 then
defi wind menu from 6,44 to 14,55 COLOR W+/3
acti wind menU
temp_day="ù‹“÷‹ª"
SET COLOR TO 7/3,w+/0
@0,1 prom " ù‹“÷‹ª "
@1,1 prom " ù“÷ª  "
@2,1 prom " ù“÷ª ‚ "
@3,1 prom " ù“÷ª ƒ "
@4,1 prom " ù“÷ª „ "
@5,1 prom " ù“÷ª … "
@6,1 prom " ù‹ãõ‹› "
menu to m1
do case
	case m1=1
		deac wind menu	
		@1,25 SAY " ù‹“÷‹ª "
		temp_day="ù‹“÷‹ª"
	case m1=2
		deac wind menu	
		@1,25 SAY " ù“÷ª  "
		temp_day="ù“÷ª "
	case m1=3
		deac wind menu	
		@1,25 SAY "ù“÷ª ‚ "
		temp_day="ù“÷ª ‚"
	case m1=4
		deac wind menu	
		@1,25 SAY "ù“÷‹ª ƒ "
		temp_day="ù“÷ª ƒ"
	case m1=5
		deac wind menu	
		@1,25 SAY "ù“÷‹ª „ "
		temp_day="ù“÷ª „"
	case m1=6
		deac wind menu	
		@1,25 SAY "ù“÷‹ª … "
		temp_day="ù“÷ª …"
	case m1=7
		deac wind menu	
		@1,25 SAY " ù‹ãõ‹› "
		temp_day="ù‹ãõ‹›"
endcase
endif
set color to w+/1
@0,24,2,33 BOX "ÉÍ»º¼ÍÈº"
@1,25 SAY ' '+temp_day+' '
********************************* end menu 1 *******************************
set cursor on
dat={ / / }
@1,1 get dat
read
set cursor off
***************************** menu 2 *******************************
temp_note=space(10)
set color to 15/15
@3,16,5,31 BOX "ÉÍ»º¼ÍÈºÛ"
set color to w+/15
@3,16,5,31 BOX "ÉÍ»º¼ÍÈº"
@4,17 SAY " ”‹‹‹‹ş‘‹‹‹‹— "
set color to w+/1
key=inkey(0)
temp_note="”‹‹‹‹ş‘‹‹‹‹—"
if key=13 then
defi wind menu1 from 8,35 to 18,52 COLOR W+/3
acti wind menU1
temp_note="”‹‹‹‹ş‘‹‹‹‹—"
SET COLOR TO 7/3,w+/0
@0,1 prom " ”‹‹‹‹ş‘‹‹‹‹— "
@1,1 prom " –‹‹÷‹‹ş¤‹‹‹• "
@2,1 prom " ö‹‹‹î‹‹‹‹‹¨ "
@3,1 prom " ü‹‹‹Ÿ¤‹‹‹‹¯ "
@4,1 prom " §‹‹‹‹î‹‹‹‹‹ê "
@5,1 prom " §‹‹‹şø¤‹‹‹‹¨ "
@6,1 prom " ü¨şø÷ ùõ‘÷¤“ "
@7,1 prom " ùõ‘÷¤“ ’‹¬‹÷ "
@8,1 prom " ©ø¤‹‹‹‹‹‹‹‹ê "
menu to m2
do case
	case m2=1
		deac wind menu1	
		@4,17 SAY " ”‹‹‹‹ş‘‹‹‹‹— "
		temp_note="”‹‹‹‹ş‘‹‹‹‹—"
	case m2=2
		deac wind menu1
		@4,17 SAY " –‹‹÷‹‹ş¤‹‹‹• "
		temp_note="–‹‹÷‹‹ş¤‹‹‹•"
	case m2=3
		deac wind menu1	
		@4,17 SAY " ö‹‹‹î‹‹‹‹‹¨ "
		temp_note="ö‹‹‹î‹‹‹‹‹¨"
	case m2=4
		deac wind menu1	
		@4,17 SAY " ü‹‹‹Ÿ¤‹‹‹‹¯ "
		temp_note="ü‹‹‹Ÿ¤‹‹‹‹¯"
	case m2=5
		deac wind menu1	
		@4,17 SAY " §‹‹‹‹î‹‹‹‹‹ê "
		temp_note="§‹‹‹‹î‹‹‹‹‹ê"
	case m2=6
		deac wind menu1	
		@4,17 SAY " §‹‹‹şø¤‹‹‹‹¨ "
		temp_note="§‹‹‹şø¤‹‹‹‹¨"
	case m2=7
		deac wind menu1	
		@4,17 SAY " ü¨şø÷ ùõ‘÷¤“ "
		temp_note="ü¨şø÷ ùõ‘÷¤“"
	case m2=8
		deac wind menu1	
		@4,17 SAY " ùõ‘÷¤“ ’‹¬‹÷ "
		temp_note="ùõ‘÷¤“ ’‹¬‹÷"
	case m2=9
		deac wind menu1	
		@4,17 SAY " ©ø¤‹‹‹‹‹‹‹‹ê "
		temp_note="©ø¤‹‹‹‹‹‹‹‹ê"
endcase
endif
set color to w+/1
@3,16,5,31 BOX "ÉÍ»º¼ÍÈº"
@4,17 SAY ' '+temp_note+' '
********************************* end menu 1 *******************************
set cursor on
kool_kool=0
back_back=0
forward_forward=0
@7,20 get kool_kool
@9,20 get back_back
read
forward_forward=kool_kool-back_back
set color to w+/3
@11,20 say forward_forward
*************************////**********
defi wind mss5 from 19,25 to 23,55 SHADO DOUBLE COLOR W+/1 TITLE " ¢şş‘— " 
acti wind mss5
set color to w+/1
@0,12 say "Œ ¢ş—¨û öõ¯õ‘ş"
@2,8 prom " ùó“ "
@2,15 prom " ¤ş¡ "
menu to p3
 do case
 case p3=1
	appe blan
	replace DAY with TEMP_DAY,DATE with DAT,note with temp_note,KOOL with KOOL_kool,BACK with BACK_back,FORWARD with FORWARD_forward
 case p3=2
 endcase
deac wind mss5
deac wind input
set color to w+/1
return
deacti wind input
return
******************************** proc list arach ********************
proc list
set cursor off
defi window mss6 from 3,11 to 22,68 SHADO DOUBLE TITLE " –¨şó " COLOR W+/B
acti wind mss6
@0,1 say 'ÚÄÄÄÄÄÄÄÄÄÄÂÄÄÄÄÄÄÄÄÄÄÂÄÄÄÄÄÄÄÄÄÄÂÄÄÄÄÄÄÄÄÄÄÂÄÄÄÄÄÄÄÄ¿'
@1,1 say '³ ¤‘î‹û¢“  ³ ¤‘î÷‘—¨“ ³  ñ‹‹‹‹î  ³    ş¤‘—  ³  ¥ø¤   ³'
@2,1 say 'ÃÄÄÄÄÄÄÄÄÄÄÅÄÄÄÄÄÄÄÄÄÄÅÄÄÄÄÄÄÄÄÄÄÅÄÄÄÄÄÄÄÄÄÄÅÄÄÄÄÄÄÄÄ´'
  i=3
 scan 
@i,1 say '³          ³          ³          ³          ³        ³' 
  @i,47 say day 
  @i,36 say date
  @i,24 say kool
  @i,13 say back
  @i,2 say forward
   i=i+1
  if i=17
  wait window ".¢şû¢¤‘ªê ùõ¢ ı¤“ ¤ ı¢şóî "
  i=3
   endif
    endscan
   for a=i to 17
@a,1 say '³          ³          ³          ³          ³        ³' 
   endfor 
@17,1 say"ÀÄÄÄÄÄÄÄÄÄÄÁÄÄÄÄÄÄÄÄÄÄÁÄÄÄÄÄÄÄÄÄÄÁÄÄÄÄÄÄÄÄÄÄÁÄÄÄÄÄÄÄÄÙ"
 WAIT  window "¢şû¢¤‘ªê ¤ ı¢şóî"
 deac wind mss6
 RETURN
