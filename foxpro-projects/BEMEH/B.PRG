*! Sepand.exe
Clear
B_rec_num =0
Set Color To
Clear all
oN kEY lABEL aLT+x Cancel
Set Talk Off
Date_T = { / / }
Set Date YMd
*Do Pass*
do disable
Do while .t.
Defi popup Main From 3,50 To 12,75  shad Title " �� ���� " Color Sche 2
defi Bar 1 Of Main Prompt "  ���� ���� ���� � ��� "
Defi BAr 2 Of Main Prompt "\-"
Defi Bar 3 Of Main Prompt "            ����� ����� " 
Defi BAr 4 Of Main Prompt "\-"
Defi Bar 5 Of Main Prompt "                 ����� " 
Defi BAr 6 Of Main Prompt "\-"
Defi Bar 7 Of Main Prompt "                   ���� " 
******************
On Sele Bar 1 of Main Acti popu insert        
On Sele Bar 3 of Main do proces
On Sele Bar 5 of Main aCti Popu List  
On Sele Bar 7 of Main Cancel

*******************
Defin Popup Insert From 4,40 To 8,60 shad Titl " �����/�ꑮ� " Color Sche 2
defin Bar 1 of Insert Prompt " ���� �������� ��� "
defin Bar 2 of Insert Prompt "\-"
defin Bar 3 of Insert Prompt "   ���� ���� ����� "
on sele bar 1 of insert do adding
on sele bar 3 of insert do enableing
*******************************
Defin Popup List From 8,38 To 16,63 shad Titl " ������� " Color Sche 2
defin Bar 1 of List Prompt "    ���� ������ ����� "
defin Bar 2 of List Prompt "\-"
defin Bar 3 of List Prompt "    ���� ������ ����� "
defin Bar 4 of List Prompt "\-"
defin Bar 5 of List Prompt "    ��� ������ ����� "
defin Bar 6 of List Prompt "\-"
defin Bar 7 of List Prompt " ����� ������ ����� "
on sele bar 1 of List do List_1
ON sele Bar 3 OF list Do List_2
ON sele Bar 5 OF list Do List_3
ON sele Bar 7 OF list Do List_4

Acti Popup Main
***********************
endDo
*************************************************************************************
Proc Adding
Defi Wind Insert From 1,3 To 23,72 Titl " ���� ���� ���� ��� " Shad Doub Color sche 1
acti wind insert
@0,20 Say " ���� ��  ����� ����� ���� "
@1,50 say " :���� ���� ����� " 
@1,20 say " :���� ����� " 
@3,57 Say ":���� ���� "
@4,61 Say ":�����"
@5,6 Say "----------------------------------------------------"
@6,1 Say "         :������䑨��          :������䑨��   (� ��)   :���� ���" 
@8,1 SAy "                :������������           :���           :����� ��� "
@10,1 Say "           ���ꗨ�����             ����� �����           :���� �"
@12,3 SAy "                               :����                :���� ����� " 
@13,6 Say "----------------------------------------------------"
@14,37 Say ":����� �� �� ��� ��� �����"
@15,40 Say ":��� ��� � ��� � ���� �����"
@17,20 Say ":��� ��� �� ���� ����� ����� ��� � ��� �����" 
@18,20 Say ":��� ��� �� ���� ����� �� �� ��  ��������"
@20,58 SAy " :���� � " 
***
B_code =Space(15)
@1,35 Get B_code
Read
Use
Use Bemeh
Go top
Locate For Code = B_Code
IF Found()
 Wait ". ��� ����� ���� ��  " wind Timeout 0.6
 Deac wind insert
 Return
Endif
@1,18 sAY  DAte_T
If len(AllTrim(B_code)) <>15 
 Wait "���� �� 15 ���� ���� �� ����" wind timeout 1.2
 deac wind insert
 return
endif
B_konndeh1=Space(20)
@3,35 Get B_konndeh1	
B_address = Space(40)
@4,20 GEt B_address
@6,23 Say date_t
B_date_out = Date_t + 366
@6,2 SAy B_date_out
B_Type_Car = Space(10)
@8,46 get B_type_car
B_Color = Space(10)
@8,31 Get B_color
B_num_sahrbani = Space(15)
@8,1 Get B_num_Sahrbani
B_year_make = Space(10)
@10,48 Get b_year_make
B_num_motor = Space(10)
@10,25 Get B_num_motor
B_astfadeh = Space(10)
@10,1 Get B_astfadeh
B_Num_shaci = Space(10)
@12,43 Get B_num_Shaci
B_capasity = Space(10)
@12,22 Get B_Capasity
B_tASADOF_mALI = 0
@14,20 Get B_Tasadof_Mali
B_tASADOF_gani = 0
@15,20 Get B_Tasadof_gani
b_user_gani = 0
@17,10 Get B_user_gani
b_user_Doctor =0
@18,10 Get B_user_Doctor
b_GEt_mony = 0
@20,53 Get b_GEt_mony
Read
IF (B_konndeh1= ' ') .or. (B_address = ' ') .or. (B_date_out = { / / })  .or. (B_Type_Car =' ') .or. (B_Color = ' ') .or. (B_num_sahrbani = ' ') .or. (B_year_make = ' ') .or. (B_num_motor = ' ') .or.(B_astfadeh = ' ') .or. (B_Num_shaci = ' ') .or. (B_capasity = ' ') .or. (B_tASADOF_mALI = 0) .or.(B_tASADOF_gani = 0) .or. (b_user_gani = 0) .or.(b_user_Doctor = 0) .or. (b_GEt_mony = 0)
Wait " ���� ���� ���� ������ ���� ������ ����� ���� ��� �� " Wind
DEac wind insert
return
Endif
defi window mss5 from 19,20 to 23,60 SHADO DOUBLE TITLE " ����� " COLOR W+/B
acti wind mss5
set color to w+/1
@0,22 say "� ����� ��������"
@2,10 prom " �� "
@2,20 prom " ��� "
menu to p3
 do case
 case p3=1
    b_ENABLE = "True"
    Use
    use Bemeh
	appe blan
	replace Code with B_code
	replace Date_in1 with Date_t	
	replace B_konndeh with B_konndeh1
	Replace Address With B_address
	Replace Type with B_type_car
	Replace Num_sh With B_num_sahrbani
	Replace Num_motor with b_Num_motor
	Replace Num_shaci With b_num_shaci
	Replace Color With B_color
	Replace Date_end with B_date_out
	Replace model With B_Year_make
	Replace Working With B_astfadeh 
	Replace Capasity With B_capasity
	Replace P_1 With B_tASADOF_mALI
	Replace P_2 With B_tASADOF_gani
	Replace P_3 With b_user_gani
	Replace P_4 With B_user_Doctor
	Replace Enable wITH B_Enable
	Use
	use Price
	Replace Kol with Kol + b_GEt_mony
 case p3=2
endcase
deac wind mss5
deac wind insert
return
***********************************
Proc Disable
For i = 1 to 4
Defi wind dd From 8,27 To 12,53 doub Color w+/b
acti wind dd
@1,1 Say "����� ����� :" Get Date_t
read
IF Date_t = { / / }
 Wait "�� ����� ���� ������� ����� ���� ��� �� " Wind Timeout 0.6
Else 
defi window mss5 from 19,20 to 23,60 SHADO DOUBLE TITLE " ����� " COLOR W+/B
acti wind mss5
set color to w+/1
@0,22 say "� ����� ����� ���"
@2,10 prom " �� "
@2,20 prom " ��� "
menu to p3
do case
 case p3=1
  Use
  Use Bemeh	
  Go Top
  Locate For Date_end = DAte_T
  If Found()
   replace Enable With 'False'
  endif
  deac wind dd
  Deac wind mss5
  Exit
 Endcase
 Endif
If i= 3 
 Quit
Endif
Endfor
Return
************************
Procedure enableing
Defi wind dd From 8,20 To 12,60 doub Color w+/b
acti wind dd
num_b = space (15)
@1,1 Say "�������� ����� :" Get num_b
read
Use
Use Bemeh
Go Top
Locate For code = num_b
If Found()
replace Date_in1 With Date_t
replace Date_end With Date_T + 366
replace Enable With 'True'
endif
deac wind dd
Return
************************************
Proc proces
Defi wind dd From 8,20 To 12,60 doub Color w+/b
acti wind dd
num_b = space (15)
@1,1 Say "�������� ����� :" Get num_b
read
Use
Use Bemeh
Go Top
Locate For  AllTrim(num_b) =Alltrim(code)
If Found()
 If Enable = 'False'
  Wait "��� ��� ��� ���" Wind Timeout 0.5
  DEac wind dd
  return
 Endif
B_rec_num = recno() 
**
 deac wind dd
 Defi popu m1 From 8,30 To 12,45 shad Title " �������� " Color Sche 2 marg
  DEfi bar 1 Of m1 Prompt "     ���"
  DEfi bar 2 Of m1 Prompt "\-"
  DEfi Bar 3 Of m1 Prompt "     ����"
  on Sele Bar 1 of m1 acti popup m2
  on Sele Bar 3 of m1 acti popup m3
***
 Defi popu m2 From 8,30 To 12,45 shad  Color Sche 2 marg
  DEfi bar 1 Of m2 Prompt " ���� ���� "
  DEfi bar 2 Of m2 Prompt "\-"
  DEfi bar 3 Of m2 Prompt "   ����    "     
  On sele bar 1 Of m2 Do m2_1
  On sele bar 3 Of m2 Do m2_3
***
 Defi popu m3 From 8,30 To 12,45 shad  Color Sche 2 marg
  DEfi bar 1 Of m3 Prompt "     ��� "
  DEfi bar 2 Of m3 Prompt "\-"
  DEfi bar 3 Of m3 Prompt " ��� ��� "
  On sele bar 1 Of m3 Do m3_1  
  On sele bar 3 Of m3 Do m3_3
**
 acti popu m1
**
else
 Wait "����� ���� �� ����� ��� �� ������ �����" wind Timeout 0.2
endif
deac wind dd
Return
*******************
Proc m2_1
WAit "�� ������ ���� ��� "Wind Timeout 0.2 
use
use bemeh
go B_rec_num
b_p_1 =P_1
B_note = " ���� ���� "
use
use list
appe blan
REPLACE dATE wITH dAte_T
Replace note With B_note
Replace Code With num_B
Replace price With B_p_1
use
use price
d = kol  - b_p_1
Replace kol With d
DEAC POPU  M2
Return
******************
Proc M2_3
Defi wind dd From 8,20 To 12,60 doub Color w+/b
acti wind dd
b_Price = 0
@1,1 Say " ������ ��� :" Get B_price
read
deac wind dd
WAit "�� ������ ���� ��� "Wind Timeout 0.2 
use
use bemeh
go B_rec_num
B_note = "   ����    "     
use
use list
appe blan
REPLACE dATE wITH dAte_T
Replace note With B_note
Replace Code With num_B
Replace price With B_price
use
use price
d = kol  - B_Price
Replace kol With d
DEAC POPU  M2
return
******************
Proc m3_1
Defi wind dd From 8,20 To 12,60 doub Color w+/b
acti wind dd
num = 0
@1,1 Say " ����� ����:" Get Num
read
deac wind dd
If num = 0 
wait "���� 0 ����� ���� " Wind Timeout 0.6
Return
Endif
WAit "�� ������ ���� ��� "Wind Timeout 1
use
use bemeh
go B_rec_num
b_p_2 =P_2
B_note = "     ��� "
use
use list
appe blan
REPLACE dATE wITH dAte_T
Replace note With B_note
Replace Code With num_B
Replace price With num *B_p_2
use
use price
d = kol  - (num* b_p_2)
Replace kol With d
DEAC POPU  M3
Return
********************
Proc M3_3
Defi wind dd From 8,20 To 12,60 doub Color w+/b
acti wind dd
b_Price = 0
@1,1 Say " ������ ��� :" Get B_price
read
deac wind dd
WAit "�� ������ ���� ��� "Wind Timeout 0.2 
use
use bemeh
go B_rec_num
B_note = " ��� ��� "
use
use list
appe blan
REPLACE dATE wITH dAte_T
Replace note With B_note
Replace Code With num_B
Replace price With B_price
use
use price
d = kol  - B_Price
Replace kol With d
DEAC POPU  M3
return
********************************
Proc List_1
use
Use list
Brows Noedit
Return
***********
Proc List_2
Use
use Price
Wait Str(kol,10,0)+  " : ���� ������" wind  Timeout 1
return
*******************************************
Proc List_3
On key label del Do Del
Use
use Bemeh
brow For Enable="True"  
On key label del
return
*******************************************
Proc List_4
On key label del Do Del
Use
use Bemeh
brow For Enable="False" Noedit
On key label del
return
*******************************************
Proce Pass
b_Pass = '123456'
pass = Space(6)
x=0
Do WHile Pass <> B_pass
Defi wind pass From 8,30 To 12,50 doub Color w+/b
acti wind pass
pass = Space(6)
x=x+1
@1,1 Say "���� ��� :" Get Pass
Read
If Pass <> B_pass 
deac wind pass
 Wait "!���� ���� ���" wind Timeout 0.6
 if x = 3 
  Quit
 Endif
Else
 deac wind pass
 Wait "����� ��� ����� ��" wind Timeout 0.6
 Exit
Endif
EndDo
Return
*************
Proce Del
Delete
Pack
return