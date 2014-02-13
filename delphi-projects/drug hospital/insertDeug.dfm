object insertDrug: TinsertDrug
  Left = 378
  Top = 229
  BiDiMode = bdRightToLeft
  BorderStyle = bsSingle
  Caption = #1583#1585#1580' '#1583#1575#1585#1608' '#1580#1583#1610#1583
  ClientHeight = 104
  ClientWidth = 271
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'MS Sans Serif'
  Font.Style = []
  OldCreateOrder = False
  ParentBiDiMode = False
  Position = poDesktopCenter
  PixelsPerInch = 96
  TextHeight = 13
  object Label2: TLabel
    Left = 189
    Top = 36
    Width = 78
    Height = 13
    Caption = #1586#1605#1575#1606' '#1576#1606#1583#1610'  '#1605#1589#1585#1601
  end
  object Label3: TLabel
    Left = 234
    Top = 8
    Width = 33
    Height = 13
    Caption = #1606#1575#1605' '#1583#1575#1585#1608
  end
  object DBEdit3: TDBEdit
    Left = 4
    Top = 5
    Width = 167
    Height = 21
    DataField = 'Name'
    DataSource = MainForm.DrugDataSource
    TabOrder = 0
  end
  object DBComboBox1: TDBComboBox
    Left = 5
    Top = 32
    Width = 167
    Height = 21
    DataField = 'USE'
    DataSource = MainForm.DrugDataSource
    ItemHeight = 13
    Items.Strings = (
      '1'
      '2'
      '6'
      '8'
      '10')
    TabOrder = 1
  end
  object BitBtn1: TBitBtn
    Left = 160
    Top = 72
    Width = 75
    Height = 25
    Caption = ' '#1579#1576#1578
    TabOrder = 2
    OnClick = BitBtn1Click
    Kind = bkOK
  end
  object BitBtn2: TBitBtn
    Left = 24
    Top = 72
    Width = 75
    Height = 25
    Caption = #1575#1606#1589#1585#1575#1601
    TabOrder = 3
    OnClick = BitBtn2Click
    Kind = bkCancel
  end
end
