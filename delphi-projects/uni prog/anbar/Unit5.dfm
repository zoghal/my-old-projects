object Form5: TForm5
  Left = 629
  Top = 251
  Width = 215
  Height = 140
  BiDiMode = bdRightToLeft
  Caption = #1585#1605#1586' '#1608#1585#1608#1583
  Color = clBtnFace
  Font.Charset = ARABIC_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'Tahoma'
  Font.Style = []
  OldCreateOrder = False
  ParentBiDiMode = False
  PixelsPerInch = 96
  TextHeight = 13
  object SpeedButton1: TSpeedButton
    Left = 4
    Top = 76
    Width = 198
    Height = 33
    Caption = #1608#1585#1608#1583
    Flat = True
    Font.Charset = ARABIC_CHARSET
    Font.Color = clWindowText
    Font.Height = -13
    Font.Name = 'Tahoma'
    Font.Style = [fsBold]
    ParentFont = False
    OnClick = SpeedButton1Click
  end
  object GroupBox1: TGroupBox
    Left = 3
    Top = 0
    Width = 198
    Height = 73
    Caption = #1585#1605#1586' '#1608#1585#1608#1583
    TabOrder = 0
    object Label1: TLabel
      Left = 136
      Top = 19
      Width = 53
      Height = 13
      Caption = #1606#1575#1605' '#1705#1575#1585#1576#1585#1610' :'
    end
    object Label2: TLabel
      Left = 135
      Top = 41
      Width = 52
      Height = 13
      Caption = #1705#1604#1605#1607' '#1593#1576#1608#1585' :'
    end
    object Edit1: TEdit
      Left = 8
      Top = 16
      Width = 121
      Height = 21
      TabOrder = 0
    end
    object Edit2: TEdit
      Left = 8
      Top = 39
      Width = 121
      Height = 21
      PasswordChar = '*'
      TabOrder = 1
    end
  end
end