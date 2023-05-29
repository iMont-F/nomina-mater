unit Apollo.Transporte.Creator;

interface

uses
  Apollo.Transporte.Product;

type
  IFactoryMethod = interface
    function GetTipoTransporte(Transporte: String): ITipoTransporte;
  end;

implementation

end.
