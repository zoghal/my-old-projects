object TableForm: TTableForm
  Left = 258
  Top = 175
  BiDiMode = bdRightToLeft
  BorderStyle = bsSingle
  Caption = #1583#1585#1580' '#1576#1585#1606#1575#1605#1607' '#1583#1575#1585#1608#1610#1610' '#1576#1610#1605#1575#1585#1575#1606
  ClientHeight = 407
  ClientWidth = 659
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'MS Sans Serif'
  Font.Style = []
  OldCreateOrder = False
  ParentBiDiMode = False
  Position = poDesktopCenter
  PixelsPerInch = 96
  TextHeight = 13
  object DBGrid1: TDBGrid
    Left = 0
    Top = 0
    Width = 659
    Height = 407
    Align = alClient
    DataSource = MainForm.BimarDataSource
    Options = [dgTitles, dgIndicator, dgColLines, dgRowLines, dgTabs, dgRowSelect, dgConfirmDelete, dgCancelOnExit]
    ReadOnly = True
    TabOrder = 0
    TitleFont.Charset = DEFAULT_CHARSET
    TitleFont.Color = clWindowText
    TitleFont.Height = -11
    TitleFont.Name = 'MS Sans Serif'
    TitleFont.Style = []
    Columns = <
      item
        Alignment = taCenter
        Expanded = False
        FieldName = 'Code'
        PopupMenu = PopupMenu1
        Title.Alignment = taCenter
        Title.Caption = #1603#1583' '#1576#1610#1605#1575#1585
        Visible = True
      end
      item
        Alignment = taCenter
        Expanded = False
        FieldName = 'Name'
        PopupMenu = PopupMenu1
        Title.Alignment = taCenter
        Title.Caption = #1606#1575#1605' '
        Visible = True
      end
      item
        Alignment = taCenter
        Expanded = False
        FieldName = 'Famili'
        PopupMenu = PopupMenu1
        Title.Alignment = taCenter
        Title.Caption = #1606#1575#1605' '#1582#1575#1606#1608#1575#1583#1711#1610
        Visible = True
      end
      item
        Alignment = taCenter
        Expanded = False
        FieldName = 'Father_n'
        PopupMenu = PopupMenu1
        Title.Alignment = taCenter
        Title.Caption = #1606#1575#1605' '#1662#1583#1585
        Visible = True
      end
      item
        Alignment = taCenter
        Expanded = False
        FieldName = 'Room'
        PopupMenu = PopupMenu1
        Title.Alignment = taCenter
        Title.Caption = #1575#1578#1575#1602' '#1576#1587#1578#1585#1610
        Visible = True
      end
      item
        Alignment = taCenter
        Expanded = False
        FieldName = 'Takht'
        PopupMenu = PopupMenu1
        Title.Alignment = taCenter
        Title.Caption = #1588#1605#1575#1585#1607' '#1578#1582#1578
        Visible = True
      end>
  end
  object Panel1: TPanel
    Left = 200
    Top = 144
    Width = 257
    Height = 97
    BevelInner = bvSpace
    BevelOuter = bvLowered
    BevelWidth = 2
    TabOrder = 1
    Visible = False
    object Label1: TLabel
      Left = 210
      Top = 11
      Width = 39
      Height = 13
      Caption = #1606#1575#1605' '#1583#1575#1585#1608' :'
    end
    object Label2: TLabel
      Left = 192
      Top = 35
      Width = 57
      Height = 13
      Caption = #1587#1575#1593#1578' '#1588#1585#1608#1593' :'
    end
    object BitBtn1: TBitBtn
      Left = 143
      Top = 60
      Width = 75
      Height = 25
      Caption = #1579#1576#1578
      Default = True
      TabOrder = 0
      OnClick = BitBtn1Click
      Glyph.Data = {
        DE010000424DDE01000000000000760000002800000024000000120000000100
        0400000000006801000000000000000000001000000000000000000000000000
        80000080000000808000800000008000800080800000C0C0C000808080000000
        FF0000FF000000FFFF00FF000000FF00FF00FFFF0000FFFFFF00333333333333
        3333333333333333333333330000333333333333333333333333F33333333333
        00003333344333333333333333388F3333333333000033334224333333333333
        338338F3333333330000333422224333333333333833338F3333333300003342
        222224333333333383333338F3333333000034222A22224333333338F338F333
        8F33333300003222A3A2224333333338F3838F338F33333300003A2A333A2224
        33333338F83338F338F33333000033A33333A222433333338333338F338F3333
        0000333333333A222433333333333338F338F33300003333333333A222433333
        333333338F338F33000033333333333A222433333333333338F338F300003333
        33333333A222433333333333338F338F00003333333333333A22433333333333
        3338F38F000033333333333333A223333333333333338F830000333333333333
        333A333333333333333338330000333333333333333333333333333333333333
        0000}
      NumGlyphs = 2
    end
    object BitBtn2: TBitBtn
      Left = 23
      Top = 60
      Width = 75
      Height = 25
      Cancel = True
      Caption = #1575#1606#1589#1585#1575#1601
      TabOrder = 1
      OnClick = BitBtn2Click
      Glyph.Data = {
        DE010000424DDE01000000000000760000002800000024000000120000000100
        0400000000006801000000000000000000001000000000000000000000000000
        80000080000000808000800000008000800080800000C0C0C000808080000000
        FF0000FF000000FFFF00FF000000FF00FF00FFFF0000FFFFFF00333333333333
        333333333333333333333333000033338833333333333333333F333333333333
        0000333911833333983333333388F333333F3333000033391118333911833333
        38F38F333F88F33300003339111183911118333338F338F3F8338F3300003333
        911118111118333338F3338F833338F3000033333911111111833333338F3338
        3333F8330000333333911111183333333338F333333F83330000333333311111
        8333333333338F3333383333000033333339111183333333333338F333833333
        00003333339111118333333333333833338F3333000033333911181118333333
        33338333338F333300003333911183911183333333383338F338F33300003333
        9118333911183333338F33838F338F33000033333913333391113333338FF833
        38F338F300003333333333333919333333388333338FFF830000333333333333
        3333333333333333333888330000333333333333333333333333333333333333
        0000}
      NumGlyphs = 2
    end
    object ComboBox1: TComboBox
      Left = 6
      Top = 8
      Width = 177
      Height = 21
      ItemHeight = 13
      TabOrder = 2
    end
    object MaskEdit1: TMaskEdit
      Left = 6
      Top = 32
      Width = 177
      Height = 21
      EditMask = '!90:00;1;_'
      MaxLength = 5
      TabOrder = 3
      Text = '  :  '
    end
  end
  object PopupMenu1: TPopupMenu
    Left = 232
    Top = 64
    object N1: TMenuItem
      Caption = #1578#1580#1608#1610#1586' '#1583#1575#1585#1608
      OnClick = N1Click
    end
  end
end
