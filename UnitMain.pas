unit UnitMain;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.StdCtrls, IdBaseComponent,
  IdComponent, IdTCPConnection, IdTCPClient, IdHTTP;

type
  TForm1 = class(TForm)
    btnHttpGet: TButton;
    IdHTTP1: TIdHTTP;
    Label1: TLabel;
    editURL: TEdit;
    Label2: TLabel;
    MemoResult: TMemo;
    procedure btnHttpGetClick(Sender: TObject);
    function GetRequest(http: TIDhttp; URL: string): string;
    procedure FormCreate(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  Form1: TForm1;

implementation

{$R *.dfm}

procedure TForm1.btnHttpGetClick(Sender: TObject);
var
  s:string;
begin
  s := GetRequest(self.IdHTTP1, self.editURL.Text);
  //ShowMessage(s);
  MemoResult.Text := s;
end;

procedure TForm1.FormCreate(Sender: TObject);
begin
  MemoResult.Text := '';
end;

function TForm1.GetRequest(http: TIDhttp; URL: string): string;
var
  Resp: TStringStream;
begin
  Resp := TStringStream.Create('');
  try
    try
      Http.Get(URL, Resp);
      Http.Request.Referer := URL;
      Result := Resp.DataString;
    except
      Result := '';
      Exit;
    end;
  finally
    FreeAndNil(Resp);
  end;
end;

end.
