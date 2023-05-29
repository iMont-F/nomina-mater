unit Apollo.Transporte.ConcreteCreator;

interface

uses
  Apollo.Transporte.Creator, Apollo.Transporte.Product;

type
  TFabricaTransportes = class(TInterfacedObject, IFactoryMethod)
    function GetTipoTransporte(Transporte: String): ITipoTransporte;
  end;

implementation

uses
  Apollo.Transporte.ConcreteProduct;

{ TFabricaTransportes }

function TFabricaTransportes.GetTipoTransporte(Transporte: String): ITipoTransporte;
begin
  if Transporte = 'rodoviario' then
    Result := TTransporteRodoviario.Create
  else if Transporte = 'dutoviario' then
    Result := TTransporteDutoviario.Create;
end;

end.
