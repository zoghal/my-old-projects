object SelectForm: TSelectForm
  Left = 394
  Top = 95
  BiDiMode = bdRightToLeft
  BorderStyle = bsDialog
  Caption = #1583#1604#1582#1608#1575#1607
  ClientHeight = 306
  ClientWidth = 492
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
  object BitBtn1: TBitBtn
    Left = 208
    Top = 88
    Width = 79
    Height = 25
    Caption = #1575#1606#1578#1582#1575#1576
    Font.Charset = ARABIC_CHARSET
    Font.Color = clWindowText
    Font.Height = -11
    Font.Name = 'Tahoma'
    Font.Style = []
    ParentFont = False
    TabOrder = 0
    OnClick = BitBtn1Click
  end
  object BitBtn2: TBitBtn
    Left = 208
    Top = 128
    Width = 79
    Height = 25
    Caption = #1581#1584#1601
    Font.Charset = ARABIC_CHARSET
    Font.Color = clWindowText
    Font.Height = -11
    Font.Name = 'Tahoma'
    Font.Style = []
    ParentFont = False
    TabOrder = 1
    OnClick = BitBtn2Click
  end
  object GroupBox1: TGroupBox
    Left = 290
    Top = 0
    Width = 202
    Height = 306
    Align = alRight
    Caption = #1601#1610#1604#1583#1607#1575#1610' '#1580#1583#1608#1604' '#1575#1589#1604#1610
    Font.Charset = ARABIC_CHARSET
    Font.Color = clWindowText
    Font.Height = -11
    Font.Name = 'Tahoma'
    Font.Style = []
    ParentFont = False
    TabOrder = 2
    object ListBox1: TListBox
      Left = 2
      Top = 15
      Width = 198
      Height = 289
      Align = alClient
      ItemHeight = 13
      MultiSelect = True
      TabOrder = 0
    end
  end
  object GroupBox2: TGroupBox
    Left = 0
    Top = 0
    Width = 202
    Height = 306
    Align = alLeft
    Caption = #1601#1610#1604#1583#1607#1575#1610' '#1580#1583#1608#1604' '#1583#1604#1582#1608#1575#1607
    Font.Charset = ARABIC_CHARSET
    Font.Color = clWindowText
    Font.Height = -11
    Font.Name = 'Tahoma'
    Font.Style = []
    ParentFont = False
    TabOrder = 3
    object ListBox2: TListBox
      Left = 2
      Top = 15
      Width = 198
      Height = 289
      Align = alLeft
      ItemHeight = 13
      MultiSelect = True
      TabOrder = 0
    end
  end
  object BitBtn3: TBitBtn
    Left = 208
    Top = 168
    Width = 79
    Height = 25
    Caption = #1578#1576#1583#1610#1604
    Font.Charset = ARABIC_CHARSET
    Font.Color = clWindowText
    Font.Height = -11
    Font.Name = 'Tahoma'
    Font.Style = []
    ParentFont = False
    TabOrder = 4
    OnClick = BitBtn3Click
  end
end
