unit Project1_TLB;

// ************************************************************************ //
// WARNING
// -------
// The types declared in this file were generated from data read from a
// Type Library. If this type library is explicitly or indirectly (via
// another type library referring to this type library) re-imported, or the
// 'Refresh' command of the Type Library Editor activated while editing the
// Type Library, the contents of this file will be regenerated and all
// manual modifications will be lost.
// ************************************************************************ //

// $Rev: 52393 $
// File generated on 03.06.2016 0:21:04 from Type Library described below.

// ************************************************************************  //
// Type Lib: C:\Users\1\Desktop\comobject\Project1 (1)
// LIBID: {CB926E7D-0B8E-4A01-8F18-5173AEFCE4A0}
// LCID: 0
// Helpfile:
// HelpString:
// DepndLst:
//   (1) v2.0 stdole, (C:\Windows\SysWOW64\stdole2.tlb)
// SYS_KIND: SYS_WIN32
// ************************************************************************ //
{$TYPEDADDRESS OFF} // Unit must be compiled without type-checked pointers.
{$WARN SYMBOL_PLATFORM OFF}
{$WRITEABLECONST ON}
{$VARPROPSETTER ON}
{$ALIGN 4}

interface

uses Winapi.Windows, System.Classes, System.Variants, System.Win.StdVCL, Vcl.Graphics, Vcl.OleServer, Winapi.ActiveX;


// *********************************************************************//
// GUIDS declared in the TypeLibrary. Following prefixes are used:
//   Type Libraries     : LIBID_xxxx
//   CoClasses          : CLASS_xxxx
//   DISPInterfaces     : DIID_xxxx
//   Non-DISP interfaces: IID_xxxx
// *********************************************************************//
const
  // TypeLibrary Major and minor versions
  Project1MajorVersion = 1;
  Project1MinorVersion = 0;

  LIBID_Project1: TGUID = '{CB926E7D-0B8E-4A01-8F18-5173AEFCE4A0}';

  IID_Icomobject: TGUID = '{0A2F7994-8928-4E7A-9190-9D65A76CB932}';
  CLASS_comobject: TGUID = '{0F819730-3180-4FE9-8174-DA3D5924CFE9}';
type

// *********************************************************************//
// Forward declaration of types defined in TypeLibrary
// *********************************************************************//
  Icomobject = interface;

// *********************************************************************//
// Declaration of CoClasses defined in Type Library
// (NOTE: Here we map each CoClass to its Default Interface)
// *********************************************************************//
  comobject = Icomobject;


// *********************************************************************//
// Interface: Icomobject
// Flags:     (256) OleAutomation
// GUID:      {0A2F7994-8928-4E7A-9190-9D65A76CB932}
// *********************************************************************//
  Icomobject = interface(IUnknown)
    ['{0A2F7994-8928-4E7A-9190-9D65A76CB932}']
    function podschet(x: Integer; y: Integer; z: Integer): Integer; stdcall;
  end;

// *********************************************************************//
// The Class Cocomobject provides a Create and CreateRemote method to
// create instances of the default interface Icomobject exposed by
// the CoClass comobject. The functions are intended to be used by
// clients wishing to automate the CoClass objects exposed by the
// server of this typelibrary.
// *********************************************************************//
  Cocomobject = class
    class function Create: Icomobject;
    class function CreateRemote(const MachineName: string): Icomobject;
  end;

implementation

uses System.Win.ComObj;

class function Cocomobject.Create: Icomobject;
begin
  Result := CreateComObject(CLASS_comobject) as Icomobject;
end;

class function Cocomobject.CreateRemote(const MachineName: string): Icomobject;
begin
  Result := CreateRemoteComObject(MachineName, CLASS_comobject) as Icomobject;
end;

end.

