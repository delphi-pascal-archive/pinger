unit Unit2;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, StdCtrls, inifiles, ExtCtrls, Grids, ValEdit,JvLED,JvExControls;

type
  TForm2 = class(TForm)
    Memo1: TMemo;
    Panel1: TPanel;
    Panel2: TPanel;
    Button1: TButton;
    Button2: TButton;
    Button3: TButton;
    ipedit: TLabeledEdit;
    Label1: TLabel;
    comedit: TLabeledEdit;
    Button4: TButton;
    procedure Button2Click(Sender: TObject);
    procedure Button3Click(Sender: TObject);
    procedure FormCreate(Sender: TObject);
    procedure Button1Click(Sender: TObject);
    procedure Button4Click(Sender: TObject);
  private
    { Private declarations }
  public
    led:  array[0..200] of TJvLED;
    labels:  array[0..200] of Tlabel;
    IPs: array[0..200] of string;
  end;

var
  Form2: TForm2;
  sPath: string;
  C_Count: integer;

implementation

uses Unit1;

{$R *.dfm}

function ReadIni(ASection, AString: string): string;
var
  sIniFile: TIniFile;

const
  S = 'xyz'; { стандартная строка для выдачи ошибок чтения }
begin
  sIniFile := TIniFile.Create(sPath + '\Computers.ini');
  Result := sIniFile.ReadString(ASection, AString, S); { [Section] String=Value}
  sIniFile.Free;
end;

procedure WriteIni(ASection, AString, AValue: string);
var
  sIniFile: TIniFile;
begin
  sIniFile := TIniFile.Create(sPath + '\Computers.ini');
  sIniFile.WriteString(ASection, AString, AValue); { [Section] String=Value }
  sIniFile.Free;
end;

procedure TForm2.Button2Click(Sender: TObject);
begin
 close;
end;

procedure TForm2.Button3Click(Sender: TObject);
var
 i: integer;
begin
deletefile(sPath + '\Computers.ini');

for i:= 0 to memo1.Lines.Count-1 do
WriteIni('Computers',inttostr(i+1),memo1.Lines.Strings[i]);

WriteIni('Other','Count',inttostr(memo1.Lines.Count));
end;

procedure TForm2.FormCreate(Sender: TObject);
var
 i,t,l: integer;
 s,f,n: string;
begin
GetDir(0, sPath);
C_Count:= strtoint(readini('Other','Count'));
form1.computers:= c_count;
memo1.Clear;

for  i:= 0 to c_count-1 do
begin
memo1.Lines.Add(ReadIni('Computers', inttostr(i+1)));
t:= i+1;

//создание индикаторов
led[t]:=TJvLED.Create(Form2);
led[t].Parent:=Form1.ScrollBox1;
led[t].Name:='led'+IntToStr(t);
led[t].Height:=26;
led[t].Width:=17;
led[t].Top:=10+(t-1)*led[t].Height;
led[t].Left:=4;
led[t].Visible:=true;

s:= ReadIni('Computers', inttostr(i+1));
l:= pos('=',s);
f:= copy(s,l+1,length(s));
n:= copy(s,0,l-1);
ips[t]:= n;
//создание меток описаний
labels[t]:=Tlabel.Create(Form2);
labels[t].Parent:=Form1.ScrollBox1;
labels[t].Name:='Com_Label'+IntToStr(t);
labels[t].Height:=26;
labels[t].Width:=120;
labels[t].Top:=8+(t-1)*labels[t].Height+8;
labels[t].Left:=24;
labels[t].Visible:=true;
labels[t].Caption:=  f;
end;
end;

procedure TForm2.Button1Click(Sender: TObject);
begin
 Button3.Click;
 close;
end;

procedure TForm2.Button4Click(Sender: TObject);
begin
 memo1.Lines.Add(ipedit.Text+'='+comedit.Text)
end;

end.
