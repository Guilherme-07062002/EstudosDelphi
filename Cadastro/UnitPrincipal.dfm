object Form1: TForm1
  Left = 0
  Top = 0
  Caption = 'Cadastro de Clientes'
  ClientHeight = 487
  ClientWidth = 740
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'Tahoma'
  Font.Style = []
  OldCreateOrder = False
  PixelsPerInch = 96
  TextHeight = 13
  object Panel1: TPanel
    Left = 0
    Top = 0
    Width = 740
    Height = 89
    Align = alTop
    TabOrder = 0
    object Label1: TLabel
      Left = 15
      Top = 22
      Width = 327
      Height = 39
      Caption = 'Cadastro de Clientes'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -32
      Font.Name = 'Tahoma'
      Font.Style = [fsBold]
      ParentFont = False
    end
    object Button1: TButton
      Left = 400
      Top = 22
      Width = 75
      Height = 48
      Caption = 'Novo'
      TabOrder = 0
    end
    object Button2: TButton
      Left = 481
      Top = 22
      Width = 75
      Height = 48
      Caption = 'Salvar'
      TabOrder = 1
    end
    object Button3: TButton
      Left = 562
      Top = 22
      Width = 75
      Height = 48
      Caption = 'Cancelar'
      TabOrder = 2
    end
    object Button4: TButton
      Left = 643
      Top = 22
      Width = 75
      Height = 48
      Caption = 'Excluir'
      TabOrder = 3
    end
  end
  object PageControl1: TPageControl
    Left = 0
    Top = 89
    Width = 740
    Height = 398
    ActivePage = TabSheet1
    Align = alClient
    TabOrder = 1
    object TabSheet1: TTabSheet
      Caption = 'Dados Pessoais'
      object Label2: TLabel
        Left = 46
        Top = 24
        Width = 84
        Height = 13
        Caption = 'C'#243'digo do Cliente'
      end
      object Label3: TLabel
        Left = 46
        Top = 85
        Width = 78
        Height = 13
        Caption = 'Nome do Cliente'
      end
      object Label4: TLabel
        Left = 210
        Top = 24
        Width = 71
        Height = 13
        Caption = 'Tipo do Cliente'
      end
      object Label5: TLabel
        Left = 404
        Top = 24
        Width = 14
        Height = 13
        Caption = 'RG'
      end
      object Label6: TLabel
        Left = 558
        Top = 24
        Width = 90
        Height = 13
        Caption = 'Data de Expedi'#231#227'o'
      end
      object Label7: TLabel
        Left = 46
        Top = 144
        Width = 45
        Height = 13
        Caption = 'Endere'#231'o'
      end
      object Label8: TLabel
        Left = 46
        Top = 200
        Width = 28
        Height = 13
        Caption = 'Bairro'
      end
      object Label9: TLabel
        Left = 46
        Top = 254
        Width = 13
        Height = 13
        Caption = 'UF'
      end
      object Label10: TLabel
        Left = 210
        Top = 254
        Width = 19
        Height = 13
        Caption = 'CEP'
      end
      object Label11: TLabel
        Left = 404
        Top = 85
        Width = 42
        Height = 13
        Caption = 'Telefone'
      end
      object Label12: TLabel
        Left = 558
        Top = 85
        Width = 33
        Height = 13
        Caption = 'Celular'
      end
      object Label13: TLabel
        Left = 404
        Top = 144
        Width = 28
        Height = 13
        Caption = 'E-mail'
      end
      object Label14: TLabel
        Left = 210
        Top = 200
        Width = 33
        Height = 13
        Caption = 'Cidade'
      end
      object Edit1: TEdit
        Left = 46
        Top = 43
        Width = 121
        Height = 21
        TabOrder = 0
      end
      object Edit2: TEdit
        Left = 46
        Top = 104
        Width = 309
        Height = 21
        TabOrder = 1
      end
      object ComboBox1: TComboBox
        Left = 210
        Top = 43
        Width = 145
        Height = 21
        Style = csDropDownList
        TabOrder = 2
        Items.Strings = (
          'Pessoa Fisica'
          'Pessoa Juridica')
      end
      object Edit3: TEdit
        Left = 404
        Top = 43
        Width = 121
        Height = 21
        TabOrder = 3
      end
      object Edit4: TEdit
        Left = 558
        Top = 43
        Width = 121
        Height = 21
        TabOrder = 4
      end
      object Edit5: TEdit
        Left = 46
        Top = 163
        Width = 309
        Height = 21
        TabOrder = 5
      end
      object Edit6: TEdit
        Left = 46
        Top = 219
        Width = 121
        Height = 21
        TabOrder = 6
      end
      object Edit7: TEdit
        Left = 46
        Top = 273
        Width = 121
        Height = 21
        TabOrder = 7
      end
      object Edit8: TEdit
        Left = 210
        Top = 273
        Width = 145
        Height = 21
        TabOrder = 8
      end
      object Edit9: TEdit
        Left = 404
        Top = 104
        Width = 121
        Height = 21
        TabOrder = 9
      end
      object Edit10: TEdit
        Left = 558
        Top = 104
        Width = 121
        Height = 21
        TabOrder = 10
      end
      object Edit11: TEdit
        Left = 404
        Top = 163
        Width = 275
        Height = 21
        TabOrder = 11
      end
      object Edit12: TEdit
        Left = 210
        Top = 219
        Width = 145
        Height = 21
        TabOrder = 12
      end
      object CheckBox1: TCheckBox
        Left = 404
        Top = 221
        Width = 121
        Height = 17
        Caption = 'Cliente Negativado'
        TabOrder = 13
      end
    end
    object TabSheet2: TTabSheet
      Caption = 'Dados do Conjuge'
      ImageIndex = 1
    end
    object TabSheet3: TTabSheet
      Caption = 'Dados do Trabalho'
      ImageIndex = 2
    end
    object TabSheet4: TTabSheet
      Caption = 'An'#225'lise de Cr'#233'dito'
      ImageIndex = 3
    end
  end
end
