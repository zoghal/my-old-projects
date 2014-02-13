object Form4: TForm4
  Left = 265
  Top = 340
  Width = 1093
  Height = 397
  Caption = 'Form4'
  Color = clActiveCaption
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'MS Sans Serif'
  Font.Style = []
  OldCreateOrder = False
  PixelsPerInch = 96
  TextHeight = 13
  object Label1: TLabel
    Left = 32
    Top = 272
    Width = 50
    Height = 16
    Caption = 'Name :'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWhite
    Font.Height = -13
    Font.Name = 'MS Sans Serif'
    Font.Style = [fsBold]
    ParentFont = False
  end
  object Label2: TLabel
    Left = 248
    Top = 272
    Width = 55
    Height = 16
    Caption = 'Family :'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWhite
    Font.Height = -13
    Font.Name = 'MS Sans Serif'
    Font.Style = [fsBold]
    ParentFont = False
  end
  object Label3: TLabel
    Left = 496
    Top = 272
    Width = 32
    Height = 16
    Caption = 'Tel :'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWhite
    Font.Height = -13
    Font.Name = 'MS Sans Serif'
    Font.Style = [fsBold]
    ParentFont = False
  end
  object Label4: TLabel
    Left = 680
    Top = 272
    Width = 48
    Height = 16
    Caption = 'mobile'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWhite
    Font.Height = -13
    Font.Name = 'MS Sans Serif'
    Font.Style = [fsBold]
    ParentFont = False
  end
  object Label5: TLabel
    Left = 880
    Top = 272
    Width = 34
    Height = 16
    Caption = 'Fax :'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWhite
    Font.Height = -13
    Font.Name = 'MS Sans Serif'
    Font.Style = [fsBold]
    ParentFont = False
  end
  object Label6: TLabel
    Left = 32
    Top = 304
    Width = 59
    Height = 16
    Caption = 'Address'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWhite
    Font.Height = -13
    Font.Name = 'MS Sans Serif'
    Font.Style = [fsBold]
    ParentFont = False
  end
  object DBGrid1: TDBGrid
    Left = 5
    Top = 5
    Width = 1073
    Height = 252
    DataSource = DataSource1
    TabOrder = 0
    TitleFont.Charset = DEFAULT_CHARSET
    TitleFont.Color = clWindowText
    TitleFont.Height = -11
    TitleFont.Name = 'MS Sans Serif'
    TitleFont.Style = []
  end
  object Edit1: TEdit
    Left = 80
    Top = 270
    Width = 161
    Height = 21
    TabOrder = 1
    OnChange = Edit1Change
  end
  object Edit2: TEdit
    Left = 304
    Top = 270
    Width = 188
    Height = 21
    TabOrder = 2
    OnChange = Edit2Change
  end
  object Edit3: TEdit
    Left = 528
    Top = 270
    Width = 143
    Height = 21
    TabOrder = 3
    OnChange = Edit3Change
  end
  object Edit4: TEdit
    Left = 728
    Top = 270
    Width = 143
    Height = 21
    TabOrder = 4
    OnChange = Edit4Change
  end
  object Edit5: TEdit
    Left = 920
    Top = 270
    Width = 143
    Height = 21
    TabOrder = 5
    OnChange = Edit5Change
  end
  object Edit6: TEdit
    Left = 91
    Top = 303
    Width = 974
    Height = 21
    TabOrder = 6
    OnChange = Edit6Change
  end
  object Button1: TButton
    Left = 472
    Top = 328
    Width = 75
    Height = 25
    Caption = 'Exit'
    TabOrder = 7
    OnClick = Button1Click
  end
  object ADOQuery1: TADOQuery
    Active = True
    ConnectionString = 
      'Provider=Microsoft.Jet.OLEDB.4.0;Data Source=db1.mdb;Persist Sec' +
      'urity Info=False'
    CursorType = ctStatic
    Parameters = <>
    SQL.Strings = (
      'select * from tel')
    Left = 24
    Top = 328
  end
  object DataSource1: TDataSource
    DataSet = ADOQuery1
    Left = 56
    Top = 328
  end
end
