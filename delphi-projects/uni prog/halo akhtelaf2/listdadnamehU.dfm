object listdadnamehform: Tlistdadnamehform
  Left = 330
  Top = 206
  BiDiMode = bdRightToLeft
  BorderStyle = bsSingle
  Caption = #1583#1575#1583#1606#1575#1605#1607' '#1607#1575' ('#1604#1610#1587#1578' '#1662#1585#1608#1606#1583#1607' '#1607#1575#1610' '#1605#1582#1578#1608#1605#1607')'
  ClientHeight = 473
  ClientWidth = 862
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'MS Sans Serif'
  Font.Style = []
  OldCreateOrder = False
  ParentBiDiMode = False
  Position = poScreenCenter
  PixelsPerInch = 96
  TextHeight = 13
  object DBGrid1: TDBGrid
    Left = 0
    Top = 0
    Width = 862
    Height = 473
    Align = alClient
    DataSource = DataM.queryDS
    TabOrder = 0
    TitleFont.Charset = DEFAULT_CHARSET
    TitleFont.Color = clWindowText
    TitleFont.Height = -11
    TitleFont.Name = 'MS Sans Serif'
    TitleFont.Style = []
  end
end
