unit Image;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, ExtDlgs, ExtCtrls, StdCtrls, jpeg, ImgList, Menus;

type
  TForm1 = class(TForm)
    Button1: TButton;
    IMGFOTO: TImage;
    Button2: TButton;
    Button3: TButton;
    Button4: TButton;
    IMAGE: TOpenPictureDialog;
    Label1: TLabel;
    Label2: TLabel;
    Label3: TLabel;
    ListBox1: TListBox;
    ListBox2: TListBox;
    Button5: TButton;
    GroupBox1: TGroupBox;
    GroupBox2: TGroupBox;
    procedure Button1Click(Sender: TObject);
    procedure Button2Click(Sender: TObject);
    procedure Button4Click(Sender: TObject);
    procedure Button3Click(Sender: TObject);
    procedure ListBox1Click(Sender: TObject);
    procedure ListBox2Click(Sender: TObject);
    procedure FormCreate(Sender: TObject);
    procedure Button5Click(Sender: TObject);
    procedure ListBox2KeyPress(Sender: TObject; var Key: Char);
    procedure FormShow(Sender: TObject);
    
  private
    { Private declarations }
    procedure WMGetMinMaxInfo(var MSG: TMessage); message WM_GetMinMaxInfo;
  public
    { Public declarations }
  end;

var
  Form1: TForm1;

implementation

uses Screen2, IMG, Config;

{$R *.dfm}

procedure TForm1.Button1Click(Sender: TObject);
var
i: integer;
begin
    if (IMAGE.Execute) then
        begin
          for i:=0 to IMAGE.Files.Count -1 do
            begin
            ListBox1.Items.Add(IMAGE.Files[i]);
            end;
          for i:=0 to IMAGE.Files.Count -1 do
            begin
            ListBox2.Items.Add(ChangeFileExt(ExtractFileName(IMAGE.Files[i]), EmptyStr));
            end;
        end;

end;

procedure TForm1.Button2Click(Sender: TObject);
begin
Form4.CheckBox1.Checked := True;
end;

procedure TForm1.Button4Click(Sender: TObject);
begin
Form3.Image2.Visible := False;
Form3.Image1.Visible := True;
end;

procedure TForm1.Button3Click(Sender: TObject);
begin
if ListBox2.ItemIndex = -1 then
ShowMessage('Selecione uma Imagem');
if ListBox2.ItemIndex <> -1 then
Form3.Image1.Visible := False;
Form3.Image2.Visible := True;
end;

procedure TForm1.ListBox1Click(Sender: TObject);
var i:Integer;
begin
For i:=0 to ListBox1.Count -1 do
begin
if ListBox1.Selected[i] then
IMGFOTO.Picture.LoadFromFile(ListBox1.Items.Strings[i]);
if ListBox1.Selected[i] then
Form3.Image2.Picture.LoadFromFile(ListBox1.Items.Strings[i]);
end;
end;

procedure TForm1.ListBox2Click(Sender: TObject);
var i: Integer;
begin
For i:=0 to ListBox2.Count -1 do
begin
if ListBox2.Selected[i] then
IMGFOTO.Picture.LoadFromFile(ListBox1.Items.Strings[i]);
if ListBox2.Selected[i] then
Form3.Image2.Picture.LoadFromFile(ListBox1.Items.Strings[i]);
end;
end;

procedure TForm1.FormCreate(Sender: TObject);
begin
Height := Screen.Height;
Width := Screen.Width;
end;

procedure TForm1.Button5Click(Sender: TObject);
begin
Form4.Show;
Form1.Enabled := False;
end;


procedure TForm1.ListBox2KeyPress(Sender: TObject; var Key: Char);
begin
if Key = #38 then
ListBox2.ItemIndex := ListBox2.ItemIndex;
ListBox2.ItemIndex := ListBox2.ItemIndex -1;
if Key = #40 then
ListBox2.ItemIndex := ListBox2.ItemIndex;
ListBox2.ItemIndex := ListBox2.ItemIndex +1;
if Key = #13 then
Button3.Click;
if Key = #27 then
Button4.Click;
end;

procedure TForm1.WMGetMinMaxInfo(var MSG: TMessage);
begin
  inherited;
  with PMinMaxInfo(MSG.lparam)^ do begin
  ptMinTRackSize.X := 1024;
  ptMinTRackSize.Y := 726;
  end;
end;

procedure TForm1.FormShow(Sender: TObject);
begin
Width := Screen.Monitors[0].Width;
Height := Screen.Monitors[0].Height;
Left := Screen.Monitors[0].Left;
WindowState := wsMaximized;
Form4.CheckBox1.Checked:= True;
Form4.Button3.Click;
end;

end.

