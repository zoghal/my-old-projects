object Insert_b: TInsert_b
  Left = 355
  Top = 215
  BiDiMode = bdRightToLeft
  BorderStyle = bsSingle
  Caption = #1576#1610#1605#1575#1585' '#1580#1583#1610#1583
  ClientHeight = 196
  ClientWidth = 519
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
  object GroupBox1: TGroupBox
    Left = 3
    Top = 5
    Width = 513
    Height = 100
    BiDiMode = bdRightToLeft
    Caption = '  '#1605#1588#1582#1589#1575#1578' '#1576#1610#1605#1575#1585' '
    ParentBiDiMode = False
    TabOrder = 0
    object Label1: TLabel
      Left = 459
      Top = 24
      Width = 45
      Height = 13
      Caption = ' '#1606#1575#1605' '#1576#1610#1605#1575#1585' :'
    end
    object Label2: TLabel
      Left = 211
      Top = 24
      Width = 61
      Height = 13
      Caption = #1606#1575#1605' '#1582#1575#1606#1608#1575#1583#1711#1610' :'
    end
    object Label3: TLabel
      Left = 466
      Top = 50
      Width = 38
      Height = 13
      Caption = #1603#1583' '#1605#1604#1610' : '
    end
    object Label4: TLabel
      Left = 200
      Top = 50
      Width = 72
      Height = 13
      Caption = #1588#1605#1575#1585#1607' '#1588#1606#1575#1587#1606#1575#1605#1607' :'
    end
    object Label5: TLabel
      Left = 469
      Top = 77
      Width = 35
      Height = 13
      Caption = #1606#1575#1605' '#1662#1583#1585' :'
    end
    object Label6: TLabel
      Left = 238
      Top = 74
      Width = 34
      Height = 13
      Caption = #1570#1583#1585#1587' : '
    end
    object DBEdit1: TDBEdit
      Left = 283
      Top = 20
      Width = 171
      Height = 21
      DataField = 'Name'
      DataSource = MainForm.BimarDataSource
      TabOrder = 0
    end
    object DBEdit2: TDBEdit
      Left = 8
      Top = 20
      Width = 188
      Height = 21
      DataField = 'Famili'
      DataSource = MainForm.BimarDataSource
      TabOrder = 1
    end
    object DBEdit3: TDBEdit
      Left = 283
      Top = 46
      Width = 171
      Height = 21
      DataField = 'Code_meli'
      DataSource = MainForm.BimarDataSource
      TabOrder = 2
    end
    object DBEdit4: TDBEdit
      Left = 8
      Top = 46
      Width = 188
      Height = 21
      DataField = 'ID'
      DataSource = MainForm.BimarDataSource
      TabOrder = 3
    end
    object DBEdit5: TDBEdit
      Left = 283
      Top = 73
      Width = 171
      Height = 21
      DataField = 'Father_n'
      DataSource = MainForm.BimarDataSource
      TabOrder = 4
    end
    object DBEdit6: TDBEdit
      Left = 8
      Top = 70
      Width = 190
      Height = 21
      DataField = 'Addres'
      DataSource = MainForm.BimarDataSource
      TabOrder = 5
    end
  end
  object GroupBox2: TGroupBox
    Left = 3
    Top = 109
    Width = 513
    Height = 52
    BiDiMode = bdRightToLeft
    Caption = '  '#1576#1587#1578#1585#1610'  '
    ParentBiDiMode = False
    TabOrder = 1
    object Label7: TLabel
      Left = 452
      Top = 24
      Width = 52
      Height = 13
      Caption = #1588#1605#1575#1585#1607' '#1575#1578#1575#1602' :'
    end
    object Label8: TLabel
      Left = 214
      Top = 24
      Width = 53
      Height = 13
      Caption = #1588#1605#1575#1585#1607' '#1578#1582#1578' :'
    end
    object DBEdit7: TDBEdit
      Left = 277
      Top = 20
      Width = 171
      Height = 21
      DataField = 'Room'
      DataSource = MainForm.BimarDataSource
      TabOrder = 0
    end
    object DBEdit8: TDBEdit
      Left = 8
      Top = 20
      Width = 188
      Height = 21
      DataField = 'Takht'
      DataSource = MainForm.BimarDataSource
      TabOrder = 1
    end
  end
  object BitBtn1: TBitBtn
    Left = 296
    Top = 168
    Width = 75
    Height = 25
    Caption = #1579#1576#1578
    TabOrder = 2
    OnClick = BitBtn1Click
    Kind = bkOK
  end
  object BitBtn2: TBitBtn
    Left = 176
    Top = 168
    Width = 75
    Height = 25
    Caption = #1575#1606#1589#1585#1575#1601
    TabOrder = 3
    OnClick = BitBtn2Click
    Kind = bkCancel
  end
end
