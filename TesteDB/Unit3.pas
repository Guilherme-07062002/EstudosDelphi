unit Unit3;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants,
  System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.StdCtrls, FireDAC.Stan.Intf,
  FireDAC.Stan.Option, FireDAC.Stan.Param, FireDAC.Stan.Error, FireDAC.DatS,
  FireDAC.Phys.Intf, FireDAC.DApt.Intf, FireDAC.Stan.Async, FireDAC.DApt,
  FireDAC.UI.Intf, FireDAC.Stan.Def, FireDAC.Stan.Pool, FireDAC.Phys,
  FireDAC.VCLUI.Wait, Data.DB, FireDAC.Comp.Client, FireDAC.Comp.DataSet,
  FireDAC.Phys.FB, FireDAC.Phys.FBDef, FireDAC.Comp.UI, FireDAC.Phys.IBBase;

type
  TRegistrar = class(TForm)
    Label1: TLabel;
    nome: TEdit;
    Label2: TLabel;
    senha: TEdit;
    Button1: TButton;
    DataSource1: TDataSource;
    RegisQuery: TFDQuery;
    FDQuery1: TFDQuery;
    DataSource2: TDataSource;
    RegisQueryCOUNT: TLargeintField;
    btnLogin: TButton;
    validaQuery: TFDQuery;
    procedure Button1Click(Sender: TObject);
    procedure inserirUsuario(ident: Integer; nameUser: String;
      password: Integer);
    procedure btnLoginClick(Sender: TObject);
    procedure validarUsuario(nameUser: String; password: Integer);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  Registrar: TRegistrar;
  nameUser: string;
  password: Integer;
  numId: Integer;
  userEqual: Integer;

implementation

{$R *.dfm}

uses Unit2, Unit1;

procedure TRegistrar.inserirUsuario(ident: Integer; nameUser: String;
  password: Integer);
begin
  WITH Registrar.FDQuery1 DO
  begin
    Close;
    SQL.Clear;
    SQL.Add('INSERT INTO usuario(id, nome, senha) VALUES(:ident ,:nameUser, :password)');
    params.ParamByName('ident').Value := ident;
    params.ParamByName('nameUser').Value := nameUser;
    params.ParamByName('password').Value := password;

    ExecSQL;
  end;
  ShowMessage('Inserido com sucesso.');
end;

procedure TRegistrar.validarUsuario(nameUser: String; password: Integer);
begin
  WITH Registrar.validaQuery DO
  begin
    Close;
    SQL.Clear;
    SQL.Add('SELECT COUNT(*) FROM usuario WHERE nome = :nameUser and senha = :password');
    params.ParamByName('nameUser').Value := nameUser;
    params.ParamByName('password').Value := password;
    validaQuery.Open()
  end;
  userEqual := validaQuery.FieldByName('COUNT').AsInteger;
  if (userEqual = 1) then
    ShowMessage('Login com sucesso')
  else
    ShowMessage('Usuário não encontrado');

end;

procedure TRegistrar.btnLoginClick(Sender: TObject);
begin
  validarUsuario(nome.Text, StrToInt(senha.Text));
end;

procedure TRegistrar.Button1Click(Sender: TObject);
begin
  WITH Registrar.RegisQuery DO
  begin
    Close;
    SQL.Clear;
    RegisQuery.SQL.Add('SELECT COUNT(ID) FROM usuario');
    RegisQuery.Open()
  end;
  numId := RegisQuery.FieldByName('COUNT').AsInteger;
  // showmessage('ID '+ IntToStr(numId));
  inserirUsuario((numId + 1), nome.Text, StrToInt(senha.Text));
end;

end.
