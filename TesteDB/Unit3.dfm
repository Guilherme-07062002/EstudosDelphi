object Registrar: TRegistrar
  Left = 0
  Top = 0
  Caption = 'Registrar'
  ClientHeight = 375
  ClientWidth = 541
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'Tahoma'
  Font.Style = []
  OldCreateOrder = False
  PixelsPerInch = 96
  TextHeight = 13
  object Label1: TLabel
    Left = 72
    Top = 88
    Width = 31
    Height = 13
    Caption = 'Nome:'
  end
  object Label2: TLabel
    Left = 69
    Top = 131
    Width = 34
    Height = 13
    Caption = 'Senha:'
  end
  object nome: TEdit
    Left = 136
    Top = 85
    Width = 193
    Height = 21
    TabOrder = 0
  end
  object senha: TEdit
    Left = 136
    Top = 128
    Width = 193
    Height = 21
    TabOrder = 1
  end
  object Button1: TButton
    Left = 200
    Top = 256
    Width = 75
    Height = 25
    Caption = 'Registrar'
    TabOrder = 2
    OnClick = Button1Click
  end
  object btnLogin: TButton
    Left = 200
    Top = 200
    Width = 75
    Height = 25
    Caption = 'Login'
    TabOrder = 3
    OnClick = btnLoginClick
  end
  object DataSource1: TDataSource
    DataSet = RegisQuery
    Left = 472
    Top = 88
  end
  object RegisQuery: TFDQuery
    Connection = dmDados.FDConnection1
    SQL.Strings = (
      'SELECT COUNT(ID) FROM USUARIO;')
    Left = 472
    Top = 24
    object RegisQueryCOUNT: TLargeintField
      AutoGenerateValue = arDefault
      FieldName = 'COUNT'
      Origin = '"COUNT"'
      ProviderFlags = []
      ReadOnly = True
    end
  end
  object FDQuery1: TFDQuery
    Connection = dmDados.FDConnection1
    Left = 400
    Top = 24
  end
  object DataSource2: TDataSource
    DataSet = FDQuery1
    Left = 400
    Top = 88
  end
  object validaQuery: TFDQuery
    Connection = dmDados.FDConnection1
    SQL.Strings = (
      '')
    Left = 480
    Top = 216
  end
end
