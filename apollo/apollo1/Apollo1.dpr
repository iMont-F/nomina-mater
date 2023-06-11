program Apollo1;

uses
  Vcl.Forms,
  ufApollo1 in 'units\ufApollo1.pas' {Form1},
  Apollo.Transporte.Product in 'units\Apollo.Transporte.Product.pas',
  Apollo.Transporte.Creator in 'units\Apollo.Transporte.Creator.pas',
  Apollo.Transporte.ConcreteProduct in 'units\Apollo.Transporte.ConcreteProduct.pas',
  Apollo.Transporte.ConcreteCreator in 'units\Apollo.Transporte.ConcreteCreator.pas';

{$R *.res}

begin
  Application.Initialize;
  Application.MainFormOnTaskbar := True;
  Application.CreateForm(TFApollo1, FApollo1);
  Application.Run;
end.
