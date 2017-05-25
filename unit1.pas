unit Unit1;

{$mode objfpc}{$H+}

interface

uses
  Classes, SysUtils, FileUtil, Forms, Controls, Graphics, Dialogs, StdCtrls,Unit2;

type

  { TForm1 }

  TForm1 = class(TForm)
    Button1: TButton;
    Button10: TButton;
    Button100: TButton;
    Button101: TButton;
    Button11: TButton;
    Button12: TButton;
    Button13: TButton;
    Button14: TButton;
    Button15: TButton;
    Button16: TButton;
    Button17: TButton;
    Button18: TButton;
    Button19: TButton;
    Button2: TButton;
    Button20: TButton;
    Button21: TButton;
    Button22: TButton;
    Button23: TButton;
    Button24: TButton;
    Button25: TButton;
    Button26: TButton;
    Button27: TButton;
    Button28: TButton;
    Button29: TButton;
    Button3: TButton;
    Button30: TButton;
    Button31: TButton;
    Button32: TButton;
    Button33: TButton;
    Button34: TButton;
    Button35: TButton;
    Button36: TButton;
    Button37: TButton;
    Button38: TButton;
    Button39: TButton;
    Button4: TButton;
    Button40: TButton;
    Button41: TButton;
    Button42: TButton;
    Button43: TButton;
    Button44: TButton;
    Button45: TButton;
    Button46: TButton;
    Button47: TButton;
    Button48: TButton;
    Button49: TButton;
    Button5: TButton;
    Button50: TButton;
    Button51: TButton;
    Button52: TButton;
    Button53: TButton;
    Button54: TButton;
    Button55: TButton;
    Button56: TButton;
    Button57: TButton;
    Button58: TButton;
    Button59: TButton;
    Button6: TButton;
    Button60: TButton;
    Button61: TButton;
    Button62: TButton;
    Button63: TButton;
    Button64: TButton;
    Button65: TButton;
    Button66: TButton;
    Button67: TButton;
    Button68: TButton;
    Button69: TButton;
    Button7: TButton;
    Button70: TButton;
    Button71: TButton;
    Button72: TButton;
    Button73: TButton;
    Button74: TButton;
    Button75: TButton;
    Button76: TButton;
    Button77: TButton;
    Button78: TButton;
    Button79: TButton;
    Button8: TButton;
    Button80: TButton;
    Button81: TButton;
    Button82: TButton;
    Button83: TButton;
    Button84: TButton;
    Button85: TButton;
    Button86: TButton;
    Button87: TButton;
    Button88: TButton;
    Button89: TButton;
    Button9: TButton;
    Button90: TButton;
    Button91: TButton;
    Button92: TButton;
    Button93: TButton;
    Button94: TButton;
    Button95: TButton;
    Button96: TButton;
    Button97: TButton;
    Button98: TButton;
    Button99: TButton;
    procedure Button101Click(Sender: TObject);
    procedure ButtonClick(Sender: TObject);
    procedure FormCreate(Sender: TObject);
    procedure komsije(a:integer);
  private
    { private declarations }
  public
    { public declarations }
  end;

var
  Form1: TForm1;
  F2: TForm;
   net:array[1..10,1..10] of integer;
   susedi1:set of integer;
   susedi2:set of integer;
    igrac:integer;
   phase:integer;
implementation

{$R *.lfm}

{ TForm1 }

procedure TForm1.Button101Click(Sender: TObject);
begin
  F2:=Tform2.create(nil);
  F2.show;
end;

procedure TForm1.ButtonClick(Sender: TObject);
begin
       with Sender as Tbutton do
            begin
                  if net vrednost=igrac and  then
                   begin
                     komsije(sender);
                     //oboji susedne
                     lokacija=sender;
                     faza:=2
                   end
                  else if net vrednost=0 and faza=2 then
                   begin
                      if sender in susedi1 then
                       Sender.tag:=igrac;

                       else if sender in susedi2 then
                         begin
                           sender:=igrac
                           lokacija:=0;
                           promenisusede
                           end
                   end
            end;
end;

procedure TForm1.FormCreate(Sender: TObject);
begin
  igrac:=1;
  faza:=1;
end;

procedure TForm1.komsije(a: integer);
begin
susedi:=[a+10]+[a-10]+[a+1]+[a-1]+[a+10+1]+[a+10-1]+[a-10+1]+[a-10-1];
 susedi2:=[a+20]+[a-20]+[a+20+1]+[a+20-1]+[a+20+2]+[a+20-2]+[a-20+1]+[a-20-1]+[a-20+2]+[a-20-2]+[a+2]+[a-2];

end;




procedure refresh_elements();
begin



 end;
end.

