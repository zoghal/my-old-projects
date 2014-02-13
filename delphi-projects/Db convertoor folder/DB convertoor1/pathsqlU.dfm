object pathsql: Tpathsql
  Left = 533
  Top = 138
  Width = 253
  Height = 197
  BiDiMode = bdRightToLeft
  BorderWidth = 1
  Caption = #1605#1587#1610#1585' '#1580#1575#1585#1610' '#1575#1587' '#1603#1610#1608' '#1587#1585#1608#1585
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
  object SpeedButton1: TSpeedButton
    Left = 38
    Top = 127
    Width = 175
    Height = 30
    Caption = #1578#1575#1574#1610#1583
    Flat = True
    Font.Charset = ARABIC_CHARSET
    Font.Color = clWindowText
    Font.Height = -21
    Font.Name = 'Tahoma'
    Font.Style = [fsItalic]
    ParentFont = False
    OnClick = SpeedButton1Click
  end
  object GroupBox1: TGroupBox
    Left = 0
    Top = 0
    Width = 243
    Height = 121
    Align = alTop
    Caption = #1578#1606#1592#1610#1605#1575#1578
    Color = clBtnFace
    Ctl3D = True
    Font.Charset = ARABIC_CHARSET
    Font.Color = clWindowText
    Font.Height = -11
    Font.Name = 'Tahoma'
    Font.Style = []
    ParentColor = False
    ParentCtl3D = False
    ParentFont = False
    TabOrder = 0
    object Label1: TLabel
      Left = 178
      Top = 19
      Width = 51
      Height = 13
      Caption = #1606#1575#1605' '#1587#1585#1608#1585' : '
      Font.Charset = ARABIC_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'Tahoma'
      Font.Style = []
      ParentFont = False
    end
    object Label2: TLabel
      Left = 189
      Top = 43
      Width = 40
      Height = 13
      Caption = #1606#1575#1605' '#1603#1575#1585#1576#1585':'
      Font.Charset = ARABIC_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'Tahoma'
      Font.Style = []
      ParentFont = False
    end
    object Label3: TLabel
      Left = 187
      Top = 67
      Width = 42
      Height = 13
      Caption = #1585#1605#1586' '#1593#1576#1608#1585':'
      Font.Charset = ARABIC_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'Tahoma'
      Font.Style = []
      ParentFont = False
    end
    object Label4: TLabel
      Left = 170
      Top = 91
      Width = 59
      Height = 13
      Caption = #1606#1575#1605' '#1583#1610#1578#1575' '#1576#1610#1587':'
      Font.Charset = ARABIC_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'Tahoma'
      Font.Style = []
      ParentFont = False
    end
    object DBEdit1: TDBEdit
      Left = 8
      Top = 16
      Width = 153
      Height = 21
      DataField = 'Sever'
      DataSource = Mainform.DataSource3
      TabOrder = 0
    end
    object DBEdit2: TDBEdit
      Left = 8
      Top = 40
      Width = 153
      Height = 21
      DataField = 'User'
      DataSource = Mainform.DataSource3
      TabOrder = 1
    end
    object DBEdit3: TDBEdit
      Left = 8
      Top = 64
      Width = 153
      Height = 21
      DataField = 'Pass'
      DataSource = Mainform.DataSource3
      TabOrder = 2
    end
    object DBEdit4: TDBEdit
      Left = 8
      Top = 88
      Width = 153
      Height = 21
      DataField = 'DataBase'
      DataSource = Mainform.DataSource3
      TabOrder = 3
    end
  end
end
