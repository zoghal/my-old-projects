object Form3: TForm3
  Left = 136
  Top = 103
  Width = 1090
  Height = 239
  Caption = 'Form3'
  Color = clActiveCaption
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'MS Sans Serif'
  Font.Style = []
  OldCreateOrder = False
  PixelsPerInch = 96
  TextHeight = 13
  object DBGrid1: TDBGrid
    Left = 5
    Top = 8
    Width = 1073
    Height = 153
    DataSource = Form1.DataSource1
    Options = [dgTitles, dgIndicator, dgColumnResize, dgColLines, dgRowLines, dgTabs, dgRowSelect, dgConfirmDelete, dgCancelOnExit]
    TabOrder = 0
    TitleFont.Charset = DEFAULT_CHARSET
    TitleFont.Color = clWindowText
    TitleFont.Height = -11
    TitleFont.Name = 'MS Sans Serif'
    TitleFont.Style = []
  end
  object Button1: TButton
    Left = 472
    Top = 168
    Width = 75
    Height = 25
    Caption = 'Delete'
    TabOrder = 1
    OnClick = Button1Click
  end
end
