{== AbstractTypedList =================================================}
{: This unit implements the abstract base type of all typed
   list classes generated by GenTypedList.
@author Dr. Peter Below
@desc   Version 1.0  Created: 12.03.1999<BR>
        Version 1.01 created 28 M�rz 2002, added IUnknown implementation
          without reference counting. The implementation is not exposed,
          however.<BR>
        Last modified       2003-07-18 (added some comments)<P>
   }
{======================================================================}
{$BOOLEVAL OFF}{Unit depends on shortcut boolean evaluation}
Unit AbstractTypedList;
Interface

Uses Classes;

Type
  {: This is the base class for all typed lists as generated by
     GentypedList. }
  TAbstractTypedList = Class ( TPersistent ) 
  Private
    FStorage: TList;

    Function GetCount: Integer;
    Function GetLastIndex: Integer;
    Function GetCapacity: Integer;
    Procedure SetCapacity( value : Integer ); 
  Protected
    { IUnknown, implementation is not reference-counted }
    function QueryInterface(const IID: TGUID; out Obj): HResult; stdcall;
    function _AddRef: Integer; stdcall;
    function _Release: Integer; stdcall;

    Property Storage: TList read FStorage;
  Public
    Constructor Create; virtual;
    Destructor Destroy; override;

    Procedure Clear; virtual; 
    Procedure Exchange(Index1, Index2: Integer);
    Procedure Move(CurIndex, NewIndex: Integer);
    Procedure Delete(Index: Integer); virtual; 

    Property Count: Integer read GetCount;
    property LastIndex: Integer read GetLastIndex;
    Property Capacity: Integer read GetCapacity write SetCapacity;
  End;

Implementation

Uses {Windows,} SysUtils;

{+--------------------------------------------------------------
 | Methods of TAbstractTypedList 
 |
 | Most of the methods of this class simply call equivalent methods
 | of the FStorage TList item.
 +-------------------------------------------------------------}

Constructor TAbstractTypedList.Create;
  Begin
    inherited Create;
    FStorage := TList.Create;
  End; { TAbstractTypedList.Create }

Destructor TAbstractTypedList.Destroy; 
  Begin
    Clear;
    FStorage.Free;
    inherited Destroy;
  End; { TAbstractTypedList.Destroy }

Procedure TAbstractTypedList.Clear; 
  Begin
    FStorage.Clear;
  End; { TAbstractTypedList.Clear }

Procedure TAbstractTypedList.Exchange(Index1, Index2: Integer);
  Begin
    FStorage.Exchange( Index1, Index2 );
  End; { TAbstractTypedList.Exchange }

Procedure TAbstractTypedList.Move(CurIndex, NewIndex: Integer);
  Begin
    FStorage.Move( CurIndex, NewIndex );
  End; { TAbstractTypedList.Move }

Procedure TAbstractTypedList.Delete(Index: Integer); 
  Begin
    FStorage.Delete( Index );
  End; { TAbstractTypedList.Delete }

Function TAbstractTypedList.GetCount: Integer;
  Begin
    Result := FStorage.Count;
  End; { TAbstractTypedList.GetCount }

Function TAbstractTypedList.GetLastIndex: Integer;
  Begin
    Result := FStorage.Count - 1;
  End; { TAbstractTypedList.GetLastIndex }

Procedure TAbstractTypedList.SetCapacity( value : Integer ); 
  Var
    i: Integer;
  Begin
    If value < Count Then Begin 
      For i:= Lastindex  DownTo value - 1 Do 
        Delete( i );
    End; { If }
    FStorage.Capacity := value;
  End; { TAbstractTypedList.SetCapacity }

Function TAbstractTypedList.GetCapacity: Integer;
  Begin
    Result := FStorage.Capacity;
  End; { TAbstractTypedList.GetCapacity }

Function TAbstractTypedList.QueryInterface(
    const IID: TGUID; out Obj): HResult;
  Begin
    If GetInterface(IID, Obj) Then
      Result := S_OK
    Else
      Result := E_NOINTERFACE
  End;

Function TAbstractTypedList._AddRef: Integer;
  Begin
    Result := -1   // -1 indicates no reference counting is taking place
  End;

Function TAbstractTypedList._Release: Integer;
  Begin
    Result := -1   // -1 indicates no reference counting is taking place
  End;


End { Unit AbstractTypedList }.
