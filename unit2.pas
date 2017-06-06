unit Unit2;

{$mode objfpc}{$H+}

interface

uses
  Classes, SysUtils, FileUtil, Forms, Controls, Graphics, Dialogs, ComCtrls,
  StdCtrls;

type

  { TForm2 }

  TForm2 = class(TForm)
    Button1: TButton;
    Button2: TButton;
    Button3: TButton;
    Button4: TButton;
    Button5: TButton;
    Memo1: TMemo;
    Memo2: TMemo;
    Memo3: TMemo;
    PageControl1: TPageControl;
    TabSheet1: TTabSheet;
    TabSheet2: TTabSheet;
    TabSheet3: TTabSheet;
    procedure Button1Click(Sender: TObject);
    procedure Button2Click(Sender: TObject);
    procedure Button3Click(Sender: TObject);
    procedure Button4Click(Sender: TObject);
    procedure Button5Click(Sender: TObject);
  private
    { private declarations }
  public
    { public declarations }
  end;

var
  Form2: TForm2;

implementation

{$R *.lfm}

{ TForm2 }

procedure TForm2.Button1Click(Sender: TObject);
begin
      pagecontrol1.TabIndex:=1;
end;

procedure TForm2.Button2Click(Sender: TObject);
begin
    pagecontrol1.TabIndex:=0;
end;

procedure TForm2.Button3Click(Sender: TObject);
begin
  pagecontrol1.TabIndex:=2;
end;

procedure TForm2.Button4Click(Sender: TObject);
begin
   pagecontrol1.TabIndex:=1;
end;

procedure TForm2.Button5Click(Sender: TObject);
begin
  Close;
end;

end.

