object takhfifForm: TtakhfifForm
  Left = 315
  Top = 395
  Width = 870
  Height = 500
  BiDiMode = bdRightToLeft
  Caption = 'takhfifForm'
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
    Left = 649
    Top = 13
    Width = 54
    Height = 13
    Caption = #1606#1575#1605' '#1605#1587#1575#1601#1585' :'
  end
  object Label2: TLabel
    Left = 369
    Top = 13
    Width = 114
    Height = 13
    Caption = #1606#1608#1593' '#1582#1583#1605#1575#1578' '#1583#1585#1610#1575#1601#1578' '#1588#1583#1607' :'
  end
  object Label3: TLabel
    Left = 175
    Top = 13
    Width = 33
    Height = 13
    Caption = #1607#1586#1610#1606#1607' :'
  end
  object DBLookupComboBox1: TDBLookupComboBox
    Left = 496
    Top = 8
    Width = 145
    Height = 21
    KeyField = 'codem'
    ListField = 'name'
    ListSource = DataSource1
    TabOrder = 0
  end
  object ComboBox1: TComboBox
    Left = 215
    Top = 9
    Width = 145
    Height = 21
    Style = csDropDownList
    ItemHeight = 13
    TabOrder = 1
    Items.Strings = (
      #1580#1575#1606#1576#1575#1586' '
      #1582#1575#1606#1608#1575#1583#1607' '#1588#1607#1610#1583
      #1705#1575#1585#1605#1606#1583' '#1583#1608#1604#1578
      #1605#1593#1604#1605
      #1576#1587#1610#1580#1610)
  end
  object Edit1: TEdit
    Left = 48
    Top = 9
    Width = 121
    Height = 21
    TabOrder = 2
  end
  object Panel2: TPanel
    Left = 62
    Top = 72
    Width = 715
    Height = 49
    TabOrder = 3
    object BitBtn1: TBitBtn
      Left = 556
      Top = 8
      Width = 99
      Height = 36
      Caption = #1580#1583#1610#1583
      TabOrder = 0
      OnClick = BitBtn1Click
    end
    object BitBtn2: TBitBtn
      Left = 436
      Top = 8
      Width = 99
      Height = 36
      Caption = #1579#1576#1578
      TabOrder = 1
      OnClick = BitBtn2Click
    end
    object BitBtn3: TBitBtn
      Left = 52
      Top = 8
      Width = 99
      Height = 36
      Caption = #1576#1575#1586#1711#1588#1578
      TabOrder = 2
    end
    object BitBtn5: TBitBtn
      Left = 180
      Top = 8
      Width = 99
      Height = 36
      Caption = #1581#1584#1601
      TabOrder = 3
      OnClick = BitBtn5Click
    end
  end
  object DBGrid1: TDBGrid
    Left = 6
    Top = 144
    Width = 847
    Height = 297
    DataSource = DataSource2
    Options = [dgTitles, dgIndicator, dgColumnResize, dgColLines, dgRowLines, dgTabs, dgRowSelect, dgConfirmDelete, dgCancelOnExit]
    TabOrder = 4
    TitleFont.Charset = ARABIC_CHARSET
    TitleFont.Color = clWindowText
    TitleFont.Height = -11
    TitleFont.Name = 'Tahoma'
    TitleFont.Style = []
    Columns = <
      item
        Expanded = False
        FieldName = 'code'
        Title.Alignment = taCenter
        Title.Caption = #1705#1583' '#1582#1583#1605#1578
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'mosafer_id'
        Title.Alignment = taCenter
        Title.Caption = #1705#1583' '#1605#1587#1575#1601#1585
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'servic'
        Title.Alignment = taCenter
        Title.Caption = #1606#1575#1605' '#1582#1583#1605#1575#1578
        Width = 500
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'price'
        Title.Alignment = taCenter
        Title.Caption = #1602#1610#1605#1578
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'odate'
        Title.Alignment = taCenter
        Title.Caption = #1578#1575#1585#1610#1582' '#1583#1585#1610#1575#1601#1578' '
        Visible = True
      end>
  end
  object ADODataSet1: TADODataSet
    Active = True
    Connection = MainForm.ADOConnection1
    CursorType = ctStatic
    CommandText = 'select codem, name from mosafer'
    Parameters = <>
    Left = 24
    Top = 32
  end
  object DataSource1: TDataSource
    DataSet = ADODataSet1
    Left = 56
    Top = 32
  end
  object ADODataSet2: TADODataSet
    Active = True
    Connection = MainForm.ADOConnection1
    CursorType = ctStatic
    CommandText = 'select * from servic where  types = 1'
    Parameters = <>
    Left = 16
    Top = 192
  end
  object DataSource2: TDataSource
    DataSet = ADODataSet2
    Left = 48
    Top = 192
  end
end
