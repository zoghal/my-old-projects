object Form1: TForm1
  Left = 227
  Top = 118
  Width = 870
  Height = 500
  Caption = 'Form1'
  Color = clBtnFace
  Font.Charset = ARABIC_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'Tahoma'
  Font.Style = []
  OldCreateOrder = False
  OnClose = FormClose
  OnShow = FormShow
  PixelsPerInch = 96
  TextHeight = 13
  object Label1: TLabel
    Left = 462
    Top = 180
    Width = 49
    Height = 13
    Caption = 'Record'#39's'
    Font.Charset = ARABIC_CHARSET
    Font.Color = clWindowText
    Font.Height = -11
    Font.Name = 'Tahoma'
    Font.Style = [fsBold]
    ParentFont = False
  end
  object DBGrid1: TDBGrid
    Left = 24
    Top = 8
    Width = 809
    Height = 121
    BiDiMode = bdRightToLeft
    Font.Charset = ARABIC_CHARSET
    Font.Color = clWindowText
    Font.Height = -11
    Font.Name = 'Tahoma'
    Font.Style = []
    ParentBiDiMode = False
    ParentFont = False
    ReadOnly = True
    TabOrder = 0
    TitleFont.Charset = DEFAULT_CHARSET
    TitleFont.Color = clWindowText
    TitleFont.Height = -11
    TitleFont.Name = 'MS Sans Serif'
    TitleFont.Style = []
  end
  object Button1: TButton
    Left = 376
    Top = 136
    Width = 75
    Height = 25
    Caption = #1575#1606#1578#1602#1575#1604
    TabOrder = 1
    OnClick = Button1Click
  end
  object Memo1: TMemo
    Left = 32
    Top = 264
    Width = 745
    Height = 169
    TabOrder = 2
  end
  object ProgressBar1: TProgressBar
    Left = 48
    Top = 208
    Width = 729
    Height = 33
    TabOrder = 3
  end
  object Edit1: TEdit
    Left = 336
    Top = 176
    Width = 121
    Height = 21
    TabOrder = 4
  end
  object DataSource1: TDataSource
    DataSet = Table1
    Left = 8
    Top = 8
  end
  object Table1: TTable
    AutoRefresh = True
    TableName = 'MPI.DBF'
    TableType = ttFoxPro
    Left = 8
    Top = 64
    object Table1PID: TFloatField
      DisplayWidth = 12
      FieldName = 'PID'
    end
    object Table1LASTNAME: TStringField
      DisplayWidth = 18
      FieldName = 'LASTNAME'
      Size = 15
    end
    object Table1NAME: TStringField
      DisplayWidth = 12
      FieldName = 'NAME'
      Size = 10
    end
    object Table1FATHER: TStringField
      DisplayWidth = 12
      FieldName = 'FATHER'
      Size = 10
    end
    object Table1SEX: TBooleanField
      DisplayWidth = 6
      FieldName = 'SEX'
    end
    object Table1SHENAS_NO: TFloatField
      DisplayWidth = 18
      FieldName = 'SHENAS_NO'
    end
    object Table1ISSUED_AT: TStringField
      DisplayWidth = 23
      FieldName = 'ISSUED_AT'
      Size = 10
    end
    object Table1DOB: TStringField
      DisplayWidth = 10
      FieldName = 'DOB'
      Size = 8
    end
    object Table1BIRTH_PLAC: TStringField
      DisplayWidth = 13
      FieldName = 'BIRTH_PLAC'
      Size = 10
    end
    object Table1RELIGION: TStringField
      DisplayWidth = 10
      FieldName = 'RELIGION'
      Size = 5
    end
  end
  object ADOConnection1: TADOConnection
    Connected = True
    ConnectionString = 
      'Provider=SQLOLEDB.1;Persist Security Info=False;User ID=sa;Initi' +
      'al Catalog=his1;Data Source=ZOGHAL'
    LoginPrompt = False
    Provider = 'SQLOLEDB.1'
    Left = 24
    Top = 328
  end
  object ADOCommand1: TADOCommand
    Connection = ADOConnection1
    Parameters = <>
    Left = 56
    Top = 328
  end
end
