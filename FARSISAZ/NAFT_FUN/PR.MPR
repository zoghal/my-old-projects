set shado on
rest from fchr
set talk off
scr51=space(8)
scr1=space(8)
EXTERNAL PROCEDURE showpop, juststem, justfname, justpath, addbs, ;
   forceext, defaultext, justext
IF TYPE("SKIPVAR") <> "U"
   RELEASE m.skipvar
ENDIF
PUBLIC m.skipvar
m.skipvar = .F.
CLEAR MACRO
SET SYSMENU AUTOMATIC
SET SYSMENU TO
*******************************safheh************************************
clear
A='°°°°°°°°°°'
Set Color To b+/n
@ 0,0,24,79 box
@ 1,1,23,78 box a
save scre to scr51
*CLEAR
*!mftfarsi
rest screen from scr51
DEFINE PAD _rmq0hi0p4 OF _MSYSMENU PROMPT " ...ù¤‘“¤¢ " COLOR SCHEME 3
DEFINE PAD _rmq0hi0qh OF _MSYSMENU PROMPT " üş‘õ÷û¤ " COLOR SCHEME 3
DEFINE PAD _rmq0hi0qj OF _MSYSMENU PROMPT " ¤¥‹“ " COLOR SCHEME 3
DEFINE PAD _rmq0hi0sp OF _MSYSMENU PROMPT " –‘÷‘îõ " COLOR SCHEME 3
DEFINE PAD _rmq0hi0sr OF _MSYSMENU PROMPT "  ”‘‹‹ " COLOR SCHEME 3
DEFINE PAD _rmq0hi0t7 OF _MSYSMENU PROMPT " ø‹Ÿ—¨› " COLOR SCHEME 3
DEFINE PAD _rmq0hi0t9 OF _MSYSMENU PROMPT " ñ‹‹ş‘ê " COLOR SCHEME 3
ON PAD _rmq0hi0p4 OF _MSYSMENU ACTIVATE POPUP abouts
ON PAD _rmq0hi0qh OF _MSYSMENU ACTIVATE POPUP help
ON PAD _rmq0hi0qj OF _MSYSMENU ACTIVATE POPUP abzar
ON PAD _rmq0hi0sp OF _MSYSMENU ACTIVATE POPUP utility
ON PAD _rmq0hi0sr OF _MSYSMENU ACTIVATE POPUP print
ON PAD _rmq0hi0t7 OF _MSYSMENU ACTIVATE POPUP search
ON PAD _rmq0hi0t9 OF _MSYSMENU ACTIVATE POPUP file

DEFINE POPUP abouts MARGIN RELATIVE SHADOW COLOR SCHEME 4
DEFINE BAR 1 OF abouts PROMPT " ...ù¤‘“¤¢"
ON SELECTION BAR 1 OF abouts ;
        DO _rmq0hi0ub ;
        IN LOCFILE("PR" ,"MPX;MPR|FXP;PRG" ,"Where is PR?")

DEFINE POPUP help MARGIN RELATIVE SHADOW COLOR SCHEME 4
DEFINE BAR 1 OF help PROMPT "üş‘õ÷û¤"
ON SELECTION BAR 1 OF help ;
        DO _rmq0hi0uv ;
        IN LOCFILE("PR" ,"MPX;MPR|FXP;PRG" ,"Where is PR?")

DEFINE POPUP abzar MARGIN RELATIVE SHADOW COLOR SCHEME 4
DEFINE BAR _MST_FILER oF abzar PROMPT "ñş‘ê –ş¤ş¢õ "
DEFINE BAR _MST_CALCU OF abzar PROMPT " ’‘¨Ÿ öşª‘õ "
DEFINE BAR _MST_DIARY OF abzar PROMPT " ô‹‹şø‹‹ì‹— "
DEFINE BAR _MST_PUZZL OF abzar PROMPT "     ñ¥‘‹‹• "

DEFINE POPUP utility MARGIN RELATIVE SHADOW COLOR SCHEME 4
DEFINE BAR 1 OF utility PROMPT " ùŸê¬¤şşç—"
ON SELECTION BAR 1 OF utility ;
        DO _rmq0hi0vz ;
        IN LOCFILE("PR" ,"MPX;MPR|FXP;PRG" ,"Where is PR?")

DEFINE POPUP print MARGIN RELATIVE SHADOW COLOR SCHEME 4
DEFINE BAR 1 OF print PROMPT "            ... –‘ª¤¥ğ"
DEFINE BAR 2 OF print PROMPT "ô‘ú¨ùğ¤“üø¤ –‘ä‘ó¯ ”‘"
DEFINE BAR 3 OF print PROMPT "      ¤ğ•‘ ö¢¤î  ü¨¤‘ê"
ON SELECTION BAR 1 OF print ;
        DO _rmq0hi0wq ;
        IN LOCFILE("PR" ,"MPX;MPR|FXP;PRG" ,"Where is PR?")
ON SELECTION BAR 2 OF print ;
        DO _rmq0hi0x1 ;
        IN LOCFILE("PR" ,"MPX;MPR|FXP;PRG" ,"Where is PR?")
ON SELECTION BAR 3 OF print ;
        DO _rmq0hi0xe ;
        IN LOCFILE("PR" ,"MPX;MPR|FXP;PRG" ,"Where is PR?")

DEFINE POPUP search MARGIN RELATIVE SHADOW COLOR SCHEME 4
DEFINE BAR 1 OF search PROMPT "      ô‘÷‘“ ø‹›—¨›"
DEFINE BAR 2 OF search PROMPT "–şø®äù¤‘õª‘“ ø‹›—¨›"
DEFINE BAR 3 OF search PROMPT "        üóî üø‹›—¨›"
ON SELECTION BAR 1 OF search ;
        DO _rmq0hi0y2 ;
        IN LOCFILE("PR" ,"MPX;MPR|FXP;PRG" ,"Where is PR?")
ON SELECTION BAR 2 OF search ;
        DO _rmq0hi0ye ;
        IN LOCFILE("PR" ,"MPX;MPR|FXP;PRG" ,"Where is PR?")
ON SELECTION BAR 3 OF search ;
        DO _rmq0hi0yo ;
        IN LOCFILE("PR" ,"MPX;MPR|FXP;PRG" ,"Where is PR?")

DEFINE POPUP file MARGIN RELATIVE SHADOW COLOR SCHEME 4
DEFINE BAR 1 OF file PROMPT "¤¢õ‘ú¨ –‘ä‘ó¯¢ø¤ø"
DEFINE BAR 2 OF file PROMPT "       ô‘ú¨ üş‘›“‘›"
DEFINE BAR 3 OF file PROMPT "¤¢õ‘ú¨ –‘ä‘ó¯ é£Ÿ"
DEFINE BAR 4 OF file PROMPT "               šø¤¡"
ON SELECTION BAR 1 OF file ;
        DO _rmq0hi0zf ;
        IN LOCFILE("PR" ,"MPX;MPR|FXP;PRG" ,"Where is PR?")
ON SELECTION BAR 2 OF file ;
        DO _rmq0hi0zr ;
        IN LOCFILE("PR" ,"MPX;MPR|FXP;PRG" ,"Where is PR?")
ON SELECTION BAR 3 OF file ;
        DO _rmq0hi102 ;
        IN LOCFILE("PR" ,"MPX;MPR|FXP;PRG" ,"Where is PR?")
ON SELECTION BAR 4 OF file ;
        DO _rmq0hi10c ;
        IN LOCFILE("PR" ,"MPX;MPR|FXP;PRG" ,"Where is PR?")
*       ÖÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄ·
*       º                                                         º
*       º _RMQ0HI0UB  ON SELECTION BAR 1 OF POPUP abouts          º
*       º                                                         º
*       º Procedure Origin:                                       º
*       º                                                         º
*       º From Menu:  PR.MPR,            Record:    5             º
*       º Called By:  ON SELECTION BAR 1 OF POPUP abouts          º
*       º Prompt:     abouts...                                   º
*       º Snippet:    1                                           º
*       º                                                         º
*       ÓÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄ½
*
PROCEDURE _rmq0hi0ub
save scre to scr51
do tarahe
rest screen from scr51

*       ÖÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄ·
*       º                                                         º
*       º _RMQ0HI0UV  ON SELECTION BAR 1 OF POPUP help            º
*       º                                                         º
*       º Procedure Origin:                                       º
*       º                                                         º
*       º From Menu:  PR.MPR,            Record:    8             º
*       º Called By:  ON SELECTION BAR 1 OF POPUP help            º
*       º Prompt:     hlp                                         º
*       º Snippet:    2                                           º
*       º                                                         º
*       ÓÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄ½
*
PROCEDURE _rmq0hi0uv
save scre to scr51
do help1
rest screen from scr51

*       ÖÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄ·
*       º                                                         º
*       º _RMQ0HI0VE  ON SELECTION BAR 1 OF POPUP abzar           º
*       º                                                         º
*       º Procedure Origin:                                       º
*       º                                                         º
*       º From Menu:  PR.MPR,            Record:   11             º
*       º Called By:  ON SELECTION BAR 1 OF POPUP abzar           º
*       º Prompt:     time                                        º
*       º Snippet:    3                                           º
*       º                                                         º
*       ÓÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄ½
*
PROCEDURE _rmq0hi0ve
save scre to scr51
set clock to 23,0
rest screen from scr51
*       ÖÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄ·
*       º                                                         º
*       º _RMQ0HI0VZ  ON SELECTION BAR 1 OF POPUP utility         º
*       º                                                         º
*       º Procedure Origin:                                       º
*       º                                                         º
*       º From Menu:  PR.MPR,            Record:   14             º
*       º Called By:  ON SELECTION BAR 1 OF POPUP utility         º
*       º Prompt:     tagersafhe                                  º
*       º Snippet:    4                                           º
*       º                                                         º
*       ÓÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄ½
*
PROCEDURE _rmq0hi0vz
 SET COLOR TO GR+/B,w/r
 @ 7,28,16,49 BOX "ÉÍ»º¼ÍÈº"
 @ 8,29 clear to 15,48
@  7,32  say'ùõ‘÷¤“ùŸê¬¤şşç—'
@  9,32 prompt [ ü¤› ù‹÷şõ¥ ]
@ 10,32 prompt [ ²²²² ¤—î¤‘î ]
@ 11,32 prompt [ °°°° ¤—î¤‘î ]
@ 12,32 prompt [ ±±±± ¤—î¤‘î ]
@ 13,32 prompt [  ¤—î¤‘î ]
@ 14,32 prompt [  ¤—î¤‘î ]
menu to m
do case
case m=0
rest scre from scr1  
do safheh1
case m=1
do n
case m=2
a='²²²²²²²²²²'
do safheh1
case m=3
a='°°°°°°°°°°'
do safheh1
case m=4
a='±±±±±±±±±±'
do safheh1
case m=5
a=''
do safheh1
case m=6
a=''
do safheh1
endcase
****************************safhah************************************
proc safheh1
set shado on
clear
Set Color To b+/n
@ 0,0,24,79 box
@ 1,1,23,78 box a
*       ÖÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄ·
*       º                              e       e                  º
*       º _RMQ0HI0WQ  ON SELECTION BAR 1 OF POPUP print           º
*       º                                                         º
*       º Procedure Origin:                                       º
*       º                                                         º
*       º From Menu:  PR.MPR,            Record:   17             º
*       º Called By:  ON SELECTION BAR 1 OF POPUP print           º
*       º Prompt:     print etla saham                            º
*       º Snippet:    5                                           º
*       º                                                         º
*       ÓÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄ½
*
PROCEDURE _rmq0hi0wq
do   prints

*******************
*       ÖÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄ·
*       º                                                         º
*       º _RMQ0HI0X1  ON SELECTION BAR 2 OF POPUP print           º
*       º                                                         º
*       º Procedure Origin:                                       º
*       º                                                         º
*       º From Menu:  PR.MPR,            Record:   18             º
*       º Called By:  ON SELECTION BAR 2 OF POPUP print           º
*       º Prompt:     print bargeh saham                          º
*       º Snippet:    6                                           º
*       º                                                         º
*       ÓÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄ½
*
PROCEDURE _rmq0hi0x1
save scre to scr51
do print1
rest screen from scr51

*       ÖÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄ·
*       º                                                         º
*       º _RMQ0HI0XE  ON SELECTION BAR 3 OF POPUP print           º
*       º                                                         º
*       º Procedure Origin:                                       º
*       º                                                         º
*       º From Menu:  PR.MPR,            Record:   19             º
*       º Called By:  ON SELECTION BAR 3 OF POPUP print           º
*       º Prompt:     farsi  karadn printer                       º
*       º Snippet:    7                                           º
*       º                                    e             e      º
*       ÓÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄ½
*
PROCEDURE _rmq0hi0xe
  save scre to scr51
  SET COLOR TO n/n
IF SYS(13) = 'OFFLINE'
	WAIT '... –¨ş÷ ù¢‘õ ¤ğ•‘' WINDOW
else 
  SET COLOR TO GR+/r
  @ 10,20,15,58 BOX "ÉÍ»º¼ÍÈº"
  @ 11,21 clear to 14,57
  @  10,36  say'!ù›ø—'
  @  12,28  say'...¤ğ•‘ ö¢¤î ü¨¤‘êñ‘Ÿ¤¢'
  @  14,24  say'¢ş÷î ¤“¬ ùàŸó¢÷‘ê¯ó'
  !lqset.com
  WAIT ' .¢ª ü¨¤‘ê ¤ğ•‘ ' WINDOW
  rest scre  from scr51
ENDIF  


*       ÖÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄ·
*       º                                                         º
*       º _RMQ0HI0Y2  ON SELECTION BAR 1 OF POPUP search          º
*       º                                                         º
*       º Procedure Origin:                                       º
*       º                                                         º
*       º From Menu:  PR.MPR,            Record:   22             º
*       º Called By:  ON SELECTION BAR 1 OF POPUP search          º
*       º Prompt:     serch by name                               º
*       º Snippet:    8                                           º
*       º                                                         º
*       ÓÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄ½
*
PROCEDURE _rmq0hi0y2
save scre to scr51
do serchn
rest screen from scr51

*       ÖÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄ·
*       º                                                         º
*       º _RMQ0HI0YE  ON SELECTION BAR 2 OF POPUP search          º
*       º                                                         º
*       º Procedure Origin:                                       º
*       º                                                         º
*       º From Menu:  PR.MPR,            Record:   23             º
*       º Called By:  ON SELECTION BAR 2 OF POPUP search          º
*       º Prompt:     serch by ozveyat                            º
*       º Snippet:    9                                           º
*       º                                                         º
*       ÓÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄ½
*
PROCEDURE _rmq0hi0ye
save scre to scr51
do serchs
rest screen from scr51

*       ÖÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄ·
*       º                                                         º
*       º _RMQ0HI0YO  ON SELECTION BAR 3 OF POPUP search          º
*       º                                                         º
*       º Procedure Origin:                                       º
*       º                                                         º
*       º From Menu:  PR.MPR,            Record:   24             º
*       º Called By:  ON SELECTION BAR 3 OF POPUP search          º
*       º Prompt:     serch  kole                                 º
*       º Snippet:    10                                          º
*       º                                                         º
*       ÓÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄ½
*
PROCEDURE _rmq0hi0yo
save scre to scr51
do  proc5
rest screen from scr51

*       ÖÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄ·
*       º                                                         º
*       º _RMQ0HI0ZF  ON SELECTION BAR 1 OF POPUP file            º
*       º                                                         º
*       º Procedure Origin:                                       º
*       º                                                         º
*       º From Menu:  PR.MPR,            Record:   27             º
*       º Called By:  ON SELECTION BAR 1 OF POPUP file            º
*       º Prompt:     worod etla  sahamdar                        º
*       º Snippet:    11                                          º
*       º                                                         º
*       ÓÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄ½
*
PROCEDURE _rmq0hi0zf
scr51=space(8)
save scre to scr51
do  enter
rest screen from scr51

*       ÖÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄ·
*       º                                                         º
*       º _RMQ0HI0ZR  ON SELECTION BAR 2 OF POPUP file            º
*       º                                                         º
*       º Procedure Origin:                                       º
*       º                                                         º
*       º From Menu:  PR.MPR,            Record:   28             º
*       º Called By:  ON SELECTION BAR 2 OF POPUP file            º
*       º Prompt:     gabgaee  sahamdar                           º
*       º Snippet:    12                                          º
*       º                                                         º
*       ÓÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄ½
*
PROCEDURE _rmq0hi0zr
save scre to scr51
do  add10
rest screen from scr51

*       ÖÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄ·
*       º                                                         º
*       º _RMQ0HI102  ON SELECTION BAR 3 OF POPUP file            º
*       º                                                         º
*       º Procedure Origin:                                       º
*       º                                                         º
*       º From Menu:  PR.MPR,            Record:   29             º
*       º Called By:  ON SELECTION BAR 3 OF POPUP file            º
*       º Prompt:     del etla  sahmdar                           º
*       º Snippet:    13                                          º
*       º                                                         º
*       ÓÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄ½
*
PROCEDURE _rmq0hi102
save scre to scr51
do hazf
rest screen from scr51

*       ÖÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄ·
*       º                                                         º
*       º _RMQ0HI10C  ON SELECTION BAR 4 OF POPUP file            º
*       º                                                         º
*       º Procedure Origin:                                       º
*       º                                                         º
*       º From Menu:  PR.MPR,            Record:   30             º
*       º Called By:  ON SELECTION BAR 4 OF POPUP file            º
*       º Prompt:     exit                                        º
*       º Snippet:    14                                          º
*       º                                                         º
*       ÓÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄ½
*
PROCEDURE _rmq0hi10c
   deac  wind  all
   Speed=6600
   Set colo to n/n,n/n,n
   @ 1,1 fill to 23,79 color 4/1
          For M=1 to 41
          For I=1 to Speed
          Next I
          Scroll 0,0,24,40,0,-1
          Scroll 0,40,24,79,0,1
          Next M
QUIT
*********************************help1****************************

proc help1
 SET TALK OFF
 save  scre  to scr51
 SET COLOR TO GR+/b+,n+/r
 @ 2,18,21,62 BOX "ÉÍ»º¼ÍÈº"
 @ 3,19 CLEAR TO 20,61
@ 4,20 SAY "         ‘úş‘÷¢ ¢÷ø ¢¡ ô‘÷ ù“"
@ 6,20 SAY "ô¤‹—Ÿõ ö¤‘îõû ô‘õ— ù“ üøğ ü¢õ ©ø¡ öõ®"
@ 7,20 SAY "¥¤—ªş“ ù¤û ù¢‘ê—¨ –ú›¤¢ –¨ ¢÷õªûø¡"
@ 8,20 SAY "     !¢÷ş‘õ÷ ù›ø—¤ş¥ –‘î÷ ù“ ùõ‘÷¤“ öş"
@ 9,20 SAY "    ùõ‘÷¤“ öş ¥ ü¤¢¤“ ù¡¨÷ ø ü•î  ("
@ 10,20 SAY "                        .¢ª‘“ üõ ö‘ğş¤"
@ 11,20 SAY "   :öøõû ü—‘÷‘îõ ñõ‘ª ¤¥ê ô¤÷ öş(‚"
@ 12,20 SAY "               «¡‘ª öş¢÷‘“ –¨şó ¤ø¢¬ -"
@ 13,20 SAY "         ‘®ä ü¤“ù¢÷ø¤• ¢‘›ş ø¤ø¢¬ -"
@ 14,20 SAY " ü¤ğş¢ ù“¤¢õ‘ú¨ íş¥ô‘ú¨ ñ‘ì—÷ö‘îõ -"
@ 15,20 SAY "ù¢÷ø¤• ü÷‘ğş‘“ø¤¢õ‘ú¨¥ô‘ú¨ é£Ÿö‘îõ -"
@ 16,20 SAY "                    ¤ğ•‘ ö¢øõ÷ ü¨¤‘ê -"
@ 17,20 say "                       ¤¥“ø –‘÷‘îõ _"
SET COLOR TO gr+/r,gr+/r
@19,36 prom  " ùõ¢ "
menu to r2
do case
   case r2=1
rest scre  from scr51
endcase
retu
*********************************prints*******************************
proc prints
   close  data 
   use saham
   rest from  fchr
   DEFINE WIND wp1 FROM 10,20 TO 17,60 SHAD COLOR R+/N
   defi wind    win21 from  10 ,31 to 16,50  color  gr+/b,w+/r
   acti wind win21
   SET COLOR to gr+/b+
   @ 0,1 say   "§‘¨¤“ ü¤şğ –¨şó"            
   SET COLOR TO w+/b+,w+/r
   @ 2,1 PROM  " ü¥‘“÷‘› ¢¬¤¢ "
   @ 4,1 PROM  "  ô‘ú¨ ¢¢ã—  "
   MENU TO X15
   DO CASE
     CASE X15=0
     deac wind wp1
     clear
******************************ü¥‘“÷‘› ¢¬¤¢********************
     CASE X15=1
     ***********
     ***********
     ***********
     deac  wind win21
     DEFI WIND WP FROM 7,15 TO 17,65 SHAD COLOR SCHE 18
     ACTI WIND WP
     @ 0,15 say   ":¢øª ¢¤ø ü¥‘“÷‘› ¢¬¤¢ "            
     SET COLOR TO w+/b+,w+/r
     @ 2,35 PROM  "¤¢ìõø¢ öş“"
     @ 5,35 PROM  " «¡ªõ¤¢ìõ "
      MENU TO X16
      DO CASE
      **********************¤¢ìõø¢ öş“ ü¥‘“÷‘› ¢¬¤¢*****************
      ********** 
      CASE X16=1
      **********
      SET COLOR to GR+/n
      @ 2,26 say" :¥¤—õî"
      min_s=space(3)
      SET COLOR to GR+/bg+
      min_s = Fnum(2,56,0,3,0)
      SET COLOR to GR+/n
      @ 2,9 say":¥¤—ªş“"
      max_s=space(3)
      SET COLOR to GR+/bg+
      max_s = Fnum(2,73,0,3,0)
      SET COLOR TO W+/b,gr+/r
      @ 8,13 prom  " é¤¬÷ "
      @ 8,25 prom  " ù‹õ¢ "
      menu to r2 
       do case
       case r2=1
       deac wind all
       wait"ensraf"window
      retu
       case r2=2

       deac wind wp
       clear
       REPORT FORM SSS for  min_s > t_saham .and. t_saham <  max_s;
       ENVIRONMENT PDSETUP  preview  noeject
       ACTIVATE WINDOW wp1
       SET COLOR TO W+
       @ 0,1 say "                        Œ–¨ öşõû ‘ş  "
       @ 4,13 prom  " é¤¬÷ "
       @ 4,25 prom  "  ”‘‹  "
       menu to r4
       do case
        case r4=1
       deac wind wp1
        wait"ensraf"window
        case r4=2
       deac wind wp1
       REPORT FORM SSS ENVIRONMENT PDSETUP for t_s=t_saham to  print
        endcase
        endcase
      **********************«¡ªõ¤¢ìõ ü¥‘“÷‘› ¢¬¤¢*****************
      **********
      CASE X16=2
      **********
      SET COLOR to GR+/n
      @ 5,24 say": ¢¬¤¢"
      t_s=space(3)
      SET COLOR to GR+/bg+
      t_s = Fnum(5,58,0,3,0)
      SET COLOR TO W+/b,gr+/r
      @ 8,13 prom  " é¤¬÷ "
      @ 8,25 prom  " ù‹õ¢ "
      menu to r3
      do case
       case r3=1
       wait"ensraf"window
       deac wind  all
       case r3=2
       deac wind  wp
       DEFI WIND WP FROM 1,1 TO 24,79 SHAD COLOR SCHE 18
       ACTI WIND WP
       REPORT FORM SSS for t_s=t_saham;
       ENVIRONMENT PDSETUP  preview  noeject
       SET COLOR TO W+/n,gr+/r
       deactiv  wind wp
       ACTIVATE WINDOW wp1
       SET COLOR TO W+
       @ 0,1 say "                        Œ–¨ öşõû ‘ş  "
       @ 4,13 prom  " é¤¬÷ "
       @ 4,25 prom  "  ”‘‹  "
       menu to r4
       do case
        case r4=1
       deac wind wp1
        wait"ensraf"window
        case r4=2
       deac wind wp1
        REPORT FORM SSS ENVIRONMENT PDSETUP for t_s=t_saham to  print
        endcase
       endcase
      endcase

 ************************ô‘ú¨ ¢¢ã—***********************
CASE X15=2
***********
***********
***********
   deac  wind win21
   DEFI WIND WP FROM 7,15 TO 17,65 SHAD COLOR SCHE 18
   ACTI WIND WP
   @ 0,15 say   ":¢øª ¢¤ø ô‘ú¨ ¢¢ã— "            
   SET COLOR TO w+/b+,w+/r
   @ 2,35 PROM  "¤¢ìõø¢ öş“"
   @ 5,35 PROM  " «¡ªõ¤¢ìõ "
   MENU TO X17
   DO CASE
*************************¤¢ìõø¢ öş“ ô‘ú¨ ¢¢ã— ********************
CASE X17=1
   SET COLOR to GR+/n
   @ 2,26 say" :¥¤—õî"
   min_s=space(3)
   SET COLOR to GR+/bg+
   min_s = Fnum(2,56,0,3,0)
   SET COLOR to GR+/n
   @ 2,9 say":¥¤—ªş“"
   max_s=space(3)
   SET COLOR to GR+/bg+
   max_s = Fnum(2,73,0,3,0)
   SET COLOR TO W+/b,gr+/r
   @8,13 prom  " é¤¬÷ "
   @8,25 prom  " ù‹õ¢ "
    menu to r5
       do case
         case r5=1
           wait
          case r5=2
deac wind wp 
REPORT FORM SSS ENVIRONMENT PDSETUP;
for t_saham<max_s .and. t_saham>min_s preview  noeject
endcase
*************************«¡ªõ¤¢ìõ öş“ ô‘ú¨ ¢¢ã— ********************
CASE X17=2
   SET COLOR to GR+/n
   @ 5,24 say":ô‘ú¨¢¢ã—"
   t_s=space(3)
   SET COLOR to GR+/bg+
   t_s = Fnum(5,58,0,3,0)
   SET COLOR TO W+/b,gr+/r
   @8,13 prom  " é¤¬÷ "
   @8,25 prom  " ù‹õ¢ "
   menu to r6
 do case
   case r6=1
wait
   case r6=2
deac wind  wp

  DEFI WIND WP FROM 1,1 TO 24,79 SHAD COLOR SCHE 18
     ACTI WIND WP
   * @ 0,15 say   ":¢øª ¢¤ø ô‘ú¨ ¢¢ã— "            
REPORT FORM SSS ENVIRONMENT PDSETUP for t_s=t_saham preview  noeject
SET COLOR TO W+/n,gr+/r
deactiv  wind    wp
 DEFINE WIND wp1 FROM 10,20 TO 17,60 SHAD COLOR R+/N
   ACTIVATE WINDOW wp1

    @ 0,1 say "                        Œ–¨ öşõû ‘ş  "
    @ 4,13 prom  " é¤¬÷ "
    @ 4,25 prom  "  ”‘‹  "
menu to r2 
do case
   case r2=1
deac wind  wp1
wait"ensraf"window
   case r2=2
deac wind  wp1
REPORT FORM SSS ENVIRONMENT PDSETUP for t_s=t_saham to  print
endcase
endcase
       endcase
        endcase

**********************************enter******************************
proc enter
     ***************************ENTER***************************
   SET TALk OFF
   SET ECHO OFF
   SET ESCAPE OFF
   REST FROM FCHR
   CLOS DATA
scr51=space(8)
   save scre to scr51
   USE SAHAM
   DEFINE WIND ENTRY FROM 1,1 TO 22,79 SHAD COLOR GR+/N
   ACTIVATE WINDOW ENTRY
   @ 0,20 SAY "¢ş‹‘õ‹÷ ¢¤ø ¤ ñ‹ş£ üõøõä  –‘‹ä ò‹¯ "
   @ 2,72 SAY ":ô‘÷"
   @ 4,64 SAY ":üğ¢ø÷‘¡ô‘÷"
   @ 6,68 SAY":¤¢• ô‘÷"
   @ 8,72 SAY ":© ©"
   @ 10,72 SAY":– –"
   @ 12,65 SAY":–şø®äù¤‘õª"
   @ 16,65 SAY": üóãê §¤¢"
   @ 14,65 SAY": §‘õ— öêó—"
   @ 2,32 SAY":ô‘ú¨ ¢ş¤¡ ş¤‘—"
   @ 4,32 SAY":ô‘ú¨ –şîó‘õáø÷"
   @ 6,29 say":ù¢ª –¡¢¤•ô‘ú¨¢ø¨"
   @ 8,33 SAY":   ô‘ú¨ ¢¢ã— "
   @ 10,33 say": ü¥‘“÷‘› ¢¬¤¢"
   @ 12,33 say":ù—ª¢ üó‘ì—÷"
   SET COLOR TO W+/BG+
   NAME1=SPACE(10)
   NAME1 = FSTR(2,17,NAME1)
   FAMILY1=SPACE(15)
   FAMILY1 = FSTR(4,17,FAMILY1)
   FATHER1=SPACE(10)
   FATHER1 = FSTR(6,17,FATHER1)
   SH_SH1=SPACE(10)
   SH_SH1 = FSTR(8,17,SH_SH1)
   T_TAVLOD1=SPACE(8)
   T_TAVLOD1=FDAT(10,17,T_TAVLOD1)
*   sh_ozv1=space(4)
   sh_ozv1=fnum(12,17,0,4,0)
   tel1=fnum(14,17,0,10,0)
   adrs1=space(50)
   adrs1=fstr(16,17,adrs1)
   DATE1=SPACE(8)
   DATE1=FDAT(2,50,DATE1)
   NUA_SAHAM1=SPACE(10)
   NUA_SAHAM1=FSTR(4,50,NUA_SAHAM1)
   sod_saham1=SPACE(1)
   SET COLOR TO W+/N
    @6,25 prom "ùó“ "
    @6,20 prom "¤ş¡ "
    menu to r
   do case
      case r=2
      sod_saham1='n'
      case r=1
      sod_saham1='y'
   endcase
   SET COLOR TO W+/BG+
   T_SAHAM1=FNUM(8,48,0,2,0)
   d_ganbazi1=FNUM(10,48,0,2,0)
   SET COLOR TO W+/N
    @12,25 prom "ùó“ "
    @12,20 prom "¤ş¡ "
    menu to r1
   do case
  case  r1=2
   SET COLOR TO W+/N
   entegal1='n'
  case  r1=1
   entegal1='y'
    SET COLOR to GR+/n
   @ 12,36 say":¥üó‘ì—÷("
   entegal1=space(16)
   SET COLOR to GR+/bg+
   entegal1 = FSTR(12,45,entegal1)
   SET COLOR to GR+/n
   @ 12,17 say":ù“"
   entegal1=space(16)
   SET COLOR to GR+/bg+
    entegal1 = FSTR(12,64,entegal1)
    SET COLOR to GR+/n
    @ 14,36 say":¥üó‘ì—÷(‚"
   entegal1=space(16)
   SET COLOR to GR+/bg+
   entegal1 = FSTR(14,45,entegal1)
   SET COLOR to GR+/n
   @ 14,17 say":ù“"
   entegal1=space(16)
   SET COLOR to GR+/bg+
   entegal1 = FSTR(14,64,entegal1)
  endcase
   SET COLOR TO W+/N
   @ 18,45 PROM  " ù¤‹ş¡£ "
   @ 18,25 PROM  " é¤¬÷ "

   MENU TO X15
     DO CASE
       CASE X15=1
        DEACTIVATE WINDOW ENTRY

        INSERT INTO SAHAM (NAME,FAMILY,father,SH_SH,T_TAVLOD;
        ,T_SAHAM,d_ganbazi,sh_ozv,adrs,tel,NUA_SAHAM,DATE;
        ,sod_saham,entegal);
        VALUES (NAME1,FAMILY1,father1,SH_SH1,T_TAVLOD1;
        ,T_SAHAM1,d_ganbazi1,sh_ozv1,adrs1,tel1,NUA_SAHAM1,DATE1;
        ,sod_saham1,entegal1)

       CASE X15=2
        ENDCASE
        DEACTIVATE WINDOW ENTRY
        CLEAR

        RETU
*********************************hazf*********************************
proc  hazf
   deac wind wp
   deac wind wp1
   set  talk  off
clear memo
   SAVE SCRE  TO SCR51
   Speed=10000
   Set colo to b/b,b/b
          For M=1 to 20
          For I=1 to Speed
          Next I
          Scroll 10,10,14,35,0,-1
          Scroll 10,35,14,70,0,1
          Next M
     USE   SAHAM
     REST FROM  FCHR
     DEFI WIND WP FROM 10,10 TO 14,70 SHAD COLOR SCHE 18
     ACTI WIND WP
     @ 1,20 SAY " :¢ş‹‘õ÷ ”ş‘‹—¤¤¢õ‘ú¨ üğ¢ø÷‘¡ô‘÷ "
     SNAME=SPACE(10)
     SNAME=FSTR(1,65,SNAME)
     deac wind wp
*     rest  scre from scr51
     ff="                "
  if sname=ff
   retu
  else
   locat for alltrim(sname)$ family
   if found()
   clea
   set colo to w+/b+
*   do whil .not. eof()
          Speed=1000
          Set color to g/g,w/g
          For M=1 to 20
          For I=1 to Speed
          Next I
          Scroll 10,20,17,35,0,-1
          Scroll 10,35,17,60,0,1
          Next M   
   DEFINE WIND wp FROM 10,20 TO 17,60 SHAD COLOR GR+/N
   ACTIVATE WINDOW wp
    @ 0,1 say "                     :            ô‘÷  "
    @ 2,1 say "                     :  üğ¢ø÷‘¡  ô‘÷  "
    @ 4,1 say "                        Œ–¨ öşõû ‘ş  "
    @ 0,7 say name
    @ 2,2 say family
    set colo to gr+/n+,gr+/r
    @ 4,4 prom  " ¤‹ş¡ "
    @ 4,11 prom " ù‹ó“ "
    menu to r
    do case
*********
   case r=1
   deac wind wp1
   clear
************
   case r=2
   deac wind  wp1
   deac wind wp
*   set colo to gr+/n
*   do whil .not. eof()
    Set colo to b/b,b/b
    @ 0,0 CLEAR TO 25,79
          Speed=10000
          Set color to n/n,w/n
          For M=1 to 40
          For I=1 to Speed
          Next I
          Scroll 1,1,22,40,0,-1
          Scroll 1,40,22,79,0,1
          Next M   

   DEFINE WIND ENTRY1 FROM 1,1 TO 22,79 SHAD COLOR GR+/N
   ACTIVATE WINDOW ENTRY1
   @ 0,20 SAY "         ¤¢õ‘ú¨  –‘‹ä ò‹¯ é£Ÿ "
   @ 2,72 SAY ":ô‘÷"
   @ 4,64 SAY ":üğ¢ø÷‘¡ô‘÷"
   @ 6,68 SAY":¤¢• ô‘÷"
   @ 8,72 SAY ":© ©"
   @ 10,72 SAY":– –"
   @ 12,65 SAY":–şø®äù¤‘õª"
   @ 14,65 SAY": §‘õ— öêó—"
   @ 16,65 SAY": üóãê §¤¢"
   @ 2,32 SAY":ô‘ú¨ ¢ş¤¡ ş¤‘—"
   @ 4,32 SAY":ô‘ú¨ –şîó‘õáø÷"
   @ 6,29 say":ù¢ª –¡¢¤•ô‘ú¨¢ø¨"
   @ 8,36 SAY":ô‘ú¨ ¢¢ã—"
   @ 10,33 say":ù—ª¢ üó‘ì—÷"

***********   
   set colo to gr+/bg+
   @  2,54 SAY  name
   @  4,48 SAY family
   @  6,54 SAY father
   @  8,54 SAY sh_sh
   @ 10,56 SAY t_tavlod
   @ 12,60 SAY sh_ozv
   @ 14,54 SAY tel
   @ 16,14 SAY adrs

   @ 2,21 SAY date 
   @ 4,19 SAY nua_saham
*if sod_saham=''
 *   @ 6,19 say " éşóî—‘ó“"   
if sod_saham='y' 
   @ 6,19 say "ù¢ª –¡¢¤•"   
else   sod_saham='n'
    @ 6,17 say "ù¢ª÷ –¡¢¤•"   
endif
 @ 8,27 SAY t_saham
**********
if entegal='n'
    @ 10,16 say "ù—ª¢÷üó‘ì—÷"   
else
entegal='y'
    @ 10,16 say ".ù—ª¢üó‘ì—÷"   
endif   
*rest scre from scr51
*         cont
endcase

set colo to gr+/n+,gr+/r
  @18,40 prom "  é£‹‹‹‹Ÿ   "
  @18,30 prom " é¤¬‹÷  "
menu to   x1
do case
case x1=1
deac wind  ENTRY1
delet
case  x1=2
deac wind  ENTRY1
retu
endcase
enddo
else
wait"not found"window
endif
*************************************************************************
************************************serchn*******************************
*************************************************************************
proc  serchn
   deac wind wp
   deac wind wp1
   set  talk  off
   SAVE SCRE  TO SCR51
   Speed=10000
   Set colo to b/b,b/b
          For M=1 to 20
          For I=1 to Speed
          Next I
          Scroll 10,10,14,35,0,-1
          Scroll 10,35,14,70,0,1
          Next M
     USE   SAHAM
     REST FROM  FCHR
     DEFI WIND WP FROM 10,10 TO 14,70 SHAD COLOR SCHE 18
     ACTI WIND WP
     @ 1,20 SAY " :¢ş‹‘õ÷ ”ş‘‹—¤¤¢õ‘ú¨ üğ¢ø÷‘¡ô‘÷ "
     SNAME=SPACE(10)
     SNAME=FSTR(1,65,SNAME)
     deac wind wp
     ff="                "
  if sname=ff
   retu
  else
   locat for alltrim(sname)$ family
   if found()
   clea
   set colo to w+/b+
*   do whil .not. eof()
          Speed=1000
          Set color to g/g,w/g
          For M=1 to 20
          For I=1 to Speed
          Next I
          Scroll 10,20,17,35,0,-1
          Scroll 10,35,17,60,0,1
          Next M   
   DEFINE WIND wp FROM 10,20 TO 17,60 SHAD COLOR GR+/N
   ACTIVATE WINDOW wp
    @ 0,1 say "                     :            ô‘÷  "
    @ 2,1 say "                     :  üğ¢ø÷‘¡  ô‘÷  "
    @ 4,1 say "                        Œ–¨ öşõû ‘ş  "
    @ 0,7 say name
    @ 2,2 say family
    set colo to gr+/n+,gr+/r
    @ 4,4 prom  " ¤‹ş¡ "
    @ 4,11 prom " ù‹ó“ "
    menu to r
    do case
*********
        case r=1
   deac wind wp1
   clear
************
       case r=2
        deac wind  wp1
        deac wind wp
*   do whil .not. eof()
    Set colo to b/b,b/b
@ 0,0 CLEAR TO 25,79
          Speed=10000
          Set color to n/n,w/n
          For M=1 to 40
          For I=1 to Speed
          Next I
          Scroll 1,1,22,40,0,-1
          Scroll 1,40,22,79,0,1
          Next M   
   DEFINE WIND ENTRY1 FROM 1,1 TO 22,79 SHAD COLOR GR+/N
   ACTIVATE WINDOW ENTRY1
   @ 0,20 SAY "            ¤¢õ‘ú¨  –‘‹ä ò‹¯ "
   @ 2,72 SAY ":ô‘÷"
   @ 4,64 SAY ":üğ¢ø÷‘¡ô‘÷"
   @ 6,68 SAY":¤¢• ô‘÷"
   @ 8,72 SAY ":© ©"
   @ 10,72 SAY":– –"
   @ 12,65 SAY":–şø®äù¤‘õª"
   @ 14,65 SAY": §‘õ— öêó—"
   @ 16,65 SAY": üóãê §¤¢"
   @ 2,32 SAY":ô‘ú¨ ¢ş¤¡ ş¤‘—"
   @ 4,32 SAY":ô‘ú¨ –şîó‘õáø÷"
   @ 6,29 say":ù¢ª –¡¢¤•ô‘ú¨¢ø¨"
   @ 8,36 SAY":ô‘ú¨ ¢¢ã—"
   @ 10,33 SAY": ü¥‘“÷‘› ¢¬¤¢"
   @ 12,33 say":ù—ª¢ üó‘ì—÷"

***********   
   set colo to gr+/bg+
   @  2,54 SAY  name
   @  4,48 SAY family
   @  6,54 SAY father
   @  8,54 SAY sh_sh
   @ 10,56 SAY t_tavlod
   @ 12,60 SAY sh_ozv
   @ 14,54 SAY tel
   @ 16,14 SAY adrs
   @ 2,21 SAY date 
   @ 4,19 SAY nua_saham
if sod_saham='y' 
   @ 6,19 say "ù¢ª –¡¢¤•"   
else   sod_saham='n'
    @ 6,17 say "ù¢ª÷ –¡¢¤•"   
endif
 @ 8,27 SAY t_saham
 @ 10,27 SAY d_ganbazi
**********
if entegal='n'
    @ 12,16 say "ù—ª¢÷üó‘ì—÷"   
else
entegal='y'
    @ 12,16 say ".ù—ª¢üó‘ì—÷"   
endif   
SET COLOR TO gr+/r,gr+/r
@ 18,35 prom " ùõ¢ "
menu to r2 
do case
   case r2=1
deac wind  ENTRY1
rest scre  from scr51   
endcase
endcase
endif
retu
*************************************************************************
************************************serchs*******************************
*************************************************************************
   deac wind wp
   deac wind wp1
   set  talk  off
   SAVE SCRE  TO SCR51
   Speed=10000
   Set colo to b/b,b/b
          For M=1 to 20
          For I=1 to Speed
          Next I
          Scroll 10,10,14,35,0,-1
          Scroll 10,35,14,70,0,1
          Next M
     USE   SAHAM index  ozv
     REST FROM  FCHR
     DEFI WIND WP FROM 10,10 TO 14,70 SHAD COLOR SCHE 18
     ACTI WIND WP
     @ 1,20 SAY " :¢ş‹‘õ÷ ¢¤ø ¤¤¢õ‘ú¨ –şø®ä ù¤‘õª "
*     SNAME1=SPACE(4)
     SNAME1=Fnum(1,65,0,4,0)
     deac wind wp
*     rest  scre from scr51
     ff=0
  if sname1=ff
   retu
  else
seek sname1
*   locat for alltrim(sname1)$ sh_ozv
   if found()
   clea
   set colo to w+/b+
*   do whil .not. eof()
          Speed=1000
          Set color to g/g,w/g
          For M=1 to 20
          For I=1 to Speed
          Next I
          Scroll 10,20,17,35,0,-1
          Scroll 10,35,17,60,0,1
          Next M   
   DEFINE WIND wp FROM 10,20 TO 17,60 SHAD COLOR GR+/N
   ACTIVATE WINDOW wp
    @ 0,1 say "                     :            ô‘÷  "
    @ 2,1 say "                     :  üğ¢ø÷‘¡  ô‘÷  "
    @ 4,1 say "                        Œ–¨ öşõû ‘ş  "
    @ 0,7 say name
    @ 2,2 say family
    set colo to gr+/n+,gr+/r
    @ 4,4 prom  " ¤‹ş¡ "
    @ 4,11 prom " ù‹ó“ "
    menu to r
    do case
*********
        case r=1
   deac wind wp1
   clear

************
       case r=2
        deac wind  wp1
        deac wind wp
*   set colo to gr+/n
*   do whil .not. eof()
    Set colo to b/b,b/b
@ 0,0 CLEAR TO 25,79
          Speed=10000
          Set color to n/n,w/n
          For M=1 to 40
          For I=1 to Speed
          Next I
          Scroll 1,1,22,40,0,-1
          Scroll 1,40,22,79,0,1
          Next M   
   DEFINE WIND ENTRY1 FROM 1,1 TO 22,79 SHAD COLOR GR+/N
   ACTIVATE WINDOW ENTRY1
   @ 0,20 SAY "            ¤¢õ‘ú¨  –‘‹ä ò‹¯ "
   @ 2,72 SAY ":ô‘÷"
   @ 4,64 SAY ":üğ¢ø÷‘¡ô‘÷"
   @ 6,68 SAY":¤¢• ô‘÷"
   @ 8,72 SAY ":© ©"
   @ 10,72 SAY":– –"
   @ 12,65 SAY":–şø®äù¤‘õª"
   @ 14,65 SAY": §‘õ— öêó—"
   @ 16,65 SAY": üóãê §¤¢"
   @ 2,32 SAY":ô‘ú¨ ¢ş¤¡ ş¤‘—"
   @ 4,32 SAY":ô‘ú¨ –şîó‘õáø÷"
   @ 6,29 say":ù¢ª –¡¢¤•ô‘ú¨¢ø¨"
   @ 8,36 SAY":ô‘ú¨ ¢¢ã—"
   @ 10,33 SAY": ü¥‘“÷‘› ¢¬¤¢"
   @ 12,33 say":ù—ª¢ üó‘ì—÷"

***********   
   set colo to gr+/bg+
   @  2,54 SAY  name
   @  4,48 SAY family
   @  6,54 SAY father
   @  8,54 SAY sh_sh
   @ 10,56 SAY t_tavlod
   @ 12,60 SAY sh_ozv
   @ 14,54 SAY tel
   @ 16,14 SAY adrs

   @ 2,21 SAY date 
   @ 4,19 SAY nua_saham
*if sod_saham=''
 *   @ 6,19 say " éşóî—‘ó“"   
if sod_saham='y' 
   @ 6,19 say "ù¢ª –¡¢¤•"   
else   sod_saham='n'
    @ 6,17 say "ù¢ª÷ –¡¢¤•"   
endif
 @ 8,27 SAY t_saham
 @ 10,27 SAY d_ganbazi
**********
if entegal='n'
    @ 12,16 say "ù—ª¢÷üó‘ì—÷"   
else
entegal='y'
    @ 12,16 say ".ù—ª¢üó‘ì—÷"   
endif   
SET COLOR TO gr+/r,gr+/r
@ 18,35 prom " ùõ¢ "
menu to r2 
do case
   case r2=1
deac wind  ENTRY1
endcase
endcase
    retu
    enddo
    endif
