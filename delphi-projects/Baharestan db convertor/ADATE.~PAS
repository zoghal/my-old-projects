Unit Adate;

Interface
Type
 DateStr8  = String[8];
 DateStr10 = String[10];
 AgeType = (YearType, MonthType, WeekType, DayType, HourType, MinutType);
 AgeTypeSet = Set Of AgeType;

Var

 AgeRate : Array[AgeType] Of Double =
  (1, 12, 52.17857, 365.25, 8766, 525960);

 SMonths : Array(.1..12.) Of Byte = ( 31, 31, 31,
                                      31, 31, 31,
                                      30, 30, 30,
                                      30, 30, 29 );

 MMonths : Array(.1..12.) Of Byte = ( 31, 28, 31,
                                      30, 31, 30,
                                      31, 31, 30,
                                      31, 30, 31 );
Const
 SMonthsName : Array(.1..12.) Of String = ( '›—Ê—œÌ‰',
                                            '«—œÌ»Â‘ ',
                                            'Œ—œ«œ',
                                            ' Ì—',
                                            '„—œ«œ',
                                            '‘Â—ÌÊ—',
                                            '„Â—',
                                            '¬»«‰',
                                            '¬–—',
                                            'œÌ',
                                            '»Â„‰',
                                            '«”›‰œ' );
 FWeekDays : Array(.1..7.) Of String = ( 'Ìﬂ‘‰»Â',
                                         'œÊ‘‰»Â',
                                         '”Â ‘‰»Â',
                                         'çÂ«—‘‰»Â',
                                         'Å‰Ã ‘‰»Â',
                                         'Ã„⁄Â',
                                         '‘‰»Â' );

Function ADayNumberOfMonth ( AYear, AMonth : Word ) : Word;
Function AIsLeapYearS ( AYear : Word ) : Boolean;
Function ADecodeDateS  ( ADate : String; Var Year, Month, Day : Word; Var TimeStr : String ) : Boolean;
Function ACheckDateS ( ADate : String ) : Boolean;
Function ADateMToS ( ADate  : TDateTime; ResultFormat : String = 'yy/mm/dd' ) : String;
Function ADateSToM ( ADate : String ) : TDateTime;
Function ACheckTime ( ATime : String ) : Boolean;
Function AGetAgeStrBetween ( FirstTime, SecondTime : TDateTime;
                             ResultSet : AgeTypeSet =
                             [YearType, MonthType, DayType] ) : String;
Function AEGetAgeStrBetween ( FirstTime, SecondTime : TDateTime;
                              ResultSet : AgeTypeSet =
                             [YearType, MonthType, DayType] ) : String;
Function AStrToAge ( S : String; ResultType : AgeType ) : Double;
Function AEStrToAge ( S : String; ResultType : AgeType ) : Double;
Function ASQLServerNow:TDateTime;
Implementation

uses DateUtils, SysUtils, Math, AString,  adodb, amath;

(* **************************************************** *)

Function AStrToAge ( S : String; ResultType : AgeType ) : Double;
Var
 AgeName : Array[AgeType] Of String[10];
Var
 P   : Integer;
 I   : AgeType;
 LS  : ShortString;
Begin
 AgeName[YearType] := '”«·';
 AgeName[MonthType] := '„«Â';
 AgeName[WeekType] := 'Â› Â';
 AgeName[DayType] := '—Ê“';
 AgeName[HourType] := '”«⁄ ';
 AgeName[MinutType] := 'œﬁÌﬁÂ';

 Result := 0;

 If Trim(S) = '' Then
  Exit;

 If AIsNumber(S) Then
  Begin
   Result := StrToFloat(S);
   Exit;
  End;

 For I := YearType To MinutType Do
  Begin
   While (Length(S) > 0) And
         (Not AIsNumber(S[1])) Do
    Delete(S, 1, 1);


   P := Pos(UpperCase(AgeName[I]), UpperCase(S));

   If P <> 0 Then
    Begin
     LS := Copy(S, 1, P-1);
     Try
      Result := Result + StrToFloat(Trim(LS))/AgeRate[I];
     Except
      Result := -1;
     End;
     Delete(S, 1, P+Length(AgeName[I])-1);
    End;
   If Result = -1 Then
    Break;
  End;
 If Result <> - 1 Then
  Result := Result * AgeRate[ResultType];
End;

Function AEStrToAge ( S : String; ResultType : AgeType ) : Double;
Var
 AgeName : Array[AgeType] Of String[10];
Var
 P   : Integer;
 I   : AgeType;
 LS  : ShortString;
Begin
 AgeName[YearType] := 'Year';
 AgeName[MonthType] := 'Month';
 AgeName[WeekType] := 'Week';
 AgeName[DayType] := 'Day';
 AgeName[HourType] := 'Hour';
 AgeName[MinutType] := 'Minut';

 Result := 0;

 If Trim(S) = '' Then
  Exit;

 If AIsNumber(S) Then
  Begin
   Result := StrToFloat(S);
   Exit;
  End;

 For I := YearType To MinutType Do
  Begin
   While (Length(S) > 0) And
         (Not AIsNumber(S[1])) Do
    Delete(S, 1, 1);


   P := Pos(UpperCase(AgeName[I]), UpperCase(S));

   If P <> 0 Then
    Begin
     LS := Copy(S, 1, P-1);
     Try
      Result := Result + StrToFloat(Trim(LS))/AgeRate[I];
     Except
      Result := -1;
     End;
     Delete(S, 1, P+Length(AgeName[I])-1);
    End;
   If Result = -1 Then
    Break;
  End;
 If Result <> - 1 Then
  Result := Result * AgeRate[ResultType];
End;

Function AGetAgeStrBetween
  ( FirstTime, SecondTime : TDateTime;
    ResultSet : AgeTypeSet =
    [YearType, MonthType, DayType] ) : String;
Var
 AgeDateTime : Double;
 I : AgeType;
 AgeName   : Array[AgeType] Of String[10];
 AgeValue  : Array[AgeType] Of Integer;
begin
 Result := '';

 AgeName[YearType] := '”«·';
 AgeName[MonthType] := '„«Â';
 AgeName[WeekType] := 'Â› Â';
 AgeName[DayType] := '—Ê“';
 AgeName[HourType] := '”«⁄ ';
 AgeName[MinutType] := 'œﬁÌﬁÂ';

 AgeDateTime := (SecondTime - FirstTime) / AgeRate[DayType];
 For I := YearType To MinutType Do
  Begin
   If I In ResultSet Then
    Begin
     If AIsNear(Round(AgeDateTime * AgeRate[I]),
        AgeDateTime*AgeRate[I], 0.01) Then
      AgeValue[I] := Round(AgeDateTime * AgeRate[I])
     Else
      AgeValue[I] := Trunc(AgeDateTime * AgeRate[I]);
     AgeDateTime := AgeDateTime - AgeValue[I] / AgeRate[I];
     If AgeDateTime < 0 Then
      AgeDateTime := 0;
     If AgeValue[I] > 0 Then
      Begin
       If Result <> '' Then
        Result := Result + ' Ê ';
       Result := Result + IntToStr(AgeValue[I]) + ' ' +
                                   AgeName[I];
      End;
    End
   Else
    AgeValue[I] := 0;
  End;
end;

Function AEGetAgeStrBetween
  ( FirstTime, SecondTime : TDateTime;
    ResultSet : AgeTypeSet =
    [YearType, MonthType, DayType] ) : String;
Var
 AgeDateTime : TDateTime;
 I : AgeType;
 AgeName   : Array[AgeType] Of String[10];
 AgeValue  : Array[AgeType] Of Integer;
begin
 Result := '';

 AgeName[YearType] := 'Year';
 AgeName[MonthType] := 'Month';
 AgeName[WeekType] := 'Week';
 AgeName[DayType] := 'Day';
 AgeName[HourType] := 'Hour';
 AgeName[MinutType] := 'Minut';

 AgeDateTime := (SecondTime - FirstTime) / AgeRate[DayType];
 For I := YearType To MinutType Do
  Begin
   If I In ResultSet Then
    Begin
     If AIsNear(Round(AgeDateTime * AgeRate[I]),
        AgeDateTime*AgeRate[I], 0.01) Then
      AgeValue[I] := Round(AgeDateTime * AgeRate[I])
     Else
      AgeValue[I] := Trunc(AgeDateTime * AgeRate[I]);
     AgeDateTime := AgeDateTime - AgeValue[I] / AgeRate[I];
     If AgeDateTime < 0 Then
      AgeDateTime := 0;

     If AgeValue[I] > 0 Then
      Begin
       If Result <> '' Then
        Result := Result + ' , ';
       Result := Result + IntToStr(AgeValue[I]) + ' ' +
                                   AgeName[I];
      End;
    End
   Else
    AgeValue[I] := 0;
  End;
end;

Function ADayNumberOfMonth ( AYear, AMonth : Word ) : Word;
Var
 Tmp : Word;
Begin
 Tmp := SMonths[12];
 If AIsLeapYearS ( AYear ) Then
  SMonths[12] := 30
 Else
  SMonths[12] := 29;
 AMonth := ((AMonth - 1) Mod 12) + 1;

 Result := SMonths[AMonth];
 SMonths[12] := Tmp;
End;

(* **************************************************** *)

Function AIsLeapYearS ( AYear : Word ) : Boolean;
Begin
 Result := IsLeapYear ( AYear + 2000 - 1379 );
End;

(* **************************************************** *)

Function ADecodeDateS ( ADate : String; Var Year, Month, Day : Word; Var TimeStr : String ) : Boolean;
Var
 PosSlash  : Integer;
 LS1, LS2  : ShortString;
 Er, Value : Integer;
 CurYearS  : Word;
 CurTime   : TDateTime;
 PosSpace  : Integer;
Begin
 Result := True;
 LS1 := ADate;

 PosSpace := Pos(':', LS1);
 If PosSpace <> 0 Then
  Begin
   For Value := PosSpace DownTo PosSpace - 2 Do
    If LS1[Value] = #32 Then
     Break;
   TimeStr := Trim(Copy(LS1, Value, Length(LS1) - Value + 1));
   Delete(LS1, Value, Length(LS1) - Value + 1);
  End
 Else
  TimeStr := '';

 LS1 := Trim(LS1);
 (* For Year *)
 PosSlash := Pos ('/', LS1 );
 If PosSlash > 5 Then
  Begin
   Result := False;
   Exit;
  End;
 If PosSlash <= 0 Then
  PosSlash := Length ( LS1 ) + 1;

 LS2 := Trim ( Copy ( LS1, 1, PosSlash - 1 ) );
 If LS2 = '' Then
  LS2 := '1';
 Val ( LS2, Value, Er );
 If Er <> 0 Then
  Begin
   Result := False;
   Exit;
  End
 Else
  Year := Value;

 // For SQL Server

 CurTime := ASQLServerNow;

 CurYearS := StrToInt ( ADateMToS ( CurTime, 'yyyy' ) );

 If Year < 10 Then
  Year := Year + CurYearS Div 10 * 10
 Else
  If Year < 100 Then
   Year := Year + CurYearS Div 100 * 100
  Else
   If Year < 1000 Then
    Year := Year + CurYearS Div 1000 * 1000;

 Delete ( LS1, 1, PosSlash );

 (* For Month *)
 PosSlash := Pos ('/', LS1 );
 If PosSlash > 3 Then
  Begin
   Result := False;
   Exit;
  End;
 If PosSlash <= 0 Then
  PosSlash := Length ( LS1 ) + 1;
 LS2 := Trim ( Copy ( LS1, 1, PosSlash - 1 ) );
 If LS2 = '' Then
  LS2 := '01'
 Else
  If Length ( LS2 ) < 2 Then
   LS2 := '0' + LS2;
 Val ( LS2, Value, Er );
 If Er <> 0 Then
  Begin
   Result := False;
   Exit;
  End
 Else
  Month := Value;

 Delete ( LS1, 1, PosSlash );

 (* For Day *)
 If Length ( LS1 ) > 2 Then
  Begin
   Result := False;
   Exit;
  End;
 LS1 := Trim ( LS1 );
 If LS1 = '' Then
  LS1 := '01'
 Else
  If Length ( LS1 ) < 2 Then
   LS1 := '0' + LS1;
 Val ( LS1, Value, Er );
 If Er <> 0 Then
  Begin
   Result := False;
   Exit;
  End
 Else
  Day := Value;
End;

(* **************************************************** *)

Function ACheckDateS ( ADate : String ) : Boolean;
Var
 Year, Month, Day : Word;
 Tmp : Word;
 LTimeStr : String;
Begin
 Result := False;
 SetLength(LTimeStr, 10);
 If Not ADecodeDateS ( ADate, Year, Month, Day, LTimeStr ) Then
  Exit;
 If Year > 9999 Then
  Exit;
 If ( Month < 1 ) Or
    ( Month > 12 ) Then
  Exit;       

 Tmp := SMonths[12];
 If AIsLeapYearS ( Year ) Then
  SMonths[12] := 30
 Else
  SMonths[12] := 29;

 If ( Day > 0 ) And
    ( Day <= SMonths[Month] ) Then
  Result := True;

 SMonths[12] := Tmp;
End;

(* **************************************************** *)

Function ADateSToM ( ADate : String ) : TDateTime;
Var
 SOfsett : Word;
 MYear, SYear,
 MMonth, SMonth,
 MDay, SDay       : Word;
 I                : Integer;
 LTimeStr : String;
Begin
 SetLength(LTimeStr, 10);
 If Not ( ADecodeDateS ( ADate, SYear, SMonth, SDay, LTimeStr ) And
          ACheckDateS ( ADate ) ) Then
  Begin
   Result := 0;
   Exit;
  End;

 MYear := SYear + ( 2000 - 1379 );
 If IsLeapYear ( MYear ) Then
  MMonths[2] := 29
 Else
  MMonths[2] := 28;

 MMonth := 3;
 If MMonths[2] = 29 Then
  MDay   := 19
 Else
  MDay   := 20;

 SOfsett := SDay;

 For I := 1 To SMonth - 1 Do
  Inc ( SOfsett, SMonths[I] );

 Result := EncodeDate ( MYear, MMonth, MDay ) + SOfsett;
 If Trim(LTimeStr) <> '' Then
  Result := Result + StrToTime(LTimeStr);
End;

(* **************************************************** *)

Function ADateMToS ( ADate : TDateTime; ResultFormat : String = 'yy/mm/dd') : String;
Var
 FindPos : Word;
 MOfsett : Word;
 MYear, SYear,
 SMonth,
 SDay       : Word;
 YearVar          : String[4];
Begin
 MYear := YearOf ( ADate );
 If IsLeapYear ( MYear ) Then
  MMonths[2] := 29
 Else
  MMonths[2] := 28;

 If IsLeapYear ( MYear - 1 ) Then
  SMonths[12] := 30
 Else
  SMonths[12] := 29;

 SYear  := MYear - ( 2003 - 1381 );
 SMonth := 10;
 If SMonths[12] = 29 Then
  SDay   := 10
 Else
  SDay   := 11;

 MOfsett := TRunc(ADate - EncodeDate ( MYear, 1, 1 ) + SDay + 1 );

 SDay := MOfsett;

 While SDay > SMonths[SMonth] Do
  Begin
   Dec ( SDay, SMonths[SMonth] );
   If SMonth >= 12 Then
    Begin
     Inc ( SYear );
     SMonth := 1;
    End
   Else
    Inc ( SMonth );
  End;

 ResultFormat := UpperCase ( ResultFormat );

 YearVar := 'YYYY';
 Repeat
  FindPos := Pos ( YearVar, ResultFormat );
  If FindPos <> 0 Then
   Begin
    Delete ( ResultFormat, FindPos, Length(YearVar) );
    Insert ( ARoundStr ( IntToStr ( SYear Mod
                        Round( Power ( 10, Length ( YearVar ) ) ) ),
              Length ( YearVar ), Left, '0' ),
              ResultFormat,
              FindPos );
   End;
  Delete ( YearVar, 1, 1 );
 Until Length ( YearVar ) = 0;

 YearVar := 'MMMM';
 Repeat
  FindPos := Pos ( YearVar, ResultFormat );
  If FindPos <> 0 Then
   Begin
    Delete ( ResultFormat, FindPos, Length(YearVar) );
    Insert ( SMonthsName(.SMonth.), ResultFormat, FindPos );
   End;
  Delete ( YearVar, 1, 1 );
 Until Length ( YearVar ) < 3;

 YearVar := 'MM';
 Repeat
  FindPos := Pos ( YearVar, ResultFormat );
  If FindPos <> 0 Then
   Begin
    Delete ( ResultFormat, FindPos, Length(YearVar) );
    If YearVar = 'MM' Then
     Insert ( ARoundStr ( IntToStr ( SMonth ),
               Length ( YearVar ), Left, '0' ),
               ResultFormat,
               FindPos )
    Else
     Insert ( IntToStr ( SMonth ),
               ResultFormat,
               FindPos );
   End;
  Delete ( YearVar, 1, 1 );
 Until Length ( YearVar ) = 0;

 YearVar := 'DD';
 Repeat
  FindPos := Pos ( YearVar, ResultFormat );
  If FindPos <> 0 Then
   Begin
    Delete ( ResultFormat, FindPos, Length(YearVar) );
    If YearVar = 'DD' Then
     Insert ( ARoundStr ( IntToStr ( SDay ),
               Length ( YearVar ), Left, '0' ),
               ResultFormat,
               FindPos )
    Else
     Insert ( IntToStr ( SDay ),
               ResultFormat,
               FindPos );
   End;
  Delete ( YearVar, 1, 1 );
 Until Length ( YearVar ) = 0;

 Result := ResultFormat;
End;





Function ACheckTime ( ATime : String ) : Boolean;
Begin
 Try
  StrToTime(ATime);
  Result := True;
 Except
   Result := False;
 End;
End;


Function ASQLServerNow:TDateTime;
Begin
  Result := Now;
End;

End.
