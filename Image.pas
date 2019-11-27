unit Image;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, ExtDlgs, ExtCtrls, StdCtrls, jpeg, ImgList, Menus,
  IdBaseComponent, IdComponent, IdTCPServer, IdCustomHTTPServer,
  IdHTTPServer;

type
  TForm1 = class(TForm)
    Button1: TButton;
    IMGFOTO: TImage;
    Button3: TButton;
    Button4: TButton;
    IMAGE: TOpenPictureDialog;
    Label1: TLabel;
    Label2: TLabel;
    Label3: TLabel;
    ListBox1: TListBox;
    ListBox2: TListBox;
    GroupBox1: TGroupBox;
    GroupBox2: TGroupBox;
    Button5: TButton;
<<<<<<< HEAD
    IdHTTPServer1: TIdHTTPServer;
    Memo1: TMemo;
=======
>>>>>>> e0e6e6d4713626f0c7d402e65bb788520e44d6cd
    procedure Button1Click(Sender: TObject);
    procedure Button4Click(Sender: TObject);
    procedure Button3Click(Sender: TObject);
    procedure ListBox1Click(Sender: TObject);
    procedure ListBox2Click(Sender: TObject);
    procedure FormCreate(Sender: TObject);
    procedure Button5Click(Sender: TObject);
    procedure ListBox2KeyPress(Sender: TObject; var Key: Char);
    procedure FormShow(Sender: TObject);
    procedure IdHTTPServer1CommandGet(AThread: TIdPeerThread;
      ARequestInfo: TIdHTTPRequestInfo;
      AResponseInfo: TIdHTTPResponseInfo);
    
  private
    { Private declarations }
     procedure WMGetMinMaxInfo(var MSG: TMessage); message WM_GetMinMaxInfo;
  public
    { Public declarations }
  end;

var
  Form1: TForm1;

implementation

uses Screen2, IMG, Config, Math;

{$R *.dfm}

procedure TForm1.Button1Click(Sender: TObject);
var
i: integer;
begin
    if (IMAGE.Execute) then
        begin
          Memo1.Lines.Delete(25);
          Memo1.Lines.Add('<h1>SELECIONE A IMAGEM</h1><select class"form-control" id="id">');
          for i:=0 to IMAGE.Files.Count -1 do
            begin
            ListBox1.Items.Add(IMAGE.Files[i]);
            end;
          for i:=0 to IMAGE.Files.Count -1 do
            begin
            ListBox2.Items.Add(ChangeFileExt(ExtractFileName(IMAGE.Files[i]), EmptyStr));
            Memo1.Lines[i+28] := '<option value="'+inttostr(i)+'">'+ChangeFileExt(ExtractFileName(IMAGE.Files[i]), EmptyStr)+'</option>';
            Memo1.Lines.Add(Memo1.Lines[i+29]);
            end;
            Memo1.Lines.Add('</select><br><br><a style="margin-right: 30px" class="btn btn-primary bt1">Projetar Imagem</a><a class="btn btn-danger bt2">Fechar Imagem</a>');
            Memo1.Lines.Add('<script type="text/javascript">var box = document.getElementById("id");var url = window.location.search.replace("?", "");var items = url.split("&");');
            Memo1.Lines.Add('if(items == ""){ items[1] = "0"; }');
            Memo1.Lines.Add('box.selectedIndex = items[1].substring(items[1].length-1);var bt1 = document.querySelector(".bt1");var bt2 = document.querySelector(".bt2");');
            Memo1.Lines.Add('bt1.addEventListener("click", function(){sel = box.options[box.selectedIndex].value;location.href = "?status=1&id="+sel;})');
            Memo1.Lines.Add('bt2.addEventListener("click", function(){sel = box.options[box.selectedIndex].value;location.href = "?status=0&id="+sel;});');
            Memo1.Lines.Add('window.history.pushState("", "CONTROLE DE IMAGENS MOBILE", "JW-Image-v3.0");');
            Memo1.Lines.Add('</script></body></html>');
        end;
<<<<<<< HEAD
=======

>>>>>>> e0e6e6d4713626f0c7d402e65bb788520e44d6cd
end;

procedure TForm1.Button4Click(Sender: TObject);
var i3: Integer;
begin
i3 := Form2.AlphaBlendValue;
while Form2.AlphaBlendValue <> 0 do
  begin
  i3 := i3 - 5;
  Form2.AlphaBlendValue := i3;
  sleep(12);
  end;
end;

procedure TForm1.Button3Click(Sender: TObject);
var i2: Integer;
begin
if ListBox2.ItemIndex = -1 then
begin
ShowMessage('Selecione uma Imagem');
Button4.Click;
<<<<<<< HEAD
end;
=======
>>>>>>> e0e6e6d4713626f0c7d402e65bb788520e44d6cd
if ListBox2.ItemIndex <> -1 then
Form2.Show;
Form1.Show;
Form3.AlphaBlend := True;
for i2:=Form2.AlphaBlendValue to 51 do
  begin
  Form2.AlphaBlendValue := i2*5;
  sleep(12);
  end;
end;

procedure TForm1.ListBox1Click(Sender: TObject);
var i:Integer;
begin
For i:=0 to ListBox1.Count -1 do
begin
if ListBox1.Selected[i] then
IMGFOTO.Picture.LoadFromFile(ListBox1.Items.Strings[i]);
if ListBox1.Selected[i] then
Form2.Image1.Picture.LoadFromFile(ListBox1.Items.Strings[i]);
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
Form2.Image1.Picture.LoadFromFile(ListBox1.Items.Strings[i]);
end;
end;

procedure TForm1.FormCreate(Sender: TObject);
begin
Height := Screen.Height;
Width := Screen.Width;
if Screen.MonitorCount < 2 then
begin
  ShowMessage('Monitor secundário não encontrado. Certifique-se de que o computador está no modo ESTENDER!');
  Application.Terminate;
end;
<<<<<<< HEAD
IdHTTPServer1.Active := False;
IdHTTPServer1.DefaultPort := 80;
IdHTTPServer1.Active := True;
=======
>>>>>>> e0e6e6d4713626f0c7d402e65bb788520e44d6cd
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
begin
if Form2.AlphaBlendValue <> 255 then
begin
Button3.Click;
end else begin
end;
end;
if Key = #27 then
Button4.Click;
end;

procedure TForm1.WMGetMinMaxInfo(var MSG: TMessage);
begin
  inherited;
  with PMinMaxInfo(MSG.lparam)^ do begin
  ptMinTRackSize.X := 1106;
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
Form4.Button1.Click;
<<<<<<< HEAD
end;

procedure TForm1.IdHTTPServer1CommandGet(AThread: TIdPeerThread;
  ARequestInfo: TIdHTTPRequestInfo; AResponseInfo: TIdHTTPResponseInfo);
  var cont: Integer;
 status, id, temp: string;
begin
  for cont := 0 to (ARequestInfo.Params.Count - 1) do
  begin
     temp := ARequestInfo.Params[cont];
     if(StrPos(PChar(temp),PChar('status=')) <> '') then
     begin
        status := StrRScan(PChar(temp),'=') + 1;
     end;

     if(StrPos(PChar(temp),PChar('id=')) <> '') then
     begin
        id := StrRScan(PChar(temp),'=') + 1;
     end;
  end;

  if id <> '' then
  begin
  ListBox2.ItemIndex := strtoint(id);
  IMGFOTO.Picture.LoadFromFile(ListBox1.Items.Strings[strtoint(id)]);
  if status = '0' then
  begin                         
  Button4.Click;
  end else begin
  Form2.Image1.Picture.LoadFromFile(ListBox1.Items.Strings[strtoint(id)]);
  Button3.Click;
  end;
  end;
  AResponseInfo.ContentText := Memo1.Lines.GetText;
=======
>>>>>>> e0e6e6d4713626f0c7d402e65bb788520e44d6cd
end;

end.

