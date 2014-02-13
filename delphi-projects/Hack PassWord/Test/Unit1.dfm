object Form1: TForm1
  Left = 317
  Top = 88
  Width = 352
  Height = 465
  Caption = 'Sorting number'
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'MS Sans Serif'
  Font.Style = []
  OldCreateOrder = False
  PixelsPerInch = 96
  TextHeight = 13
  object Label1: TLabel
    Left = 5
    Top = 8
    Width = 101
    Height = 25
    Caption = 'Number1 :'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -20
    Font.Name = 'MS Sans Serif'
    Font.Style = [fsBold]
    ParentFont = False
  end
  object Label2: TLabel
    Left = 5
    Top = 40
    Width = 101
    Height = 25
    Caption = 'Number2 :'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -20
    Font.Name = 'MS Sans Serif'
    Font.Style = [fsBold]
    ParentFont = False
  end
  object Label3: TLabel
    Left = 5
    Top = 72
    Width = 101
    Height = 25
    Caption = 'Number3 :'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -20
    Font.Name = 'MS Sans Serif'
    Font.Style = [fsBold]
    ParentFont = False
  end
  object Label4: TLabel
    Left = 5
    Top = 104
    Width = 101
    Height = 25
    Caption = 'Number4 :'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -20
    Font.Name = 'MS Sans Serif'
    Font.Style = [fsBold]
    ParentFont = False
  end
  object Label5: TLabel
    Left = 5
    Top = 136
    Width = 101
    Height = 25
    Caption = 'Number5 :'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -20
    Font.Name = 'MS Sans Serif'
    Font.Style = [fsBold]
    ParentFont = False
  end
  object Label6: TLabel
    Left = 5
    Top = 216
    Width = 76
    Height = 25
    Caption = 'Number'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -20
    Font.Name = 'MS Sans Serif'
    Font.Style = [fsBold]
    ParentFont = False
  end
  object Label7: TLabel
    Left = 5
    Top = 248
    Width = 76
    Height = 25
    Caption = 'Number'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -20
    Font.Name = 'MS Sans Serif'
    Font.Style = [fsBold]
    ParentFont = False
  end
  object Label8: TLabel
    Left = 5
    Top = 280
    Width = 76
    Height = 25
    Caption = 'Number'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -20
    Font.Name = 'MS Sans Serif'
    Font.Style = [fsBold]
    ParentFont = False
  end
  object Label9: TLabel
    Left = 5
    Top = 312
    Width = 76
    Height = 25
    Caption = 'Number'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -20
    Font.Name = 'MS Sans Serif'
    Font.Style = [fsBold]
    ParentFont = False
  end
  object Label10: TLabel
    Left = 5
    Top = 344
    Width = 76
    Height = 25
    Caption = 'Number'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -20
    Font.Name = 'MS Sans Serif'
    Font.Style = [fsBold]
    ParentFont = False
  end
  object Gauge1: TGauge
    Left = 182
    Top = 219
    Width = 124
    Height = 23
    Progress = 0
  end
  object Gauge2: TGauge
    Left = 182
    Top = 251
    Width = 124
    Height = 23
    Progress = 0
  end
  object Gauge3: TGauge
    Left = 182
    Top = 284
    Width = 124
    Height = 23
    Progress = 0
  end
  object Gauge4: TGauge
    Left = 182
    Top = 316
    Width = 124
    Height = 23
    Progress = 0
  end
  object Gauge5: TGauge
    Left = 182
    Top = 348
    Width = 124
    Height = 23
    Progress = 0
  end
  object Edit1: TEdit
    Left = 110
    Top = 11
    Width = 121
    Height = 21
    TabOrder = 0
    Text = '0'
  end
  object Edit2: TEdit
    Left = 110
    Top = 43
    Width = 121
    Height = 21
    TabOrder = 1
    Text = '0'
  end
  object Edit3: TEdit
    Left = 110
    Top = 75
    Width = 121
    Height = 21
    TabOrder = 2
    Text = '0'
  end
  object Edit4: TEdit
    Left = 110
    Top = 107
    Width = 121
    Height = 21
    TabOrder = 3
    Text = '0'
  end
  object Edit5: TEdit
    Left = 110
    Top = 139
    Width = 121
    Height = 21
    TabOrder = 4
    Text = '0'
  end
  object Button1: TButton
    Left = 192
    Top = 392
    Width = 75
    Height = 25
    Caption = 'Process'
    TabOrder = 5
    OnClick = Button1Click
  end
  object Button2: TButton
    Left = 40
    Top = 392
    Width = 75
    Height = 25
    Caption = 'REset'
    TabOrder = 6
    OnClick = Button2Click
  end
end
