unit Unit1;

{$mode objfpc}{$H+}

interface

uses
  unit2,Classes, SysUtils, FileUtil, Forms, Controls, Graphics, Dialogs, ExtCtrls,
  StdCtrls;

type

  { TForm1 }

  TForm1 = class(TForm)
    Button1: TButton;
    Edit1: TEdit;
    Edit2: TEdit;
    Edit3: TEdit;
    Label1: TLabel;
    Label10: TLabel;
    Label100: TLabel;
    Label11: TLabel;
    Label12: TLabel;
    Label13: TLabel;
    Label14: TLabel;
    Label15: TLabel;
    Label16: TLabel;
    Label17: TLabel;
    Label18: TLabel;
    Label19: TLabel;
    Label2: TLabel;
    Label20: TLabel;
    Label21: TLabel;
    Label22: TLabel;
    Label23: TLabel;
    Label24: TLabel;
    Label25: TLabel;
    Label26: TLabel;
    Label27: TLabel;
    Label28: TLabel;
    Label29: TLabel;
    Label3: TLabel;
    Label30: TLabel;
    Label31: TLabel;
    Label32: TLabel;
    Label33: TLabel;
    Label34: TLabel;
    Label35: TLabel;
    Label36: TLabel;
    Label37: TLabel;
    Label38: TLabel;
    Label39: TLabel;
    Label4: TLabel;
    Label40: TLabel;
    Label41: TLabel;
    Label42: TLabel;
    Label43: TLabel;
    Label44: TLabel;
    Label45: TLabel;
    Label46: TLabel;
    Label47: TLabel;
    Label48: TLabel;
    Label49: TLabel;
    Label5: TLabel;
    Label50: TLabel;
    Label51: TLabel;
    Label52: TLabel;
    Label53: TLabel;
    Label54: TLabel;
    Label55: TLabel;
    Label56: TLabel;
    Label57: TLabel;
    Label58: TLabel;
    Label59: TLabel;
    Label6: TLabel;
    Label60: TLabel;
    Label61: TLabel;
    Label62: TLabel;
    Label63: TLabel;
    Label64: TLabel;
    Label65: TLabel;
    Label66: TLabel;
    Label67: TLabel;
    Label68: TLabel;
    Label69: TLabel;
    Label7: TLabel;
    Label70: TLabel;
    Label71: TLabel;
    Label72: TLabel;
    Label73: TLabel;
    Label74: TLabel;
    Label75: TLabel;
    Label76: TLabel;
    Label77: TLabel;
    Label78: TLabel;
    Label79: TLabel;
    Label8: TLabel;
    Label80: TLabel;
    Label81: TLabel;
    Label82: TLabel;
    Label83: TLabel;
    Label84: TLabel;
    Label85: TLabel;
    Label86: TLabel;
    Label87: TLabel;
    Label88: TLabel;
    Label89: TLabel;
    Label9: TLabel;
    Label90: TLabel;
    Label91: TLabel;
    Label92: TLabel;
    Label93: TLabel;
    Label94: TLabel;
    Label95: TLabel;
    Label96: TLabel;
    Label97: TLabel;
    Label98: TLabel;
    Label99: TLabel;
    Memo1: TMemo;
    Shape1: TShape;
    //procedure FormClick(Sender: TObject);
    procedure Button1Click(Sender: TObject);
    procedure FormCreate(Sender: TObject);
    procedure Clicked(Sender: TObject);
   // procedure komsije(a:string);
  private
    { private declarations }
  public
    { public declarations }
  end;

var
  Form1: TForm1;
  f2:tform;
  igrac,faza,start_chip:integer;
  //start_chip:string;
  susedi1:set of 0..100;
  susedi2:set of 0..100;
  lopov:set of 0..100;
implementation

{$R *.lfm}

{ TForm1 }

procedure TForm1.FormCreate(Sender: TObject);
var i:integer;
    temp:string;
begin
  igrac:=1;
  faza:=1;
  for i:=1 to componentcount-1 do
      begin
      if components[i] is Tlabel then    //legacy code shit dont mess with this
         begin
          temp:=(components[i] as Tlabel).name;
          delete(temp,1,5);
           memo1.append(temp);
         end;
      end;
  shape1.Brush.Color:=clRed;
end;

procedure TForm1.Button1Click(Sender: TObject);
begin
  F2:=Tform2.create(nil);
  F2.show;
end;

//simicu ti bi trebalo da napravis na formi 2 ili na nekom meniju
//uputsva za igru, mozda i da primenis neki popumeni al to je na tebi
//ako imas ideju slobodno predlozi
procedure TForm1.Clicked(Sender: TObject);
var lokacija,temp,temp_thief:string;
    a,b,i,c,k,zeton1,zeton2,j:integer;
begin
  lokacija:=(Sender as Tlabel).name;
  delete(lokacija,1,5);
  a:=strtoint(lokacija);
  if ((Sender as Tlabel).tag=igrac) and (faza=1) then
     begin

       //start_chip:=lokacija;
       //komsije(lokacija);
       faza:=2;


       start_chip:=a;
       edit1.text:=lokacija;   //pripaziti na elemente skupa kao odu negativni
       susedi1:=[a+1]+[a-1]+[a+10]+[a-10]+[a+10-1]+[a+10+1]+[a-10-1]+[a-10+1];
       susedi2:=[a+20]+[a-20]+[a+2]+[a-2]+[a+20+1]+[a+20+2]+[a+20-1]+[a+20-2]+[a-20+1]+[a-20+2]+[a-20-1]+[a-20-2];

     end
    else if ((Sender as Tlabel).tag=0) and (faza=2) and ((a in susedi1) or (a in susedi2)) then
       begin
         lopov:=[a+1]+[a-1]+[a+10]+[a-10]+[a+10-1]+[a+10+1]+[a-10-1]+[a-10+1];
     if a in susedi1 then
       begin
       (Sender as Tlabel).tag:=igrac;
        if igrac=1 then                //boja
           (Sender as Tlabel).color:=clRed
           else if igrac=2 then
              (Sender as Tlabel).color:=clBlue;
       end
     else if a in susedi2 then
       begin
       (Sender as Tlabel).tag:=igrac;
       for i:=1 to componentcount-1 do
           if components[i] is Tlabel then
             begin
             temp:=(components[i] as Tlabel).Name;
             delete(temp,1,5);
             b:=strtoint(temp);
             if b=start_chip then
               begin
               (components[i] as tlabel).tag:=0;
               (components[i] as tlabel).color:=clGray;
               end;
                if igrac=1 then                //boja
                  (Sender as Tlabel).color:=clRed
                   else if igrac=2 then
                         (Sender as Tlabel).color:=clBlue;
             end;

       end;

         for k:=1 to componentcount-1 do      //preuizmanje susednih cipova
             if components[k] is Tlabel then
               begin
               temp_thief:=(components[k] as tlabel).name;
               delete(temp_thief,1,5);
               c:=strtoint(temp_thief);
               if (c in lopov) and not ((components[k] as tlabel).tag=0) then
                 begin
                 (components[k] as tlabel).Tag:=igrac;
                 if igrac=1 then
                   (components[k] as tlabel).color:=clRed
                   else if igrac=2 then
                     (components[k] as tlabel).color:=clBlue;

                 end;

               end;





        if igrac=2 then   //promen igraca
           igrac:=1
        else
           igrac:=2;
        faza:=1;
        end;

    if igrac=1 then
        shape1.Brush.Color:=clRed
    else if igrac=2 then
         shape1.Brush.Color:=clBlue;

 zeton1:=0;
 zeton2:=0;
 for j:=1 to componentcount-1 do
     begin
     if components[j] is tlabel then
       begin
       if (components[j] as tlabel).tag=1 then
         inc(zeton1)
       else if (components[j] as tlabel).tag=2 then
         inc(zeton2);
       end;
     end;
edit2.text:=inttostr(zeton1);
edit3.text:=inttostr(zeton2);
//ovde ide miha
//trebas da napravis da ako jedan igrac ima nula zetona
//da iskoci koji igrac je pobedio i koliko taj igrac ima zetona
//i da uradis da se sve resetuje na nulu na klik dugmeta
//ako nesto ne znas pusti messenger pa cu pomoci
//ako imas ideju slobodno predlozi
end;
 (*             //legacy shit, dont touch
procedure komsije(a:string);

begin
    delete(a,1,5);
    //susedi1:=['label'+a];
    edit1.text:=a;
end;
   *)
end.

