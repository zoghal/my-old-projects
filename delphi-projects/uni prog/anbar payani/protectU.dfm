object Fprotect: TFprotect
  Left = 469
  Top = 332
  BiDiMode = bdRightToLeft
  BorderStyle = bsSingle
  Caption = #1608#1585#1608#1583
  ClientHeight = 81
  ClientWidth = 224
  Color = clBtnFace
  Font.Charset = ARABIC_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'Tahoma'
  Font.Style = []
  OldCreateOrder = False
  ParentBiDiMode = False
  Position = poScreenCenter
  PixelsPerInch = 96
  TextHeight = 13
  object Label1: TLabel
    Left = 174
    Top = 8
    Width = 46
    Height = 13
    Caption = #1606#1575#1605' '#1705#1575#1585#1576#1585#1610
  end
  object Label2: TLabel
    Left = 175
    Top = 32
    Width = 45
    Height = 13
    Caption = #1705#1604#1605#1607' '#1593#1576#1608#1585
  end
  object Button2: TButton
    Left = 132
    Top = 55
    Width = 75
    Height = 25
    Caption = #1579#1576#1578
    TabOrder = 2
    OnClick = Button2Click
  end
  object Button1: TButton
    Left = 20
    Top = 55
    Width = 75
    Height = 25
    Caption = #1575#1606#1589#1585#1575#1601
    TabOrder = 3
    OnClick = Button1Click
  end
  object UserEdit: TEdit
    Left = 10
    Top = 6
    Width = 151
    Height = 21
    TabOrder = 0
  end
  object PassEdit: TEdit
    Left = 10
    Top = 30
    Width = 151
    Height = 21
    PasswordChar = '*'
    TabOrder = 1
  end
end
