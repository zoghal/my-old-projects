********** GFCHR.PRG
********************
tmpesc = SYS(2001,'ESCAPE')
SET TALK off
SET STATUS off
RELEASE ALL
fchr_rhcf = SPACE(32) +'!�.,%'+ CHR(138) +'�()x+�-�/�������������='+ CHR(141)+'�"���������������������曕�:��������������������䤬������'
Ctrl = 0
Ins___snI = .F.
SAVE TO "fchr"
SET ESCAPE &tmpesc
RETURN
