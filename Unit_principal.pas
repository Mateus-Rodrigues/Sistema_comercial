unit Unit_principal;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, System.Actions, Vcl.ActnList,
  Vcl.ToolWin, Vcl.ComCtrls, System.ImageList, Vcl.ImgList, Vcl.Menus,
  Vcl.ExtCtrls;

type
  TfrmPrincipal = class(TForm)
    atlAbreForm: TActionList;
    actCadFornecedores: TAction;
    actCadClientes: TAction;
    actCadProdutos: TAction;
    actCadFuncionarios: TAction;
    actCadVenda: TAction;
    actCadCompras: TAction;
    actConsultaFornecedores: TAction;
    actConsultaClientes: TAction;
    actConsultaProdutos: TAction;
    actSair: TAction;
    mmMenu: TMainMenu;
    Cadastro1: TMenuItem;
    Clientes1: TMenuItem;
    Fornecedores1: TMenuItem;
    Funcionrios1: TMenuItem;
    Produtos1: TMenuItem;
    Venda1: TMenuItem;
    Consulta1: TMenuItem;
    Fornecedores2: TMenuItem;
    Clientes2: TMenuItem;
    Produtos2: TMenuItem;
    Movimentaes1: TMenuItem;
    Movimentaes2: TMenuItem;
    Compra1: TMenuItem;
    Venda2: TMenuItem;
    img_48_24: TImageList;
    ToolBar1: TToolBar;
    ToolButton1: TToolButton;
    ToolButton2: TToolButton;
    ToolButton3: TToolButton;
    ToolButton4: TToolButton;
    ToolButton5: TToolButton;
    stbInfo: TStatusBar;
    tmrDtHora: TTimer;
    procedure actSairExecute(Sender: TObject);
    procedure tmrDtHoraTimer(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  frmPrincipal: TfrmPrincipal;

implementation

{$R *.dfm}

procedure TfrmPrincipal.actSairExecute(Sender: TObject);
begin
   Close;
end;

procedure TfrmPrincipal.FormClose(Sender: TObject; var Action: TCloseAction);
begin
  if MessageBox(Application.Handle, 'Você deseja sair do sitema?', 'Sair',
  MB_ICONQUESTION + MB_YESNO) = IDYES then
  begin
    Action := caFree;
  end
  else
  begin
    Action := caNone;
  end;
end;

procedure TfrmPrincipal.tmrDtHoraTimer(Sender: TObject);
begin
    stbInfo.Panels[0].Text := ' ' + FormatDateTime('hh:nn:ss', now);

    stbInfo.Panels[1].Text := ' ' + FormatDateTime('dddd", "dd", de "mmmm", de "yyyy', now);
end;

end.
