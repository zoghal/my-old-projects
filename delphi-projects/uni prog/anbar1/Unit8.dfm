object kharid: Tkharid
  Left = 276
  Top = 93
  Width = 571
  Height = 238
  BiDiMode = bdRightToLeft
  Caption = #1582#1585#1610#1583#1575#1585' '#1580#1583#1610#1583
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
  object Label14: TLabel
    Left = 533
    Top = 136
    Width = 13
    Height = 13
    Caption = #1606#1575#1605
  end
  object Label15: TLabel
    Left = 348
    Top = 136
    Width = 22
    Height = 13
    Caption = #1583#1585#1580#1607
  end
  object Label16: TLabel
    Left = 155
    Top = 136
    Width = 21
    Height = 13
    Caption = #1578#1604#1601#1606
  end
  object Label17: TLabel
    Left = 516
    Top = 160
    Width = 25
    Height = 13
    Caption = #1570#1583#1585#1587
  end
  object DBGrid5: TDBGrid
    Left = 5
    Top = 6
    Width = 548
    Height = 120
    DataSource = data.DataSourcekharidar
    TabOrder = 0
    TitleFont.Charset = ARABIC_CHARSET
    TitleFont.Color = clWindowText
    TitleFont.Height = -11
    TitleFont.Name = 'Tahoma'
    TitleFont.Style = []
  end
  object DBEdit9: TDBEdit
    Left = 396
    Top = 133
    Width = 121
    Height = 21
    DataField = 'Name'
    DataSource = data.DataSourcekharidar
    TabOrder = 1
  end
  object DBNavigator5: TDBNavigator
    Left = 104
    Top = 184
    Width = 240
    Height = 25
    DataSource = data.DataSourcekharidar
    TabOrder = 2
  end
  object Button5: TButton
    Left = 360
    Top = 184
    Width = 75
    Height = 25
    Caption = #1576#1587#1578#1606
    TabOrder = 3
    OnClick = Button5Click
  end
  object DBEdit10: TDBEdit
    Left = 28
    Top = 133
    Width = 121
    Height = 21
    DataField = 'Tel'
    DataSource = data.DataSourcekharidar
    TabOrder = 4
  end
  object DBComboBox2: TDBComboBox
    Left = 201
    Top = 132
    Width = 127
    Height = 21
    DataField = 'Rank'
    DataSource = data.DataSourcekharidar
    ItemHeight = 13
    Items.Strings = (
      '1'
      '2'
      '3'
      '4'
      '5')
    TabOrder = 5
  end
  object DBEdit11: TDBEdit
    Left = 27
    Top = 157
    Width = 454
    Height = 21
    DataField = 'Address'
    DataSource = data.DataSourcekharidar
    TabOrder = 6
  end
end
