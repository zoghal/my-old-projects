object MainForm: TMainForm
  Left = 296
  Top = 120
  Width = 870
  Height = 500
  BiDiMode = bdRightToLeft
  Caption = 'MainForm'
  Color = clBtnFace
  Font.Charset = ARABIC_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'Tahoma'
  Font.Style = []
  OldCreateOrder = False
  ParentBiDiMode = False
  PixelsPerInch = 96
  TextHeight = 13
  object SpeedButton1: TSpeedButton
    Left = 656
    Top = 24
    Width = 185
    Height = 57
    Caption = #1607#1578#1604
    OnClick = SpeedButton1Click
  end
  object SpeedButton2: TSpeedButton
    Left = 464
    Top = 24
    Width = 185
    Height = 57
    Caption = #1575#1578#1575#1602
    OnClick = SpeedButton2Click
  end
  object SpeedButton3: TSpeedButton
    Left = 264
    Top = 24
    Width = 185
    Height = 57
    Caption = #1605#1587#1575#1601#1585'/ '#1585#1586#1585#1608
    OnClick = SpeedButton3Click
  end
  object SpeedButton4: TSpeedButton
    Left = 64
    Top = 24
    Width = 185
    Height = 57
    Caption = #1605#1587#1575#1601#1585'/ '#1585#1586#1585#1608
    OnClick = SpeedButton3Click
  end
  object SpeedButton5: TSpeedButton
    Left = 656
    Top = 88
    Width = 185
    Height = 57
    Caption = #1582#1583#1605#1575#1578
    OnClick = SpeedButton5Click
  end
  object SpeedButton6: TSpeedButton
    Left = 464
    Top = 88
    Width = 185
    Height = 57
    Caption = #1578#1582#1601#1610#1601
    OnClick = SpeedButton6Click
  end
  object SpeedButton7: TSpeedButton
    Left = 264
    Top = 88
    Width = 185
    Height = 57
    Caption = #1589#1608#1585#1578' '#1581#1587#1575#1576
    OnClick = SpeedButton7Click
  end
  object SpeedButton8: TSpeedButton
    Left = 64
    Top = 88
    Width = 185
    Height = 57
    Caption = #1604#1610#1587#1578' '#1578#1582#1601#1610#1601#1575#1578' '#1576#1585' '#1575#1587#1575#1587' '#1585#1606#1580
    OnClick = SpeedButton8Click
  end
  object ADOConnection1: TADOConnection
    Connected = True
    ConnectionString = 
      'Provider=SQLOLEDB.1;Integrated Security=SSPI;Persist Security In' +
      'fo=False;Initial Catalog=hotel;Data Source=SALEH'
    LoginPrompt = False
    Provider = 'SQLOLEDB.1'
    Left = 32
    Top = 416
  end
  object ADOCommand1: TADOCommand
    Connection = ADOConnection1
    Parameters = <>
    Left = 72
    Top = 416
  end
end
