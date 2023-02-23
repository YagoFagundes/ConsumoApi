unit Unit1;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, REST.Types, REST.Client,
  Data.Bind.Components, Data.Bind.ObjectScope, Vcl.StdCtrls, System.Generics.Collections,
	REST.Json.Types;

type
  TForm1 = class(TForm)
    Label1: TLabel;
    Edit1: TEdit;
    Button1: TButton;
    Label2: TLabel;
    Edit2: TEdit;
    Button2: TButton;
    RESTClient1: TRESTClient;
    RESTRequest1: TRESTRequest;
    RESTResponse1: TRESTResponse;
    memo1: TMemo;
    procedure Button1Click(Sender: TObject);
    procedure Button2Click(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  Form1: TForm1;

implementation

{$R *.dfm}

procedure TForm1.Button1Click(Sender: TObject);
begin
  memo1.Clear;
  RESTClient1.BaseURL := 'https://www.receitaws.com.br/v1/cnpj/'+ Edit1.Text;
//  RESTRequest1.Resource := '{cnpj}';
//  RESTRequest1.Params.AddUrlSegment('cnpj',Edit1.Text);
  RESTRequest1.Execute;
  memo1.Lines.Add(RESTRequest1.Response.JSONText);
end;

procedure TForm1.Button2Click(Sender: TObject);
begin
  RESTClient1.BaseURL := 'https://viacep.com.br/ws/'+ Edit2.Text+'/json/';
//  RESTRequest1.Resource := '{cep}/json/';
//  RESTRequest1.Params.AddUrlSegment('cep',Edit2.Text);
  RESTRequest1.Execute;
  memo1.Clear;
  memo1.Lines.Add(RESTRequest1.Response.JSONText);
end;

end.
