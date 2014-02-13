object SystemForm: TSystemForm
  Left = 322
  Top = 240
  BiDiMode = bdRightToLeft
  BorderStyle = bsToolWindow
  Caption = #1575#1590#1575#1601#1607' '#1603#1585#1583#1606' '#1576#1607' '#1587#1610#1587#1578#1605#8204#1607#1575#1610' '#1570#1605#1575#1583#1607' '#1576#1585#1575#1610' '#1603#1585#1575#1610#1607
  ClientHeight = 120
  ClientWidth = 554
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
  object Shape1: TShape
    Left = 0
    Top = 0
    Width = 554
    Height = 42
  end
  object Label1: TLabel
    Left = 450
    Top = 5
    Width = 99
    Height = 19
    Caption = #1605#1588#1582#1589#1575#1578' '#1587#1610#1587#1578#1605' :'
    Color = clHighlightText
    Font.Charset = ARABIC_CHARSET
    Font.Color = clGreen
    Font.Height = -16
    Font.Name = 'Traffic'
    Font.Style = [fsBold]
    ParentColor = False
    ParentFont = False
  end
  object Shape3: TShape
    Left = 0
    Top = 42
    Width = 554
    Height = 42
  end
  object Label3: TLabel
    Left = 488
    Top = 48
    Width = 60
    Height = 19
    Caption = #1605#1604#1575#1581#1590#1575#1578' :'
    Color = clHighlightText
    Font.Charset = ARABIC_CHARSET
    Font.Color = clGreen
    Font.Height = -16
    Font.Name = 'Traffic'
    Font.Style = [fsBold]
    ParentColor = False
    ParentFont = False
  end
  object DBComboBox1: TDBComboBox
    Left = 8
    Top = 7
    Width = 420
    Height = 28
    Color = 16748945
    DataField = 'Type'
    DataSource = List_system.DataSource1
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWhite
    Font.Height = -16
    Font.Name = 'MS Sans Serif'
    Font.Style = [fsBold]
    ItemHeight = 20
    Items.Strings = (
      #1608#1610#1583#1574#1608' '
      #1608#1610' '#1587#1610' '#1583#1610
      #1583#1608#1585#1576#1610#1606' '#1593#1603#1575#1587#1610
      #1583#1608#1585#1576#1610#1606' '#1607#1606#1583#1610#8204#1603#1605)
    ParentFont = False
    TabOrder = 0
  end
  object DBEdit2: TDBEdit
    Left = 8
    Top = 50
    Width = 469
    Height = 28
    Color = 16748945
    DataField = 'Note'
    DataSource = List_system.DataSource1
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWhite
    Font.Height = -16
    Font.Name = 'MS Sans Serif'
    Font.Style = [fsBold]
    ParentFont = False
    TabOrder = 1
  end
  object BitBtn1: TBitBtn
    Left = 1
    Top = 86
    Width = 249
    Height = 33
    Caption = #1582#1585#1608#1580' '#1576#1583#1608#1606' '#1579#1576#1578
    Font.Charset = ARABIC_CHARSET
    Font.Color = clYellow
    Font.Height = -16
    Font.Name = 'Jadid'
    Font.Style = [fsBold]
    ParentFont = False
    TabOrder = 2
    OnClick = BitBtn1Click
    Kind = bkCancel
  end
  object BitBtn2: TBitBtn
    Left = 303
    Top = 86
    Width = 249
    Height = 33
    Caption = ' '#1579#1576#1578' '#1608' '#1582#1585#1608#1580
    Font.Charset = ARABIC_CHARSET
    Font.Color = clYellow
    Font.Height = -16
    Font.Name = 'Jadid'
    Font.Style = [fsBold]
    ParentFont = False
    TabOrder = 3
    OnClick = BitBtn2Click
    Kind = bkOK
  end
end
