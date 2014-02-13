object mss: Tmss
  Left = 252
  Top = 148
  Width = 696
  Height = 480
  Caption = 'mss'
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'MS Sans Serif'
  Font.Style = []
  OldCreateOrder = False
  Visible = True
  PixelsPerInch = 96
  TextHeight = 13
  object Label1: TLabel
    Left = 272
    Top = 22
    Width = 26
    Height = 13
    Caption = 'hwnd'
  end
  object Label2: TLabel
    Left = 248
    Top = 52
    Width = 49
    Height = 13
    Caption = 'NAm Form'
  end
  object Label3: TLabel
    Left = 272
    Top = 240
    Width = 21
    Height = 13
    Caption = 'xxx :'
  end
  object Edit1: TEdit
    Left = 304
    Top = 48
    Width = 209
    Height = 21
    TabOrder = 0
    Text = 'Edit1'
  end
  object Button1: TButton
    Left = 584
    Top = 16
    Width = 75
    Height = 25
    Caption = 'Find Window'
    TabOrder = 1
    OnClick = Button1Click
  end
  object Edit2: TEdit
    Left = 304
    Top = 16
    Width = 73
    Height = 21
    TabOrder = 2
    Text = 'Edit2'
  end
  object Memo1: TMemo
    Left = 24
    Top = 72
    Width = 193
    Height = 305
    Lines.Strings = (
      'Memo1')
    TabOrder = 3
  end
  object Button2: TButton
    Left = 584
    Top = 56
    Width = 75
    Height = 25
    Caption = 'cls'
    TabOrder = 4
    OnClick = Button2Click
  end
  object Edit3: TEdit
    Left = 320
    Top = 240
    Width = 121
    Height = 21
    TabOrder = 5
    Text = 'Edit3'
  end
end
