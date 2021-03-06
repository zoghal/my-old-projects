object RoomForm: TRoomForm
  Left = 342
  Top = 351
  Width = 870
  Height = 500
  BiDiMode = bdRightToLeft
  Caption = 'RoomForm'
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
  object Label1: TLabel
    Left = 603
    Top = 27
    Width = 52
    Height = 13
    Caption = #1588#1605#1575#1585#1607' '#1575#1578#1575#1602
  end
  object Label2: TLabel
    Left = 440
    Top = 27
    Width = 26
    Height = 13
    Caption = #1602#1610#1605#1578
  end
  object Label3: TLabel
    Left = 819
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
    OnClick = SpeedButton1Click
  end
  object SpeedButton2: TSpeedButton
    Left = 512
    Top = 56
    Width = 143
    Height = 41
    Caption = #1579#1576#1578
    OnClick = SpeedButton2Click
  end
  object SpeedButton3: TSpeedButton
    Left = 350
    Top = 56
    Width = 143
    Height = 41
    Caption = #1608#1610#1585#1575#1610#1588
    OnClick = SpeedButton3Click
  end
  object SpeedButton4: TSpeedButton
    Left = 182
    Top = 56
    Width = 143
    Height = 41
    Caption = #1581#1584#1601
    OnClick = SpeedButton4Click
  end
  object SpeedButton5: TSpeedButton
    Left = 22
    Top = 56
    Width = 143
    Height = 41
    Caption = #1576#1575#1586#1711#1588#1578
    OnClick = SpeedButton5Click
  end
  object DBLookupComboBox1: TDBLookupComboBox
    Left = 663
    Top = 24
    Width = 145
    Height = 21
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
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'room_num'
        Title.Alignment = taCenter
        Title.Caption = #1588#1605#1575#1585#1607' '#1575#1578#1575#1602
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'price'
        Title.Alignment = taCenter
        Title.Caption = #1602#1610#1605#1578
        Visible = True
      end>
  end
  object Edit1: TEdit
    Left = 475
    Top = 24
    Width = 121
    Height = 21
    TabOrder = 2
  end
  object Edit2: TEdit
    Left = 300
    Top = 24
    Width = 121
    Height = 21
    TabOrder = 3
  end
  object ADODataSet1: TADODataSet
    Active = True
    Connection = MainForm.ADOConnection1
    CursorType = ctStatic
    CommandText = 'select * from hotel'
    Parameters = <>
    Left = 16
    Top = 24
  end
  object ADODataSet2: TADODataSet
    Active = True
    Connection = MainForm.ADOConnection1
    CursorType = ctStatic
    CommandText = 'select * from  hotel,room where hotel.id=room.hotel_id'
    Parameters = <>
    Left = 16
    Top = 56
  end
  object DataSource1: TDataSource
    DataSet = ADODataSet1
    Left = 48
    Top = 24
  end
  object DataSource2: TDataSource
    DataSet = ADODataSet2
    Left = 48
    Top = 56
  end
end
