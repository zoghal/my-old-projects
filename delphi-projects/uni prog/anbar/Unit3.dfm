object Form3: TForm3
  Left = 650
  Top = 90
  Width = 555
  Height = 101
  BiDiMode = bdRightToLeft
  Caption = #1608#1585#1608#1583' '#1605#1581#1589#1608#1604' '#1576#1607' '#1575#1606#1576#1575#1585
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
    Width = 542
    Height = 40
    Caption = #1605#1593#1585#1601#1610
    TabOrder = 0
    object Label1: TLabel
      Left = 486
      Top = 13
      Width = 50
      Height = 13
      Caption = #1606#1575#1605' '#1605#1581#1589#1608#1604
    end
    object Label2: TLabel
      Left = 305
      Top = 13
      Width = 23
      Height = 13
      Caption = #1578#1593#1583#1575#1583
    end
    object Label3: TLabel
      Left = 134
      Top = 13
      Width = 26
      Height = 13
      Caption = #1602#1610#1605#1578
    end
    object DBEdit2: TDBEdit
      Left = 175
      Top = 10
      Width = 121
      Height = 21
      DataField = 'Tedad'
      DataSource = DataSource1
      TabOrder = 0
    end
    object DBLookupComboBox1: TDBLookupComboBox
      Left = 337
      Top = 10
      Width = 145
      Height = 21
      DataField = 'Code'
      DataSource = DataSource1
      KeyField = 'Code'
      ListField = 'Name'
      ListSource = Form2.DataSource1
      TabOrder = 1
    end
    object DBEdit1: TDBEdit
      Left = 7
      Top = 10
      Width = 121
      Height = 21
      DataField = 'Geymat'
      DataSource = DataSource1
      TabOrder = 2
    end
  end
  object BitBtn1: TBitBtn
    Left = 304
    Top = 45
    Width = 75
    Height = 25
    Caption = #1579#1576#1578
    Default = True
    TabOrder = 1
    OnClick = BitBtn1Click
    Glyph.Data = {
      DE010000424DDE01000000000000760000002800000024000000120000000100
      0400000000006801000000000000000000001000000000000000000000000000
      80000080000000808000800000008000800080800000C0C0C000808080000000
      FF0000FF000000FFFF00FF000000FF00FF00FFFF0000FFFFFF00333333333333
      3333333333333333333333330000333333333333333333333333F33333333333
      00003333344333333333333333388F3333333333000033334224333333333333
      338338F3333333330000333422224333333333333833338F3333333300003342
      222224333333333383333338F3333333000034222A22224333333338F338F333
      8F33333300003222A3A2224333333338F3838F338F33333300003A2A333A2224
      33333338F83338F338F33333000033A33333A222433333338333338F338F3333
      0000333333333A222433333333333338F338F33300003333333333A222433333
      333333338F338F33000033333333333A222433333333333338F338F300003333
      33333333A222433333333333338F338F00003333333333333A22433333333333
      3338F38F000033333333333333A223333333333333338F830000333333333333
      333A333333333333333338330000333333333333333333333333333333333333
      0000}
    Layout = blGlyphRight
    NumGlyphs = 2
  end
  object BitBtn2: TBitBtn
    Left = 136
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
    Left = 144
    Top = 16
  end
  object Table1: TTable
    Active = True
    TableName = 'anbar.db'
    Left = 176
    Top = 16
  end
end