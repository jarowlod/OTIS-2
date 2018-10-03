uses
  fgl;

type

  TObjList = specialize TFPGList<TButton>;     
  
  TForm1 = class(TForm)
  private
  public
    kolekcja: TObjList ;
  end;  
  

  
procedure TForm1.Button1Click(Sender: TObject);
var but: TButton;
begin
  but:= TButton.Create(Self);
  but.Parent:= Self;
  but.Align:= alTop;
  but.Caption:= numer.ToString;
  inc(numer);

  kolekcja.Add(but);
end;

procedure TForm1.Button2Click(Sender: TObject);
var i: integer;
begin
  for i:=kolekcja.Count-1 downto 0 do
  begin
    if not (kolekcja[i].Handle=0) then
      kolekcja[i].Caption:= kolekcja[i].Caption+'-'
    else
      ShowMessage('del '+i.ToString);
  end;
end;

procedure TForm1.Button4Click(Sender: TObject);
var
  i: Integer;
begin
  for i:=kolekcja.Count-1 downto 0 do
  begin
    if (kolekcja[i].Handle=0) then
    begin
      Memo1.Lines.Add( 'znalazl i usuwa' ) ;
      kolekcja.Delete(i);
    end;
  end;
end;

procedure TForm1.FormCreate(Sender: TObject);
begin
  kolekcja:= TObjList.Create;
end;  