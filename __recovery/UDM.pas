unit UDM;

interface

uses
  System.SysUtils, System.Classes, Data.DB, Data.Win.ADODB;

type
  TDM = class(TDataModule)
    Conexao: TADOConnection;
    qryCadFornecedores: TADOQuery;
    qryCadFornecedoresforn_cod: TAutoIncField;
    qryCadFornecedoresforn_nm_fantasia: TStringField;
    qryCadFornecedoresforn_razao_social: TStringField;
    qryCadFornecedoresforn_dt_cad: TWideStringField;
    qryCadFornecedoresforn_cnpj: TLargeintField;
    qryCadFornecedoresforn_ativo: TBooleanField;
    qryCadFornecedoresforn_img: TStringField;
    qryCadFornecedoresforn_observacoes: TStringField;
    qry_cad_cliente: TADOQuery;
    qry_cad_funcionarios: TADOQuery;
    qry_cad_produto: TADOQuery;
    qry_cad_venda: TADOQuery;
    qry_cad_compra: TADOQuery;
    qry_pesq_fornecedor: TADOQuery;
    qry_pesq_cliente: TADOQuery;
    qry_pesq_funcionarios: TADOQuery;
    qry_pesq_produto: TADOQuery;
    qry_pesq_venda: TADOQuery;
    qery_pesq_compra: TADOQuery;
    qry_cad_forn_endereco: TADOQuery;
    qry_cad_cli_endereco: TADOQuery;
    qry_cad_vnd_prod: TADOQuery;
    qry_cad_comp_prod: TADOQuery;
    qry_cad_forn_tel: TADOQuery;
    qry_cad_cli_tel: TADOQuery;
    qry_lista_vnd_prod: TADOQuery;
    qry_exibe_comp_prod: TADOQuery;
    qry_lista_forn_prod: TADOQuery;
    qry_cad_forn_prod: TADOQuery;
    qry_total: TADOQuery;
    qry_cad_clientecli_cod: TAutoIncField;
    qry_cad_clientecli_nome: TStringField;
    qry_cad_clientecli_cpf: TLargeintField;
    qry_cad_clientecli_renda: TBCDField;
    qry_cad_clientecli_ativo: TBooleanField;
    qry_cad_clientecli_dt_nasc: TWideStringField;
    qry_cad_clientecli_img: TStringField;
    qry_cad_funcionariosfun_cod: TAutoIncField;
    qry_cad_funcionariosfun_nome: TStringField;
    qry_cad_funcionariosfun_dt_nasc: TWideStringField;
    qry_cad_funcionariosfun_salario: TBCDField;
    qry_cad_funcionariosfun_login: TStringField;
    qry_cad_funcionariosfun_senha: TStringField;
    qry_cad_funcionariosfun_tp_usu: TStringField;
    qry_cad_produtoprod_cod: TAutoIncField;
    qry_cad_produtoprod_nome: TStringField;
    qry_cad_produtoprod_img: TStringField;
    qry_cad_produtoprod_estq: TIntegerField;
    qry_cad_produtoprod_vlr_vnd: TBCDField;
    qry_cad_vendavnd_cod: TAutoIncField;
    qry_cad_vendacli_cod: TIntegerField;
    qry_cad_vendafun_cod: TIntegerField;
    qry_cad_vendavnd_data: TWideStringField;
    qry_cad_compracomp_cod: TAutoIncField;
    qry_cad_compracomp_data: TWideStringField;
    qry_cad_compraforn_cod: TIntegerField;
    procedure DataModuleCreate(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  DM: TDM;

implementation

{%CLASSGROUP 'Vcl.Controls.TControl'}

{$R *.dfm}

procedure TDM.DataModuleCreate(Sender: TObject);
begin

end;

end.
