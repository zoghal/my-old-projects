object insertdadForm: TinsertdadForm
  Left = 537
  Top = 95
  Width = 571
  Height = 656
  BiDiMode = bdRightToLeft
  Caption = #1579#1576#1578' '#1583#1575#1583#1582#1608#1575#1587#1578
  Color = clMoneyGreen
  Font.Charset = ARABIC_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'Tahoma'
  Font.Style = []
  OldCreateOrder = False
  ParentBiDiMode = False
  OnClose = FormClose
  PixelsPerInch = 96
  TextHeight = 13
  object GroupBox1: TGroupBox
    Left = 0
    Top = 0
    Width = 563
    Height = 113
    Caption = ' '#1582#1608#1575#1607#1575#1606' '
    Color = clMoneyGreen
    ParentColor = False
    TabOrder = 0
    object Label1: TLabel
      Left = 474
      Top = 16
      Width = 82
      Height = 13
      Caption = #1606#1575#1605' '#1608' '#1606#1575#1605' '#1582#1575#1606#1608#1575#1583#1711#1610
    end
    object Label2: TLabel
      Left = 244
      Top = 16
      Width = 29
      Height = 13
      Caption = #1606#1575#1605' '#1662#1583#1585
    end
    object Label3: TLabel
      Left = 91
      Top = 16
      Width = 41
      Height = 13
      Caption = #1587#1575#1604' '#1578#1608#1604#1583
    end
    object Label4: TLabel
      Left = 522
      Top = 40
      Width = 35
      Height = 13
      Caption = #1705#1583' '#1605#1604#1610
    end
    object Label5: TLabel
      Left = 331
      Top = 40
      Width = 64
      Height = 13
      Caption = #1588' '#1588#1606#1575#1587#1606#1575#1605#1607
    end
    object Label6: TLabel
      Left = 133
      Top = 40
      Width = 68
      Height = 13
      Caption = #1605#1610#1586#1575#1606' '#1578#1581#1589#1610#1604#1575#1578
    end
    object Label7: TLabel
      Left = 520
      Top = 64
      Width = 37
      Height = 13
      Caption = #1580#1606#1587#1610#1578
    end
    object Label8: TLabel
      Left = 433
      Top = 64
      Width = 22
      Height = 13
      Caption = #1578#1575#1607#1604
    end
    object Label9: TLabel
      Left = 317
      Top = 64
      Width = 54
      Height = 13
      Caption = #1593#1606#1608#1575#1606' '#1588#1594#1604
    end
    object Label10: TLabel
      Left = 79
      Top = 64
      Width = 44
      Height = 13
      Caption = #1587#1575#1576#1602#1607' '#1705#1575#1585
    end
    object Label11: TLabel
      Left = 506
      Top = 88
      Width = 49
      Height = 13
      Caption = #1578#1575#1585#1610#1582' '#1575#1582#1585#1575#1580
    end
    object Label12: TLabel
      Left = 354
      Top = 88
      Width = 51
      Height = 13
      Caption = #1606#1608#1593' '#1602#1585#1575#1585' '#1583#1575#1583
    end
    object DBEdit1: TDBEdit
      Left = 280
      Top = 13
      Width = 191
      Height = 21
      Color = 14286847
      DataField = 'Namef'
      DataSource = DataM.dadkhastDS
      TabOrder = 0
    end
    object DBEdit2: TDBEdit
      Left = 136
      Top = 13
      Width = 103
      Height = 21
      Color = 14286847
      DataField = 'Nfather'
      DataSource = DataM.dadkhastDS
      TabOrder = 1
    end
    object DBEdit3: TDBEdit
      Left = 4
      Top = 13
      Width = 83
      Height = 21
      Color = 14286847
      DataField = 'Byear'
      DataSource = DataM.dadkhastDS
      TabOrder = 2
    end
    object DBEdit4: TDBEdit
      Left = 403
      Top = 37
      Width = 114
      Height = 21
      Color = 14286847
      DataField = 'Idcode'
      DataSource = DataM.dadkhastDS
      TabOrder = 3
    end
    object DBEdit5: TDBEdit
      Left = 212
      Top = 37
      Width = 114
      Height = 21
      Color = 14286847
      DataField = 'Shcode'
      DataSource = DataM.dadkhastDS
      TabOrder = 4
    end
    object DBComboBox1: TDBComboBox
      Left = 5
      Top = 37
      Width = 125
      Height = 21
      Color = 14286847
      DataField = 'Study'
      DataSource = DataM.dadkhastDS
      ItemHeight = 13
      Items.Strings = (
        #13#1576#1610' '#1587#1608#1575#1583
        #1586#1610#1585' '#1583#1610#1662#1604#1705
        #1583#1610#1662#1604#1605
        #1601#1608#1602' '#1583#1610#1662#1604#1605
        #1604#1610#1587#1575#1606#1587
        #1601#1608#1602' '#1604#1610#1587#1575#1606#1587)
      TabOrder = 5
    end
    object DBComboBox2: TDBComboBox
      Left = 463
      Top = 61
      Width = 54
      Height = 21
      Color = 14286847
      DataField = 'Gender'
      DataSource = DataM.dadkhastDS
      ItemHeight = 13
      Items.Strings = (
        #1605#1585#1583
        #1586#1606)
      TabOrder = 6
    end
    object DBComboBox3: TDBComboBox
      Left = 377
      Top = 61
      Width = 54
      Height = 21
      Color = 14286847
      DataField = 'Res'
      DataSource = DataM.dadkhastDS
      ItemHeight = 13
      Items.Strings = (
        #1605#1580#1585#1583
        #1605#1578#1575#1607#1604)
      TabOrder = 7
    end
    object DBEdit6: TDBEdit
      Left = 128
      Top = 61
      Width = 187
      Height = 21
      Color = 14286847
      DataField = 'Job'
      DataSource = DataM.dadkhastDS
      TabOrder = 8
    end
    object DBEdit7: TDBEdit
      Left = 5
      Top = 61
      Width = 68
      Height = 21
      Color = 14286847
      DataField = 'Ywork'
      DataSource = DataM.dadkhastDS
      TabOrder = 9
    end
    object DBEdit8: TDBEdit
      Left = 408
      Top = 85
      Width = 91
      Height = 21
      Color = 14286847
      DataField = 'Dateeject'
      DataSource = DataM.dadkhastDS
      TabOrder = 10
    end
    object DBComboBox4: TDBComboBox
      Left = 240
      Top = 85
      Width = 109
      Height = 21
      Color = 14286847
      DataField = 'Treatytype'
      DataSource = DataM.dadkhastDS
      ItemHeight = 13
      Items.Strings = (
        #1583#1575#1574#1605
        #1605#1608#1602#1578
        #1705#1575#1585#1605#1593#1610#1606
        #1705#1575#1585#1570#1605#1608#1586#1610)
      TabOrder = 11
    end
  end
  object GroupBox2: TGroupBox
    Left = 0
    Top = 117
    Width = 563
    Height = 64
    Caption = ' '#1606#1605#1575#1610#1606#1583#1607' '#1582#1608#1575#1607#1575#1606' '
    Color = clMoneyGreen
    ParentColor = False
    TabOrder = 1
    object Label13: TLabel
      Left = 474
      Top = 16
      Width = 82
      Height = 13
      Caption = #1606#1575#1605' '#1608' '#1606#1575#1605' '#1582#1575#1606#1608#1575#1583#1711#1610
    end
    object Label14: TLabel
      Left = 244
      Top = 16
      Width = 29
      Height = 13
      Caption = #1606#1575#1605' '#1662#1583#1585
    end
    object Label15: TLabel
      Left = 91
      Top = 16
      Width = 41
      Height = 13
      Caption = #1587#1575#1604' '#1578#1608#1604#1583
    end
    object Label16: TLabel
      Left = 524
      Top = 40
      Width = 32
      Height = 13
      Caption = #1606#1588#1575#1606#1610
    end
    object DBEdit9: TDBEdit
      Left = 280
      Top = 13
      Width = 191
      Height = 21
      Color = 14286847
      DataField = 'Khname'
      DataSource = DataM.dadkhastDS
      TabOrder = 0
    end
    object DBEdit10: TDBEdit
      Left = 136
      Top = 13
      Width = 103
      Height = 21
      Color = 14286847
      DataField = 'Khnamef'
      DataSource = DataM.dadkhastDS
      TabOrder = 1
    end
    object DBEdit11: TDBEdit
      Left = 4
      Top = 13
      Width = 83
      Height = 21
      Color = 14286847
      DataField = 'Khyb'
      DataSource = DataM.dadkhastDS
      TabOrder = 2
    end
    object DBEdit12: TDBEdit
      Left = 4
      Top = 37
      Width = 514
      Height = 21
      Color = 14286847
      DataField = 'Khaddr'
      DataSource = DataM.dadkhastDS
      TabOrder = 3
    end
  end
  object GroupBox3: TGroupBox
    Left = 0
    Top = 184
    Width = 563
    Height = 64
    Caption = ' '#1582#1608#1575#1606#1583#1607' '
    Color = clMoneyGreen
    ParentColor = False
    TabOrder = 2
    object Label17: TLabel
      Left = 515
      Top = 16
      Width = 41
      Height = 13
      Caption = #1606#1575#1605' '#1705#1575#1585#1711#1575#1607
    end
    object Label18: TLabel
      Left = 275
      Top = 16
      Width = 116
      Height = 13
      Caption = #1606#1575#1605' '#1608' '#1606#1575#1605' '#1582#1575#1606#1608#1575#1583#1711#1610' '#1705#1575#1585#1601#1585#1605#1575
    end
    object Label19: TLabel
      Left = 89
      Top = 16
      Width = 77
      Height = 13
      Caption = #1601#1593#1575#1604#1610#1578' '#1575#1589#1604#1610' '#1705' '
    end
    object Label20: TLabel
      Left = 524
      Top = 40
      Width = 32
      Height = 13
      Caption = #1606#1588#1575#1606#1610
    end
    object DBEdit13: TDBEdit
      Left = 395
      Top = 13
      Width = 117
      Height = 21
      Color = 14286847
      DataField = 'Khanamework'
      DataSource = DataM.dadkhastDS
      TabOrder = 0
    end
    object DBEdit14: TDBEdit
      Left = 170
      Top = 13
      Width = 103
      Height = 21
      Color = 14286847
      DataField = 'Khanamekarfarma'
      DataSource = DataM.dadkhastDS
      TabOrder = 1
    end
    object DBEdit15: TDBEdit
      Left = 4
      Top = 13
      Width = 83
      Height = 21
      Color = 14286847
      DataField = 'Khatypework'
      DataSource = DataM.dadkhastDS
      TabOrder = 2
    end
    object DBEdit16: TDBEdit
      Left = 4
      Top = 37
      Width = 514
      Height = 21
      Color = 14286847
      DataField = 'Khanaddr'
      DataSource = DataM.dadkhastDS
      TabOrder = 3
    end
  end
  object GroupBox4: TGroupBox
    Left = 0
    Top = 250
    Width = 563
    Height = 343
    Caption = ' '#1582#1608#1575#1606#1583#1607' '
    Color = clMoneyGreen
    ParentColor = False
    TabOrder = 3
    object Label21: TLabel
      Left = 520
      Top = 16
      Width = 36
      Height = 13
      Caption = #1582#1608#1575#1587#1578#1607
    end
    object DBComboBox5: TDBComboBox
      Left = 216
      Top = 13
      Width = 298
      Height = 21
      Color = 14286847
      DataField = 'Requesttype'
      DataSource = DataM.dadkhastDS
      ItemHeight = 13
      Items.Strings = (
        #1576#1575#1586#1711#1588#1578' '#1576#1607' '#1705#1575#1585
        #1581#1602#1608#1602' '#1608' '#1605#1586#1575#1610#1575
        #1593#1610#1583#1610' '#1608' '#1662#1575#1583#1575#1588
        #1581#1602#1608#1602' '#1605#1585#1582#1589#1610' '#1575#1587#1578#1601#1575#1583#1607' '#1606#1588#1583#1607
        #1575#1601#1586#1575#1610#1588' '#1583#1585#1587#1578#1605#1586#1583
        #1587#1606#1608#1575#1578' '#1582#1583#1605#1578
        #1591#1585#1581' '#1591#1576#1602#1607' '#1576#1606#1583#1610
        #1576#1606' '#1705#1575#1585#1711#1585#1610
        #1601#1608#1602' '#1575#1604#1593#1575#1583#1607' '#1575#1590#1575#1601#1607' '#1705#1575#1585#1610
        #1587#1575#1610#1585)
      TabOrder = 0
    end
    object DBMemo1: TDBMemo
      Left = 3
      Top = 36
      Width = 557
      Height = 303
      DataField = 'Note'
      DataSource = DataM.dadkhastDS
      TabOrder = 1
    end
  end
  object BitBtn1: TBitBtn
    Left = 8
    Top = 597
    Width = 75
    Height = 25
    Caption = #1575#1606#1589#1585#1575#1601
    TabOrder = 4
    OnClick = BitBtn1Click
    Glyph.Data = {
      76010000424D7601000000000000760000002800000020000000100000000100
      04000000000000010000120B0000120B00001000000000000000000000000000
      800000800000008080008000000080008000808000007F7F7F00BFBFBF000000
      FF0000FF000000FFFF00FF000000FF00FF00FFFF0000FFFFFF00333333333333
      33333333333333333333333333333333333333333333333333FF333333333333
      3000333333FFFFF3F77733333000003000B033333777773777F733330BFBFB00
      E00033337FFF3377F7773333000FBFB0E000333377733337F7773330FBFBFBF0
      E00033F7FFFF3337F7773000000FBFB0E000377777733337F7770BFBFBFBFBF0
      E00073FFFFFFFF37F777300000000FB0E000377777777337F7773333330BFB00
      000033333373FF77777733333330003333333333333777333333333333333333
      3333333333333333333333333333333333333333333333333333333333333333
      3333333333333333333333333333333333333333333333333333}
    NumGlyphs = 2
  end
  object BitBtn2: TBitBtn
    Left = 90
    Top = 597
    Width = 75
    Height = 25
    Caption = #1579#1576#1578
    TabOrder = 5
    OnClick = BitBtn2Click
    Glyph.Data = {
      76010000424D7601000000000000760000002800000020000000100000000100
      04000000000000010000120B0000120B00001000000000000000000000000000
      800000800000008080008000000080008000808000007F7F7F00BFBFBF000000
      FF0000FF000000FFFF00FF000000FF00FF00FFFF0000FFFFFF00555555555555
      555555555555555555555555555555555555555555FF55555555555559055555
      55555555577FF5555555555599905555555555557777F5555555555599905555
      555555557777FF5555555559999905555555555777777F555555559999990555
      5555557777777FF5555557990599905555555777757777F55555790555599055
      55557775555777FF5555555555599905555555555557777F5555555555559905
      555555555555777FF5555555555559905555555555555777FF55555555555579
      05555555555555777FF5555555555557905555555555555777FF555555555555
      5990555555555555577755555555555555555555555555555555}
    NumGlyphs = 2
  end
end
