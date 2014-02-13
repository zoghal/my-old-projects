unit amath;

interface

Uses Variants, SysUtils;


Function ARoundUp ( E :Extended ) : LongInt;
Function AVarToInt ( V : Variant ) : Integer;
Function AIntToVar ( I : Integer ) : Variant;
Function ANegToZero ( I : LongInt ) : LongInt;
Function AIsNear ( FirstNo, SecondNo : Double; Dif : Double = 0) : Boolean;

implementation

uses Math, astring;

Function AIsNear ( FirstNo, SecondNo : Double; Dif : Double = 0) : Boolean;
Begin
 Result := False;
 If Abs(FirstNo - SecondNo) <= Dif Then
  Result := True;
End;

Function ANegToZero ( I : LongInt ) : LongInt;
Begin
 If I < 0 Then
  Result := 0
 Else
  Result := I;
End;

Function ARoundUp ( E :Extended ) : LongInt;
Begin
 Result :=
  IfThen(Frac(E) > 0, Trunc(E) + 1, Trunc(E));
End;

Function AVarToInt ( V : Variant ) : Integer;
Begin
 If V = Null Then
  Result := 0
 Else
  Result := V; 
End;

Function AIntToVar ( I : Integer ) : Variant;
Begin
 If I = 0 Then
  Result := Null
 Else
  Result := I;
End;

end.
