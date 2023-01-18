object TSearch: TTSearch
  Left = 0
  Top = 0
  Caption = 'Pesquisar'
  ClientHeight = 343
  ClientWidth = 826
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
    Left = 24
    Top = 35
    Width = 66
    Height = 16
    Caption = 'ID do Livro:'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -13
    Font.Name = 'Tahoma'
    Font.Style = []
    ParentFont = False
  end
  object DBGrid1: TDBGrid
    Left = 0
    Top = 80
    Width = 826
    Height = 263
    Align = alBottom
    DataSource = DataSource1
    TabOrder = 0
    TitleFont.Charset = DEFAULT_CHARSET
    TitleFont.Color = clWindowText
    TitleFont.Height = -11
    TitleFont.Name = 'Tahoma'
    TitleFont.Style = []
    Columns = <
      item
        Expanded = False
        FieldName = 'ID'
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'TITULO'
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'AUTOR'
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'GENERO'
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'IDIOMA'
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'DISPONIVEL'
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'RESUMO'
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'CANAL'
        Visible = True
      end>
  end
  object IDedit: TEdit
    Left = 96
    Top = 34
    Width = 121
    Height = 21
    TabOrder = 1
  end
  object btnBuscaID: TButton
    Left = 248
    Top = 32
    Width = 75
    Height = 25
    Caption = 'Pesquisar'
    TabOrder = 2
    OnClick = btnBuscaIDClick
  end
  object DataSource1: TDataSource
    DataSet = dmCadastro.qrySearch
    Left = 248
    Top = 168
  end
end
