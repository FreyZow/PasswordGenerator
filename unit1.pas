unit Unit1;

{$mode objfpc}{$H+}

interface

uses
  Classes, SysUtils, FileUtil, Forms, Controls, Graphics, Dialogs, StdCtrls,
  Spin;

type

  { TForm1 }

  TForm1 = class(TForm)
    CheckBox1: TCheckBox;
    creator: TButton;
    outputfield: TEdit;
    SpinEdit1: TSpinEdit;
    procedure creatorClick(Sender: TObject);
    procedure FormCreate(Sender: TObject);
  private
    { private declarations }
  public
    { public declarations }
  end;

var
  Form1: TForm1;

implementation

{$R *.lfm}

{ TForm1 }

procedure TForm1.creatorClick(Sender: TObject);
var
  output,into:string;
  x,rand,size,typep,num:integer;
begin
  x:=0;
  Randomize;
  num:=42;
  if (Checkbox1.Checked=true) then begin
   num:=35;
  end;
   repeat
       rand:=Random(num)+1;
       if(rand<=9)then begin
         into:=IntToStr(rand);
       end;
       if(rand>=10) And (rand<=35) then begin
         size:=Random(2)+1;
         if(size=1) then begin
          rand:=Random(25)+66;
         end;
         if(size=2) then begin
          rand:=Random(25)+98;
         end;
         into:=Chr(rand);
       end;
       if(rand>=36) And (rand<=42) then begin
        typep:=Random(3)+1;
         if(typep=1)then begin
           rand:=Random(2)+40;
         end;
         if(typep=2)then begin
           rand:=Random(3)+91;
         end;
         if(typep=3)then begin
           rand:=Random(3)+60;
         end;
         into:=Chr(rand);
       end;
       output:=output + into;
       x:=x+1;
   until x=SpinEdit1.Value;
  outputfield.text:=output;
end;

procedure TForm1.FormCreate(Sender: TObject);
begin

end;

end.

