	Clear All
Set color To 
Set talk off
SET SYSMENU ON
On key Label alt+x cancel
Clear
do while .t.
@ 1,1,23,78 BOX "ÉÍ»º¼ÍÈº°"
DEfi menu Main Bar at line 0 color sche 2
defi pad one of main prompt " –‘şõä " 
defi pad Two of main prompt " ©¤¥ğ " 
defi pad Tree of main prompt " šø¤¡ " 
On pad Two of main acti popu list
On pad one of main acti popu pro
on sele pad tree of main cancel 
****************
Define Popup pro From 8,40 Shadow Margin
Define Bar 1 of pro prompt  ' ¢¤‹ê –‘¬¡ªõ '
Define Bar 2 of pro prompt '\-'
Define Bar 3 of pro prompt ' ‘ú“‘¨Ÿ ©¢¤‹ğ '
On Sele Bar 1 Of pro do In
On Sele Bar 3 Of pro do Priod
***************
Define Popup List From 8,40 Shadow Margin
Define Bar 1 of List prompt '             –‘¬¡ªõ '
Define Bar 2 of List prompt '«¡ªõ  ş¤‘— ‘“ ı‘úî '
Define Bar 3 of List prompt '          ‘úî ùşóî '
Define Bar 4 of List prompt '           ¤‘î ©¢¤ğ '
On Sele Bar 1 Of list do Information
On Sele Bar 2 Of list do Check_of_Date
On Sele Bar 3 Of list do all_priod
On Sele Bar 4 Of list do all_priod
**************
acti menu main
enddo
********************************
Proc In
 Defi Wind Input From 5,20 to 18,60  Title " –‘¬¡ªõ –ê‘ş¤¢ " doub Color Sche 1
 Acti wind input
 Store Space(20) to nName,ffamele,aaddress
 Store 0 to cCode,tTel
 @0,21 Say "[          ] = ¢î"
 @0,22 Get CCode
 @2,10 Say "[                    ] = ô‘÷ " 
 @2,11 Get NName
 @4,1 Say "[                    ] = üğ¢ø÷‘¡ ô‘÷ " 
 @4,2 Get FFamele
 @6,9 Say "[                    ] = §¤¢ " 
 @6,10 Get AADDRESS
 @8,9 Say "[                    ] = öêó— " 
 @8,10 Get TTeL
 read	
 @10,5 Prompt " ¢ş‘— "
 @10,25 Prompt " é¤¬÷ " 
 Menu To Menu1
 do Case Menu1
  Case Menu1 = 1
   Use Check
   Appen Blank
   Repl Name With NName,Code With CCode,famele With Ffamele,address With aAddress,tel With Ttel
   wAIT " ¢ş¨¤ –“™ ù“ " wIND tIMEOUT 0.2
   DEAC WIND INPUT 
  Case Menu1 = 2 
   DEAC WIND INPUT 
 EndCase
Return
*******************************
Proc Priod
 Defi Wind Input From 5,20 to 18,60  Title " ’‘¨Ÿ ©¢¤ğ " doub Color Sche 1
 Acti wind input
 CCode = 0
 Nnum = 0
 OOut =0
 IIn = 0
 DDate ={ / / } 
 @0,16 Say "[          ] = ’‘¨Ÿ ¢î"
 @0,17 Get CCode
 Read
 Use
 Use Check
 Locate For Ccode = Code
 IF Found()
 Use
 Use Priod
 @2,13 Say "[          ] = ùğ¤“ ù¤‘õª " 
 @2,14 Get NNum
 @4,15 Say "[          ] = ¤‘î÷‘—¨“ " 
 @4,16 Get Oout
 @6,17 Say  "[          ] = ¤‘îû¢“ " 
 @6,18 Get IIn
 Set Date ymd
 @8,18 Say  "[        ] =  ş¤‘— " 
 @8,19 Get DDate
 read	 
 @10,5 Prompt " ¢ş‘— "
 @10,25 Prompt " é¤¬÷ " 
 Menu To Menu1
 do Case Menu1
  Case Menu1 = 1
   Use Priod
   Appen Blank
   Repl Code With CCode,Num With NNum,In With IIn,Out With oOUT,Date With DDate
   wAIT " ¢ş¨¤ –“™ ù“ " wIND tIMEOUT 0.2
   DEAC WIND INPUT 
   Do total
  Case Menu1 = 2 
   DEAC WIND INPUT 
 EndCase
 Else 
 Wait "¢¤¢÷ ¢ø›ø «¡ª ¢î " wind Timeout 0.5
 deac wind input  
 Endif
Return
***********************
Proc All_priod
Use
use Priod
Brow Noedit 
Do Total
Return
*********************
Proc Total
 Use Priod
 Go top
 OOut =0
 iin =0
 Do while .not. Eof()
  Oout = OOut + out
  IIn = IIn + in
  Skip
 Enddo
 Defi Wind Total From 9,25 to 11,55  Title " ù¢÷‘õ " doub Color Sche 1
 Acti wind Total
 @0,1 Say "[           ]= ù¢÷‘õ " 
 @0,2 Say  iin  - oout
Wait "Press Any Key to contneu" wind
deac Wind total
return
********************************
Proc Information
Use
use Check
Brow Noedit 
Return
**************
Proc Check_of_Date
Use
Use Priod 
Defi Wind Total From 9,20 to 11,55 doub Color Sche 1
Acti wind Total
i=1
set date ymd
DDATE = { / / }
@0,1 Say "[        ]= ¢ş÷î ¢¤ø ¤  ş¤‘—" 
@0,2 GET ddATE
read
dEAC wIND tOTAL
BROWSE FIELD Code,Num,in,out,date For Date=DDate noedit
return
