object Froshkala: TFroshkala
  Left = 377
  Top = 173
  Width = 506
  Height = 414
  BiDiMode = bdRightToLeft
  Caption = 'Froshkala'
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
  object Label2: TLabel
    Left = 286
    Top = 144
    Width = 28
    Height = 13
    Caption = #1582#1585#1610#1583#1575#1585
  end
  object Label3: TLabel
    Left = 299
    Top = 176
    Width = 15
    Height = 13
    Caption = #1705#1575#1604#1575
  end
  object Label8: TLabel
    Left = 293
    Top = 208
    Width = 21
    Height = 13
    Caption = #1578#1575#1585#1610#1582
  end
  object Label9: TLabel
    Left = 291
    Top = 240
    Width = 23
    Height = 13
    Caption = #1578#1593#1583#1575#1583
  end
  object Label18: TLabel
    Left = 288
    Top = 272
    Width = 26
    Height = 13
    Caption = #1602#1610#1605#1578
  end
  object DBGrid2: TDBGrid
    Left = 5
    Top = 6
    Width = 452
    Height = 120
    DataSource = data.DataSourceforosh
    TabOrder = 0
    TitleFont.Charset = ARABIC_CHARSET
    TitleFont.Color = clWindowText
    TitleFont.Height = -11
    TitleFont.Name = 'Tahoma'
    TitleFont.Style = []
  end
  object DBNavigator2: TDBNavigator
    Left = 56
    Top = 320
    Width = 240
    Height = 25
    DataSource = data.DataSourceforosh
    TabOrder = 1
  end
  object Button2: TButton
    Left = 104
    Top = 352
    Width = 75
    Height = 25
    Caption = #1576#1587#1578#1606
    TabOrder = 2
    OnClick = Button2Click
  end
  object DBLookupComboBox1: TDBLookupComboBox
    Left = 88
    Top = 141
    Width = 145
    Height = 21
    DataField = 'Froshandecode'
    DataSource = data.DataSourceforosh
    KeyField = 'Code'
    ListField = 'Name'
    ListSource = data.DataSourcekharidar
    TabOrder = 3
  end
  object DBLookupComboBox2: TDBLookupComboBox
    Left = 87
    Top = 166
    Width = 145
    Height = 21
    DataField = 'Codekala'
    DataSource = data.DataSourceforosh
    KeyField = 'Code'
    ListField = 'Name'
    ListSource = data.DataSourcemahsool
    TabOrder = 4
  end
  object DBEdit2: TDBEdit
    Left = 96
    Top = 200
    Width = 121
    Height = 21
    DataField = 'Data'
    DataSource = data.DataSourceforosh
    TabOrder = 5
  end
  object DBEdit3: TDBEdit
    Left = 96
    Top = 232
    Width = 121
    Height = 21
    DataField = 'Tedad'
    DataSource = data.DataSourceforosh
    TabOrder = 6
  end
  object DBEdit12: TDBEdit
    Left = 96
    Top = 264
    Width = 121
    Height = 21
    DataField = 'Price'
    DataSource = data.DataSourceforosh
    TabOrder = 7
  end
end
