CLEAR
load sepand.bin
deac wind all
rest from fchr
use
SET TALK OFF
SET CLOCK ON
******
set color to n/n
clear
set color to w+/1
pass=space(5)
i=0
for b=1 to 10
defi wind pass from 10,20 to 12,57 double shado title "pass word" COLOR W+/B
acti wind pass
@0,13 say " ���� ���� �� ���� ���" 
set color to w+/3
@0, 5 say "   "
stor 0 to p1,p2,p3,pass,key
for d=1 to 3
key=inkey(0)
@0,4+d say "*"
if key=109 .or. key=77
p1=1
endif
if key=115 .or. key=83
p2=1
endif
if key=115 .or. key=83
p3=1
endif
endfor
pass=p1+p2+p3
if pass=3
wait "(: !������������ � ������� �������������������� ����������  " window timeout 0.5
exit
endif
wait "  ! ��� ������ ���  " window timeout 0.4
i=i+1
if i=3 
quit
endif
endfor
deac wind pass
*****
clear
DO WHILE .T.
@ 1,1,23,78 BOX "�ͻ���Ⱥ�"
DEFI WIND MSS1 FROM 3,56 TO 10,75 SHADO  TITLE " ����� ������ " double COLOR W+/B 
ACTI WIND MSS1
SET COLOR TO W+/B
@1,1 PROMPT "   ���󯐢��� "  mess " ����� �� ���� ���� "
@2,1 PROMPT "   ����������� "  mess " ������� "
@3,1 PROMPT "   �������� "  mess " ������ �� ������ "
@4,1 prompt "    틋�������� "  mess "������ ������ ������� "
@5,1 PROMPT "    <Esc>  ���� "  mess " ������ ���� �� ���� "
MENU TO P1
DO CASE
   CASE P1=1
     DO NEW
   CASE P1=2
		do screen
   CASE P1=3
   		do need
   CASE P1=4
   		do help	
   CASE P1=5
	EXIT
      other wise
  exit
ENDCASE
ENDDO
*********** GO WINDOW ***********
 FOR I=1 TO 10
   FOR X=1 TO 30000
   ENDFOR
   MOVE WIND MSS1 BY 0,-I
   ENDFOR
    FOR I=1 TO 5
    FOR X=1 TO 30000
    ENDFOR
    MOVE WIND MSS1 BY I,0
    ENDFOR
      FOR I=1 TO 10
    FOR X=1 TO 30000
    ENDFOR
    MOVE WIND MSS1 BY 0,I
    ENDFOR
******** WIN MSS3 **********
 DEFI WIND MSS3 FROM 18,54 TO 24,76 SHADO DOUBLE COLOR W+/B
 ACTI WIND MSS3
 @1,3 SAY " ����� ���� �� "
 @2,8 SAY " �� "
 @3,5 SAY "���� ������ "
 DEAC WIND MSS1
************ GO WIN MSS3 ***********
     FOR I=1 TO 4
    FOR X=1 TO 30000
    ENDFOR
    MOVE WIND MSS3 BY -I,0
    ENDFOR
	  FOR I=1 TO 7
    FOR X=1 TO 30000
    ENDFOR
    MOVE WIND MSS3 BY 0,-I
    ENDFOR
WAIT " " TIMEOUT 1
    DEAC WIND ALL
SET COLOR TO W+/B
CLEAR
******** PROC NEW *******
PROC NEW
do while .t.
DEFI WIND MSS2 FROM 4,34 TO 11,57 SHADO DOUBLE TITLE " ���� ���� " COLOR W+/B
ACTI WIND MSS2
@ 0,1 PROMPT "      ���� ���� ��� " mess " ���� ��� ��� ���� ���� "
@ 1,1 PROMPT "   ���� ������ ���� " mess "���� ���� ���� ��� ���� ���� "
@ 2,1 PROMPT "       ���� ������� " mess "���� ����� ��� ���� ���� "
@ 3,1 PROMPT "           ���� 食 " mess "��� 食 ���� ���� 食"
@ 4,1 PROMPT "    ������ ���� 食 " mess "  ���� ���� ���� 食"
@ 5,1 prompt "          ����� 食 " mess "����� ���� 食"
MENU TO P2
DO CASE
   CASE P2=1
	  DO BOOK
   CASE p2=2
      do jadid
   CASE P2=3
	  do hamkar
   CASE P2=4
   	do del_book
   CASE P2=5
      	do del_student
   case p2=6
       do del_hamkar
  other wise
  exit
   ENDCASE
   enddo
   FOR I=1 TO 15
   FOR X=1 TO 30000
   ENDFOR
   MOVE WIND MSS2 BY 0,-I
   ENDFOR
   hide wind mss2
RETURN
********** PROC student jadid **********
PROC jadid
set cursor on
use
use student 
defi window mss4 from 5,20 to 19,60 SHADO DOUBLE TITLE " ���� ������ ���� " COLOR W+/B
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
wait " "
nd=fstr(3,22,nd)
wait " "
nd=alltrim(nd)
fd=fstr(5,22,fd)
wait " "
fd=alltrim(fd)
pd=fstr(7,22,pd)
wait " "
pd=alltrim(pd)
Sd=fstr(9,22,Sd)
wait " "
md=fstr(11,22,md)
wait " "
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
hide wind mss4
hide wind mss5
set color to w+/1
return
******* end proc *******
******* proc book ******
proc book
set cursor on
use
use BOOK 
defi window mss6 from 5,20 to 18,60 SHADO DOUBLE TITLE " ���� ��� " COLOR W+/B
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
wait " "
nk=fstr(3,22,nk)
wait " "
*******msss*******
nk=alltrim(nk)
********msss******
vk=fnum(5,22,vk,3,1)
wait " "
**************** strat menu number ************************************
@ 6,20,8,25 BOX "�ͻ���Ⱥ"
@7,21 say " 10 "
a=inkey(0)    
if a=13 then  
defi wind mss8 from 12,39 to 15,46 double shad color w+/3
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
defi window mss7 from 19,20 to 23,60 SHADO DOUBLE TITLE " ����� " COLOR W+/B
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
hide wind mss6
hide wind mss7
set color to w+/1
return
********* end proc**********
******** hamkar ***********
proc hamkar
set cursor on
use
use hamkar in 1
defi window mss6 from 5,18 to 18,63 SHADO DOUBLE TITLE " ���� ����� " COLOR W+/B
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
wait " "
nh=fstr(3,22,nh)
wait " "
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
defi window mss7 from 19,20 to 23,60 SHADO DOUBLE TITLE " ����� " COLOR W+/B
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
hide wind mss6
hide wind mss7
set color to w+/1
return
********** end proc hamkar ****************
******************* del * * ** * 
proc del_book
set cursor off
use
use book
defi window mss from 4,18 to 20,62 SHADO DOUBLE TITLE " ��� 食 " COLOR W+/B
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
return
*** ******** * *end*******
****************** proc del_student
proc del_student
set cursor off
use
use student
defi window mss from 5,7 to 18,72 SHADO DOUBLE TITLE " ������ ���� 飡" COLOR W+/B
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
return
******* * * *   * ***
****************** proc del_hamkar
proc del_hamkar
set cursor off
use
use hamkar
defi window mss from 5,5 to 18,75 SHADO DOUBLE TITLE " ����� 飡" COLOR W+/B
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
return
************************************ end proc new *******************************
*********************************strat proc screen ******************************
proc screen
 do while .t.
DEFI WIND MSS2 FROM 5,32 TO 12,57 SHADO DOUBLE TITLE " ���� ����� " COLOR W+/B
ACTI WIND MSS2
@ 0,1 PROMPT "            ���� ���� " mess "  ���� ������ ���� ����� "
@ 1,1 PROMPT "     ������ ���� ���� " mess "  ������ ���� ������ ���� ����� "
@ 2,1 PROMPT "         ������� ���� " mess "  ������� ������ ���� �����"
@ 3,1 PROMPT "        ���� ���� ��� " mess " ���� ������ ���� ���"
@ 4,1 PROMPT " ������ ���� ���� ��� " mess "   ������ ���� ������ ���� ���"
@ 5,1 prompt "       ����� ���� ��� " mess " ������� ������ ���� ���"
MENU TO P2
DO CASE
   CASE P2=1
	use
	use book index book
	reindex
 		do l_dars
   CASE p2=2
   		use
		use student index student
		reindex
    	DO l_student
   CASE P2=3
	    use
		use hamkar index hamkar
		reindex	
    	do l_hamkar
   CASE P2=4
   		set printer on
   		set device to printer
   		do pri_book   
		set device to screen
   		set printer off
   CASE P2=5
   		set printer on
   		set device to printer
   		do pri_student
   		set printer off
		set device to screen
  case p2=6
   		set printer on
   		set device to printer
   		do pri_hamkar
		set device to screen
   		set printer off
 other wise
  		exit
ENDCASE
   enddo
   FOR I=1 TO 15
   FOR X=1 TO 30000
   ENDFOR
   MOVE WIND MSS2 BY 0,-I
   ENDFOR
   hide wind mss2
RETURN
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
 WAIT  window "������� �� �����"
 deac wind mss6
 use
 RETURN
*************************
*******************	**************
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
 WAIT  window "������� �� �����"
 deac wind mss6
 use
 RETURN
*************************
*******************************
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
  WAIT  window "������� �� �����"
 deac wind mss6
 use
 RETURN
******************
**************************** end list *************************************
******** proc need menu ****
****** proc need *********
proc need
 do while .t.
DEFI WIND MSS10 FROM 6,34 TO 10,56 SHADO DOUBLE TITLE " ������� " COLOR W+/B
ACTI WIND MSs10
@0,1 PROMPT " ������������狋� "  mess " ������ Background �� ����� � Font �� ��� ���� "
@1,1 prompt " ���������������� "  mess "������ ��� ������ ����"
@2,1 PROMPT " ���������������� "  mess " ����� ��� ���� �𕑝 ���� ����� "
MENU TO P10
DO CASE
   CASE P10=1
   			DO font
   CASE p10=2
   			do index
   case p10=3
   			do printer
   other wise
  exit
   ENDCASE
  enddo
   FOR I=1 TO 10
   FOR X=1 TO 30000
   ENDFOR
   MOVE WIND MSS10 BY 0,-I
   ENDFOR
   hide wind mss10
RETURN
********** proc font  *******
proc font
 do while .t.
DEFI WIND MSS2 FROM 6,15 TO 9,36 SHADO DOUBLE TITLE " ���� " COLOR W+/B
ACTI WIND MSS2
@ 0,1 PROMPT "  � � ���������� " mess " ������ ��� ���� "
@ 1,1 PROMPT " � � ���������� "  mess " ����� � ����� ����� ������ ����� ���� "
MENU TO P2
DO CASE
   CASE P2=1
   			DO HROF
   CASE p2=2
   			do number
  other wise
  exit
   ENDCASE
   enddo
   FOR I=1 TO 10
   FOR X=1 TO 30000
   ENDFOR
   MOVE WIND MSS2 BY 0,-I
   ENDFOR
   hide wind mss2
RETURN
********** proc hrof  *******
proc hrof
 do while .t.
DEFI WIND MSS3 FROM 6,4 TO 11,18 SHADO DOUBLE TITLE " ����� " COLOR W+/B
ACTI WIND MSS3
@ 0,1 PROMPT "   ���� �� " 
@ 1,1 PROMPT "   ���� �� " 
@ 2,1 PROMPT " ������ �� " 
@ 3,1 PROMPT " ������ �� " 
MENU TO P2
DO CASE
   CASE P2=1
   		call sepand with "���� ��"
   CASE p2=2
		call sepand with "���� ��"
   CASE P2=3
   		call sepand with "������ ��"
   CASE P2=4
   		call sepand with  "������ ��"
  other wise
  exit
   ENDCASE
   enddo
   FOR I=1 TO 10
   FOR X=1 TO 30000
   ENDFOR
   MOVE WIND MSS3 BY 0,-I
   ENDFOR
   hide wind mss3
RETURN
*************************end proc ************
********** proc number  *******
proc number
 do while .t.
DEFI WIND MSS3 FROM 7,2 TO 10,18 SHADO DOUBLE TITLE " ���� " COLOR W+/B
ACTI WIND MSS3
@ 0,1 PROMPT " ����� ���� " 
@ 1,1 PROMPT "  ���� ���� " 
MENU TO P2
DO CASE
   CASE P2=1
   		call sepand with "  ����� ���� �����"
   CASE p2=2
		call sepand with "  ���� ���� �����"
   other wise
  exit
   ENDCASE
   enddo
   FOR I=1 TO 15
   FOR X=1 TO 30000
   ENDFOR
   MOVE WIND MSS3 BY 0,-I
   ENDFOR
   hide wind mss3
RETURN
*************************
********************** proc print ****************
proc printer
 do while .t.
DEFI WIND MSS2 FROM 8,15 TO 12,36 SHADO DOUBLE TITLE " �𕑝 " COLOR W+/B
ACTI WIND MSS2
@ 0,1 PROMPT " �𕑝 ���� ����� " mess "�𕑝 ���� ����� "
@ 1,1 PROMPT "       ���� ��� "  mess " ����� �� ����� ���� �� ���� ��� "
@ 2,1 PROMPT "     �𕑝 ������ "  mess " ��� ���� �𕑝 ��� "
MENU TO P2
DO CASE
   CASE P2=1
	 	call sepand with "��� ����� �𕑝"
	 	wait wind " .�� ����� �𕑝 " 
   CASE p2=2
   		do  printer_num
   case p2=3
   		call sepand with "�𕑝 �� ��� 񑨤�"
  other wise
  exit
   ENDCASE
   enddo
   FOR I=1 TO 10
   FOR X=1 TO 30000
   ENDFOR
   MOVE WIND MSS2 BY 0,-I
   ENDFOR
   hide wind mss2
RETURN
************************ printer_num*****************
proc printer_num
 do while .t.
DEFI WIND MSS3 FROM 9,5 TO 12,17 SHADO DOUBLE TITLE " ���� ��� " COLOR W+/B
ACTI WIND MSS3
@ 0,1 PROMPT " ������� " 
@ 1,1 PROMPT " ������� " 
MENU TO P2
DO CASE
   CASE P2=1
   		call sepand with "����� ���� ���"
   		wait window " �� ����� ,���� ��� ���� �𕑝 " timeout 0.1
   CASE p2=2
		call sepand with "���� ���� ���"
		wait window " �� ����� ,���� ��� ���� �𕑝 " timeout 0.1
   other wise
  exit
   ENDCASE
   enddo
   FOR I=1 TO 15
   FOR X=1 TO 30000
   ENDFOR
   MOVE WIND MSS3 BY 0,-I
   ENDFOR
   hide wind mss3
RETURN
**********************
************************** print ****************************
proc pri_book
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
return
***********end proc pri_book ************
proc pri_student
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
return
***************** end proc pri_strudent ****************
***************** proc pri_hamkar **************
proc pri_hamkar
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
return
*************** ******************* end print *******************
********** index *********
proc index
 do while .t.
DEFI WIND MSS2 FROM 7,21 TO 11,36 SHADO DOUBLE TITLE " �����" COLOR W+/B
ACTI WIND MSS2
@ 0,1 PROMPT "       ��� " 
@ 1,1 PROMPT " ���� ���� " 
@ 2,1 PROMPT "     ����� " 
MENU TO P2
DO CASE
   CASE P2=1
   			DO in_dars
   CASE p2=2
   			do in_student
   case p2=3 
   			do in_hamkar			
  other wise
  exit
   ENDCASE
   enddo
   FOR I=1 TO 10
   FOR X=1 TO 30000
   ENDFOR
   MOVE WIND MSS2 BY 0,-I
   ENDFOR
   hide wind mss2
RETURN
***********
***** proc in_dars ****
proc in_dars
do while .t.
DEFI WIND MSS3 FROM 7,8 TO 12,22 SHADO DOUBLE TITLE " �����" COLOR W+/B
ACTI WIND MSS3
@ 0,1 PROMPT "    ���� ��" 
@ 1,1 PROMPT "   ���� ���" 
@ 2,1 PROMPT " ���� ����" 
@ 3,1 PROMPT " ����� ����" 
MENU TO P2
DO CASE
   CASE P2=1
   		use
   		use book in 1
   		index on cod to temp
   		set index to temp
     	do l_dars
     	use
     	erase temp.idx
       caSE p2=2
   	      		use
   		use book in 1
   		index on name to temp
   		set index to temp
     	do l_dars
     	use
     	erase temp.idx
   case p2=3 
     		use
   		use book in 1
   		index on vahed to temp
   		set index to temp
     	do l_dars
     	use
     	erase temp.idx
   case p2=4
     		use
   		use book in 1
   		index on number to temp
   		set index to temp
     	do l_dars
     	use
     	erase temp.idx
   other wise
  exit
   ENDCASE
   enddo
   FOR I=1 TO 10
   FOR X=1 TO 30000
   ENDFOR
   MOVE WIND MSS3 BY 0,-I
   ENDFOR
   hide wind mss3
RETURN
**************************** ******* ****** ***
***** proc in_student ****
proc in_student
do while .t.
DEFI WIND MSS3 FROM 8,8 TO 15,22 SHADO DOUBLE TITLE " �����" COLOR W+/B
ACTI WIND MSS3
@ 0,1 PROMPT "        �� " 
@ 1,1 PROMPT "       ��� " 
@ 2,1 PROMPT "    ������ " 
@ 3,1 PROMPT "   ��� ��� " 
@ 4,1 PROMPT "  ���� �� " 
@ 5,1 PROMPT "  �������� " 
MENU TO P2
DO CASE
   CASE P2=1
   		use
   		use student in 1
   		index on cod to temp
   		use 
   		use student index temp
     	do l_student
     	use
     	erase temp.idx
    case p2=2
   		use
   		use student in 1
   		index on name to temp
   		use 
   		use student index temp
     	do l_student
     	use
     	erase temp.idx
	case p2=3
  		use
   		use student in 1
   		index on famely to temp
   		use 
   		use student index temp
     	do l_student
     	use
     	erase temp.idx
   case p2=4
   		use
   		use student in 1
   		index on nafader to temp
   		use 
   		use student index temp
     	do l_student
     	use
     	erase temp.idx
     case p2=5
      	use
   		use student in 1
   		index on mt to temp
   		use 
   		use student index temp
     	do l_student
     	use
     	erase temp.idx
    case p2=6
    	USE
        use student in 1
   		index on nsnas to temp
   		use 
   		use student index temp
     	do l_student
     	use
     	erase temp.idx
    other wise
  		exit
ENDCASE
   enddo
   FOR I=1 TO 10
   FOR X=1 TO 30000
   ENDFOR
   MOVE WIND MSS3 BY 0,-I
   ENDFOR
   hide wind mss3
RETURN
*********
*************** proc hamker
proc in_hamkar
do while .t.
DEFI WIND MSS3 FROM 9,2 TO 14,22 SHADO DOUBLE TITLE " �����" COLOR W+/B
ACTI WIND MSS3
@ 0,1 PROMPT "              �� " 
@ 1,1 PROMPT " ������������� " 
@ 2,1 PROMPT "         ������� " 
@ 3,1 PROMPT "        ���� ��� " 
MENU TO P2
DO CASE
   CASE P2=1
   		use
   		use hamkar in 1
   		index on cod to temp
   		set index to temp
     	do l_hamkar
     	use
     	erase temp.idx
    case p2=2
   		use
   		use hamkar in 1
   		index on name to temp
		set index to temp
     	do l_hamkar
     	use
     	erase temp.idx
	case p2=3
  		use
   		use hamkar in 1
   		index on tahsel to temp
   		set index to temp
   		do l_hamkar
     	use
     	erase temp.idx
   case p2=4
   		use
   		use hamkar
   		index on dars to temp
   		set index to temp
     	do l_hamkar
     	use
     	erase temp.idx
    other wise
  		exit
ENDCASE
   enddo
   FOR I=1 TO 10
   FOR X=1 TO 30000
   ENDFOR
   MOVE WIND MSS3 BY 0,-I
   ENDFOR
   hide wind mss3
RETURN
*****
********************* help *************
proc help
defi wind help from 5,13 to 20,65  shado title " ���� " double
acti wind help
@0,9 say "  ����� ��������� ��� 􋨋�� "
@2,1 say "�� ������ ���� � ������ ����� �������� ����� ���"
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