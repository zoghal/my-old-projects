object Form2: TForm2
  Left = 570
  Top = 342
  Width = 204
  Height = 99
  BiDiMode = bdRightToLeft
  Caption = #1605#1593#1585#1601#1610' '#1605#1581#1589#1608#1604' '#1580#1583#1610#1583
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
  object GroupBox1: TGroupBox
    Left = 3
    Top = 1
    Width = 190
    Height = 40
    Caption = #1605#1593#1585#1601#1610
    TabOrder = 0
    object Label1: TLabel
      Left = 134
      Top = 13
      Width = 50
      Height = 13
      Caption = #1606#1575#1605' '#1605#1581#1589#1608#1604
    end
    object DBEdit2: TDBEdit
      Left = 7
      Top = 10
      Width = 121
      Height = 21
      DataField = 'Name'
      DataSource = DataSource1
      TabOrder = 0
    end
  end
  object BitBtn1: TBitBtn
    Left = 104
    Top = 45
    Width = 75
    Height = 25
    Caption = #1579#1576#1578
    TabOrder = 1
    OnClick = BitBtn1Click
    Kind = bkOK
    Layout = blGlyphRight
  end
  object BitBtn2: TBitBtn
    Left = 8
    Top = 45
    Width = 75
    Height = 25
    Caption = #1575#1606#1589#1585#1575#1601
    TabOrder = 2
    OnClick = BitBtn2Click
    Kind = bkNo
    Layout = blGlyphRight
  end
  object DataSource1: TDataSource
    DataSet = Table1
    Left = 16
    Top = 40
  end
  object Table1: TTable
    Active = True
    TableName = 'jens.db'
    Left = 48
    Top = 40
  end
end