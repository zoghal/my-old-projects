********** GFCHR.PRG
********************
tmpesc = SYS(2001,'ESCAPE')
SET TALK off
SET STATUS off
RELEASE ALL
fchr_rhcf = SPACE(32) +'!ο.,%'+ CHR(138) +'π()x+ψ-¦/€‚ƒ„…†‡‰νξύ='+ CHR(141)+'"©ςβό’ρ‘ω–φτϊ ­λ§ιαγ«ηεζ›•:‹•ª£¥ώ™“σϋ—χυΆ΅®μ¨κδ¤¬―θΰ”'
Ctrl = 0
Ins___snI = .F.
SAVE TO "fchr"
SET ESCAPE &tmpesc
RETURN
