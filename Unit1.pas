unit Unit1;

{$WARN SYMBOL_PLATFORM OFF}

interface

uses
  Windows, ActiveX, Classes, ComObj, Project1_TLB, StdVcl;

type
  Tcomobject = class(TTypedComObject, Icomobject)
  protected
    function podschet(x, y, z: Integer): Integer; stdcall;
  end;

implementation

uses ComServ;

function Tcomobject.podschet(x, y, z: Integer): Integer;
begin
result:=x*y*z;
end;

initialization
  TTypedComObjectFactory.Create(ComServer, Tcomobject, Class_comobject,
    ciMultiInstance, tmApartment);
end.
