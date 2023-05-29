unit Apollo.Transporte.Product;

interface

type
  ITipoTransporte = interface
    function GetArmazenamento: string;
    function GetCustoPorKm:    Double;
    function GetDescricao:     string;
  end;

implementation

end.
