object DataM: TDataM
  OldCreateOrder = False
  Left = 197
  Top = 276
  Height = 327
  Width = 144
  object dadkhastDS: TDataSource
    DataSet = dadkhastT
    Left = 24
    Top = 16
  end
  object dadkhastT: TTable
    TableName = 'dadkhast.db'
    Left = 80
    Top = 16
    object dadkhastTClase: TAutoIncField
      FieldName = 'Clase'
      ReadOnly = True
    end
    object dadkhastTSetdate: TDateField
      FieldName = 'Setdate'
    end
    object dadkhastTNamef: TStringField
      FieldName = 'Namef'
      Size = 30
    end
    object dadkhastTIdcode: TFloatField
      FieldName = 'Idcode'
    end
    object dadkhastTGender: TStringField
      FieldName = 'Gender'
      Size = 6
    end
    object dadkhastTJob: TStringField
      FieldName = 'Job'
    end
    object dadkhastTNfather: TStringField
      FieldName = 'Nfather'
    end
    object dadkhastTByear: TFloatField
      FieldName = 'Byear'
    end
    object dadkhastTShcode: TFloatField
      FieldName = 'Shcode'
    end
    object dadkhastTRes: TStringField
      FieldName = 'Res'
      Size = 10
    end
    object dadkhastTStudy: TStringField
      FieldName = 'Study'
      Size = 30
    end
    object dadkhastTYwork: TFloatField
      FieldName = 'Ywork'
    end
    object dadkhastTTreatytype: TStringField
      FieldName = 'Treatytype'
      Size = 16
    end
    object dadkhastTKhname: TStringField
      FieldName = 'Khname'
      Size = 30
    end
    object dadkhastTKhnamef: TStringField
      FieldName = 'Khnamef'
    end
    object dadkhastTKhyb: TFloatField
      FieldName = 'Khyb'
    end
    object p: TStringField
      FieldName = 'Khaddr'
      Size = 100
    end
    object dadkhastTKhanamework: TStringField
      FieldName = 'Khanamework'
      Size = 30
    end
    object dadkhastTKhanamekarfarma: TStringField
      FieldName = 'Khanamekarfarma'
      Size = 30
    end
    object dadkhastTKhanaddr: TStringField
      FieldName = 'Khanaddr'
      Size = 100
    end
    object dadkhastTRequesttype: TStringField
      FieldName = 'Requesttype'
      Size = 40
    end
    object dadkhastTDateeject: TStringField
      FieldName = 'Dateeject'
      Size = 10
    end
    object dadkhastTNote: TBlobField
      FieldName = 'Note'
      BlobType = ftFmtMemo
      Size = 240
    end
    object dadkhastTKhatypework: TFloatField
      FieldName = 'Khatypework'
    end
  end
  object tajdidDS: TDataSource
    DataSet = tajdidT
    Left = 24
    Top = 72
  end
  object tajdidT: TTable
    TableName = 'tajdid.db'
    Left = 80
    Top = 72
    object tajdidTCodet: TAutoIncField
      FieldName = 'Codet'
      ReadOnly = True
    end
    object tajdidTR1name: TStringField
      FieldName = 'R1name'
      Size = 30
    end
    object tajdidTR1namef: TStringField
      FieldName = 'R1namef'
    end
    object tajdidTR1yearwork: TFloatField
      FieldName = 'R1yearwork'
    end
    object tajdidTR1typework: TStringField
      FieldName = 'R1typework'
      Size = 40
    end
    object tajdidTR2name: TStringField
      FieldName = 'R2name'
      Size = 30
    end
    object tajdidTR2namef: TStringField
      FieldName = 'R2namef'
    end
    object tajdidTR2yearwork: TFloatField
      FieldName = 'R2yearwork'
    end
    object tajdidTR2addr: TStringField
      FieldName = 'R2addr'
      Size = 100
    end
    object tajdidTR3name: TStringField
      FieldName = 'R3name'
      Size = 30
    end
    object tajdidTR3addr: TStringField
      FieldName = 'R3addr'
      Size = 100
    end
    object tajdidTR4dadnumber: TFloatField
      FieldName = 'R4dadnumber'
    end
    object tajdidTR4date: TStringField
      FieldName = 'R4date'
      Size = 10
    end
    object tajdidTR4heyat: TStringField
      FieldName = 'R4heyat'
      Size = 30
    end
    object tajdidTEteraz: TMemoField
      FieldName = 'Eteraz'
      BlobType = ftMemo
      Size = 240
    end
    object tajdidTNoteeteraz: TMemoField
      FieldName = 'Noteeteraz'
      BlobType = ftMemo
      Size = 240
    end
    object tajdidTDate: TDateField
      FieldName = 'Date'
    end
  end
  object queryDS: TDataSource
    DataSet = Querym
    Left = 24
    Top = 200
  end
  object Querym: TQuery
    CachedUpdates = True
    AutoRefresh = True
    Constrained = True
    Left = 80
    Top = 200
  end
  object dadVoteDS: TDataSource
    DataSet = DadVoteT
    Left = 24
    Top = 128
  end
  object DadVoteT: TTable
    TableName = 'dadnamedadkhast.db'
    Left = 80
    Top = 128
    object DadVoteTCoded: TAutoIncField
      FieldName = 'Coded'
      ReadOnly = True
    end
    object DadVoteTDate: TDateField
      FieldName = 'Date'
    end
    object DadVoteTClase: TFloatField
      FieldName = 'Clase'
    end
    object DadVoteTKhahan: TStringField
      FieldName = 'Khahan'
      Size = 30
    end
    object DadVoteTKhandeh: TStringField
      FieldName = 'Khandeh'
      Size = 30
    end
    object DadVoteTKhastar: TStringField
      FieldName = 'Khastar'
      Size = 40
    end
    object DadVoteTKholase: TMemoField
      FieldName = 'Kholase'
      BlobType = ftMemo
      Size = 240
    end
    object DadVoteTVote: TMemoField
      FieldName = 'Vote'
      BlobType = ftMemo
      Size = 240
    end
  end
end
