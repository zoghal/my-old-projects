deac MENU all
*load sepand.bin
on key label alt+x do exitmenu
on key label F1 do help
clear all
rest from fchr
set talk off 
set color to w+/1
@0,0,24,80 box "���������"
set color to 7/1
@24,0,24,80 box "���������"
do menu_down
set color to
set sysmenu save
do while .t.
defi menu _system  bar at line 0 color BG/W,N/W,W+/W,,,N/bg,W+/W 
dEfi pad six oF _system prom "  ���\<�  " 
dEfi pad fiv oF _system prom "  틋���\<�  " 
dEfi pad for oF _system prom "  ������\<�  "
dEfi pad ter oF _system prom "  ����\<��  "
dEfi pad two oF _system prom "  ������\<�  " 
dEfi pad one oF _system prom "   ���󋯐���\<� " 
***********************
DEFI POPU _menu1 FROM 1,58 MARK">" SHAD color BG/W,N/W,W+/W,,,N/BG,W+/W marg RELATIVE 
DEFI BAR 1 OF _menu1 PROM "   ���� ���� ��\<�"
DEFI BAR 2 OF _menu1 PROM "���� ������ ��\<��"
DEFI BAR 3 OF _menu1 PROM "    ���� ������\<�"
DEFI BAR 4 OF _menu1 PROM "\-"
DEFI BAR 5 OF _menu1 PROM "        ��\<�� 食"
DEFI BAR 6 OF _menu1 PROM " ����\<�� ���� 食"
DEFI BAR 7 OF _menu1 PROM "       ���\<�� 食"
on sele bar 1 of _menu1 do book 
on sele bar 2 of _menu1 do JADID
on sele bar 3 of _menu1 do HAMKAR
on sele bar 5 of _menu1 do del_dars
on sele bar 6 of _menu1 do DEL_student
on sele bar 7 of _menu1 do DEL_hamkar
***********************
DEFI POPU _menu2 FROM 1,45 MARK ">" SHAD color BG/W,N/W,W+/W,,,N/BG,W+/W marg RELATIVE
DEFI BAR 1  OF _menu2 PROM "           ���� ���\<�"
DEFI BAR 2  OF _menu2 PROM "    ������ ���� ��\<��"
DEFI BAR 3  OF _menu2 PROM "        ������� ��\<��"
DEFI BAR 4  OF _menu2 PROM "\-"
DEFI BAR 5  OF _menu2 PROM "       ���� ���� ��\<�"
DEFI BAR 6  OF _menu2 PROM "������ ���� ���� �\<��"
DEFI BAR 7  OF _menu2 PROM "      ����� ���� \<���"
on sele bar 1 of _menu2 do kool_l_dars
on sele bar 2 of _menu2 do kool_l_student
on sele bar 3 of _menu2 do kool_l_hamkar
on sele bar 5 of _menu2 do kool_pri_dars
on sele bar 6 of _menu2 do kool_pri_student
on sele bar 7 of _menu2 do kool_pri_hamkar
****************************
DEFI POPU _menu3 FROM 1,40 MARK ">" SHAD color BG/W,N/W,W+/W,,,N/BG,W+/W marg RELATIVE
DEFI BAR 1   OF _menu3 PROM "  ����  "
DEFI BAR 2   OF _menu3 PROM "\-"
DEFI BAR 3   OF _menu3 PROM "���� ����"
DEFI BAR 4   OF _menu3 PROM "\- "
DEFI BAR 5   OF _menu3 PROM " �����  "
on sele bar 1 of _menu3 do edit_dars
on sele bar 3 of _menu3 do edit_student
on sele bar 5 of _menu3 do edit_hamkar
*********************************menu need ********************************************
DEFI POPU _menu4 FROM 1,22 MARK"" SHAD color BG/W,N/W,W+/W,,,N/BG,W+/W marg RELATIVE
DEFI BAR 1   OF _menu4 PROM "   ������������狋\<� "
DEFI BAR 2   OF _menu4 PROM "\-"
DEFI BAR 3   OF _menu4 PROM " �������� ���\<� ���� "
DEFI BAR 4   OF _menu4 PROM "\-"
DEFI BAR 5 OF _menu4 PROM   "   ���������\<������� "  
on  BAR 1 OF _menu4 activ popu _MENU_NEED
on  BAR 3 OF _menu4 activ popu _MENU_INDEX
on  BAR 5 OF _menu4 activ popu _MENU_print
                           ******** menu change ***********
DEFI POPU _menu_NEED FROM 2,44 MARK ">" SHAD color BG/W,N/W,W+/W,,,N/BG,W+/W marg RELATIVE
DEFI BAR 1   OF _menu_NEED PROM " ����\<� "
DEFI BAR 2   OF _menu_NEED PROM "\- "
DEFI BAR 3   OF _menu_NEED PROM " ����\<� "
on  BAR 1 OF _menu_NEED activ popu _MENU_N_alafpa
on  BAR 3 OF _menu_NEED activ popu _MENU_N_number
************* ************
DEFI POPU _menu_N_alafpa FROM 3,54 MARK ">" SHAD color BG/W,N/W,W+/W,,,N/BG,W+/W marg RELATIVE
DEFI BAR 1   OF _menu_N_alafpa PROM "  ����� �� "
DEFI BAR 2   OF _menu_N_alafpa PROM "  ����� �� "
DEFI BAR 3   OF _menu_N_alafpa PROM " ������ �� "
DEFI BAR 4   OF _menu_N_alafpa PROM " ������ �� "
*-*-*-*-*-**--*-*
on  bar 1 of _menu_N_alafpa call sepand with "���� ��"
on  bar 2 of _menu_N_alafpa call sepand with "���� ��"
on  bar 3 of _menu_N_alafpa call sepand with "������ ��"
on  bar 4 of _menu_N_alafpa call sepand with "������ ��"
************* ************
DEFI POPU _menu_N_number FROM 4,54 MARK ">" SHAD color BG/W,N/W,W+/W,,,N/BG,W+/W marg RELATIVE
DEFI BAR 1   OF _menu_N_number PROM " ����� ���� "
DEFI BAR 2   OF _menu_N_number PROM " ����� ���� "
on  bar 1 of _menu_N_number call sepand with "����� ���� �����"
on  bar 2 of _menu_N_number call sepand with "���� ���� �����"
                        ******** end menu change ***********
**-*-*-*-*-*-*-*-*-*-*-*-*-*-*-*-*-*-*-*-*-*-*-*-*-*-*-*-*-*-*-*-*-*-*-*-*-*-*-*-*-*-*-*-*-*-*-
                           ******** menu index ***********
DEFI POPU _menu_index FROM 4,44 MARK ">" SHAD color BG/W,N/W,W+/W,,,N/BG,W+/W marg RELATIVE
DEFI BAR 1 OF _menu_inDex PROM " � �  �  \<� "
DEFI BAR 2 OF _menu_inDex PROM "\- "
DEFI BAR 3 OF _menu_inDex PROM " ���\<� ���� "
DEFI BAR 4 OF _menu_inDex PROM "\- "
DEFI BAR 5 OF _menu_inDex PROM " � �����\<� "
on BAR 1 OF _menu_inDex activ popu _MENU_I_DARS
on BAR 3 OF _menu_inDex activ popu _MENU_I_student
on BAR 5 OF _menu_inDex activ popu _MENU_I_hamkar
************* ************
DEFI POPU _menu_I_DARS FROM 5,58 MARK ">" SHAD color BG/W,N/W,W+/W,,,N/BG,W+/W marg RELATIVE
DEFI BAR 1   OF _menu_I_DARS PROM " ���� ����\<� "
DEFI BAR 2   OF _menu_I_DARS PROM " ���� ����\<� "
DEFI BAR 3   OF _menu_I_DARS PROM " ���� ����\<� "
DEFI BAR 4   OF _menu_I_DARS PROM " ����� ���\<� "
*-*-*-*-*-**--*-*
on sele BAR 1  OF  _menu_I_DARS do i_COD_dars
on sele BAR 2 OF  _menu_i_dars do i_NAME_dars
on sele BAR 3 OF  _menu_i_dars do i_VAHED_dars
on sele BAR 4 OF  _menu_i_dars do i_NUM_dars
************* ************
DEFI POPU _menu_I_student FROM 7,58 MARK ">" SHAD color BG/W,N/W,W+/W,,,N/BG,W+/W marg RELATIVE
DEFI BAR 1   OF _menu_I_student PROM "        �\<� "
DEFI BAR 2   OF _menu_I_student PROM "       ��\<� "
DEFI BAR 3   OF _menu_I_student PROM "    �����\<� "
DEFI BAR 4   OF _menu_I_student PROM "   ��� ��\<� "
DEFI BAR 5   OF _menu_I_student PROM "  ���� �\<� "
DEFI BAR 6   OF _menu_I_student PROM "  �������\<� "
*-*-*-*-*-*-*-*
on sele BAR 1 OF  _menu_I_STUDENT do i_COD_STUDENT
on sele BAR 2 OF  _menu_i_STUDENT do i_NAME_STUDENT
on sele BAR 3 OF  _menu_i_STUDENT do i_FAMILY_STUDENT
on sele BAR 4 OF  _menu_i_STUDENT do i_NA_FA_STUDENT
on sele BAR 5 OF  _menu_i_STUDENT do i_MAHAL_STUDENT
on sele BAR 6 OF  _menu_i_STUDENT do i_SHNAS_STUDENT
******************
DEFI POPU _menu_I_HAMKAR FROM 9,58 MARK ">" SHAD color BG/W,N/W,W+/W,,,N/BG,W+/W marg RELATIVE
DEFI BAR 1   OF _menu_I_HAMKAR PROM "              �\<� "
DEFI BAR 2   OF _menu_I_HAMKAR PROM " ������������\<� " 
DEFI BAR 3   OF _menu_I_HAMKAR PROM "         ������\<� " 
DEFI BAR 4   OF _menu_I_HAMKAR PROM "        ���� ��\<� "
*-*-*-*-*-**--*-*
on sele BAR 1  OF  _menu_I_HAMKAR do i_COD_HAMKAR
on sele BAR 2 OF  _menu_i_HAMKAR do i_NAME_HAMKAR
on sele BAR 3 OF  _menu_i_HAMKAR do i_CLASS_HAMKAR
on sele BAR 4 OF  _menu_i_HAMKAR do i_NAME_DARS_HAMKAR
************* ************
DEFI POPU _menu_print FROM 6,44 MARK ">" SHAD color BG/W,N/W,W+/W,,,N/BG,W+/W marg RELATIVE
DEFI BAR 1   OF _menu_print PROM "�𕑝 ���� ����\<�" 
DEFI BAR 2   OF _menu_print PROM "    �𕑝 �����\<�"
on sele bar 1 of _menu_print do printer_farsi
on sele bar 2 of _menu_print call sepand with "�𕑝 �� ��� 񑨤�"
                         ******** end menu index ***********
******************************
*******************************
ON PAD one of _SYSTEM acti popu _menu1
ON PAD two of _SYSTEM  acti popu _menu2
ON PAD ter of _SYSTEM  acti popu _menu3
ON PAD for of _SYSTEM acti popu _menu4
ON SELE PAD six of _SYSTEM do exitmenu
ON SELE PAD fiv of _SYSTEM  do help
*********************
activ menu _system  PAD ONE
enddo
* *****
*********
*======>
proc kool_l_dars
HIDE POPU _MENU2
set cursor on
use
use book index book
reindex
do l_dars
set cursor off
ACTI POPU _MENU2
return
******************
proc kool_l_student
HIDE POPU _MENU2
set cursor on
   		use student index student
		reindex
    	DO l_student
    	set cursor off
acti POPU _MENU2
return
******************
proc kool_l_hamkar
HIDE POPU _MENU2
set cursor on
	    use hamkar index hamkar
		reindex	
    	do l_hamkar
    	set cursor off
acti POPU _MENU2
return
************
proc kool_pri_book
HIDE POPU _MENU2
set cursor on
   		set printer on
   		set device to printer
   		do pri_book   
		set device to screen
		set printer off
		set cursor off
acti POPU _MENU2
return
**********************
proc kool_pri_student
HIDE POPU _MENU2
set cursor on
   		set printer on
   		set device to printer
   		do pri_student
   		set printer off
		set device to screen
		set cursor off
acti POPU _MENU2
return
**********************
proc kool_pri_HAMKAR
HIDE POPU _MENU2
set cursor on
   		set printer on
   		set device to printer
   		do pri_hamkar
		set device to screen
   		set printer off
   		set cursor off
acti POPU _MENU2
 return
*****************
**************
******************************
*----------------------------SETRT ENTER INFORMATION ------------------------------------
************************* menu 1-------------------
******* proc book ******
proc book
use
use BOOK 
SET COLOR TO W+/1
defi window mss6 from 3,20 to 15,60 SHADO DOUBLE TITLE " ���� ��� " COLOR W+/B
acti wind mss6
clear
@1,26 say "    ���� ��"
@3,26 say "   ���� ���"
@5,26 say " ���� ����"
@7,26 say " ����� ����"
set color to w+/3
nk=space(15)
kk=space(5)
vk=space(1)
nuk=space(2)
kk=fnum(1,22,kk,5,1)
WAIT " " TIMEOUT 0.0
nk=fstr(3,22,nk)
B=INKEY(0)
nk=alltrim(nk)
vk=fnum(5,22,vk,3,1)
WAIT " " TIMEOUT 0.0
**** strat menu number ************
@ 6,20,8,25 BOX "�ͻ���Ⱥ"
@7,21 say " 10 "
a=inkey(0)    
if a=13 then  
defi wind mss8 from 12,38 to 15,45 double shad color w+/3
acti wind mss8
set color to 0/3
@0,1 prom " 10 "
@1,1 prom " 12 "
menu to p4
do case
	case p4=1
		type=0
	case p4=2
		type=1
endcase
deac wind mss8
if type=0
@7,21 say " 10 "
nuk="10"
ENDIF
if type=1
@7,21 say " 12 "
nuk="12"
ENDIF
else
nuk="10"
endif
********** END MENU number ***************
defi window mss7 from 17,20 to 21,60 SHADO DOUBLE TITLE " ����� " COLOR W+/1
acti wind mss7
set color to w+/1
@0,22 say "� ����� ��������"
@2,10 prom " �� "
@2,20 prom " ��� "
menu to p3
 do case
 case p3=1
	appe blan
replace name with fsis(nK),COD with KK,VAHeD with VK,NUMBER with NUK
 case p3=2
 endcase
deac wind mss6
deac wind mss7
set color to w+/1
set cursor off
return
****************************
****************************
****************************
********* end proc**********
PROC jadid
set cursor on
use
use student 
defi window mss4 from 3,20 to 17,60 SHADO DOUBLE TITLE " ���� ������ ���� " COLOR W+/B
acti wind mss4
clear
@1,24 say  "  ���� ���� ��"
@3,24 say " ���� ���� ���"
@5,24 say "  ������ ���"
@7,24 say "       ��� ���"
@9,24 say "�������� �����"  
@11,24say "      ���� ��"
set color to w+/3
nd=space(13) 
fd=space(9) 
pd=space(8)
md=space(7)
sd=space(8)
kd=space(10)
kd=fSTR(1,22,kd)
=INKEY(0)
nd=fstr(3,22,nd)
=INKEY(0)
nd=alltrim(nd)
fd=fstr(5,22,fd)
=INKEY(0)
fd=alltrim(fd)
pd=fstr(7,22,pd)
=INKEY(0)
pd=alltrim(pd)
Sd=fstr(9,22,Sd)
=INKEY(0)
md=fstr(11,22,md)
=INKEY(0)
md =alltrim(md)
defi window mss5 from 19,20 to 23,60 SHADO DOUBLE TITLE " ����� " COLOR W+/B
acti wind mss5
set color to w+/1
@0,22 say "� ����� ��������"
@2,10 prom " �� "
@2,20 prom " ��� "
menu to p3
 do case
 case p3=1
	appe blan
	replace name with fsis(nd),famely with fsis(fd),cod with kd,nsnas with sd,mt with fsis(md),nafader with fsis(pd)
 case p3=2
 endcase
deac wind mss4
deac wind mss5
set color to w+/1
set cursor off
return
******* end proc *******
************************
************************
************************
******** hamkar ***********
proc hamkar
set cursor on
use
use hamkar in 1
defi window mss6 from 3,18 to 16,63 SHADO DOUBLE TITLE " ���� ����� " COLOR W+/B
acti wind mss6
clear
@1,24 say "          ����� ��"
@3,24 say " ������ ���� ���"
@5,24 say "           �������"
@7,24 say " �����  ����� ����"
set color to w+/3
nh=space(20)
kh=space(10)
th=space(15)
drh=space(20)
kh=fnum(1,22,kh,10,0)
=INKEY(0)
nh=fstr(3,22,nh)
=INKEY(0)
nh=alltrim(nh)
******** MENU TEHSELAT ******
@ 4,20,6,32 BOX "�ͻ���Ⱥ"
@5,21 say "  ������� "
a=inkey(0)    
if a=13 then  
defi wind mss8 from 10,35 to 19,50 double shad color w+/3
acti wind mss8
set color to 0/3
@0,3 prom "  ������� "
@1,3 prom "     ���� "
@2,3 prom " ���� ��� "
@3,3 prom "    ������ "
@4,3 prom "������ ��� "
@5,3 prom "     ���� "
@6,3 prom "      ���� "
@7,3 prom "  ���� ��� "
menu to p4
do case
	case p4=1
		type=0
	case p4=2
		type=1
	case p4=3
		type=2
	case p4=4
		type=3
	case p4=5
		type=4
	case p4=6
		type=5
	case p4=7
		type=6
	case p4=8
		type=7
endcase
deac wind mss8
if type=0
@5,21 say "  ������� "
TH="  �������"
ENDIF
if type=1
@5,21 say "     ���� "
TH="     ����"
ENDIF
if type=2
@5,21 say " ���� ��� "
TH=" ���� ���"
ENDIF
If type=3
@5,21 say "    ������ "
TH="    ������"
ENDIF
if type=4
@5,21 say "������ ��� "
TH="������ ���"
ENDIF
if type=5
@5,21 say "     ���� "
TH ="     ����"
endif
if type=6
@5,21 say "      ���� "
TH ="     ����"
endif
if type=7
@5,21 say "  ���� ��� "
TH ="  ���� ���"
endif
********** END MENU TAHSELAT ***************
drh=fstr(7,22,drh)
drh=alltrim(drh)
else  
TH="�������"
drh=fstr(7,22,drh)
drh=alltrim(drh)
endif 
th=alltrim(th)
wait " "
defi window mss7 from 18,20 to 22,60 SHADO DOUBLE TITLE " ����� " COLOR W+/B
acti wind mss7
set color to w+/1
@0,22 say "� ����� ��������"
@2,10 prom " �� "
@2,20 prom " ��� "
menu to p3
 do case
 case p3=1
	appe blan
replace name with fsis(nh),COD with Kh,tahsel with fsis(th),dars with fsis(drh)
 case p3=2
 endcase
deac wind mss6
deac wind mss7
set color to w+/1
set cursor off
return
****** end proc hamkar *******
******************************
******************************
******************************
******************* del BOOK **
proc del_dars
set cursor off
use
use book
defi window mss from 4,18 to 17,62 SHADO DOUBLE TITLE " ��� 食 " COLOR W+/B
acti wind mss
@1,20 say " :���� ���� �� ���� ��"
@5,12 say " � ��������������� " 
@6,1 say '���������������������������������������Ŀ'
@7,1 say '����������� ��   ���  �������   � ����� �'
@8,1 say '���������������������������������������Ĵ'
@9,1 say '�     �      �                  �       �'
@10,1 say "�����������������������������������������"
kk=space (5)
kk=fnum(1,8,kk,5,1)
wait " "
go top
do while .not. eof()
locate for cod=kk 
if found ()
@ 9,35 say cod
@ 9,18 say fsis(name)
@ 9,9 say vahed
@ 9,3 say number
defi window mss7 from 19,20 to 23,60 SHADO DOUBLE TITLE " ����� " COLOR W+/B
acti wind mss7
set color to w+/1
@0,22 say "� ����� ��������"
@2,10 prom " �� "
@2,20 prom " ��� "
menu to p3
 do case
 case p3=1
 DELE
 PACK
 deac wind mss7
 exit
 case p3=2
 DEAC WIND MSS7
 DEAC WIND MSS
 exit
 endcase
else
wait window " ����� ���� ��� ���� �� "
endif
enddo
deac wind mss
use
acti POPU _MENU1
set cursor off
return
*** ******** * *end*******
**************************
**************************
**************************
proc del_student
set cursor off
use
use student
defi window mss from 3,7 to 15,72 SHADO DOUBLE TITLE " ������ ���� 飡" COLOR W+/B
acti wind mss
@1,36 say " :���� ���� �� �������� ��"
@3,23 say " � ��������������� " 
@5,1 SAY'������������������������������������������������������������Ŀ'
@6,1 SAY'�������������������� ��� � ������ � ����������� � �������  �'
@7,1 SAY'������������������������������������������������������������Ĵ'
@8,1 say'�        �       �        �         �             �          �'
@9,1 say '��������������������������������������������������������������'
kk=space (10)
kk=fnum(1,15,kk,10,0)
wait "     "
go top
do while .not. eof()
locate for cod=kk 
if found ()
 @8,52 say COD
 @8,38 say fsis(name)
 @8,28 say fsis(famely)
 @8,19 say fsis(nafader)
 @8,2 say nsnas
 @8,11 say fsis(mt)
 defi window mss7 from 17,20 to 21,60 SHADO DOUBLE TITLE " ����� " COLOR W+/B
acti wind mss7
set color to w+/1
@0,22 say "� ����� ��������"
@2,10 prom " �� "
@2,20 prom " ��� "
menu to p3
 do case
 case p3=1
 DELE
 PACK
 deac wind mss7
 exit
 case p3=2
 DEAC WIND MSS7
 DEAC WIND MSS
 exit
 endcase
else
wait window " ����� ���� ��� ���� �� "
endif
enddo
deac wind mss
use
acti POPU _MENU1
set cursor off
return
******* * * *   * ***
*********************
*********************
*********************
*********************
proc del_hamkar
set cursor on
use
use hamkar
defi window mss from 3,5 to 15,75 SHADO DOUBLE TITLE " ����� 食 " COLOR W+/B
acti wind mss
@1,36 say " :���� ���� �� ����� ��"
@3,23 say " � ��������������� " 
@5,1 say '�����������������������������������������������������������������Ŀ'
@6,1 say '�        ���� ����   � �������� �    ������������� ������������ �'
@7,1 say '�����������������������������������������������������������������Ĵ'
@8,1 say '�                    �          �                    �            �'
@9,1 say '�������������������������������������������������������������������'
kk=space (10)
kk=fnum(1,15,kk,10,0)
wait "     "
go top
do while .not. eof()
locate for cod=kk 
if found ()
@8,57 say COD
@8,34 say fsis(name)
@8,23 say fsis(tahsel)
@8,2 say fsis(dars)
 defi window mss7 from 17,20 to 21,60 SHADO DOUBLE TITLE " ����� " COLOR W+/B
acti wind mss7
set color to w+/1
@0,22 say "� ����� ��������"
@2,10 prom " �� "
@2,20 prom " ��� "
menu to p3
 do case
 case p3=1
 DELE
 PACK
 deac wind mss7
 exit
 case p3=2
 DEAC WIND MSS7
 DEAC WIND MSS
 exit
 endcase
else
wait window " ����� ���� ��� ���� �� "
endif
enddo
deac wind mss
use
acti POPU _MENU1
set cursor off
return
************************************ end  menu1 *******************************
----------------------------- start menu 2 ---------------
*******************	**************
 proc l_dars
set cursor off
defi window mss6 from 3,17 to 22,61 SHADO DOUBLE TITLE " ���� ���� " COLOR W+/B
acti wind mss6
@0,1 say '���������������������������������������Ŀ'
@1,1 say '����������� ��   ���  �������   � ����� �'
@2,1 say '���������������������������������������Ĵ'
  i=3
 scan 
  @i,1  say '�     �      �                  �       �'
  @i,35 say COD
  @i,18 say fsis(name)
  @i,9 say vahed
  @i,3 say number
   i=i+1
  if i=17
  wait window ".�������� ����� ���� �� ����� "
  i=3
   endif
    endscan
   for a=i to 17
    @a,1  say '�     �      �                  �       �'
   endfor 
   @17,1 say "�����������������������������������������"
 WAIT  window "�������� �� �����"
 deac wind mss6
 use
 RETURN
*************************
*************************
*************************
*******************	*****
proc l_student
set cursor off
defi window mss6 from 3,6 to 22,71 SHADO DOUBLE TITLE " ������ ���� ���� " COLOR W+/B
acti wind mss6
@0,1 SAY'������������������������������������������������������������Ŀ'
@1,1 SAY'�������������������� ��� � ������ � ����������� � �������  �'
@2,1 SAY'������������������������������������������������������������Ĵ'
  i=3
 scan 
  @I,1 say '�        �       �        �         �             �          �'
  @i,52 say COD
  @i,38 say fsis(name)
  @i,28 say fsis(famely)
  @i,19 say fsis(nafader)
  @i,2 say nsnas
  @i,11 say fsis(mt)
    i=i+1
  if i=17
  wait window ".�������� ����� ���� �� ����� "
  i=3
  endif
  endscan
    for a=i to 17
    @a,1 say '�        �       �        �         �             �          �'
   endfor 
 @17,1 say '��������������������������������������������������������������'
 WAIT  window "�������� �� �����"
 deac wind mss6
 use
 RETURN
*************************
*************************
*************************
*************************
proc l_hamkar
set cursor off
defi window mss6 from 3,4 to 22,74 SHADO DOUBLE TITLE " ������� ���� " COLOR W+/B
acti wind mss6
@0,1 say '�����������������������������������������������������������������Ŀ'
@1,1 say '�        ���� ����   � �������� �    ������������� ������������ �'
@2,1 say '�����������������������������������������������������������������Ĵ'
  i=3
 scan 
  @i,1 say  '�                    �          �                    �            �'
  @i,57 say COD
  @i,34 say fsis(name)
  @i,23 say fsis(tahsel)
  @i,2 say fsis(dars)
      i=i+1
  if i=17
  wait window ".�������� ����� ���� �� ����� "
  i=3
  endif
  endscan
  for a=i to 17
  @a,1 say '�                    �          �                    �            �'
 endfor 
 @17,1 say '�������������������������������������������������������������������'
  WAIT  window "�������� �� �����"
 deac wind mss6
 use
 RETURN
******************
************************** print ****************************
proc pri_book
SET COLOR TO W+/1
use
use book index book
@0,1 say '���������������������������������������Ŀ'
@1,1 say '����������� ��   ���  �������   � ����� �'
@2,1 say '���������������������������������������Ĵ'
  i=3
 scan 
  @i,1  say '�     �      �                  �       �'
  @i,35 say COD
  @i,18 say fsis(name)
  @i,9 say vahed
  @i,3 say number
   i=i+1
   endscan
 @i,1 say "�����������������������������������������"
 clear
 set color to w+/1
@0,0,24,80 box "���������"
return
***********end proc pri_book ************
proc pri_student
SET COLOR TO W+/1
use
use student index student
@0,1 SAY'������������������������������������������������������������Ŀ'
@1,1 SAY'�������������������� ��� � ������ � ����������� � �������  �'
@2,1 SAY'������������������������������������������������������������Ĵ'
  i=3
scan 
  @I,1 say '�        �       �        �         �             �          �'
  @i,52 say COD
  @i,38 say fsis(name)
  @i,28 say fsis(famely)
  @i,19 say fsis(nafader)
  @i,2 say nsnas
  @i,11 say fsis(mt)
   i=i+1
   endscan
      @i,1 say '��������������������������������������������������������������'
 clear
 set color to w+/1
@0,0,24,80 box "���������"
return
***************** end proc pri_strudent ****************
***************** proc pri_hamkar **************
proc pri_hamkar
SET COLOR TO W+/1
use
use hamkar index hamkar
@0,1 say '�����������������������������������������������������������������Ŀ'
@1,1 say '�        ���� ����   � �������� �    ������������� ������������ �'
@2,1 say '�����������������������������������������������������������������Ĵ'
  i=3
scan 
	@i,1 say  '�                    �          �                    �            �'
   i=i+1
  @i,57 say COD
  @i,34 say fsis(name)
  @i,23 say fsis(tahsel)
  @i,2 say fsis(dars)
   endscan
    @i,1 say '�������������������������������������������������������������������'
clear
set color to w+/1
@0,0,24,80 box "���������"
 return
*************** ******************* end print *******************
*-*-*-*-*-*-*-*-*-*-*- end menu 2 *-*-*-*-*-*-*-*-*-*-*-*-*-*-*-*--*
*********************** index **************************************
proc i_COD_dars
   		use
   		use book in 1
   		index on cod to temp
   		set index to temp
     	do l_dars
     	use
     	erase temp.idx
set cursor off
acti popup _menu_I_dars
RETURN
PROC i_NAME_dars
   		use
   		use book in 1
   		index on name to temp
   		set index to temp
     	do l_dars
     	use
     	erase temp.idx
set cursor off
acti popup _menu_I_dars
RETURN
PROC i_VAHED_dars
   		use
   		use book in 1
   		index on vahed to temp
   		set index to temp
     	do l_dars
     	use
     	erase temp.idx
set cursor off
acti popup _menu_I_dars
RETURN
PROC i_NuM_dars
     	use
   		use book in 1
   		index on number to temp
   		set index to temp
     	do l_dars
     	use
     	erase temp.idx
set cursor off
acti popup _menu_I_dars
 return
 ********************
PROC i_COD_STUDENT
   		use
   		use student in 1
   		index on cod to temp
   		use 
   		use student index temp
     	do l_student
     	use
     	erase temp.idx
set cursor off
acti popup _menu_I_student
RETURN
PROC i_NAME_STUDENT
   		use
   		use student in 1
   		index on name to temp
   		use 
   		use student index temp
     	do l_student
     	use
     	erase temp.idx
set cursor off
acti popup _menu_I_student
RETURN
PROC i_family_STUDENT
  		use
   		use student in 1
   		index on famely to temp
   		use 
   		use student index temp
     	do l_student
     	use
     	erase temp.idx
set cursor off
acti popup _menu_I_student
RETURN
PROC i_na_fa_STUDENT
   		use
   		use student in 1
   		index on nafader to temp
   		use 
   		use student index temp
     	do l_student
     	use
     	erase temp.idx
set cursor off
acti popup _menu_I_student
RETURN
PROC i_mahal_STUDENT
      	use
   		use student in 1
   		index on mt to temp
   		use 
   		use student index temp
     	do l_student
     	use
     	erase temp.idx
set cursor off
acti popup _menu_I_student
RETURN
PROC i_shnas_STUDENT
    	USE
        use student in 1
   		index on nsnas to temp
   		use 
   		use student index temp
     	do l_student
     	use
     	erase temp.idx
     	set cursor off
acti popup _menu_I_student
   return
***************
PROC i_COD_HAMKAR
   		use
   		use hamkar in 1
   		index on cod to temp
   		set index to temp
     	do l_hamkar
     	use
     	erase temp.idx
     	set cursor off
acti popup _menu_I_HAMKAR
RETURN
PROC i_NAME_HAMKAR
   		use
   		use hamkar in 1
   		index on name to temp
		set index to temp
     	do l_hamkar
     	use
     	erase temp.idx
     	set cursor off
acti popup _menu_I_HAMKAR
RETURN
PROC i_CLASS_HAMKAR
  		use
   		use hamkar in 1
   		index on tahsel to temp
   		set index to temp
   		do l_hamkar
     	use
     	erase temp.idx
     	set cursor off
acti popup _menu_I_HAMKAR
RETURN
PROC i_NAME_DARS_HAMKAR
   		use
   		use hamkar
   		index on dars to temp
   		set index to temp
     	do l_hamkar
     	use
     	erase temp.idx
     	set cursor off
acti popup _menu_I_HAMKAR
RETURN
*****
proc printer_farsi
	 	call sepand with "��� ����� �𕑝"
	 	wait wind " .�� ����� �𕑝 " 
	 	acti popup _menu_print
return
************************ end index ********************************* 

*----------------------------end ENTER INFORMATION ------------------------------------

********************* help *************
proc help
SET COLOR TO W+/1
defi wind help from 5,13 to 20,65  shado title " ���� " double
acti wind help
@0,9 say "  ����� ��������� ��� 􋨋�� "
@2,1 say "�� ������ ����� ������ ����� � �������� ����� ���"
@3,1 say "������ ������ ���� � ��� �� ����� �� ������� ���"
@4,1 say "��� ���� ������� ��� ������ ���� ����������� ���"
@5,46 say ".���"
@6,1 say "����� ��� ���� ���ꗨ� ��� ������ ��������������"
@8,36 say ": ������ ����� "
@10,1 say "�� ���������� �� ��� ����� ���� ���������� ��� "
@11,1 say "����� ������ ��� ��� ���� �������� �� �� ����� " 
@12,17 say  "(: !������ �������� �� ������ ��� "
a= inkey(0)
deac wind help
 SET COLOR TO W+/B
return 
clear 
********
******************
************************************* edit information **************************
proc edit_dars
set cursor on
use
use book
defi window mss from 4,18 to 17,62 SHADO DOUBLE TITLE " ��� ������ " COLOR W+/B
acti wind mss
@1,20 say " :���� ���� �� ���� ��"
@5,12 say " � ��������������� " 
@6,1 say '���������������������������������������Ŀ'
@7,1 say '����������� ��   ���  �������   � ����� �'
@8,1 say '���������������������������������������Ĵ'
@9,1 say '�     �      �                  �       �'
@10,1 say "�����������������������������������������"
kk=space (5)
kk=fnum(1,15,kk,5,1)
wait "     "
go top
do while .not. eof()
locate for cod=kk 
if found ()
nk=fsis(name)
kk=cod
vk=vahed
nuk=number
kk=fnum(9,39,kk,5,1)
WAIT " " TIMEOUT 0.0
nk=fstr(9,30,nk)
B=INKEY(0)
nk=alltrim(nk)
vk=fnum(9,12,vk,3,1)
WAIT " " TIMEOUT 0.0
@9,2 say " 10 "
a=inkey(0)    
if a=13 then  
defi wind mss8 from 15,19 to 18,26 double shad color w+/3
acti wind mss8
set color to 0/3
@0,1 prom " 10 "
@1,1 prom " 12 "
menu to p4
do case
	case p4=1
		type=0
	case p4=2
		type=1
endcase
deac wind mss8
if type=0
@9,2 say " 10 "
nuk="10"
ENDIF
if type=1
@9,2 say " 12 "
nuk="12"
ENDIF
else
nuk="10"
endif
defi window mss7 from 17,20 to 21,60 SHADO DOUBLE TITLE " ����� " COLOR W+/B
acti wind mss7
set color to w+/1
@0,22 say "� ����� ��������"
@2,10 prom " �� "
@2,20 prom " ��� "
menu to p3
 do case
 case p3=1
 replace name with fsis(nK),COD with KK,VAHeD with VK,NUMBER with NUK
 deac wind mss7
 exit
 case p3=2
 DEAC WIND MSS7
 DEAC WIND MSS
 exit
 endcase
else
wait window " ����� ���� ��� ���� �� "
endif
enddo
deac wind mss
use
acti POPU _MENU3
set cursor off
return
****************
proc edit_student
set cursor on
use
use student
defi window mss from 3,6 to 15,72 SHADO DOUBLE TITLE " ������ ���� ������ " COLOR W+/B
acti wind mss
@1,36 say " :���� ���� �� �������� ��"
@3,23 say " � ��������������� " 
@5,1 SAY'�������������������������������������������������������������Ŀ'
@6,1 SAY'�������������� ������ ��� � ������ � ����������� � �������  �'
@7,1 SAY'�������������������������������������������������������������Ĵ'
@8,1 say'�        �        �        �         �             �          �'
@9,1 say '���������������������������������������������������������������'
kk=space (10)
kk=fnum(1,15,kk,10,0)
wait "     "
go top
do while .not. eof()
locate for cod=kk 
if found ()
nd=fsis(name) 
fd=fsis(famely) 
pd=fsis(nafader) 
md=fsis(mt) 
sd=nsnas 
kd=cod
kd=fSTR(8,62,kd)
=INKEY(0)
nd=fstr(8,51,nd)
=INKEY(0)
nd=alltrim(nd)
fd=fstr(8,37,fd)
=INKEY(0)
fd=alltrim(fd)
pd=fstr(8,27,pd)
=INKEY(0)
pd=alltrim(pd)
Sd=fstr(8,18,Sd)
=INKEY(0)
md=fstr(8,9,md)
=INKEY(0)
md =alltrim(md)
defi window mss7 from 17,20 to 21,60 SHADO DOUBLE TITLE " ����� " COLOR W+/B
acti wind mss7
set color to w+/1
@0,22 say "� ����� ��������"
@2,10 prom " �� "
@2,20 prom " ��� "
menu to p3
 do case
 case p3=1
	replace name with fsis(nd),famely with fsis(fd),cod with kd,nsnas with sd,mt with fsis(md),nafader with fsis(pd)
 deac wind mss7
 exit
 case p3=2
 DEAC WIND MSS7
 DEAC WIND MSS
 exit
 endcase
else
wait window " ����� ���� ��� ���� �� "
endif
enddo
deac wind mss
use
acti POPU _MENU3
set cursor off
return
****************
proc edit_hamkar
set cursor on
use
use hamkar
defi window mss from 3,5 to 15,75 SHADO DOUBLE TITLE " ����� ������ " COLOR W+/B
acti wind mss
@1,36 say " :���� ���� �� ����� ��"
@3,23 say " � ��������������� " 
@5,1 say '�����������������������������������������������������������������Ŀ'
@6,1 say '�        ���� ����   � �������� �    ������������� ������������ �'
@7,1 say '�����������������������������������������������������������������Ĵ'
@8,1 say '�                    �          �                    �            �'
@9,1 say '�������������������������������������������������������������������'
kk=space (10)
kk=fnum(1,15,kk,10,0)
wait "     "
go top
do while .not. eof()
locate for cod=kk 
if found ()
nh=fsis(name)
kh=cod
th=tahsel
drh=fsis(dars)
kh=fnum(8,65,kh,10,0)
=INKEY(0)
nh=fstr(8,53,nh)
=INKEY(0)
nh=alltrim(nh)
******** MENU TEHSELAT ******
*@ 6,20,8,32 BOX "�ͻ���Ⱥ"
@8,23 say "  �������"
a=inkey(0)    
if a=13 then  
defi wind mss8 from 13,26 to 22,41 double shad color w+/3
acti wind mss8
set color to 0/3
@0,3 prom "  ������� "
@1,3 prom "     ���� "
@2,3 prom " ���� ��� "
@3,3 prom "    ������ "
@4,3 prom "������ ��� "
@5,3 prom "     ���� "
@6,3 prom "      ���� "
@7,3 prom "  ���� ��� "
menu to p4
do case
	case p4=1
		type=0
	case p4=2
		type=1
	case p4=3
		type=2
	case p4=4
		type=3
	case p4=5
		type=4
	case p4=6
		type=5
	case p4=7
		type=6
	case p4=8
		type=7
endcase
deac wind mss8
if type=0
@8,23 say "  �������"
TH="  �������"
ENDIF
if type=1
@8,23 say "     ����"
TH="     ����"
ENDIF
if type=2
@8,23 say " ���� ���"
TH=" ���� ���"
ENDIF
If type=3
@8,23 say "    ������"
TH="    ������"
ENDIF
if type=4
@8,23 say "������ ���"
TH="������ ���"
ENDIF
if type=5
@8,23 say "     ����"
TH ="     ����"
endif
if type=6
@8,23 say "      ����"
TH ="     ����"
endif
if type=7
@8,23 say "  ���� ���"
TH ="  ���� ���"
endif
********** END MENU TAHSELAT ***************
drh=fstr(8,21,drh)
drh=alltrim(drh)
else  
TH="�������"
drh=fstr(8,23,drh)
drh=alltrim(drh)
endif 
th=alltrim(th)
wait " "
defi window mss7 from 17,20 to 21,60 SHADO DOUBLE TITLE " ����� " COLOR W+/B
acti wind mss7
set color to w+/1
@0,22 say "� ����� ��������"
@2,10 prom " �� "
@2,20 prom " ��� "
menu to p3
 do case
 case p3=1
replace name with fsis(nh),COD with Kh,tahsel with fsis(th),dars with fsis(drh)
 deac wind mss7
 exit
 case p3=2
 DEAC WIND MSS7
 DEAC WIND MSS
 exit
 endcase
else
wait window " ����� ���� ��� ���� �� "
endif
enddo
deac wind mss
use
acti POPU _MENU3
set cursor off
return
***********************
proc exitmenu
set color to
clear
cancel
deac menu _system
return
*******************
proc menu_down
set color to 0/7
@24,73 say " ���� "
set color to 0*/3
@24,65 say " ALT+X "
set color to 0/7
@24,59 say " ��� "
set color to 0*/3
@24,54 say " F1 "
return
