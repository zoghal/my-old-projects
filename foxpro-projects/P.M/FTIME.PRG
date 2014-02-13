
set escap on
on esca exit
a=time()
public ftime
h1=substr(a,1,1)
h2=substr(a,2,1)
m1=substr(a,4,1)
m2=substr(a,5,1)
s1=substr(a,7,1)
s2=substr(a,8,1)
h1=val(h1)
h2=val(h2)
m1=val(m1)
m2=val(m2)
s1=val(s1)
s2=val(s2)
h1=chr(h1+128)
h2=chr(h2+128)
m1=chr(m1+128)
m2=chr(m2+128)
s1=chr(s1+128)
s2=chr(s2+128)
ftime=h1+h2+":"+m1+m2+":"+s1+s2
ftim=h1+h2+":"+m1+m2
retu ftim

