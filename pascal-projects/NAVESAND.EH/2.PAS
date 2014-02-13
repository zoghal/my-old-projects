Program TEst1;
Uses
   CRt,dos,msscrt;

const

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
                                   (0,0,1,1,0),
                                   (0,1,0,0,1),
                                   (0,1,0,0,1),
                                   (0,1,0,0,1),
                                   (0,0,1,1,0),
                                   (0,0,0,0,0),
                                   (0,0,0,0,0));

   E : array [1..8,1..5] Of byte=( (0,0,0,0,0),
                                   (0,0,1,1,0),
                                   (0,1,0,0,1),
                                   (0,1,1,0,0),
                                   (0,1,0,0,1),
                                   (0,0,1,1,0),
                                   (0,0,0,0,0),
                                   (0,0,0,0,0));

   F : array [1..8,1..5] Of byte=( (0,0,0,0,0),
                                   (0,0,1,1,0),
                                   (0,1,0,0,1),
                                   (0,1,1,0,0),
                                   (0,1,0,0,0),
                                   (0,1,0,0,0),
                                   (0,0,0,0,0),
                                   (0,0,0,0,0));
 getArray : array [1..3] of char =('A','B','C');

Var
   qwe : array [1..3] of array [1..3] of byte;
   X,Y,t : byte;
   n : Shortint;

   TExt : String;


Procedure DES;
Begin
 For X := 1 To 32 Do
  Begin
   For Y := 1 To 8 Do
     Fwrite ( X,y  ,0,4,Chr(7));
  End;
End;

Procedure Writed( temp : string );
Var
   x1,y1,test : Byte;

Begin

repeat
delay(50);
des;
 For x1 := 5 downTo 1 Do
  Begin
   For y1 := 1 To 8 Do
    IF A[Y1,X1] = 1 THen
     Begin
      IF (X1-1-n >=1) and (x1-1-n <=32)   then Fwrite (x1-1-n,y1,1,15,Chr(7));
    end;
     if x1-1-n =36 THen n:=4;
    End;
n:=n-1;
Until KeyPressed;

End;




Begin
n:=3;
clrscr;
Write('Enter TEXT =');
REadln ( Text);
Clrscr;
des;
writed(text);
End.
