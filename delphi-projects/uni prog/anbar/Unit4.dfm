object Form4: TForm4
  Left = 858
  Top = 305
  Width = 203
  Height = 98
  BiDiMode = bdRightToLeft
  Caption = #1578#1593#1583#1575#1583' '#1582#1585#1608#1580
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
    object Edit1: TEdit
      Left = 7
      Top = 11
      Width = 121
      Height = 21
      TabOrder = 0
      Text = '0'
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
    TableName = 'anbar.db'
    Left = 48
    Top = 40
    object Table1Code: TFloatField
      FieldName = 'Code'
    end
    object Table1Tedad: TFloatField
      FieldName = 'Tedad'
    end
    object Table1Geymat: TFloatField
      FieldName = 'Geymat'
    end
  end
end
