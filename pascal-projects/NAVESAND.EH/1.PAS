Program TEst1;
Uses
   CRt,dos,msscrt;
Const
   A : array [1..8,1..5] Of byte=( (0,0,0,0,0),
                                   (0,0,1,1,0),
                                   (0,1,0,0,1),
                                   (0,1,0,0,1),
                                   (0,1,1,1,1),
                                   (0,1,0,0,1),
                                   (0,0,0,0,0),
                                   (0,0,0,0,0));

   B : array [1..8,1..5] Of byte=( (0,0,0,0,0),
                                   (0,1,1,1,0),
                                   (0,1,0,0,1),
                                   (0,1,1,1,0),
                                   (0,1,0,0,1),
                                   (0,1,1,1,0),
                                   (0,0,0,0,0),
                                   (0,0,0,0,0));

   C : array [1..8,1..5] Of byte=( (0,0,0,0,0),
                                   (0,0,1,1,0),
                                   (0,1,0,0,1),
                                   (0,1,0,0,0),
                                   (0,1,0,0,1),
                                   (0,0,1,1,0),
                                   (0,0,0,0,0),
                                   (0,0,0,0,0));

   D : array [1..8,1..5] Of byte=( (0,0,0,0,0),
                                   (0,1,1,1,0),
                                   (0,1,0,0,1),
                                   (0,1,0,0,1),
                                   (0,1,0,0,1),
                                   (0,1,1,1,0),
                                   (0,0,0,0,0),
                                   (0,0,0,0,0));
Var
   X,Y,t,n : byte;
   TExt : String;

Procedure Writed( temp : char );
Var
   x1,y1 : Byte;
Begin
 For x1 := 1 To 5 Do
  For y1 := 1 To 8 Do
   Case temp of
   'A','a' : IF A[Y1,X1] = 1 THen
              Fwrite (x1+n,y1,1,15,Chr(7));
   'B','b' : IF B[Y1,X1] = 1 THen
              Fwrite (x1+n,y1,1,15,Chr(7));
   'C','c' : IF C[Y1,X1] = 1 THen
              Fwrite (x1+n,y1,1,15,Chr(7));
   'D','d' : IF D[Y1,X1] = 1 THen
              Fwrite (x1+n,y1,1,15,Chr(7));
   End;
 N:=n+5;
End;



Procedure DES;
Begin
 For X := 1 To 32 Do
  Begin
   For Y := 1 To 8 Do
     Fwrite ( X,y  ,0,4,Chr(7));
  End;
End;

PROCEDURE ANI;
Begin
clrscr;
des;
n:=n+1;
For t:= 1 to length(text) do
Begin
delay(50);
writed(text[t]);
End;

End;

Begin
n:=0;
Clrscr;
REadln ( Text);
Clrscr;
des;
For t:= 1 to length(text) do
Begin
delay(50);
writed(text[t]);
End;
readkey;
End.