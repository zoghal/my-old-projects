蜚                                                                                       PERSONAL EDITOR II COLOR CHANGE PROGRAM VERSION 1.0 BY CHUCK DUMONT                                                                                        浜様様様様様様様様様様様僕様様様様様様様様様様様様様様様様様様様様様様様様融    � [0] - Black           �                                                  �    � [1] - Blue            �                      Background Foreground       �    � [2] - Green           �                        (0 - 7)   (0 - F)         �    � [3] - Cyan            �  Main Body                 [?]   [?]     ABCDEF  �    � [4] - Red             �  Marked Blocks             [?]   [?]     BCDEFG  �    � [5] - Magenta         �  Text Cursor Mark          [?]   [?]     CDEFGH  �    � [6] - Brown           �  Marked Block Cursor Mark  [?]   [?]     DEFGHI  �    � [7] - Lt Gray         �  Command Line              [?]   [?]     EFGHIJ  �    � [8] - Gray            �  Status Line               [?]   [?]     FGHIJK  �    � [9] - Lt Blue         �  Warning Line              [?]   [?]     GHIJKL  �    � [A] - Lt Green        �  Horizontal Blank Line        [?]                �    � [B] - Lt Cyan         �  Vertical Blank Line          [?]                �    � [C] - Lt red          �  Split Screen Border Line  [?]   [?]     様陵様  �    � [D] - Lt Magenta      �  Unsaved File Name         [?]   [?]     HIJKLM  �    � [E] - Yellow          �  Border                       [?]        栩栩栩  �    � [F] - White           �                                                  �    藩様様様様様様様様様様様瞥様様様様様様様様様様様様様様様様様様様様様様様様夕                                                                                      Selecting 8 - F for background will give 0 - 7 attributes with blink on                                                                                       F1 = Details   F3 = Quit and Save   F4 = Quit, No Save   Enter = Next Field   嬪様様様様様様様様様様様様様様様様様様様様様様様様様様様様様様様様様様様様様様邑�                                                                              崖Main Body                 - Normal characters in the data area.               崖Marked Blocks             - Marked characters in the data area.               崖Text Cursor Mark          - Current position indicator if character is not in 崖                            marked area and the cursor is on the command line.崖Marked Block Cursor Mark  - Current position indicator if character is in a   崖                            marked area and the cursor is on the command line.崖Command Line              - Just below data area                              崖Status Line               - File name, position, Ins/Rep.  Below command line.崖Warning Line              - Error message area.  Just below status line.      崖Horizontal Blank Line     - Blank line that is needed at the bottom of the    崖                            screen when the screen is split horizontally and  崖                            the screen has an even number of lines. (0 - 7)   崖Vertical Blank Line       - Blank column that is needed at the right edge of  崖                            the screen when the screen is split vertically    崖                            and the screen has even number of columns. (0 - 7)崖Split Screen Border Line  - The lines that divide the windows when the screen 崖                            is split.                                         崖Unsaved File Name         - The file name when the file has unsaved changes.  崖Border                    - Color to use for the border color on a CGA or     崖                            EGA in CGA emulation mode. (0 - F)                崖                                                                              郭様様様様様様様様様様様様様様様様様様様様様様様様様様様様様様様様様様様様様様様�               Press any key to return to color selection screen                
INCORRECT DOS VERSION.  YOU MUST HAVE AT LEAST DOS 2.0 OR ABOVE.
$
Invalid Parameter.
$
You must be active on a color monitor to run PE2COLOR.
$
File $ not found
$
UNABLE TO LOCATE VIDEO PARMS MARKER.
$
PE2COLOR is a Personal Editor II color change utility program
written by Chuck Dumont.
$
Syntax is [drive:]PE2COLOR [drive:][path][filename[.ext]] [/40]
Items shown inside square brackets are optional.
The default filespec is PE2.EXE in the current drive and directory.
The /40 option changes the colors for PE2 in 40 column mode.
$            
 PE2.EXE video parms:       P��ﾘﾀ�0�!<s	今���O裁�� �
�u�l�2��八</t<?t碯�2��x�q犀�k� �=80t=40u��(��肴�O犀�I蝙 �� �2��八</t�</t�< t
</t<t碌N� �� 蒄 s藹 ��<u	���藹 <t� �蓙�m��蓙�祥�8��r��w���@�8��rd
�u&�$���呀
�&��R莪諫��r��w�(��6�>�� �Tr,
�u&�$�粽
�&���|諱���F��r�w���蕚詭� 萇��N
�u�ss	�犀�P�>���!�L�!R��\ �!Zs担N�  �!s)<u#��� 3��M�鬯O�$R�:�Z��B��  �担=��!s達��	�嚥C�J�!s担H��!s�ﾀ�?���@3��!�  s�=  tP�;�t���鬯�� t&�==u�GI�} s裨9��>� u&�B�  �  �!s���ｔ������� B�!s昼��O�m�  ��� B�������sA��"sA�>�(t��@sA�!s���ｔ�?才� �!�WQ� 障鵙��� u�XX�Y_淡 �3匏�q� �b肖���莉s��� ��P 蓖��p�N 葢�萬�蒭�萼�
萸�菲�萋�菫�莠3�2��q� ����*�fs��� ��P ����t��旦�2�萵異� � 蕈�捺�����r饕VR萢��E� 祥��懈[�頭�懈SNN�頭�懈I�頭�懈A����� ��懈3������懈(��� �頭�懈��r鼈�Z^�VR祥� ��8�[3征劍劍劍劍���8��r��w���;�W����r崗���>�'�$�U��r��w����-�堂>��r�w��誚Z^�P�墓� �[���第� ��	�第� �]�� �墓� X�P�墓� �[�q蓚 �第� 蒻 葯 �第� �]蕚 �墓� X担�!<t+< t'< u�!<=u� ��<>u���<;u晄Y 誥�	 r亟 担��<0r"<9w,0��<Ar<Fw,7��<ar<fw,W�貯�������� B�!s���� 才�@�!淡��& ��!� ��& �           P��X�P��X�PQ��&�YX�PQ���YX�P�
�X�P�	�X�S��[�<	v7�0丁<0r <9v<Ar<Fv<ar<fv	�
�,0�,7�,W貯�PQR�����Ot�鷹
���s2咨捺�����ZYX�PSQR� 3俵�O�ZY[X�P�	�!X�PQR�U���Q� �q�茘�YIu�ZYX�.�� �SQRVWU.�6� �  .�� ]_^ZY[�.�6� �    莽�P�����
 � 3哇���0.�N碵0.�� .�<0u,.�F碌X莟�宙��P�魃�琥
 �琥 X����P卆� X� �$�'@'.�F宙�     ) < f x � � � � 3DQq����&;\k�������$��������������������������������������������8HUex[��$
INVALID FUNCTION
$
FILE NOT FOUND
$
PATH NOT FOUND
$
TOO MANY OPEN FILES (NO HANDLES LEFT)
$
ACCESS DENIED
$
INVALID HANDLE
$
MEMORY CONTROL BLOCKS DESTROYED
$
INSUFFICIENT MEMORY0dh,0ah,
$
INVALID MEMORY BLOCK ADDRESS
$
INVALID ENVIRONMENT
$
INVALID FORMAT
$
INVALID ACCESS CODE
$
INVALID DATA
$
RESERVED
$
INVALID DRIVE WAS SPECIFIED
$
ATTEMPT TO REMOVE THE CURRENT DIRECTORY
$
NOT SAME DEVICE
$
NO MORE FILES
$
ATTEMPT TO WRITE ON WRITE-PROTECTED DISK
$
UNKNOWN UNIT
$
DRIVE NOT READY
UNKNOWN COMMAND
$
DATA ERROR (CRC)
$
BAD REQUEST STRUCTURE LENGTH
$
SEEK ERROR
$
UNKNOWN MEDIA TYPE
$
SECTOR NOT FOUND
$
PRINTER OUT OF PAPER
$
WRITE FAULT
$
READ FAULT
$
GENERAL FAILURE
$
SHARING VIOLATION
$
LOCK VIOLATION
$
INVALID DISK CHANGE
$
FCB UNAVAILABLE
$
FILE EXISTS
$
RESERVED
$
CANNOT MAKE
$
FAIL ON INT 24
$
INVALID ERROR MESSAGE
$RESERVED$Z<Sv�T2簪���蓙�宙  [���