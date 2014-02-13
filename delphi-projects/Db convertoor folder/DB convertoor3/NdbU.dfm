object ndbForm: TndbForm
  Left = 277
  Top = 336
  BiDiMode = bdRightToLeft
  BorderStyle = bsDialog
  Caption = #1576#1575#1606#1603' '#1580#1583#1610#1583
  ClientHeight = 36
  ClientWidth = 290
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'MS Sans Serif'
  Font.Style = []
  OldCreateOrder = False
  ParentBiDiMode = False
  Position = poMainFormCenter
  PixelsPerInch = 96
  TextHeight = 13
  object NDBEdit: TEdit
    Left = 85
    Top = 7
    Width = 199
    Height = 21
    TabOrder = 0
    OnKeyPress = NDBEditKeyPress
  end
  object BitBtn1: TBitBtn
    Left = 5
    Top = 5
    Width = 75
    Height = 25
    Caption = #1578#1575#1574#1610#1583
    Font.Charset = ARABIC_CHARSET
    Font.Color = clWindowText
    Font.Height = -11
    Font.Name = 'Tahoma'
    Font.Style = []
    ParentFont = False
    TabOrder = 1
    OnClick = BitBtn1Click
  end
end
