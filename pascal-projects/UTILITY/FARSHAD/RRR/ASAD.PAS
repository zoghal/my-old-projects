 program sherkat;
 uses crt;
  var s     :string;
      ch      :char;
      count   :integer;
 {***********************************************************************}
 function repat(s :string;p :integer):string;
   var ch      :char;
       i,n     :integer;
    begin
     n:=length(s);
     if (p>=1) then
      for i:=1 to p do
       begin
        ch:=s[n-p+1];
        delete(s,n-p+1,1);
        s:=s+ch;
        s:=repat(s,p-1);
        repat:=s;
       end
      else
       begin
        writeln(' ',count,'  ',s);
        count:=count+1;
        if ((count mod 23)=0) then
          begin
           write(' Press any key to continue . . .');
           readln;
          end;
        repat:=s;
       end;
    end;
 {***********************************************************************}
  BEGIN
   clrscr;
   write('Enter of string : ');
   readln(s);
   clrscr;
   ch:=s[length(s)];   delete(s,length(s),1);   s:=ch+s;
   count:=1;
   s:=repat(s,length(s));
   readln;
  END.


