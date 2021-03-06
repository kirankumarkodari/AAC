unit client;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, StdCtrls, ScktComp,server;

type
  TForm4 = class(TForm)
    ClientSocket1: TClientSocket;
    Edit1: TEdit;
    Button1: TButton;
    Memo1: TMemo;
    ServerSocket1: TServerSocket;
    procedure FormCreate(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure Button1Click(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  Form4: TForm4;
  Form3: TForm3;
implementation

{$R *.dfm}

procedure TForm4.Button1Click(Sender: TObject);
begin
  ClientSocket1.Active := true;
if ClientSocket1.Active then
 ClientSocket1.Socket.SendText(Edit1.Text);
Form3.show;
end;

procedure TForm4.FormClose(Sender: TObject; var Action: TCloseAction);
begin
 ClientSocket1.Active := false;
end;

procedure TForm4.FormCreate(Sender: TObject);
begin
ClientSocket1.Port := 23;
 //local TCP/IP address of the server
 ClientSocket1.Host := '192.168.1.84';
 ClientSocket1.Active := true;

end;
end.
