unit Unit1;

interface

uses
  Windows, Messages, SysUtils, Classes, Graphics, Controls, Forms,
  Dialogs, StdCtrls;

type
  TForm1 = class(TForm)
    Edit1: TEdit;
    Button1: TButton;
    Label1: TLabel;
    procedure Button1Click(Sender: TObject);
  end;

var
  Form1: TForm1;

implementation

{$R *.dfm}

uses
  ShellAPI, Registry;

function OpenRegEditAndJumpToKey(const KeyName: String): Boolean;
begin
  with TRegistry.Create do
  try
    RootKey := HKEY_CURRENT_USER;
    Result := OpenKey(
      'Software\Microsoft\Windows\CurrentVersion\Applets\Regedit', False);
    if Result then
    try
      try
        WriteString('LastKey', KeyName);
      except
        Result := False;
        Exit;
      end;
    finally
      CloseKey;
    end;
  finally
    Free;
  end;
  Result := ShellExecute(0, 'open',
    'regedit.exe', nil, nil, SW_SHOWNORMAL) > HINSTANCE_ERROR;
end;

procedure TForm1.Button1Click(Sender: TObject);
begin
  if not OpenRegEditAndJumpToKey(Edit1.Text) then
    RaiseLastOSError;
end;

end.
