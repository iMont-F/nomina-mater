unit ufApollo1;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.StdCtrls, Vcl.ExtCtrls;

type
  TFApollo1 = class(TForm)
    edtTransporteArmazenamento: TEdit;
    edtTransporteDescricao: TEdit;
    edtTransporteCustoKm: TEdit;
    lblTransporteDescricao: TLabel;
    lblTransporteArmazenamento: TLabel;
    lblTransporteCustoKm: TLabel;
    rgTiposTransporte: TRadioGroup;
    btnBuscarTransporte: TButton;
    btnLimparRetorno: TButton;
    procedure btnBuscarTransporteClick(Sender: TObject);
    procedure FormCreate(Sender: TObject);
    procedure btnLimparRetornoClick(Sender: TObject);
  private
    { Private declarations }
    procedure GetDadosTransporte(cTransporte: string);
    procedure LimparCampos;
  public
    { Public declarations }
    FTransporteDescricao: String;
    FCustoKm: Double;
    FArmazenamento: String;
  end;

var
  FApollo1: TFApollo1;

implementation

uses
  Apollo.Transporte.Product, Apollo.Transporte.Creator, Apollo.Transporte.ConcreteCreator;

{$R *.dfm}

procedure TFApollo1.btnBuscarTransporteClick(Sender: TObject);
var
  cTransporte: String;
begin
  LimparCampos;

  if rgTiposTransporte.ItemIndex < 0 then
    begin
    MessageDlg('Selecione um tipo de transporte válido!', TMsgDlgType.mtWarning, [mbOK], 0);
    Exit;
  end;

  case rgTiposTransporte.ItemIndex of
    0: cTransporte := 'rodoviario';
    2: cTransporte := 'dutoviario';
  end;
  GetDadosTransporte(cTransporte);

  edtTransporteDescricao.Text      := FTransporteDescricao;
  //edtTransporteCustoKm.Text      := FloatToString(FCustoKm);
  edtTransporteArmazenamento.Text  := FArmazenamento;
end;

procedure TFApollo1.btnLimparRetornoClick(Sender: TObject);
begin
  LimparCampos;
end;

procedure TFApollo1.FormCreate(Sender: TObject);
begin
  FTransporteDescricao := '';
  FCustoKm := 0;
  FArmazenamento := '';
end;

procedure TFApollo1.GetDadosTransporte(cTransporte: string);
var
  FabricaTransportes: IFactoryMethod;
  TipoTransporte: ITipoTransporte;
begin
  FabricaTransportes := TFabricaTransportes.Create;
  TipoTransporte := FabricaTransportes.GetTipoTransporte(cTransporte);

  if cTransporte = '' then
    begin
    MessageDlg('Erro ao buscar tipo de transporte.', TMsgDlgType.mtError, [mbOK], 0);
    Exit;
  end;

  FTransporteDescricao := TipoTransporte.GetDescricao;
  FCustoKm := TipoTransporte.GetCustoPorKm;
  FArmazenamento := TipoTransporte.GetArmazenamento;
end;

procedure TFApollo1.LimparCampos;
begin
  edtTransporteDescricao.Text      := '';
  edtTransporteCustoKm.Text        := '';
  edtTransporteArmazenamento.Text  := '';
  FTransporteDescricao := '';
  FCustoKm := 0;
  FArmazenamento := '';
end;

end.
