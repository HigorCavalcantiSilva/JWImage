unit Config;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, StdCtrls;

type
  TForm4 = class(TForm)
    Edit3: TEdit;
    Edit4: TEdit;
    GroupBox2: TGroupBox;
    Label3: TLabel;
    Label4: TLabel;
    Button1: TButton;
    Button2: TButton;
    Label2: TLabel;
    Edit1: TEdit;
    Label1: TLabel;
    CheckBox1: TCheckBox;
    Button3: TButton;
    Button4: TButton;
    procedure FormShow(Sender: TObject);
    procedure Button1Click(Sender: TObject);
    procedure Button2Click(Sender: TObject);
    procedure CheckBox1Click(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure Button3Click(Sender: TObject);
    procedure Button4Click(Sender: TObject);
  private
    { Private declarations }
  public
     { Public declarations }
  end;

var
  Form4: TForm4;

implementation

uses Image, IMG, Screen2, Winsock;

{$R *.dfm}

procedure TForm4.FormShow(Sender: TObject);
begin
Edit3.Text := floattostr(Form3.Width);
Edit4.Text := floattostr(Form3.Height);
Edit1.Text := floattostr(Form3.Left);
end;

procedure TForm4.Button1Click(Sender: TObject);
begin
Form3.Width := strtoint(Edit3.Text);
Form3.Height := strtoint(Edit4.Text);
Form3.Left := strtoint(Edit1.Text);
Form2.Width := strtoint(Edit3.Text);
Form2.Height := strtoint(Edit4.Text);
Form2.Left := strtoint(Edit1.Text);
Form3.Image1.Width := strtoint(Edit3.Text);
Form3.Image1.Height := strtoint(Edit4.Text) + 2;
Form2.Image1.Width := strtoint(Edit3.Text);
Form2.Image1.Height := strtoint(Edit4.Text) + 2;
<<<<<<< HEAD
=======

>>>>>>> e0e6e6d4713626f0c7d402e65bb788520e44d6cd
end;

procedure TForm4.Button2Click(Sender: TObject);
begin
Form4.Close;
end;

procedure TForm4.CheckBox1Click(Sender: TObject);
begin
if CheckBox1.Checked = True then
Form3.Show;
if CheckBox1.Checked = False then
Form3.Close;
end;

procedure TForm4.FormClose(Sender: TObject; var Action: TCloseAction);
begin
Form1.Enabled := True;
end;

procedure TForm4.Button3Click(Sender: TObject);
begin
Form3.Width := Screen.Monitors[1].Width;
Edit3.Text := floattostr(Form3.Width);
Form3.Height := Screen.Monitors[1].Height;
Edit4.Text := floattostr(Form3.Height);
Form3.Left := Screen.Monitors[0].Width;
Edit1.Text := floattostr(Form3.Left);
Form3.Image1.Width := Screen.Monitors[1].Width;
Form3.Image1.Height := Screen.Monitors[1].Height + 2;
Form2.Image1.Width := Screen.Monitors[1].Width;
Form2.Image1.Height := Screen.Monitors[1].Height + 2;
<<<<<<< HEAD
end;

procedure TForm4.Button4Click(Sender: TObject);
var     WSAData: TWSAData;
    HostEnt: PHostEnt;
    Name, Result:string;
begin
  WSAStartup(2, WSAData);
  SetLength(Name, 255);
  Gethostname(PChar(Name), 255);
  SetLength(Name, StrLen(PChar(Name)));
  HostEnt := gethostbyname(PChar(Name));
  with HostEnt^ do
  begin
    Result := Format('%d.%d.%d.%d',
    [Byte(h_addr^[0]),Byte(h_addr^[1]),
    Byte(h_addr^[2]),Byte(h_addr^[3])]);
  end;
    WSACleanup;
    ShowMessage(Result);
=======
>>>>>>> e0e6e6d4713626f0c7d402e65bb788520e44d6cd
end;

end.
