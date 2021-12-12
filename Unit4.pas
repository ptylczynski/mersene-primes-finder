unit Unit4;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.StdCtrls;

type
  TForm4 = class(TForm)
    Edit1: TEdit;
    Label1: TLabel;
    Memo1: TMemo;
    procedure Edit1Change(Sender: TObject);
  private
    { Private declarations }
  public
    K: Integer;
    results: String;
  end;

var
  Form4: TForm4;

implementation

{$R *.dfm}

Function isPrime(num: Integer): boolean;
var
  divider: Integer;
    prime: boolean;
begin
      prime := True;
      if num = 2 then
      begin
        prime := True;
      end
      else begin
        for divider := 2 to Round(Sqrt(num)) + 1 do
        begin
          if num Mod divider = 0 then
          begin
            prime := False
          end;
        end;
      end;
      Result := prime;
end;

Function power(base, index: Integer): Integer;
var
  i: Integer;
  total: Integer;
begin
  total := 1;
  for i := 1 to index do
  begin
      total := total * base
  end;
  Result := total;
end;

Function merseneNumber(index: Integer): Integer;
begin
  Result := power(2, index) - 1;
end;

procedure TForm4.Edit1Change(Sender: TObject);
var
  p: Integer;
  found: Integer;
begin
  results := '';
  found := 0;
  Memo1.Text := '';
  K := StrToInt(Edit1.Text);
  p := 2;
  while found < K do
  begin
    while Not isPrime(p) do
    begin
      p := p + 1;
    end;
    if isPrime(merseneNumber(p)) then
    begin
      results := results + '(' + IntToStr(p) + ') ' + IntToStr(merseneNumber(p)) + '  ';
      memo1.lines[0] := results;
      found := found + 1;
    end;
    p := p + 1;
  end;
end;
end.
