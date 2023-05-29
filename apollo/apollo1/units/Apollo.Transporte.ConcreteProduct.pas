unit Apollo.Transporte.ConcreteProduct;

interface

uses
  Apollo.Transporte.Product;

type
  TTipoTransporte = class(TInterfacedObject, ITipoTransporte)
    public
      function GetArmazenamento: string; virtual; abstract;
      function GetCustoPorKm:    Double; virtual; abstract;
      function GetDescricao:     string; virtual; abstract;
  end;

  TTransporteRodoviario = class(TTipoTransporte)
    public
      function GetArmazenamento: string; override;
      function GetCustoPorKm:    Double; override;
      function GetDescricao:     string; override;
  end;

  TTransporteDutoviario = class(TTipoTransporte)
    public
      function GetArmazenamento: string; override;
      function GetCustoPorKm:    Double; override;
      function GetDescricao:     string; override;
  end;

implementation

{ TTransporteRodoviario }

function TTransporteRodoviario.GetArmazenamento: string;
begin
  Result := '1000 litros';
end;

function TTransporteRodoviario.GetCustoPorKm: Double;
begin
  Result := 15.5;
end;

function TTransporteRodoviario.GetDescricao: string;
begin
  Result := 'Caminhão';
end;

{ TTransporteDutoviario }

function TTransporteDutoviario.GetArmazenamento: string;
begin
  Result := '10000000 litros';
end;

function TTransporteDutoviario.GetCustoPorKm: Double;
begin
  Result := 0.2;
end;

function TTransporteDutoviario.GetDescricao: string;
begin
  Result := 'Dutos';
end;

end.
