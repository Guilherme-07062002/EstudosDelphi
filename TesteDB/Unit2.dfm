object dmDados: TdmDados
  OldCreateOrder = False
  Height = 453
  Width = 611
  object FDConnection1: TFDConnection
    Params.Strings = (
      'Database=C:\TUTORIAL.FDB'
      'User_Name=SYSDBA'
      'Password=12345'
      'Server=127.0.0.1'
      'Port=3050'
      'DriverID=FB')
    Connected = True
    LoginPrompt = False
    Left = 168
    Top = 72
  end
  object FDPhysFBDriverLink1: TFDPhysFBDriverLink
    VendorLib = 'C:\Program Files (x86)\Firebird\Firebird_4_0\fbclient.dll'
    Left = 72
    Top = 72
  end
  object FDGUIxWaitCursor1: TFDGUIxWaitCursor
    Provider = 'Forms'
    Left = 72
    Top = 128
  end
  object qryBancos: TFDQuery
    Connection = FDConnection1
    SQL.Strings = (
      'SELECT ID, NOME, SENHA FROM USUARIO;')
    Left = 168
    Top = 128
    object qryBancosID: TIntegerField
      FieldName = 'ID'
      Origin = 'ID'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
    end
    object qryBancosNOME: TStringField
      FieldName = 'NOME'
      Origin = 'NOME'
      Required = True
      Size = 22
    end
    object qryBancosSENHA: TIntegerField
      FieldName = 'SENHA'
      Origin = 'SENHA'
      Required = True
    end
  end
end
