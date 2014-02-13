object Fkala: TFkala
  Left = 536
  Top = 354
  Width = 251
  Height = 87
  BiDiMode = bdRightToLeft
  Caption = #1605#1593#1585#1601#1610' '#1705#1575#1604#1575
  Color = clBtnFace
  Font.Charset = ARABIC_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'Tahoma'
  Font.Style = []
  OldCreateOrder = False
  ParentBiDiMode = False
  Position = poScreenCenter
  OnShow = FormShow
  PixelsPerInch = 96
  TextHeight = 13
  object Label1: TLabel
    Left = 202
    Top = 8
    Width = 38
    Height = 13
    Caption = #1606#1575#1605' '#1705#1575#1604#1575' :'
  end
  object DBEdit1: TDBEdit
    Left = 2
    Top = 5
    Width = 192
    Height = 21
    DataField = 'Name'
    DataSource = dm.DSKala
    TabOrder = 0
  end
  object Button1: TButton
    Left = 11
    Top = 31
    Width = 75
    Height = 25
    Caption = #1575#1606#1589#1585#1575#1601
    TabOrder = 1
    OnClick = Button1Click
  end
  object Button2: TButton
    Left = 147
    Top = 31
    Width = 75
    Height = 25
    Caption = #1579#1576#1578
    TabOrder = 2
    OnClick = Button2Click
  end
end
