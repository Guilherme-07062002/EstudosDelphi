object TMain: TTMain
  Left = 0
  Top = 0
  Caption = 'Cadastro de Livros'
  ClientHeight = 453
  ClientWidth = 738
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
    Left = 40
    Top = 32
    Width = 195
    Height = 25
    Caption = 'Cadastro de Livros'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -21
    Font.Name = 'Tahoma'
    Font.Style = [fsBold]
    ParentFont = False
  end
  object Label2: TLabel
    Left = 40
    Top = 80
    Width = 81
    Height = 16
    Caption = 'Titulo do Livro'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -13
    Font.Name = 'Tahoma'
    Font.Style = []
    ParentFont = False
  end
  object Label3: TLabel
    Left = 40
    Top = 136
    Width = 31
    Height = 16
    Caption = 'Autor'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -13
    Font.Name = 'Tahoma'
    Font.Style = []
    ParentFont = False
  end
  object Label4: TLabel
    Left = 40
    Top = 193
    Width = 41
    Height = 16
    Caption = 'G'#234'nero'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -13
    Font.Name = 'Tahoma'
    Font.Style = []
    ParentFont = False
  end
  object Label5: TLabel
    Left = 40
    Top = 279
    Width = 39
    Height = 16
    Caption = 'Idioma'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -13
    Font.Name = 'Tahoma'
    Font.Style = []
    ParentFont = False
  end
  object Label6: TLabel
    Left = 384
    Top = 136
    Width = 46
    Height = 16
    Caption = 'Resumo'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -13
    Font.Name = 'Tahoma'
    Font.Style = []
    ParentFont = False
  end
  object Label7: TLabel
    Left = 384
    Top = 279
    Width = 102
    Height = 16
    Caption = 'Canais de Vendas'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -13
    Font.Name = 'Tahoma'
    Font.Style = []
    ParentFont = False
  end
  object titulo: TEdit
    Left = 40
    Top = 102
    Width = 297
    Height = 21
    TabOrder = 0
  end
  object autor: TEdit
    Left = 40
    Top = 158
    Width = 195
    Height = 21
    TabOrder = 1
  end
  object comboGenero: TComboBox
    Left = 40
    Top = 215
    Width = 195
    Height = 21
    Style = csDropDownList
    Ctl3D = False
    ParentCtl3D = False
    TabOrder = 2
    Items.Strings = (
      'Romance'
      'Auto-Ajuda'
      'Bibliografia')
  end
  object radioPort: TRadioButton
    Left = 56
    Top = 310
    Width = 113
    Height = 17
    Caption = 'Portugu'#234's'
    TabOrder = 3
  end
  object radioEng: TRadioButton
    Left = 56
    Top = 333
    Width = 113
    Height = 17
    Caption = 'Ingl'#234's'
    TabOrder = 4
  end
  object radioEsp: TRadioButton
    Left = 56
    Top = 356
    Width = 113
    Height = 17
    Caption = 'Espanhol'
    TabOrder = 5
  end
  object checkDisp: TCheckBox
    Left = 384
    Top = 104
    Width = 161
    Height = 17
    Caption = 'Disponivel em Estoque'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -13
    Font.Name = 'Tahoma'
    Font.Style = []
    ParentFont = False
    TabOrder = 6
  end
  object resumo: TMemo
    Left = 384
    Top = 158
    Width = 297
    Height = 99
    Lines.Strings = (
      '')
    TabOrder = 7
  end
  object checkInternet: TCheckBox
    Left = 408
    Top = 310
    Width = 97
    Height = 17
    Caption = 'Internet'
    TabOrder = 8
  end
  object checkTelefone: TCheckBox
    Left = 408
    Top = 333
    Width = 97
    Height = 17
    Caption = 'Telefone'
    TabOrder = 9
  end
  object checkFisica: TCheckBox
    Left = 408
    Top = 356
    Width = 97
    Height = 17
    Caption = 'Loja F'#237'sica'
    TabOrder = 10
  end
  object excluir: TButton
    Left = 176
    Top = 400
    Width = 105
    Height = 33
    Caption = 'Excluir'
    TabOrder = 11
    OnClick = excluirClick
  end
  object cadastrar: TButton
    Left = 40
    Top = 400
    Width = 105
    Height = 33
    Caption = 'Cadastrar'
    TabOrder = 12
    OnClick = cadastrarClick
  end
  object pesquisar: TButton
    Left = 304
    Top = 400
    Width = 105
    Height = 33
    Caption = 'Pesquisar'
    TabOrder = 13
    OnClick = pesquisarClick
  end
end
