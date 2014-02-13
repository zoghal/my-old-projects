object FactorForm: TFactorForm
  Left = 349
  Top = 141
  Width = 870
  Height = 500
  BiDiMode = bdRightToLeft
  Caption = 'FactorForm'
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
    Left = 8
    Top = 440
    Width = 841
    Height = 33
    Caption = #1589#1608#1585#1578#1581#1587#1575#1576
    OnClick = SpeedButton1Click
  end
  object DBGrid2: TDBGrid
    Left = 8
    Top = 8
    Width = 841
    Height = 425
    DataSource = DataSource2
    TabOrder = 0
    TitleFont.Charset = ARABIC_CHARSET
    TitleFont.Color = clWindowText
    TitleFont.Height = -11
    TitleFont.Name = 'Tahoma'
    TitleFont.Style = []
    Columns = <
      item
        Expanded = False
        FieldName = 'name'
        Title.Alignment = taCenter
        Title.Caption = #1606#1575#1605
        Width = 100
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'sh'
        Title.Alignment = taCenter
        Title.Caption = #1588'.'#1588
        Width = 80
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'nfather'
        Title.Alignment = taCenter
        Title.Caption = #1606#1575#1605' '#1662#1583#1585
        Width = 100
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'name_1'
        Title.Alignment = taCenter
        Title.Caption = #1606#1575#1605' '#1607#1578#1604
        Width = 115
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
        FieldName = 'total'
        Title.Alignment = taCenter
        Title.Caption = #1578#1593#1583#1575#1583' '#1575#1578#1575#1602
        Width = 50
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'indate'
        Title.Caption = #1578#1575#1585#1610#1582' '#1608#1585#1608#1583
        Width = 70
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'tel'
        Title.Alignment = taCenter
        Title.Caption = #1578#1604#1601#1606
        Width = 100
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'addr'
        Title.Alignment = taCenter
        Title.Caption = #1570#1583#1585#1587
        Width = 100
        Visible = True
      end>
  end
  object ADODataSet2: TADODataSet
    Active = True
    Connection = MainForm.ADOConnection1
    CursorType = ctStatic
    CommandText = 
      'select * from mosafer,hotel,room '#13#10'where mosafer.roomid = room.r' +
      'oomcode and room.hotel_id=hotel.id'
    Parameters = <>
    Top = 296
  end
  object DataSource2: TDataSource
    DataSet = ADODataSet2
    Left = 32
    Top = 296
  end
end
