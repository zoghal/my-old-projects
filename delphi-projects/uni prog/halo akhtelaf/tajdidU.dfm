object tajdidform: Ttajdidform
  Left = 522
  Top = 171
  BiDiMode = bdRightToLeft
  BorderStyle = bsSingle
  Caption = #1578#1580#1583#1610#1583' '#1606#1592#1585
  ClientHeight = 547
  ClientWidth = 491
  Color = clMoneyGreen
  Font.Charset = ARABIC_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'Tahoma'
  Font.Style = []
  OldCreateOrder = False
  ParentBiDiMode = False
  Position = poScreenCenter
  OnClose = FormClose
  PixelsPerInch = 96
  TextHeight = 13
  object GroupBox1: TGroupBox
    Left = 0
    Top = 0
    Width = 491
    Height = 43
    Caption = ' '#1588#1605#1575#1585#1607' '#1705#1604#1575#1587#1607' '#1662#1585#1608#1606#1583#1607' '
    TabOrder = 0
    object Edit1: TEdit
      Left = 364
      Top = 15
      Width = 121
      Height = 21
      TabOrder = 0
    end
    object BitBtn1: TBitBtn
      Left = 285
      Top = 16
      Width = 75
      Height = 22
      Caption = #1580#1587#1578#1580#1608
      TabOrder = 1
      OnClick = BitBtn1Click
      Glyph.Data = {
        76010000424D7601000000000000760000002800000020000000100000000100
        04000000000000010000120B0000120B00001000000000000000000000000000
        800000800000008080008000000080008000808000007F7F7F00BFBFBF000000
        FF0000FF000000FFFF00FF000000FF00FF00FFFF0000FFFFFF00333330000000
        00003333377777777777333330FFFFFFFFF03FF3F7FFFF33FFF7003000000FF0
        00F077F7777773F77737E00FBFBFB0FFFFF07773333FF7FF33F7E0FBFB00000F
        F0F077F333777773F737E0BFBFBFBFB0FFF077F3333FFFF733F7E0FBFB00000F
        F0F077F333777773F737E0BFBFBFBFB0FFF077F33FFFFFF733F7E0FB0000000F
        F0F077FF777777733737000FB0FFFFFFFFF07773F7F333333337333000FFFFFF
        FFF0333777F3FFF33FF7333330F000FF0000333337F777337777333330FFFFFF
        0FF0333337FFFFFF7F37333330CCCCCC0F033333377777777F73333330FFFFFF
        0033333337FFFFFF773333333000000003333333377777777333}
      NumGlyphs = 2
    end
  end
  object GroupBox3: TGroupBox
    Left = 0
    Top = 46
    Width = 491
    Height = 67
    Caption = ' '#1578#1580#1583#1610#1583' '#1606#1592#1585' '#1582#1608#1575#1607' '
    Color = clMoneyGreen
    Enabled = False
    ParentColor = False
    TabOrder = 1
    object Label13: TLabel
      Left = 404
      Top = 15
      Width = 82
      Height = 13
      Caption = #1606#1575#1605' '#1608' '#1606#1575#1605' '#1582#1575#1606#1608#1575#1583#1711#1610
    end
    object Label14: TLabel
      Left = 178
      Top = 16
      Width = 29
      Height = 13
      Caption = #1606#1575#1605' '#1662#1583#1585
    end
    object Label16: TLabel
      Left = 441
      Top = 40
      Width = 43
      Height = 13
      Caption = #1606#1608#1593' '#1588#1594#1604
    end
    object Label1: TLabel
      Left = 178
      Top = 40
      Width = 41
      Height = 13
      Caption = #1587#1575#1604' '#1578#1608#1604#1583
    end
    object DBEdit9: TDBEdit
      Left = 223
      Top = 13
      Width = 178
      Height = 21
      Color = 14286847
      DataField = 'R1name'
      DataSource = DataM.tajdidDS
      TabOrder = 0
    end
    object DBEdit10: TDBEdit
      Left = 4
      Top = 13
      Width = 171
      Height = 21
      Color = 14286847
      DataField = 'R1namef'
      DataSource = DataM.tajdidDS
      TabOrder = 1
    end
    object DBEdit1: TDBEdit
      Left = 223
      Top = 37
      Width = 185
      Height = 21
      Color = 14286847
      DataField = 'R1typework'
      DataSource = DataM.tajdidDS
      TabOrder = 2
    end
    object DBEdit2: TDBEdit
      Left = 4
      Top = 37
      Width = 170
      Height = 21
      Color = 14286847
      DataField = 'R1yearwork'
      DataSource = DataM.tajdidDS
      TabOrder = 3
    end
  end
  object GroupBox2: TGroupBox
    Left = 0
    Top = 117
    Width = 491
    Height = 67
    Caption = ' '#1606#1605#1575#1610#1606#1583#1607' '#1578#1580#1583#1610#1583' '#1606#1592#1585' '
    Color = clMoneyGreen
    Enabled = False
    ParentColor = False
    TabOrder = 2
    object Label2: TLabel
      Left = 404
      Top = 15
      Width = 82
      Height = 13
      Caption = #1606#1575#1605' '#1608' '#1606#1575#1605' '#1582#1575#1606#1608#1575#1583#1711#1610
    end
    object Label3: TLabel
      Left = 178
      Top = 16
      Width = 29
      Height = 13
      Caption = #1606#1575#1605' '#1662#1583#1585
    end
    object Label4: TLabel
      Left = 452
      Top = 40
      Width = 32
      Height = 13
      Caption = #1606#1588#1575#1606#1610
    end
    object Label5: TLabel
      Left = 178
      Top = 40
      Width = 41
      Height = 13
      Caption = #1587#1575#1604' '#1578#1608#1604#1583
    end
    object DBEdit3: TDBEdit
      Left = 223
      Top = 13
      Width = 178
      Height = 21
      Color = 14286847
      DataField = 'R2name'
      DataSource = DataM.tajdidDS
      TabOrder = 0
    end
    object DBEdit4: TDBEdit
      Left = 4
      Top = 13
      Width = 171
      Height = 21
      Color = 14286847
      DataField = 'R2namef'
      DataSource = DataM.tajdidDS
      TabOrder = 1
    end
    object DBEdit5: TDBEdit
      Left = 223
      Top = 37
      Width = 227
      Height = 21
      Color = 14286847
      DataField = 'R2addr'
      DataSource = DataM.tajdidDS
      TabOrder = 2
    end
    object DBEdit6: TDBEdit
      Left = 4
      Top = 37
      Width = 170
      Height = 21
      Color = 14286847
      DataField = 'R2yearwork'
      DataSource = DataM.tajdidDS
      TabOrder = 3
    end
  end
  object GroupBox4: TGroupBox
    Left = 0
    Top = 186
    Width = 491
    Height = 67
    Caption = ' '#1578#1580#1583#1610#1583' '#1606#1592#1585' '#1582#1608#1575#1606#1583#1607' '
    Color = clMoneyGreen
    Enabled = False
    ParentColor = False
    TabOrder = 3
    object Label6: TLabel
      Left = 404
      Top = 15
      Width = 82
      Height = 13
      Caption = #1606#1575#1605' '#1608' '#1606#1575#1605' '#1582#1575#1606#1608#1575#1583#1711#1610
    end
    object Label8: TLabel
      Left = 452
      Top = 40
      Width = 32
      Height = 13
      Caption = #1606#1588#1575#1606#1610
    end
    object DBEdit7: TDBEdit
      Left = 223
      Top = 13
      Width = 178
      Height = 21
      Color = 14286847
      DataField = 'R3name'
      DataSource = DataM.tajdidDS
      TabOrder = 0
    end
    object DBEdit11: TDBEdit
      Left = 8
      Top = 37
      Width = 442
      Height = 21
      Color = 14286847
      DataField = 'R3addr'
      DataSource = DataM.tajdidDS
      TabOrder = 1
    end
  end
  object GroupBox5: TGroupBox
    Left = 0
    Top = 258
    Width = 491
    Height = 65
    Caption = ' '#1578#1580#1583#1610#1583' '#1606#1590#1585' '#1582#1608#1575#1587#1578#1607' '
    Color = clMoneyGreen
    Enabled = False
    ParentColor = False
    TabOrder = 4
    object Label10: TLabel
      Left = 325
      Top = 15
      Width = 161
      Height = 13
      Caption = #1578#1580#1583#1610#1583' '#1606#1592#1585' '#1582#1608#1575#1607#1610' '#1575#1586' '#1583#1575#1583#1606#1575#1605#1607' '#1588#1605#1575#1585#1607' '
    end
    object Label11: TLabel
      Left = 185
      Top = 16
      Width = 22
      Height = 13
      Caption = #1605#1608#1585#1582
    end
    object Label12: TLabel
      Left = 418
      Top = 40
      Width = 66
      Height = 13
      Caption = #1607#1610#1575#1578' '#1578#1588#1582#1610#1589
    end
    object DBEdit13: TDBEdit
      Left = 215
      Top = 13
      Width = 108
      Height = 21
      Color = 14286847
      DataField = 'R4dadnumber'
      DataSource = DataM.tajdidDS
      ReadOnly = True
      TabOrder = 0
    end
    object DBEdit15: TDBEdit
      Left = 4
      Top = 37
      Width = 411
      Height = 21
      Color = 14286847
      DataField = 'R4heyat'
      DataSource = DataM.tajdidDS
      TabOrder = 1
    end
    object Edit2: TEdit
      Left = 4
      Top = 12
      Width = 176
      Height = 21
      Color = 14286847
      ReadOnly = True
      TabOrder = 2
    end
  end
  object GroupBox6: TGroupBox
    Left = 0
    Top = 329
    Width = 491
    Height = 192
    Caption = ' '#1578#1580#1583#1610#1583' '#1606#1592#1585' '#1582#1608#1575#1587#1578#1607' '
    Color = clMoneyGreen
    Enabled = False
    ParentColor = False
    TabOrder = 5
    object Label7: TLabel
      Left = 421
      Top = 15
      Width = 65
      Height = 13
      Caption = #1605#1608#1585#1583' '#1575#1593#1578#1585#1575#1590' :'
    end
    object Label15: TLabel
      Left = 406
      Top = 74
      Width = 78
      Height = 13
      Caption = #1588#1585#1581' '#1583#1585#1582#1608#1575#1587#1578' :'
    end
    object DBMemo1: TDBMemo
      Left = 3
      Top = 33
      Width = 485
      Height = 40
      DataField = 'Eteraz'
      DataSource = DataM.tajdidDS
      TabOrder = 0
    end
    object DBMemo2: TDBMemo
      Left = 3
      Top = 89
      Width = 485
      Height = 97
      DataField = 'Noteeteraz'
      DataSource = DataM.tajdidDS
      TabOrder = 1
    end
  end
  object BitBtn2: TBitBtn
    Left = 90
    Top = 522
    Width = 75
    Height = 25
    Caption = #1579#1576#1578
    Enabled = False
    TabOrder = 6
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
  object BitBtn3: TBitBtn
    Left = 8
    Top = 522
    Width = 75
    Height = 25
    Caption = #1575#1606#1589#1585#1575#1601
    TabOrder = 7
    OnClick = BitBtn3Click
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
end
