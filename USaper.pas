unit USaper;

{$mode objfpc}{$H+}

interface

uses
  Classes, SysUtils, TplGradientUnit,
  Forms, Controls, Graphics, ExtCtrls, StdCtrls;

type

  { TSaperForm }

  { TSaperForm }

  { TPoleSapera }

  TPoleSapera = class(TObject)
    isVisible: Boolean;
    isMina   : Boolean;
    isSelected: Boolean;
    isNumber : Boolean;
    Number   : integer;
    x,y, w, h: integer;
  public
    constructor Create;
    Procedure DrawPole(Canvas: TCanvas);
    function click(): integer; // 0 - nic, 1 - mina, 2 - numer
  end;

  TSaper = class(TObject)
    fpanel: TPanel;
    w: integer;
    fi,fj: integer;
    pola: array of array of TPoleSapera;
    isDrawing: Boolean;
    fisGame: Boolean;
  private
  public
    liczba_min: integer;
    constructor Create(panel: TPanel; xi,xj: integer);
    procedure StartGame;
    procedure StopGame;
    Function isGame: Boolean;
    procedure DrawGrid;
    procedure Zaminuj(lmin: integer);
    procedure Numeruj;
    procedure ShowAll;
    procedure ShowPuste(i,j: integer);
    Function isWin: Boolean;
    Function mouseClick( pkt: TPoint): integer; // 0 - nic, 1 - przegarana, 3 - wygrana
    procedure mouseClickRight(x,y: integer);    // ozanczenie pola
    function Liczba_Flag: integer;
  end;

  TSaperForm = class(TForm)
    Button1: TButton;
    ComboBox1: TComboBox;
    ImageList1: TImageList;
    lblCzas: TLabel;
    Label2: TLabel;
    Label3: TLabel;
    lblMin: TLabel;
    lblFlag: TLabel;
    Memo1: TMemo;
    Panel1: TPanel;
    plGradient1: TplGradient;
    Timer1: TTimer;
    procedure Button1Click(Sender: TObject);
    procedure ComboBox1Change(Sender: TObject);
    procedure FormShow(Sender: TObject);
    procedure Panel1Click(Sender: TObject);
    procedure Panel1MouseDown(Sender: TObject; Button: TMouseButton;
      Shift: TShiftState; X, Y: Integer);
    procedure Panel1Paint(Sender: TObject);
    procedure Timer1Timer(Sender: TObject);
  private
    timeStart, timeStop: TTime;
  public
    Saper: TSaper;
    procedure PrepareGame;
    procedure Animacja;
  end;

var
  SaperForm: TSaperForm;

implementation

{$R *.frm}

{ TPoleSapera }

constructor TPoleSapera.Create;
begin
  inherited Create;
end;

procedure TPoleSapera.DrawPole(Canvas: TCanvas);
var tstyle: TTextStyle;
    rec   : TRect;
begin
  rec:= TRect.Create(x,y,x+w,y+h);
  canvas.Font.Color:= clBlue;
  Canvas.Font.Size:= 12;
  Canvas.Font.Bold:= true;
  Canvas.Font.Name:= 'Calibri';

  if isVisible then
  begin
    if isMina then
    begin
      if isSelected then
      begin
        Canvas.Brush.Color:= clYellow;
      end else
      begin
        Canvas.Brush.Color:= clRed;
      end;
      Canvas.Pen.Color:= $00666666;
      Canvas.Rectangle(rec);
      rec.Inflate(-4,-4);
      Canvas.Brush.Color:= clMaroon;
      Canvas.Pen.Color:= clMaroon;
      Canvas.Ellipse(rec);
      Canvas.Line(x+4  ,y+4, x+w-4, y+h-4);
      Canvas.Line(x+w-4,y+4, x+4  , y+h-4);
    end else
    if isNumber then
    begin
      Canvas.Brush.Color:= clLtGray;
      Canvas.Pen.Color:= $00666666;
      Canvas.Rectangle(rec);
      case Number of
             1: canvas.Font.Color:= clBlue;
             2: canvas.Font.Color:= clGreen;
             3: canvas.Font.Color:= clMaroon;
             4: canvas.Font.Color:= clRed;
      end;

      tstyle:= Canvas.TextStyle;
      tStyle.Alignment:= taCenter;
      tStyle.Layout:= tlCenter;
      Canvas.TextStyle:= tStyle;
      Canvas.TextRect(rec, x,y, IntTostr(Number));
    end else
    begin // puste pola
      // tutaj mamy gradient rysowany na początku
      // Canvas.Brush.Color:= clSkyBlue;
      // Canvas.Pen.Color:= clSkyBlue;
      // Canvas.Rectangle(rec);
    end;
  end else
  begin
    if isSelected then // flaga
    begin
      Canvas.Brush.Color:= clYellow;
      Canvas.Pen.Color:= $00666666;
      Canvas.Rectangle(rec);
      SaperForm.ImageList1.Draw(Canvas,x+2,y+2,0);
    end else
    begin // jeszcze nie odkryte pola
      Canvas.Brush.Color:= clGray;
      Canvas.Pen.Color:= $00666666;
      Canvas.Rectangle(rec);
      Canvas.Frame3D(rec, clLtGray, clBlack, 1);
    end;
  end;
end;

function TPoleSapera.click(): integer;
begin
  result:= 0; // puste pole
  if not isVisible then
  begin
    isVisible:= true;
    if isMina   then result:=1; // mina
    if isNumber then result:=2; // numer
  end;
end;

{ TSaper }

constructor TSaper.Create(panel: TPanel; xi,xj: integer);
var i,j: integer;
begin
  inherited Create;
  fpanel    := panel;
  isDrawing := false;
  liczba_min:= 0;

  w := 20;
  fi:= xi; //fpanel.Height div w;
  fj:= xj; //fi;

  SetLength(pola, fi, fj);
  //for i:=0 to fi-1 do SetLength(pola[i], fj);

  for i:=0 to fi-1 do
    for j:=0 to fj-1 do
      begin
        pola[i][j]:= TPoleSapera.Create;
        pola[i][j].x:= j*w;
        pola[i][j].y:= i*w;
        pola[i][j].w:= w;
        pola[i][j].h:= w;
        pola[i][j].isVisible := false;
        pola[i][j].isMina    := false;
        pola[i][j].isSelected:= false;
        pola[i][j].isNumber  := false;
        pola[i][j].Number    := 0;
      end;
end;

procedure TSaper.StartGame;
begin
  fisGame:= true;
end;

procedure TSaper.StopGame;
begin
  fisGame:= false;
end;

function TSaper.isGame: Boolean;
begin
  result:= fisGame;
end;

procedure TSaper.DrawGrid;
var i, j: integer;
    img : TBitmap;
begin
  if isDrawing then exit;
  isDrawing:= true;

  img:= TBitmap.Create;
  img.SetSize(fj*w, fi*w);
  img.Canvas.AntialiasingMode:= amOn;

  img.Canvas.GradientFill(Rect(0,0,img.Width,img.Height), $00FEDEA9, $00CA8002, gdVertical);

  for i:=0 to fi-1 do
    for j:=0 to fj-1 do
      begin
        pola[i][j].DrawPole( img.Canvas );
      end;

  fPanel.Canvas.CopyRect(Rect(1,1,img.Width+1, img.Height+1), img.Canvas, Rect(0,0,img.Width, img.Height));

  img.Free;

  isDrawing:= false;
end;

procedure TSaper.Zaminuj(lmin: integer);
var x, i,j, ti: integer;
    tab: array of TPoint;
begin
  liczba_min:= lmin;

  SetLength(tab, fi*fj);
  for i:=0 to fi-1 do
    for j:=0 to fj-1 do
      tab[(i*fj)+j].Create(j,i);

  for x:=0 to lmin-1 do
    begin
      ti:= Random(Length(tab)-1);
      j:= tab[ti].x;
      i:= tab[ti].y;
      tab[ti]:= tab[Length(tab)-1];
      SetLength(tab, Length(tab)-1);
      pola[i][j].isMina:= true;
    end;
end;

procedure TSaper.Numeruj;
var i, j: integer;
    ii, jj: integer;
    pi, pj: integer;
begin
  for i:=0 to fi-1 do
    for j:=0 to fj-1 do
      begin
        if pola[i][j].isMina then
        begin
          for ii:=-1 to 1 do
            for jj:=-1 to 1 do
              begin
                pi:=i-ii;
                pj:=j-jj;
                if (pi>=0)and(pi<fi)and(pj>=0)and(pj<fj) then
                if not pola[pi][pj].isMina then
                begin
                  pola[pi][pj].isNumber:=true;
                  inc(pola[pi][pj].Number);
                end;
              end;
        end;
      end;

end;

procedure TSaper.ShowAll;
var i, j: integer;
begin
  for i:=0 to fi-1 do
    for j:=0 to fj-1 do pola[i][j].isVisible:= true;
end;

procedure TSaper.ShowPuste(i, j: integer);
var ii, jj: integer;
    pi, pj: integer;
begin
  for ii:=-1 to 1 do
    for jj:=-1 to 1 do
      begin
        pi:= i-ii;
        pj:= j-jj;
        if (pi>=0)and(pi<fi)and(pj>=0)and(pj<fj) then
        begin
          if (not pola[pi][pj].isVisible) and (not pola[pi][pj].isNumber) and (not pola[pi][pj].isMina) then
          begin
            pola[pi][pj].isVisible:= true;
            pola[pi][pj].isSelected:= false;
            ShowPuste(pi,pj);
          end else
          if (not pola[pi][pj].isVisible) and (pola[pi][pj].isNumber) then
            begin
              pola[pi][pj].isVisible:= true;
              pola[pi][pj].isSelected:= false;
            end;
        end;
      end;
end;

function TSaper.isWin: Boolean;
var i,j : integer;
    iSelected, iMin, iVisible: integer;
begin
  iMin:=0;
  iSelected:=0;
  iVisible:=0;
  for i:=0 to fi-1 do
    for j:=0 to fj-1 do
      begin
        if (pola[i][j].isSelected) and (pola[i][j].isMina) then inc(iSelected);
        if pola[i][j].isMina then inc(iMin);
        if pola[i][j].isVisible then inc(iVisible);
      end;
  Result:= (iMin = (fi*fj)-(iVisible) );
end;

function TSaper.mouseClick(pkt: TPoint): integer;
var i,j: integer;
    status: integer;
begin
  if not isGame then exit;
  status:=0;
  j:= pkt.x div w;
  i:= pkt.y div w;

  if (i>=0) and (i<fi) and (j>=0) and (j<fj) then
  if (not pola[i][j].isVisible) and (not pola[i][j].isSelected) then
  begin
    status:= pola[i][j].click();
    if status=1 then ShowAll;
    if status=0 then ShowPuste(i,j);
    if isWin then
    begin
      status:=3;
      ShowAll;
    end;
  end;
  Result:= status;
end;

procedure TSaper.mouseClickRight(x, y: integer);
var i,j: integer;
begin
  if not isGame then exit;
  j:= x div w;
  i:= y div w;

  if (i>=0) and (i<fi) and (j>=0) and (j<fj) then
  if not pola[i][j].isVisible then
  begin
    if (not pola[i][j].isSelected) and (liczba_min = Liczba_Flag) then exit; // liczba flag wyczerpana
    pola[i][j].isSelected:= not pola[i][j].isSelected;
  end;
end;

function TSaper.Liczba_Flag: integer;
var i,j: integer;
    ile: integer;
begin
  ile:=0;
  for i:=0 to fi-1 do
    for j:=0 to fj-1 do
      if pola[i][j].isSelected then inc(ile);
  result:= ile;
end;

{ TSaperForm }

procedure TSaperForm.Button1Click(Sender: TObject);
begin
  PrepareGame;

  Saper.StartGame;

  timeStart        := Time;
  Timer1.Enabled   := true;
  ComboBox1.Enabled:= false;
end;

procedure TSaperForm.ComboBox1Change(Sender: TObject);
begin
  PrepareGame;
end;

procedure TSaperForm.FormShow(Sender: TObject);
begin
  Panel1.Color:= clDefault;
  PrepareGame;
end;

procedure TSaperForm.Panel1Click(Sender: TObject);
var status: integer;
begin
  if not Assigned(SaperForm) then exit;
  if not Saper.isGame then Button1Click(Sender);

  status:= Saper.mouseClick( Panel1.ScreenToClient(Mouse.CursorPos) );
  Saper.DrawGrid;
  lblFlag.Caption:= IntToStr(Saper.liczba_min - Saper.Liczba_Flag);

  if (status=1)or(status=3) then
  begin
    Timer1.Enabled:= false;
    timeStop:= Time;
    Saper.StopGame;
    ComboBox1.Enabled:= true;

    //Animacja;
  end;
  if status=3 then Memo1.Lines.Add('WYGRANA  w czasie: '+ TimeToStr(timeStart - timeStop));
  if status=1 then Memo1.Lines.Add('PRZEGRANA');
end;

procedure TSaperForm.Panel1MouseDown(Sender: TObject; Button: TMouseButton;
  Shift: TShiftState; X, Y: Integer);
begin
  if ssRight in Shift then
  begin
    Saper.mouseClickRight( x, y);
    Saper.DrawGrid;
    lblFlag.Caption:= IntToStr(Saper.liczba_min - Saper.Liczba_Flag);
  end;
end;

procedure TSaperForm.Panel1Paint(Sender: TObject);
begin
  if Assigned(Saper) then Saper.DrawGrid;
end;

procedure TSaperForm.Timer1Timer(Sender: TObject);
begin
  lblCzas.Caption:= TimeToStr( Time - timeStart );
end;

procedure TSaperForm.PrepareGame;
var minw, minh : integer;
begin
  case ComboBox1.ItemIndex of
       0: begin
            Saper:= TSaper.Create(Panel1, 10, 10);
            Saper.Zaminuj(20);
       end;
       1: begin
            Saper:= TSaper.Create(Panel1, 20, 20);
            Saper.Zaminuj(50);
       end;
       2: begin
            Saper:= TSaper.Create(Panel1, 30, 30);
            Saper.Zaminuj(150);
       end;
       3: begin
            Saper:= TSaper.Create(Panel1, 30, 50);
            Saper.Zaminuj(180);
       end;

  end;
  Panel1.Width := (Saper.fj * Saper.w) + 2;
  Panel1.Height:= (Saper.fi * Saper.w) + 2;

  minw := Panel1.Left + Panel1.Width  + 10;
  minh := Panel1.Top  + Panel1.Height + 10;
  if Width < minw  then Width := minw;
  if Height < minh then Height:= minh;

  Saper.Numeruj;
  Saper.DrawGrid;

  lblMin.Caption := IntToStr(Saper.liczba_min);
  lblFlag.Caption:= IntToStr(Saper.liczba_min);
  lblCzas.Caption:= '';
end;

procedure TSaperForm.Animacja;
var n, i, j : integer;
    nic: Boolean;
begin
  for n:=0 to 500 do
    begin
      nic:= true;
      for i:=0 to Saper.fi-1 do
        for j:=0 to Saper.fj-1 do
          begin
            if Saper.pola[i][j].isMina then
            begin
              if Saper.pola[i][j].y < Saper.fpanel.Height-Saper.pola[i][j].h then
              begin
                Saper.pola[i][j].y:= Saper.pola[i][j].y+ Random(6);
                nic:= false;
              end;

              if Saper.pola[i][j].x < Saper.fpanel.Width-Saper.pola[i][j].w then
              begin
                Saper.pola[i][j].x:= Saper.pola[i][j].x+ Random(6);
                nic:= false;
              end;
            end;
          end;
      if nic then Break;
      Saper.DrawGrid;
    end;
end;

end.

