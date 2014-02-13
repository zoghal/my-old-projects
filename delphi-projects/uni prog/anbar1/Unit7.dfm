object mahsool: Tmahsool
  Left = 474
  Top = 237
  Width = 271
  Height = 289
  BiDiMode = bdRightToLeft
  Caption = 'mahsool'
  Color = clBtnFace
  Font.Charset = ARABIC_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'Tahoma'
  Font.Style = []
  OldCreateOrder = False
  ParentBiDiMode = False
  Position = poScreenCenter
  PixelsPerInch = 96
  TextHeight = 13
  object Label1: TLabel
    Left = 204
    Top = 144
    Width = 31
    Height = 13
    Caption = #1606#1575#1605' '#1705#1575#1604#1575
  end
  object DBGrid1: TDBGrid
    Left = 5
    Top = 6
    Width = 252
    Height = 120
    DataSource = data.DataSourcemahsool
    TabOrder = 0
    TitleFont.Charset = ARABIC_CHARSET
    TitleFont.Color = clWindowText
    TitleFont.Height = -11
    TitleFont.Name = 'Tahoma'
    TitleFont.Style = []
  end
  object DBEdit1: TDBEdit
    Left = 60
    Top = 141
    Width = 121
    Height = 21
    DataField = 'Name'
    DataSource = data.DataSourcemahsool
    TabOrder = 1
  end
  object DBNavigator1: TDBNavigator
    Left = 8
    Top = 200
    Width = 240
    Height = 25
    DataSource = data.DataSourcemahsool
    TabOrder = 2
  end
  object Button1: TButton
    Left = 88
    Top = 232
    Width = 75
    Height = 25
    Caption = #1576#1587#1578#1606
    TabOrder = 3
    OnClick = Button1Click
  end
end
