object HotelForm: THotelForm
  Left = 236
  Top = 356
  Width = 870
  Height = 500
  BiDiMode = bdRightToLeft
  Caption = 'HotelForm'
  Color = clInfoBk
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
    Left = 636
    Top = 24
    Width = 43
    Height = 13
    Caption = #1606#1575#1605' '#1607#1578#1604' :'
  end
  object Label2: TLabel
    Left = 431
    Top = 24
    Width = 32
    Height = 13
    Caption = #1588#1607#1585' : '
  end
  object Label3: TLabel
    Left = 210
    Top = 24
    Width = 29
    Height = 13
    Caption = #1583#1585#1580#1607' :'
  end
  object SpeedButton1: TSpeedButton
    Left = 680
    Top = 56
    Width = 143
    Height = 41
    Caption = #1575#1590#1575#1601#1607
    Font.Charset = ARABIC_CHARSET
    Font.Color = clNavy
    Font.Height = -13
    Font.Name = 'Tahoma'
    Font.Style = []
    ParentFont = False
    OnClick = SpeedButton1Click
  end
  object SpeedButton2: TSpeedButton
    Left = 512
    Top = 56
    Width = 143
    Height = 41
    Caption = #1579#1576#1578
    Font.Charset = ARABIC_CHARSET
    Font.Color = clNavy
    Font.Height = -13
    Font.Name = 'Tahoma'
    Font.Style = []
    ParentFont = False
    OnClick = SpeedButton2Click
  end
  object Label4: TLabel
    Left = 762
    Top = 24
    Width = 41
    Height = 13
    Caption = #1705#1583' '#1607#1578#1604' :'
  end
  object SpeedButton3: TSpeedButton
    Left = 344
    Top = 56
    Width = 143
    Height = 41
    Caption = #1608#1610#1585#1575#1610#1588
    Font.Charset = ARABIC_CHARSET
    Font.Color = clNavy
    Font.Height = -13
    Font.Name = 'Tahoma'
    Font.Style = []
    ParentFont = False
    OnClick = SpeedButton3Click
  end
  object SpeedButton4: TSpeedButton
    Left = 176
    Top = 56
    Width = 143
    Height = 41
    Caption = #1581#1584#1601
    Font.Charset = ARABIC_CHARSET
    Font.Color = clNavy
    Font.Height = -13
    Font.Name = 'Tahoma'
    Font.Style = []
    ParentFont = False
    OnClick = SpeedButton4Click
  end
  object SpeedButton5: TSpeedButton
    Left = 16
    Top = 56
    Width = 143
    Height = 41
    Caption = #1576#1575#1586#1711#1588#1578
    Font.Charset = ARABIC_CHARSET
    Font.Color = clNavy
    Font.Height = -13
    Font.Name = 'Tahoma'
    Font.Style = []
    ParentFont = False
    OnClick = SpeedButton5Click
  end
  object Label5: TLabel
    Left = 588
    Top = 432
    Width = 43
    Height = 13
    Caption = #1606#1575#1605' '#1607#1578#1604' :'
  end
  object SpeedButton6: TSpeedButton
    Left = 288
    Top = 416
    Width = 143
    Height = 41
    Caption = #1580#1587#1578#1580#1608
    Font.Charset = ARABIC_CHARSET
    Font.Color = clNavy
    Font.Height = -13
    Font.Name = 'Tahoma'
    Font.Style = []
    ParentFont = False
    OnClick = SpeedButton6Click
  end
  object DBGrid1: TDBGrid
    Left = 96
    Top = 160
    Width = 673
    Height = 241
    Color = clInactiveCaption
    DataSource = DataSource1
    Options = [dgTitles, dgIndicator, dgColumnResize, dgColLines, dgRowLines, dgTabs, dgRowSelect, dgConfirmDelete, dgCancelOnExit]
    ReadOnly = True
    TabOrder = 0
    TitleFont.Charset = ARABIC_CHARSET
    TitleFont.Color = clWindowText
    TitleFont.Height = -11
    TitleFont.Name = 'Tahoma'
    TitleFont.Style = []
    OnCellClick = DBGrid1CellClick
    Columns = <
      item
        Expanded = False
        FieldName = 'id'
        Title.Alignment = taCenter
        Title.Caption = #1705#1583' '#1607#1578#1604
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'name'
        Title.Alignment = taCenter
        Title.Caption = #1606#1575#1605' '#1607#1578#1604
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'star'
        Title.Alignment = taCenter
        Title.Caption = #1583#1585#1580#1607
        Width = 84
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'city'
        Title.Alignment = taCenter
        Title.Caption = #1588#1607#1585
        Visible = True
      end>
  end
  object Edit1: TEdit
    Left = 508
    Top = 21
    Width = 121
    Height = 21
    Color = cl3DLight
    TabOrder = 1
  end
  object Edit2: TEdit
    Left = 292
    Top = 21
    Width = 121
    Height = 21
    Color = cl3DLight
    TabOrder = 2
  end
  object Edit3: TEdit
    Left = 68
    Top = 21
    Width = 121
    Height = 21
    Color = cl3DLight
    TabOrder = 3
  end
  object Edit4: TEdit
    Left = 720
    Top = 21
    Width = 33
    Height = 21
    Color = cl3DLight
    ReadOnly = True
    TabOrder = 4
  end
  object Edit5: TEdit
    Left = 448
    Top = 432
    Width = 137
    Height = 21
    Color = cl3DLight
    TabOrder = 5
  end
  object ADODataSet1: TADODataSet
    Active = True
    Connection = MainForm.ADOConnection1
    CursorType = ctStatic
    CommandText = 'select * from hotel'
    Parameters = <>
    Top = 72
  end
  object DataSource1: TDataSource
    DataSet = ADODataSet1
    Left = 32
    Top = 72
  end
end