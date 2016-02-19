unit Unit3;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, StdCtrls;

type
  TForm3 = class(TForm)
    Memo1: TMemo;
    Button1: TButton;
    procedure Button1Click(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var

  Form3: TForm3;

implementation

{$R *.dfm}

function qwerty(ch: byte): string;
begin
  case ch of
    0:Result:='ноль';
    1:Result:='один';
    2:Result:='два';
    3:Result:='три';
    4:Result:='четыре';
    5:Result:='пять';
    6:Result:='шесть';
    7:Result:='семь';
    8:Result:='восемь';
    9:Result:='девять';
    10:Result:='десять';
    11:Result:='одиннадцать';
    12:Result:='двенадцать';
    13:Result:='тринадцать';
    14:Result:='четырнадцать';
    15:Result:='пятнадцать';
    16:Result:='шестнадцать';
    17:Result:='семнадцать';
    18:Result:='восемнадцать';
    19:Result:='девятнадцать';
    20:Result:='двадцать';
    30:Result:='тридцать';
    40:Result:='сорок';
    50:Result:='пятьдесят';
    60:Result:='шестьдесят';
    70:Result:='семьдесят';
    80:Result:='восемьдесят';
    90:Result:='девяносто';
    21..29:Result:='двадцать '+qwerty(ch mod 10);
    31..39:Result:='тридцать '+qwerty(ch mod 10);
    41..49:Result:='сорок '+qwerty(ch mod 10);
    51..59:Result:='пятьдесят '+qwerty(ch mod 10);
    61..69:Result:='шестьдесят '+qwerty(ch mod 10);
    71..79:Result:='семьдесят '+qwerty(ch mod 10);
    81..89:Result:='восемьдесят '+qwerty(ch mod 10);
    91..99:Result:='девяносто '+qwerty(ch mod 10);
  end;
end;

procedure TForm3.Button1Click(Sender: TObject);
var
  I: Integer;
begin
  Randomize;
  for I := 0 to 19 do
    Memo1.Lines.Add(qwerty(random(100)));
end;

end.
