unit astring;

interface

Type
 Directs      = ( Left, Right, Center );

Function  ADelStrIn ( ASource, ASubStr : String ) : String;
Function  ACDCodeStr ( S : String ) : String;
Function  ACodeFullCodeStr ( S : String; ACode, ALen : Integer ) : String;
Function  ADecodeFullCodeStr ( S : String; ACode, ALen : Integer ) : String;
Function  AAllTrim  ( S : String ) : String;
Function  AInverse  ( S : String ) : String;
Function  ASpace    ( Len : Integer; Ch : Char ) : String;
Function  ARoundStr ( S : String; Len : Byte; Direct : Directs; Ch : Char ) : String;
Function  ADelimeterLess ( S : String ) : String;
Function  AHasAlphabet ( S : String ) : Boolean;
Function  AHasNumber ( S : String ) : Boolean;
Function  AIsNumber ( S : String ) : Boolean;
Function  AStrCountIn ( ASource, ASubStr : String ) : Integer;
Function  AIfThenStr(ACondition : Boolean; ATrueResult, AFalseResult : String) : String;
Function  GetStrBetween(S:String; SubStrBegin:String;
                        PartNumber : Integer; SubStrEnd: String = '';
                        SkipSubStrEnd : Boolean = True) : String;
Function  AWinStrToIranSystem(S:String) : String;
Function  AStrToUtf8( S : WideString ) : WideString;

implementation

uses SysUtils, StrUtils;

Function AStrToUtf8( S : WideString ) : WideString;
Var
 A : PAnsiChar;
Begin
 GetMem(A, Length(S)*2);
 UnicodeToUtf8(A, PWideChar(S), Length(S)*2);
 Result := A;
 FreeMem(A);
End;

Function  AWinStrToIranSystem(S:String) : String;
Var
 I : Integer;
 NextChar, BackChar,
 CurrentChar : Char;
Begin
 Result := '';
 BackChar := #32;
 For I := 1 To Length(S) Do
  Begin
   If  I = Length(S) Then
    NextChar :=#32
   Else
    NextChar := S[I+1];

   Case S[I] Of
    #0194  : CurrentChar := Chr(141);
    'Æ'    : If NextChar = #32 Then
              If (BackChar In [#32,#194,#199,#145,#0207,#0208,#0209,#210,#0142,#0230]) Then
               CurrentChar := Chr(252)
              Else
               CurrentChar := Chr(253)
             Else
              CurrentChar := Chr(142);
    'Á'  : CurrentChar := Chr(143);          

    #0199  : If (BackChar In [#32,#194,#199,#145,#0207,#0208,#0209,#210,#0142,#0230])
              Then CurrentChar := Chr(144)
             Else
              If BackChar = #0225 Then
               Begin
                 BackChar := S[I];
                 Continue;
               End
              Else
               CurrentChar := Chr(145);

    #0200  : If (NextChar = #32)  Then CurrentChar := Chr(146)
                                  Else CurrentChar := Chr(147);

    #0129  : If (NextChar = #32)  Then CurrentChar := Chr(148)
                                  Else CurrentChar := Chr(149);
    #0202  : If (NextChar = #32)  Then CurrentChar := Chr(150)
                                  Else CurrentChar := Chr(151);
    #0203  : If (NextChar = #32)  Then CurrentChar := Chr(152)
                                  Else CurrentChar := Chr(153);

    #0204  : If (NextChar = #32)  Then CurrentChar := Chr(154)
                                  Else CurrentChar := Chr(155);

    #0205  : If (NextChar = #32)  Then CurrentChar := Chr(158)
                                  Else CurrentChar := Chr(159);

    #0206  : If (NextChar = #32)  Then CurrentChar := Chr(160)
                                  Else CurrentChar := Chr(161);

    #0141  : If (NextChar = #32)  Then CurrentChar := Chr(156)
                                  Else CurrentChar := Chr(157);
    #0207  : CurrentChar := Chr(162);
    #0208  : CurrentChar := Chr(163);
    #0209  : CurrentChar := Chr(164);
    #0210  : CurrentChar := Chr(165);
    #0142  : CurrentChar := Chr(166);

    #0211   : If (NextChar = #32)  Then CurrentChar := Chr(167)
                                   Else CurrentChar := Chr(168);
    #0212   : If (NextChar = #32)  Then CurrentChar := Chr(169)
                                   Else CurrentChar := Chr(170);

    #0213   : If (NextChar = #32)  Then CurrentChar := Chr(171)
                                   Else CurrentChar := Chr(172);
    #0214   : If (NextChar = #32)  Then CurrentChar := Chr(173)
                                   Else CurrentChar := Chr(174);
    #0216  : CurrentChar := Chr(175);
    #0217  : CurrentChar := Chr(224);

    #0230  : CurrentChar := Chr(248);

    #0221   : If (NextChar = #32)  Then CurrentChar := Chr(233)
                                   Else CurrentChar := Chr(234);
    #0222   : If (NextChar = #32)  Then CurrentChar := Chr(235)
                                   Else CurrentChar := Chr(236);
    #0223   : If (NextChar = #32)  Then CurrentChar := Chr(237)
                                   Else CurrentChar := Chr(238);
    #0144   : If (NextChar = #32)  Then CurrentChar := Chr(239)
                                   Else CurrentChar := Chr(240);
    #0225   : If (NextChar = #32)  Then CurrentChar := Chr(241)
                                   Else
                                   If (NextChar =#199) Then
                                      CurrentChar := Chr(242)
                                   Else CurrentChar := Chr(243);
    #0227   : If (NextChar = #32)  Then CurrentChar := Chr(244)
                                   Else CurrentChar := Chr(245);
    #0228   : If (NextChar = #32)  Then CurrentChar := Chr(246)
                                   Else CurrentChar := Chr(247);
    #0238  : CurrentChar := Chr(248);

    #0218   :Begin
              CurrentChar := Chr(228);
              If BackChar In [#0200,#0129,#0202,#0203,#0204,
                              #0141,#0205,#0206,#0211,#0212,#0213,#225,
                              #0214,#0216,#217,#0222,#0223,#0144,#0229,
                              #0218,#0219,#0221,#0227,#0228,#0237,#0198]
                              Then CurrentChar := Chr(227);
             If (NextChar = #32) And
                (BackChar In [#194,#199,#145,#0207,#0208,#0209,#210,#0142,#0230]) Then CurrentChar := Chr(225);
              If (BackChar In [#0200,#0129,#0202,#0203,#0204,
                              #0141,#0205,#0206,#0211,#0212,#0213,#225,
                              #0214,#0216,#217,#0222,#0223,#0144,#0229,
                              #0218,#0219,#0221,#0227,#0228,#0237,#0198])
                              AND (NextChar = #32)
                              Then CurrentChar := Chr(226);
             End;
    #0219   :Begin
              CurrentChar := Chr(232);
              If BackChar In [#0200,#0129,#0202,#0203,#0204,
                              #0141,#0205,#0206,#0211,#0212,#0213,#225,
                              #0214,#0216,#217,#0222,#0223,#0144,#0229,
                              #0218,#0219,#0221,#0227,#0228,#0237,#0198]
                              Then CurrentChar := Chr(231);
             If (NextChar = #32) And
                (BackChar In [#194,#199,#0207,#0208,#0209,#210,#0142,#0230]) Then CurrentChar := Chr(229);
              If (BackChar In [#0200,#0129,#0202,#0203,#0204,
                              #0141,#0205,#0206,#0211,#0212,#0213,#225,
                              #0214,#0216,#217,#0222,#0223,#0144,#0229,
                              #0218,#0219,#0221,#0227,#0228,#0237,#0198])
                              AND (NextChar = #32)
                              Then CurrentChar := Chr(230);
             End;
     #229    : Begin
                CurrentChar := Chr(251);
                If (BackChar In [#0200,#0129,#0202,#0203,#0204,
                              #0141,#0205,#0206,#0211,#0212,#0213,#225,
                              #0214,#0216,#217,#0222,#0223,#0144,#0229,
                              #0218,#0219,#0221,#0227,#0228,#0237,#0198])
                              Then   CurrentChar := Chr(250);
                If NextChar =#32 Then CurrentChar := Chr(249);

               End;

     #237    : Begin
                CurrentChar := Chr(254);
                If (BackChar In [#0200,#0129,#0202,#0203,#0204,
                              #0141,#0205,#0206,#0211,#0212,#0213,#225,
                              #0214,#0216,#217,#0222,#0223,#0144,#0229,
                              #0218,#0219,#0221,#0227,#0228,#0237,#0198])
                              And (NextChar = #32)
                              Then   CurrentChar := Chr(252);
             If (NextChar = #32) And
                (BackChar In [#194,#199,#0207,#0208,#0209,#210,#0142,#0230]) Then CurrentChar := Chr(253);

               End;
   Else
    CurrentChar := S[I];
   End;
   BackChar := S[I];
   Result := CurrentChar + Result;
  End;
End;

Function GetStrBetween(S:String; SubStrBegin:String;
                       PartNumber : Integer; SubStrEnd: String = '';
                       SkipSubStrEnd : Boolean = True) : String;
Var
 I, P1, P2 : Integer;
Begin
 Result := '';
 If SubStrEnd = '' Then
  SubStrEnd := SubStrBegin;
 I := 0;
 P1 := 1;
 P2 := 1;
 While I < PartNumber Do
  Begin
   Inc(I);
   P1  := PosEx(SubStrBegin, S, P1);
   If P1 = 0 Then
    Break;

   P1 := P1+Length(SubStrBegin);
   P2 := P1;
   P2  := PosEx(SubStrEnd, S, P2);
   If P2 = 0 Then
    Break;
   Result := Copy(S, P1, P2-P1);
   If SkipSubStrEnd Then
    P1 := P2+Length(SubStrEnd)
   Else
    P1 := P2; 
  End;
 If (P1 = 0) Or
    (P2 = 0) Then
  Result := '';
End;

Function  AIfThenStr(ACondition : Boolean; ATrueResult, AFalseResult : String) : String;
Begin
 If ACondition Then
  Result := ATrueResult
 Else
  Result := AFalseResult; 
End;

Function  AStrCountIn ( ASource, ASubStr : String ) : Integer;
Var
 P : Integer;
Begin
 Result := 0;
 P := PosEx(ASubStr, ASource);
 While P <> 0 Do
  Begin
   Inc(Result);
   P := PosEx(ASubStr, ASource, P + Length(ASubStr));
  End;
End;

Function  ADelStrIn ( ASource, ASubStr : String ) : String;
Var
 P : Integer;
Begin
 Result := ASource;
 P := Pos(ASubStr, Result);
 While P <> 0 Do
  Begin
   Delete(Result, P, Length(ASubStr));
   P := Pos(ASubStr, Result);
  End;
End;

Function  ADelimeterLess ( S : String ) : String;
Var
 I : Integer;
Begin
 Result := '';
 For I := 1 To Length(S) Do
  If Not (S[I] In [#13, #32, #9, #255, 'Ü', '-']) Then
   Result := Result + S[I];
End;
(***************************************************************************)
Function  AHasAlphabet ( S : String ) : Boolean;
Var
 I : Integer;
Begin
 S := ADelimeterLess(S);
 Result := False;
 For I := 1 To Length(S) Do
  If Not (S[I] In ['0'..'9', DecimalSeparator, '$']) Then
   Begin
    Result := True;
    Break;
   End;
End;
(***************************************************************************)
Function  AHasNumber ( S : String ) : Boolean;
Var
 I : Integer;
Begin
 S := ADelimeterLess(S);
 Result := False;
 For I := 1 To Length(S) Do
  If (S[I] In ['0'..'9', DecimalSeparator, '$']) Then
   Begin
    Result := True;
    Break;
   End;
End;
(***************************************************************************)
Function  AIsNumber ( S : String ) : Boolean;
Var
 I : Integer;
Begin
 S := ADelimeterLess(S);
 If Length(S) > 0 Then
  Result := True
 Else
  Result := False; 
 For I := 1 To Length(S) Do
  If Not (S[I] In ['0'..'9', DecimalSeparator, '$']) Then
   Begin
    Result := False;
    Break;
   End;
End;
(***************************************************************************)

Function  ACDCodeStr ( S : String ) : String;
Var
 I   : Byte;
Begin
 For I := 1 To Length ( S ) Do
  S(.I.) := Char ( Byte ( S(.I.) ) XOr 15 );
 Result := S;
End;
(***************************************************************************)
Function  ACodeFullCodeStr ( S : String; ACode, ALen : Integer ) : String;
Var
 I  : Byte;
 LS : String;
Begin
 LS := ARoundStr(S, ALen, astring.Right, #255);

 For I := 1 To Length(LS) Do
  LS[I] := Char (Byte(LS[I]) XOr ((I+5) Mod 16));

 For I := 1 To Length(LS) Do
  LS[I] := Char (Byte(LS[I]) XOr (ACode Mod 16));

 Result := LS;
End;
(***************************************************************************)
Function  ADecodeFullCodeStr ( S : String; ACode, ALen : Integer ) : String;
Begin
 Result := ADelStrIn(ACodeFullCodeStr(S, ACode, ALen),#255);
 If Result = ACodeFullCodeStr('', ACode, ALen) Then
  Result := '';
End;
(***************************************************************************)
Function AAllTrim ( S : String ) : String;
Var
 I, J : Byte;
Begin
 J := 1;
 For I := 1 To Length(S) Do
  Begin
   If S(.I.) = #32 Then
    Continue;
   Result(.J.) := S(.I.);
   Inc ( J );
  End;
 SetLength( Result, J - 1 );
End;
(***************************************************************************)
Function  AInverse( S : String ) : String;
Var
   I, J : Byte;
Begin
 J := Length( S );
 If J = 0 Then
  Result := ''
 Else
  Begin
   SetLength ( Result, J );
   For I := 1 To J Do
    Result(.I.) := S(.J - I + 1.);
  End;
End;
(***************************************************************************)
Function  ASpace ( Len : Integer; Ch : Char ) : String;
Var
 LS : String;
 I  : Integer;
Begin
 LS := '';
 For I := 1 To Len Do
  LS := LS + Ch;
 Result := LS; 
End;
(* ************************************************************************ *)
Function  ARoundStr  ( S : String; Len : Byte; Direct : Directs; Ch : Char ) : String;
Var
 LS      : String;
Begin
 LS := S;
 Result := LS;
 If Length ( S ) > Len Then
  Begin
   Case Direct Of
    Right  : LS := Copy(S, 1, Len);
    Left   : LS := Copy(S,Length(S)-Len+1, Len);
    Center : LS := Copy(S, Length(S) Div 2 - Len Div 2 + 1, Len);
   End;
  End
 Else
  Begin
   Case Direct Of
    Right  : LS := S + ASpace(Len-Length(S), Ch);
    Left   : LS := ASpace(Len-Length(S), Ch) + S;
    Center : LS :=
      ASpace((Len-Length(S)) Div 2, Ch) +
      S + ASpace(Len-(Len-Length(S)) Div 2, Ch);
   End;
  End;
 Result := LS;
End;
(***************************************************************************)

end.
