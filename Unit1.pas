unit Unit1;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, StdCtrls, ExtCtrls,JvLED,pingsend, JvExControls,inifiles, Menus,
  XPMan;

type
  TForm1 = class(TForm)
    Timer1: TTimer;
    ScrollBox1: TScrollBox;
    Panel1: TPanel;
    Button1: TButton;
    Button2: TButton;
    Button3: TButton;
    XPManifest1: TXPManifest;
    procedure Timer1Timer(Sender: TObject);
    procedure Button2Click(Sender: TObject);
    procedure Button1Click(Sender: TObject);
    procedure Button3Click(Sender: TObject);

  private
    { Private declarations }
  public
    computers: integer;
  end;
TNewThread = class(TThread)
  private
    { Private declarations }
  protected
    procedure Execute; override;
  end;
var
  Form1: TForm1;

implementation

uses Unit2, Unit3;

{$R *.dfm}
 { TNewThread }

procedure TNewThread.Execute;
var
i: integer;
begin
 for i:= 1 to form1.computers do  
 if PingHost(form2.IPs[i])>=0 then
   (form2.FindComponent('led'+inttostr(i)) as TJvLED).active:=false
    else  (form2.FindComponent('led'+inttostr(i)) as TJvLED).active:=true;
end;

procedure TForm1.Timer1Timer(Sender: TObject);
var
  NewThread: TNewThread;
begin
  NewThread:=TNewThread.Create(true);
  NewThread.FreeOnTerminate:=true;
  NewThread.Priority:=tpLower;
  NewThread.Resume;
end;

procedure TForm1.Button2Click(Sender: TObject);
begin
form2.ShowModal;
end;

procedure TForm1.Button1Click(Sender: TObject);
begin
application.Terminate;
end;

procedure TForm1.Button3Click(Sender: TObject);
begin
form3.showmodal;
end;

end.
