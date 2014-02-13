object chartForm: TchartForm
  Left = 565
  Top = 205
  Width = 367
  Height = 144
  BiDiMode = bdRightToLeft
  Caption = 'chart'
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
    Left = 214
    Top = 16
    Width = 138
    Height = 13
    Caption = #1605#1588#1575#1607#1583#1607' '#1570#1605#1575#1585' '#1607#1578#1604' '#1607#1575#1610' '#1583#1585#1580#1607' :'
  end
  object SpeedButton3: TSpeedButton
    Left = 92
    Top = 40
    Width = 161
    Height = 41
    Caption = #1605#1588#1575#1607#1583#1607
    OnClick = SpeedButton3Click
  end
  object DBLookupComboBox1: TDBLookupComboBox
    Left = 66
    Top = 11
    Width = 145
    Height = 21
    KeyField = 'star'
    ListField = 'star'
    ListSource = DataSource1
    TabOrder = 0
  end
  object DataSource1: TDataSource
    DataSet = ADODataSet1
    Left = 32
  end
  object ADODataSet1: TADODataSet
    Active = True
    Connection = MainForm.ADOConnection1
    CursorType = ctStatic
    CommandText = 'select DISTINCT  star  from hotel'
    Parameters = <>
  end
end
