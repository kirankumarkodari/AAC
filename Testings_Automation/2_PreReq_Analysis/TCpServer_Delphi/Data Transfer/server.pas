unit server;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, StdCtrls, ScktComp;

type
  TForm3 = class(TForm)
    ServerSocket1: TServerSocket;
    Memo1: TMemo;
    procedure FormCreate(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure ServerSocket1ClientRead(Sender: TObject;
      Socket: TCustomWinSocket);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  Form3: TForm3;

implementation

{$R *.dfm}

procedure TForm3.FormClose(Sender: TObject; var Action: TCloseAction);
begin
 ServerSocket1.Active := false;

end;

procedure TForm3.FormCreate(Sender: TObject);
begin
 ServerSocket1.Port := 8085;
  //ServerSocket1.Service := '192.168.1.142';
 ServerSocket1.Active := True;
end;

procedure TForm3.ServerSocket1ClientRead(Sender: TObject;
  Socket: TCustomWinSocket);
begin

Memo1.Lines.Add(Socket.ReceiveText);

end;

end.
