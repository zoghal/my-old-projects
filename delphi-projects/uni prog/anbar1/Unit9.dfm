object frosh: Tfrosh
  Left = 313
  Top = 163
  Width = 567
  Height = 279
  BiDiMode = bdRightToLeft
  Caption = #1601#1585#1608#1588#1606#1583#1607' '#1580#1583#1610#1583
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
  object Label4: TLabel
    Left = 495
    Top = 144
    Width = 13
    Height = 13
    Caption = #1606#1575#1605
  end
  object Label5: TLabel
    Left = 325
    Top = 144
    Width = 22
    Height = 13
    Caption = #1583#1585#1580#1607
  end
  object Label6: TLabel
    Left = 166
    Top = 144
    Width = 21
    Height = 13
    Caption = #1578#1604#1601#1606
  end
  object Label7: TLabel
    Left = 495
    Top = 168
    Width = 25
    Height = 13
    Caption = #1570#1583#1585#1587
  end
  object DBGrid3: TDBGrid
    Left = 5
    Top = 6
    Width = 548
    Height = 120
    DataSource = data.DataSourceforoshande
    TabOrder = 0
    TitleFont.Charset = ARABIC_CHARSET
    TitleFont.Color = clWindowText
    TitleFont.Height = -11
    TitleFont.Name = 'Tahoma'
    TitleFont.Style = []
  end
  object DBEdit4: TDBEdit
    Left = 356
    Top = 141
    Width = 121
    Height = 21
    DataField = 'Name'
    DataSource = data.DataSourceforoshande
    TabOrder = 1
  end
  object DBNavigator3: TDBNavigator
    Left = 144
    Top = 192
    Width = 240
    Height = 25
    DataSource = data.DataSourceforoshande
    TabOrder = 2
  end
  object Button3: TButton
    Left = 232
    Top = 224
    Width = 75
    Height = 25
    Caption = #1576#1587#1578#1606
    TabOrder = 3
    OnClick = Button3Click
  end
  object DBEdit6: TDBEdit
    Left = 36
    Top = 141
    Width = 121
    Height = 21
    DataField = 'Tel'
    DataSource = data.DataSourceforoshande
    TabOrder = 4
  end
  object DBComboBox1: TDBComboBox
    Left = 193
    Top = 140
    Width = 127
    Height = 21
    DataField = 'Rank'
    DataSource = data.DataSourceforoshande
    ItemHeight = 13
    Items.Strings = (
      '1'
      '2'
      '3'
      '4'
      '5')
    TabOrder = 5
  end
  object DBEdit5: TDBEdit
    Left = 35
    Top = 165
    Width = 454
    Height = 21
    DataField = 'Address'
    DataSource = data.DataSourceforoshande
    TabOrder = 6
  end
end
