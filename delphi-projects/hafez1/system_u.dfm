object SystemForm: TSystemForm
  Left = 322
  Top = 240
  BiDiMode = bdRightToLeft
  BorderStyle = bsToolWindow
  Caption = '����� ���� �� �������� ����� ���� �����'
  ClientHeight = 120
  ClientWidth = 554
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
  object Shape1: TShape
    Left = 0
    Top = 0
    Width = 554
    Height = 42
  end
  object Label1: TLabel
    Left = 431
    Top = 5
    Width = 118
    Height = 29
    Caption = '������ ����� :'
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
    Left = 482
    Top = 48
    Width = 66
    Height = 29
    Caption = '������� :'
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
      '����� '
      '�� �� ��'
      '������ �����'
      '������ ������')
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
    Caption = '���� ���� ���'
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
    Caption = ' ��� � ����'
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
