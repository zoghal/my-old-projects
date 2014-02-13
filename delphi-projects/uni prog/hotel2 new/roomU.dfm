object RoomForm: TRoomForm
  Left = 81
  Top = 150
  Width = 870
  Height = 500
  BiDiMode = bdRightToLeft
  Caption = 'RoomForm'
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
    Left = 499
    Top = 27
    Width = 52
    Height = 13
    Caption = #1588#1605#1575#1585#1607' '#1575#1578#1575#1602
  end
  object Label2: TLabel
    Left = 240
    Top = 27
    Width = 26
    Height = 13
    Caption = #1602#1610#1605#1578
  end
  object Label3: TLabel
    Left = 771
    Top = 27
    Width = 36
    Height = 13
    Caption = #1606#1575#1605' '#1607#1578#1604
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
  object SpeedButton3: TSpeedButton
    Left = 350
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
    Left = 182
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
    Left = 22
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
  object DBLookupComboBox1: TDBLookupComboBox
    Left = 615
    Top = 24
    Width = 145
    Height = 21
    Color = cl3DLight
    KeyField = 'id'
    ListField = 'name'
    ListFieldIndex = 5
    ListSource = DataSource1
    TabOrder = 0
  end
  object DBGrid1: TDBGrid
    Left = 48
    Top = 112
    Width = 753
    Height = 169
    Color = clInactiveCaption
    DataSource = DataSource2
    Options = [dgTitles, dgIndicator, dgColumnResize, dgColLines, dgRowLines, dgTabs, dgRowSelect, dgConfirmDelete, dgCancelOnExit]
    TabOrder = 1
    TitleFont.Charset = ARABIC_CHARSET
    TitleFont.Color = clWindowText
    TitleFont.Height = -11
    TitleFont.Name = 'Tahoma'
    TitleFont.Style = []
    OnCellClick = DBGrid1CellClick
    Columns = <
      item
        Expanded = False
        FieldName = 'name'
        Title.Alignment = taCenter
        Title.Caption = #1606#1575#1605' '#1607#1578#1604
        Width = 277
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'room_num'
        Title.Alignment = taCenter
        Title.Caption = #1588#1605#1575#1585#1607' '#1575#1578#1575#1602
        Width = 215
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'price'
        Title.Alignment = taCenter
        Title.Caption = #1602#1610#1605#1578
        Width = 226
        Visible = True
      end>
  end
  object Edit1: TEdit
    Left = 371
    Top = 24
    Width = 121
    Height = 21
    Color = cl3DLight
    TabOrder = 2
  end
  object Edit2: TEdit
    Left = 100
    Top = 24
    Width = 121
    Height = 21
    Color = cl3DLight
    TabOrder = 3
  end
  object ADODataSet1: TADODataSet
    Active = True
    Connection = MainForm.ADOConnection1
    CursorType = ctStatic
    CommandText = 'select * from hotel'
    Parameters = <>
    Left = 40
    Top = 336
  end
  object ADODataSet2: TADODataSet
    Active = True
    Connection = MainForm.ADOConnection1
    CursorType = ctStatic
    CommandText = 'select * from  hotel,room where hotel.id=room.hotel_id'
    Parameters = <>
    Left = 40
    Top = 368
  end
  object DataSource1: TDataSource
    DataSet = ADODataSet1
    Left = 72
    Top = 336
  end
  object DataSource2: TDataSource
    DataSet = ADODataSet2
    Left = 72
    Top = 368
  end
end
