unit Screen2;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, ExtCtrls, jpeg, StdCtrls;

type
  TForm3 = class(TForm)
    Image1: TImage;
    procedure FormCreate(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  Form3: TForm3;

implementation

uses Image, Config;

{$R *.dfm}

procedure TForm3.FormCreate(Sender: TObject);
begin
BorderStyle := bsNone;
Left:= 0;
Left := Screen.Monitors[0].Width;
Width := Screen.Monitors[1].Width;
Height := Screen.Monitors[1].Height;
end;

end.
