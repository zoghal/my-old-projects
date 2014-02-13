object listtakhfifForm: TlisttakhfifForm
  Left = 494
  Top = 318
  Width = 521
  Height = 180
  BiDiMode = bdRightToLeft
  Caption = 'listtakhfifForm'
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
  object Label1: TLabel
    Left = 393
    Top = 8
    Width = 110
    Height = 13
    Caption = #1604#1610#1587#1578' '#1578#1582#1601#1610#1601' '#1607#1575' '#1575#1586' '#1578#1575#1585#1610#1582
  end
  object Label2: TLabel
    Left = 230
    Top = 8
    Width = 25
    Height = 13
    Caption = #1604#1594#1575#1610#1578
  end
  object SpeedButton1: TSpeedButton
    Left = 112
    Top = 64
    Width = 321
    Height = 33
    Caption = #1711#1586#1575#1585#1588
    OnClick = SpeedButton1Click
  end
  object SpeedButton2: TSpeedButton
    Left = 112
    Top = 104
    Width = 321
    Height = 33
    Caption = #1576#1585#1711#1588#1578
    OnClick = SpeedButton2Click
  end
  object MaskEdit1: TMaskEdit
    Left = 264
    Top = 8
    Width = 122
    Height = 21
    EditMask = '0000/00/00;1;_'
    MaxLength = 10
    TabOrder = 0
    Text = '    /  /  '
  end
  object MaskEdit2: TMaskEdit
    Left = 96
    Top = 8
    Width = 122
    Height = 21
    EditMask = '0000/00/00;1;_'
    MaxLength = 10
    TabOrder = 1
    Text = '    /  /  '
  end
end
