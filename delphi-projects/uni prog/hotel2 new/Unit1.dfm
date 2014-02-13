object MainForm: TMainForm
  Left = 167
  Top = 165
  Width = 870
  Height = 500
  BiDiMode = bdRightToLeft
  Caption = 'MainForm'
  Color = clGradientInactiveCaption
  Font.Charset = ARABIC_CHARSET
  Font.Color = clNavy
  Font.Height = -13
  Font.Name = 'Tahoma'
  Font.Style = [fsBold]
  OldCreateOrder = False
  ParentBiDiMode = False
  Position = poScreenCenter
  PixelsPerInch = 96
  TextHeight = 16
  object SpeedButton1: TSpeedButton
    Left = 704
    Top = 40
    Width = 137
    Height = 41
    Caption = #1607#1578#1604
    OnClick = SpeedButton1Click
  end
  object SpeedButton2: TSpeedButton
    Left = 536
    Top = 40
    Width = 153
    Height = 41
    Caption = #1575#1578#1575#1602
    OnClick = SpeedButton2Click
  end
  object SpeedButton3: TSpeedButton
    Left = 360
    Top = 40
    Width = 161
    Height = 41
    Caption = #1605#1587#1575#1601#1585'/ '#1585#1586#1585#1608
    OnClick = SpeedButton3Click
  end
  object SpeedButton4: TSpeedButton
    Left = 64
    Top = 384
    Width = 161
    Height = 41
    Caption = #1582#1585#1608#1580
    OnClick = SpeedButton4Click
  end
  object SpeedButton5: TSpeedButton
    Left = 40
    Top = 40
    Width = 137
    Height = 41
    Caption = #1582#1583#1605#1575#1578
    OnClick = SpeedButton5Click
  end
  object SpeedButton6: TSpeedButton
    Left = 640
    Top = 384
    Width = 169
    Height = 41
    Caption = #1578#1582#1601#1610#1601
    OnClick = SpeedButton6Click
  end
  object SpeedButton7: TSpeedButton
    Left = 192
    Top = 40
    Width = 153
    Height = 41
    Caption = #1589#1608#1585#1578' '#1581#1587#1575#1576
    OnClick = SpeedButton7Click
  end
  object SpeedButton8: TSpeedButton
    Left = 336
    Top = 384
    Width = 217
    Height = 41
    Caption = #1604#1610#1587#1578' '#1578#1582#1601#1610#1601#1575#1578' '#1576#1585' '#1575#1587#1575#1587' '#1585#1606#1580
    OnClick = SpeedButton8Click
  end
  object Label4: TLabel
    Left = 228
    Top = 208
    Width = 257
    Height = 42
    Caption = #1585#1586#1585#1608#1575#1587#1610#1608#1606' '#1607#1578#1604
    Font.Charset = ARABIC_CHARSET
    Font.Color = clRed
    Font.Height = -35
    Font.Name = 'Tahoma'
    Font.Style = [fsBold]
    ParentFont = False
  end
  object Label3: TLabel
    Left = 497
    Top = 210
    Width = 132
    Height = 42
    Caption = #1587#1610#1587#1578#1605
    Font.Charset = ARABIC_CHARSET
    Font.Color = clRed
    Font.Height = -35
    Font.Name = 'Tahoma'
    Font.Style = [fsBold]
    ParentFont = False
  end
  object SpeedButton9: TSpeedButton
    Left = 336
    Top = 312
    Width = 217
    Height = 41
    Caption = #1605#1588#1575#1607#1583#1607' '#1570#1605#1575#1585' '#1607#1578#1604' '#1607#1575#1610' '#1583#1585#1580#1607' '
    OnClick = SpeedButton9Click
  end
  object ADOConnection1: TADOConnection
    Connected = True
    ConnectionString = 
      'Provider=SQLOLEDB.1;Integrated Security=SSPI;Persist Security In' +
      'fo=False;Initial Catalog=hotel;Data Source=saleh'
    LoginPrompt = False
    Provider = 'SQLOLEDB.1'
    Left = 40
    Top = 304
  end
  object ADOCommand1: TADOCommand
    Connection = ADOConnection1
    Parameters = <>
    Left = 72
    Top = 312
  end
end
