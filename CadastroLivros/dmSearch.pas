unit dmSearch;

interface

uses
  System.SysUtils, System.Classes, FireDAC.Phys.FBDef, FireDAC.Stan.Intf,
  FireDAC.Stan.Option, FireDAC.Stan.Error, FireDAC.UI.Intf, FireDAC.Phys.Intf,
  FireDAC.Stan.Def, FireDAC.Stan.Pool, FireDAC.Stan.Async, FireDAC.Phys,
  FireDAC.Stan.Param, FireDAC.DatS, FireDAC.DApt.Intf, FireDAC.DApt,
  FireDAC.VCLUI.Wait, FireDAC.Comp.UI, Data.DB, FireDAC.Comp.DataSet,
  FireDAC.Comp.Client, FireDAC.Phys.IBBase, FireDAC.Phys.FB;

type
  TdmCadastro = class(TDataModule)
    FDPhysFBDriverLink1: TFDPhysFBDriverLink;
    connection: TFDConnection;
    qrySearch: TFDQuery;
    FDGUIxWaitCursor1: TFDGUIxWaitCursor;
    qrySearchID: TIntegerField;
    qrySearchTITULO: TStringField;
    qrySearchAUTOR: TStringField;
    qrySearchGENERO: TStringField;
    qrySearchIDIOMA: TStringField;
    qrySearchDISPONIVEL: TStringField;
    qrySearchRESUMO: TStringField;
    qrySearchCANAL: TStringField;
    addQry: TFDQuery;
    addQryCOUNT: TLargeintField;
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  dmCadastro: TdmCadastro;

implementation

{%CLASSGROUP 'Vcl.Controls.TControl'}

{$R *.dfm}

end.
