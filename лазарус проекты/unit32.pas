unit unit32;

{$mode objfpc}{$H+}

interface

uses
Classes, SysUtils, Forms, Controls, Graphics, Dialogs, StdCtrls, Buttons;

type

{ TForm1 }

TForm1 = class(TForm)
BitBtn1: TBitBtn;
Button1: TButton;
Edit1: TEdit;
Edit2: TEdit;
Label1: TLabel;
Label2: TLabel;
Memo1: TMemo;
procedure BitBtn1Click(Sender: TObject);
procedure Button1Click(Sender: TObject);
procedure Label1Click(Sender: TObject);
private

public

end;

var
Form1: TForm1;
k1, k2, i, res, t: Integer;

implementation

{$R *.lfm}

{ TForm1 }

procedure TForm1.Label1Click(Sender: TObject);
begin

end;

procedure TForm1.BitBtn1Click(Sender: TObject);
begin
Close;
end;

procedure TForm1.Button1Click(Sender: TObject);
begin
k1 := StrToInt(Edit1.Text);
k2:= StrToInt(Edit2.Text);
i:=1;
t:=1;
while i<=k2 do
begin
t:=t*k1;
i:=i+1;
end;
Memo1.Lines.add('Число '+Edit1.Text+' в степени '+Edit2.Text+' равно: '+IntToStr(t));
end;

end.

