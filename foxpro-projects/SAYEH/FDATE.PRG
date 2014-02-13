public fdat
public fdate
dime x(12,2)
x(1,1)=1
x(1,2)=31
x(2,1)=2
x(2,2)=62
x(3,1)=3
x(3,2)=93
x(4,1)=4
x(4,2)=124
x(5,1)=5
x(5,2)=155
x(6,1)=6
x(6,2)=186
x(7,1)=7
x(7,2)=216
x(8,1)=8
x(8,2)=246
x(9,1)=9
x(9,2)=276
x(10,1)=10
x(10,2)=306
x(11,1)=11
x(11,2)=336
x(12,1)=12
x(12,2)=366

a=year(date())
b=str(a,4)
c=ctod("01/01/"+b)
c=(date()-c)+1
k=a/4
k=int(k)
k=k*4
if k=a
    c=c-1
    k=1
    x(12,2)=366
endi
    if c > 79
	 c=c-79
	 y=a-621
    else
	 c=c+286
	 y=a-622
    endi
    if k=1 .and. c > 285
	   c=c+1
    endi
do whil .t.
    if c <= x(1,2)
	d=c+1
	m=x(1,1)
	exit
    endi
    if c <= x(2,2)
	d=c-x(1,2)
	m=x(2,1)
	exit
    endi
    if c <= x(3,2)
	d=c-x(2,2)
	m=x(3,1)
	exit
    endi
    if c <= x(4,2)
	d=c-x(3,2)
	m=x(4,1)
	exit
    endi
    if c <= x(5,2)
	d=c-x(4,2)
	m=x(5,1)
	exit
    endi
    if c <= x(6,2)
	d=c-x(5,2)
	m=x(6,1)
	exit
    endi
    if c <= x(7,2)
	d=c-x(6,2)
	m=x(7,1)
	exit
    endi
    if c <= x(8,2)
	d=c-x(7,2)
	m=x(8,1)
	exit
    endi
    if c <= x(9,2)
	d=c-x(8,2)
	m=x(9,1)
	exit
    endi
    if c <= x(10,2)
	d=c-x(9,2)
	m=x(10,1)
	exit
    endi
    if c <= x(11,2)
	d=c-x(10,2)
	m=x(11,1)
	exit
    endi
    if c <= x(12,2)
	d=c-x(11,2)
	m=x(12,1)
	exit
    endi
endd
d=str(d,2)
m=str(m,2)
y=str(y,4)
d1=substr(d,1,1)
d2=substr(d,2,1)
m1=substr(m,1,1)
m2=substr(m,2,1)
y1=substr(y,1,1)
y2=substr(y,2,1)
y3=substr(y,3,1)
y4=substr(y,4,1)
if d1= " "
   d1="0"
endi
if m1= " "
   m1="0"
endi
d1=val(d1)
d2=val(d2)
m1=val(m1)
m2=val(m2)
y1=val(y1)
y2=val(y2)
y3=val(y3)
y4=val(y4)
d1=chr(d1+128)
d2=chr(d2+128)
m1=chr(m1+128)
m2=chr(m2+128)
y1=chr(y1+128)
y2=chr(y2+128)
y3=chr(y3+128)
y4=chr(y4+128)
roz=cdow(date())
	if   substr(roz,1,3)="Sat"
	     roz=" ù‹‹‹‹“÷ª"
	endi
	if   substr(roz,1,3)="Sun"
	     roz=" ù‹‹“÷ªîþ"
	endi
	if   substr(roz,1,3)="Mon"
	     roz=" ù‹‹“÷ªø¢"
	endi
	if   substr(roz,1,3)="Tue"
	     roz=" ù‹‹“÷ªù¨"
	endi
	if   substr(roz,1,3)="Wed"
	     roz=" ù“÷ª¤‘ú"
	endi
	if   substr(roz,1,3)="Thu"
	     roz=" ù‹“÷ªš÷•"
	endi
	if   substr(roz,1,3)="Fri"
	     roz=" ù‹‹‹‹ãõ›"
	endi

fdate=y1+y2+y3+y4+"/"+m1+m2+"/"+d1+d2+roz
