object Fuser: TFuser
  Left = 667
  Top = 175
  Width = 461
  Height = 109
  BiDiMode = bdRightToLeft
  Caption = #1605#1593#1585#1601#1610' '#1705#1575#1585#1605#1606#1583
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
  object Label2: TLabel
    Left = 253
    Top = 9
    Width = 10
    Height = 13
    Caption = 'ss'
  end
  object Label3: TLabel
    Left = 166
    Top = 8
    Width = 53
    Height = 13
    Caption = #1606#1575#1605' '#1705#1575#1585#1576#1585#1610' :'
    Font.Charset = ARABIC_CHARSET
    Font.Color = clWindowText
    Font.Height = -11
    Font.Name = 'Tahoma'
    Font.Style = []
    ParentFont = False
  end
  object Label4: TLabel
    Left = 406
    Top = 32
    Width = 45
    Height = 13
    Caption = #1585#1605#1586' '#1593#1576#1608#1585' :'
    Font.Charset = ARABIC_CHARSET
    Font.Color = clWindowText
    Font.Height = -11
    Font.Name = 'Tahoma'
    Font.Style = []
    ParentFont = False
  end
  object Label5: TLabel
    Left = 253
    Top = 33
    Width = 10
    Height = 13
    Caption = 'ss'
  end
  object Label6: TLabel
    Left = 169
    Top = 32
    Width = 50
    Height = 13
    Caption = #1578#1581#1589#1610#1604#1575#1578' : '
    Font.Charset = ARABIC_CHARSET
    Font.Color = clWindowText
    Font.Height = -11
    Font.Name = 'Tahoma'
    Font.Style = []
    ParentFont = False
  end
  object Label7: TLabel
    Left = 416
    Top = 56
    Width = 35
    Height = 13
    Caption = #1581#1602#1608#1602' :'
    Font.Charset = ARABIC_CHARSET
    Font.Color = clWindowText
    Font.Height = -11
    Font.Name = 'Tahoma'
    Font.Style = []
    ParentFont = False
  end
  object Label1: TLabel
    Left = 366
    Top = 8
    Width = 85
    Height = 13
    Caption = #1606#1575#1605' '#1608'  '#1606#1575#1605' '#1582#1575#1606#1608#1575#1583#1711#1610
    Font.Charset = ARABIC_CHARSET
    Font.Color = clWindowText
    Font.Height = -11
    Font.Name = 'Tahoma'
    Font.Style = []
    ParentFont = False
  end
  object DBEdit2: TDBEdit
    Left = 4
    Top = 5
    Width = 121
    Height = 21
    DataField = 'Username'
    DataSource = dm.DSuser
    TabOrder = 0
  end
  object DBEdit3: TDBEdit
    Left = 236
    Top = 29
    Width = 121
    Height = 21
    DataField = 'Pass'
    DataSource = dm.DSuser
    TabOrder = 1
  end
  object DBEdit4: TDBEdit
    Left = 4
    Top = 29
    Width = 121
    Height = 21
    DataField = 'Study'
    DataSource = dm.DSuser
    TabOrder = 2
  end
  object DBEdit5: TDBEdit
    Left = 236
    Top = 53
    Width = 121
    Height = 21
    DataField = 'Price'
    DataSource = dm.DSuser
    TabOrder = 3
  end
  object Button2: TButton
    Left = 147
    Top = 55
    Width = 75
    Height = 25
    Caption = #1579#1576#1578
    TabOrder = 4
    OnClick = Button2Click
  end
  object Button1: TButton
    Left = 11
    Top = 55
    Width = 75
    Height = 25
    Caption = #1575#1606#1589#1585#1575#1601
    TabOrder = 5
    OnClick = Button1Click
  end
  object DBEdit1: TDBEdit
    Left = 236
    Top = 5
    Width = 121
    Height = 21
    DataField = 'Name'
    DataSource = dm.DSuser
    TabOrder = 6
  end
end