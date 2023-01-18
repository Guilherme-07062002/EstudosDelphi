object dmCadastro: TdmCadastro
  OldCreateOrder = False
  Height = 373
  Width = 468
  object FDPhysFBDriverLink1: TFDPhysFBDriverLink
    VendorLib = 'C:\Program Files (x86)\Firebird\Firebird_4_0\fbclient.dll'
    Left = 64
    Top = 56
  end
  object connection: TFDConnection
    Params.Strings = (
      'Database=C:\CADLIVRO.FDB'
      'User_Name=SYSDBA'
      'Password=12345'
      'Server=127.0.0.1'
      'Port=3050'
      'DriverID=FB')
    Connected = True
    LoginPrompt = False
    Left = 264
    Top = 64
  end
  object qrySearch: TFDQuery
    Connection = connection
    SQL.Strings = (
      'SELECT * FROM livros;')
    Left = 88
    Top = 200
    object qrySearchID: TIntegerField
      FieldName = 'ID'
      Origin = 'ID'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
    end
    object qrySearchTITULO: TStringField
      FieldName = 'TITULO'
      Origin = 'TITULO'
      Size = 22
    end
    object qrySearchAUTOR: TStringField
      FieldName = 'AUTOR'
      Origin = 'AUTOR'
      Size = 22
    end
    object qrySearchGENERO: TStringField
      FieldName = 'GENERO'
      Origin = 'GENERO'
      Size = 10
    end
    object qrySearchIDIOMA: TStringField
      FieldName = 'IDIOMA'
      Origin = 'IDIOMA'
      Size = 10
    end
    object qrySearchDISPONIVEL: TStringField
      FieldName = 'DISPONIVEL'
      Origin = 'DISPONIVEL'
      FixedChar = True
      Size = 1
    end
    object qrySearchRESUMO: TStringField
      FieldName = 'RESUMO'
      Origin = 'RESUMO'
      Size = 35
    end
    object qrySearchCANAL: TStringField
      FieldName = 'CANAL'
      Origin = 'CANAL'
      Size = 10
    end
  end
  object FDGUIxWaitCursor1: TFDGUIxWaitCursor
    Provider = 'Forms'
    Left = 248
    Top = 200
  end
  object addQry: TFDQuery
    Connection = connection
    SQL.Strings = (
      'SELECT COUNT(*) FROM LIVROS;')
    Left = 88
    Top = 280
    object addQryCOUNT: TLargeintField
      AutoGenerateValue = arDefault
      FieldName = 'COUNT'
      Origin = '"COUNT"'
      ProviderFlags = []
      ReadOnly = True
    end
  end
end
