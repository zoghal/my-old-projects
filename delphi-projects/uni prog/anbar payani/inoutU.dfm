object Finout: TFinout
  Left = 296
  Top = 228
  Width = 535
  Height = 114
  BiDiMode = bdRightToLeft
  Caption = #1582#1585#1610#1583
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
    Left = 391
    Top = 9
    Width = 129
    Height = 13
    Caption = #1606#1575#1605' '#1608'  '#1606#1575#1605' '#1582#1575#1606#1608#1575#1583#1711#1610' '#1601#1585#1608#1588#1606#1583#1607
    Font.Charset = ARABIC_CHARSET
    Font.Color = clWindowText
    Font.Height = -11
    Font.Name = 'Tahoma'
    Font.Style = []
    ParentFont = False
  end
  object Label2: TLabel
    Left = 153
    Top = 10
    Width = 51
    Height = 13
    Caption = #1606#1575#1605' '#1705#1575#1585#1605#1606#1583' :'
    Font.Charset = ARABIC_CHARSET
    Font.Color = clWindowText
    Font.Height = -11
    Font.Name = 'Tahoma'
    Font.Style = []
    ParentFont = False
  end
  object Label3: TLabel
    Left = 481
    Top = 33
    Width = 38
    Height = 13
    Caption = #1606#1575#1605' '#1705#1575#1604#1575' :'
    Font.Charset = ARABIC_CHARSET
    Font.Color = clWindowText
    Font.Height = -11
    Font.Name = 'Tahoma'
    Font.Style = []
    ParentFont = False
  end
  object Label4: TLabel
    Left = 301
    Top = 34
    Width = 23
    Height = 13
    Caption = #1578#1593#1583#1575#1583
    Font.Charset = ARABIC_CHARSET
    Font.Color = clWindowText
    Font.Height = -11
    Font.Name = 'Tahoma'
    Font.Style = []
    ParentFont = False
  end
  object Label5: TLabel
    Left = 124
    Top = 34
    Width = 45
    Height = 13
    Caption = #1602#1610#1605#1578' '#1601#1610
    Font.Charset = ARABIC_CHARSET
    Font.Color = clWindowText
    Font.Height = -11
    Font.Name = 'Tahoma'
    Font.Style = []
    ParentFont = False
  end
  object DBLookupComboBox1: TDBLookupComboBox
    Left = 212
    Top = 4
    Width = 173
    Height = 21
    DataField = 'Ccust'
    DataSource = dm.Dinout
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -11
    Font.Name = 'Tahoma'
    Font.Style = []
    KeyField = 'Code'
    ListField = 'Name'
    ListSource = dm.Dcustomer
    ParentFont = False
    TabOrder = 0
  end
  object DBLookupComboBox2: TDBLookupComboBox
    Left = 332
    Top = 30
    Width = 145
    Height = 21
    DataField = 'Ckala'
    DataSource = dm.Dinout
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -11
    Font.Name = 'Tahoma'
    Font.Style = []
    KeyField = 'Code'
    ListField = 'Name'
    ListSource = dm.DSKala
    ParentFont = False
    TabOrder = 1
  end
  object DBEdit3: TDBEdit
    Left = 0
    Top = 30
    Width = 121
    Height = 21
    DataField = 'Price'
    DataSource = dm.Dinout
    TabOrder = 2
  end
  object Edit1: TEdit
    Left = 0
    Top = 5
    Width = 147
    Height = 21
    TabOrder = 3
  end
  object Button2: TButton
    Left = 291
    Top = 55
    Width = 75
    Height = 25
    Caption = #1579#1576#1578
    TabOrder = 4
    OnClick = Button2Click
  end
  object Button1: TButton
    Left = 155
    Top = 55
    Width = 75
    Height = 25
    Caption = #1575#1606#1589#1585#1575#1601
    TabOrder = 5
    OnClick = Button1Click
  end
  object DBEdit2: TDBEdit
    Left = 173
    Top = 30
    Width = 121
    Height = 21
    DataField = 'Total'
    DataSource = dm.Dinout
    TabOrder = 6
  end
end