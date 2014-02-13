object Form1: TForm1
  Left = 192
  Top = 107
  Width = 696
  Height = 480
  Caption = 'Form1'
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'MS Sans Serif'
  Font.Style = []
  OldCreateOrder = False
  PixelsPerInch = 96
  TextHeight = 13
  object Button1: TButton
    Left = 264
    Top = 168
    Width = 75
    Height = 25
    Caption = #182
    TabOrder = 0
    OnClick = Button1Click
  end
  object Edit1: TEdit
    Left = 296
    Top = 88
    Width = 121
    Height = 21
    TabOrder = 1
    Text = #1576#1575#1576#1575' '#1570#1576
  end
  object Memo1: TMemo
    Left = 48
    Top = 80
    Width = 185
    Height = 217
    Lines.Strings = (
      '')
    TabOrder = 2
  end
  object Edit2: TEdit
    Left = 344
    Top = 240
    Width = 121
    Height = 21
    TabOrder = 3
    Text = 'Edit2'
    OnKeyPress = Edit2KeyPress
  end
end
