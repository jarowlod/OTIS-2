unit URejestrProsbDodaj;

{$mode objfpc}{$H+}

interface

uses
  Classes, SysUtils, FileUtil, Forms, Controls, Graphics, Dialogs, ExtCtrls,
  Buttons, StdCtrls, EditBtn, DateTimePicker, Types, datamodule;

type

  { TRejestrProsbDodaj }

  TRejestrProsbDodaj = class(TForm)
    btnOK: TBitBtn;
    btnAnuluj: TBitBtn;
    cbDrukuj: TCheckBox;
    cbKategoria: TComboBox;
    cbStatus: TComboBox;
    dtpWplywu: TDateTimePicker;
    dtpDecyzji: TDateTimePicker;
    edOpis: TEdit;
    Label1: TLabel;
    Label2: TLabel;
    Label3: TLabel;
    Label4: TLabel;
    Label5: TLabel;
    Label6: TLabel;
    lbl_Oznaczenie: TLabel;
    memUwagi: TMemo;
    Panel1: TPanel;
    Panel2: TPanel;
    procedure btnOKClick(Sender: TObject);
    procedure cbKategoriaDrawItem(Control: TWinControl; Index: Integer;
      ARect: TRect; State: TOwnerDrawState);
    procedure cbStatusDrawItem(Control: TWinControl; Index: Integer;
      ARect: TRect; State: TOwnerDrawState);
  private
    isEditMode: Boolean;
    id: integer;
    ido: integer;
    Kat: array of record
                    cel  : integer; // id katalogu próśb
                    id   : integer;
                    kolor: integer; // kolor wynika z Znaczenie( co dziesiec zmiana koloru)
                  end;
    procedure WczytajKategorie;
    Function GetIndexKatById(kId: integer): integer; // Return Index Kat by Id
    Procedure SaveAdd;
    Procedure SaveEdit;
  public
    Procedure SetAdd(eIDO: integer);
    Procedure SetEdit(eID, eIDO: integer);
    Function ZrealizujProsbe(eID: integer): boolean;
  end;

var
  RejestrProsbDodaj: TRejestrProsbDodaj;

implementation

{$R *.frm}

{ TRejestrProsbDodaj }

procedure TRejestrProsbDodaj.SetAdd(eIDO: integer);
begin
  isEditMode:= false;
  ido:= eIDO;
  Caption:= 'Zarejestruj prośbę: '+DM.GetNazwiskoImieByIDO(ido);
  WczytajKategorie;
  cbDrukuj.Enabled:= false;

  dtpWplywu.Checked:= true;
  dtpWplywu.Date:= Date();

  dtpDecyzji.Checked:= false;
  dtpDecyzji.Date:= Date();
end;

procedure TRejestrProsbDodaj.SetEdit(eID, eIDO: integer);
var ZQPom: TZQueryPom;
begin
  isEditMode:= true;
  id:= eID;
  ido:= eIDO;
  Caption:= 'Modyfikuj prośbę: '+DM.GetNazwiskoImieByIDO(ido);;
  WczytajKategorie;
  cbStatus.Items.Add('Zrealizowana'); // dodajemy status aby byl widoczny podczas modyfikacji

  cbDrukuj.Enabled:= true;

  ZQPom:= TZQueryPom.Create(Self);
  ZQPom.SQL.Text:= 'SELECT ID, Oznaczenie, Data_Wplywu, ID_Kategoria, Opis, Status, Data_Decyzji, User, Uwagi, Wydruk'
                     +' FROM rej_prosb'
                     +' WHERE ID = :ID';
  ZQPom.ParamByName('ID').AsInteger:= id;
  ZQPom.Open;
  if ZQPom.IsEmpty then
  begin
    FreeAndNil(ZQPom);
    btnAnuluj.Click;
  end;
  // ##################### Wczytujemy dane
  dtpWplywu.Date:= ZQPom.FieldByName('Data_Wplywu').AsDateTime;
  dtpWplywu.Enabled:= false;
  lbl_Oznaczenie.Caption := 'Znak pisma: ' + ZQPom.FieldByName('Oznaczenie').AsString;
  lbl_Oznaczenie.Visible:= true;

  cbKategoria.ItemIndex:= GetIndexKatById( ZQPom.FieldByName('ID_Kategoria').AsInteger );
  cbKategoria.Enabled:= false;

  edOpis.Text := ZQPom.FieldByName('Opis').AsString;
  cbStatus.ItemIndex := ZQPom.FieldByName('Status').AsInteger;

  if ZQPom.FieldByName('Data_Decyzji').IsNull then
     begin
       dtpDecyzji.Date := Date;
       dtpDecyzji.Checked:= false;
     end else
     begin
       dtpDecyzji.Date := ZQPom.FieldByName('Data_Decyzji').AsDateTime;
       dtpDecyzji.Checked:= true;
     end;

  memUwagi.Text:= ZQPom.FieldByName('Uwagi').AsString;

  cbDrukuj.Checked := (ZQPom.FieldByName('Wydruk').AsInteger = 1);
  // ###################### koniec wczytywania danych
  FreeAndNil(ZQPom);
end;

function TRejestrProsbDodaj.ZrealizujProsbe(eID: integer): boolean;
var ZQPom: TZQueryPom;
begin
  Result:= false;
  if MessageDlg('Czy odnotować realizację wskazanej prośby?', mtWarning, [mbOK, mbCancel],0) = mrCancel then exit;

  try
    ZQPom:= TZQueryPom.Create(Self);
    ZQPom.SQL.Text:= 'UPDATE rej_prosb SET Status=:status, Data_Realizacji=:Data_R, User_Realizacji=:User_R'
                    +' WHERE ID=:ID';

    ZQPom.ParamByName('ID').AsInteger := eid;
    ZQPom.ParamByName('status').AsInteger := 4;  // Zrealizowana
    ZQPom.ParamByName('Data_R').AsDateTime:= Now();
    ZQPom.ParamByName('User_R').AsString  := DM.PelnaNazwa;
    ZQPom.ExecSQL;
  except
    ShowMessage('Połączenie zostało zerwane.');
  end;
  FreeAndNil(ZQPom);
  Result:= true;
end;

procedure TRejestrProsbDodaj.btnOKClick(Sender: TObject);
begin
  if isEditMode then SaveEdit
                else SaveAdd;
end;

procedure TRejestrProsbDodaj.SaveAdd;
var ZQPom: TZQueryPom;
begin
  if cbKategoria.ItemIndex = -1 then
     begin
       MessageDlg('Wymagane jest wskazanie kategorii pisma.', mtWarning, [mbOK], 0);
       exit;
     end;

  if Kat[cbKategoria.ItemIndex].id = 16 then  // dot. kategorii Inne
     if edOpis.Text='' then
        begin
          MessageDlg('Wybrana kategoria (inne...) wymaga Opisu.', mtWarning, [mbOK], 0);
          exit;
        end;
  if not dtpWplywu.Checked then // data wpływu
        begin
          MessageDlg('Wymagane jest wskazanie Daty wpływu pisma.', mtWarning, [mbOK], 0);
          exit;
        end;
  if (dtpDecyzji.Checked)and(cbStatus.ItemIndex=2) then // data decyzji, brak wskazania rozpatrzenia
        begin
          MessageDlg('Wprowadziłeś datę decyzji bez określenia rozpatrzenia.', mtWarning, [mbOK], 0);
          exit;
        end;
  if (cbStatus.ItemIndex<2)and(not dtpWplywu.Checked) then // data decyzji, brak wskazania rozpatrzenia
        begin
          MessageDlg('Wprowadziłeś sposób rozpatrzenia bez określenia daty decyzji.', mtWarning, [mbOK], 0);
          exit;
        end;

  //------------ ZAPIS DO BAZY rejestr---------------------
  try
    ZQPom:= TZQueryPom.Create(Self);
    ZQPom.SQL.Text:= 'INSERT INTO rej_prosb (IDO, Data_Wplywu, ID_Kategoria, Opis, Status, Data_Decyzji, User, Uwagi)'
                    +' VALUES (:IDO, :dataW, :ID_K, :opis, :status, :dataD, :user, :uwagi)';

    ZQPom.ParamByName('IDO').AsInteger := IDO;
    ZQPom.ParamByName('dataW').AsDate  := dtpWplywu.Date;
    ZQPom.ParamByName('ID_K').AsInteger:= Kat[cbKategoria.ItemIndex].id;
    ZQPom.ParamByName('opis').AsString := edOpis.Text;
    ZQPom.ParamByName('status').AsInteger:= cbStatus.ItemIndex;
    if dtpDecyzji.Checked then ZQPom.ParamByName('dataD').AsDate:= dtpDecyzji.Date
                          else ZQPom.ParamByName('dataD').Value := Null;
    ZQPom.ParamByName('user').AsString := DM.PelnaNazwa;
    ZQPom.ParamByName('uwagi').AsString:= memUwagi.Text;
    ZQPom.ExecSQL;
  except
    ShowMessage('Połączenie zostało zerwane.');
  end;
  FreeAndNil(ZQPom);
  //--------------------------------------------------------

  ModalResult:=mrOK;
end;

procedure TRejestrProsbDodaj.SaveEdit;
var ZQPom: TZQueryPom;
begin
  if (dtpDecyzji.Checked)and(cbStatus.ItemIndex=2) then // data decyzji, brak wskazania rozpatrzenia
        begin
          MessageDlg('Wprowadziłeś datę decyzji bez określenia rozpatrzenia.', mtWarning, [mbOK], 0);
          exit;
        end;
  if (cbStatus.ItemIndex<2)and(not dtpDecyzji.Checked) then // brak data decyzji, wskazane rozpatrzenie
        begin
          MessageDlg('Wprowadziłeś sposób rozpatrzenia bez określenia daty decyzji.', mtWarning, [mbOK], 0);
          exit;
        end;
  if (cbStatus.ItemIndex=4) then // prośba zrealizowana
        begin
          MessageDlg('Nie można zapisać modyfikacji o statusie prośby jako zrealizowana.', mtWarning, [mbOK], 0);
          exit;
        end;

  if cbStatus.ItemIndex = 3 then cbDrukuj.Checked:=false; //jesli wpis omyłkowy to udajemy że wydrukowano potwierdzenie

  //------------ MODYFIKACJA DO BAZY rejestr---------------------
  try
    ZQPom:= TZQueryPom.Create(Self);
    ZQPom.SQL.Text:= 'UPDATE rej_prosb SET Opis=:opis, Status=:status, Data_Decyzji=:dataD, User=:user, Uwagi=:uwagi, Wydruk=:wydruk'
                    +' WHERE ID=:ID';

    if cbStatus.ItemIndex<>4 then
        ZQPom.SQL.Text:= 'UPDATE rej_prosb SET Opis=:opis, Status=:status, Data_Decyzji=:dataD, User=:user, Uwagi=:uwagi, Wydruk=:wydruk, Data_Realizacji=NULL, User_Realizacji=NULL'
                        +' WHERE ID=:ID';

    ZQPom.ParamByName('ID').AsInteger := id;
    ZQPom.ParamByName('opis').AsString:= edOpis.Text;
    ZQPom.ParamByName('status').AsInteger:= cbStatus.ItemIndex;
    if dtpDecyzji.Checked then ZQPom.ParamByName('dataD').AsDate:= dtpDecyzji.Date
                          else ZQPom.ParamByName('dataD').Value := Null;
    ZQPom.ParamByName('user').AsString  := DM.PelnaNazwa;
    ZQPom.ParamByName('uwagi').AsString := memUwagi.Text;
    if cbDrukuj.Checked then ZQPom.ParamByName('wydruk').AsInteger := 1
                        else ZQPom.ParamByName('wydruk').AsInteger := 0;
    ZQPom.ExecSQL;
  except
    ShowMessage('Połączenie zostało zerwane.');
  end;
  FreeAndNil(ZQPom);
  //--------------------------------------------------------

  ModalResult:=mrOK;
end;

procedure TRejestrProsbDodaj.cbStatusDrawItem(Control: TWinControl;
  Index: Integer; ARect: TRect; State: TOwnerDrawState);
var kolor: TColor;
begin
  kolor:= clYellow;
  with TComboBox(Control).Canvas do
  begin
    case Index of
      0: kolor := clRed;
      1: kolor := clGreen;
      2: kolor := clYellow;
      3: kolor := clGray;
      4: kolor := clLime;
    end;

    FillRect(ARect);
    Brush.Style := bsSolid; // styl - jednolity
    Brush.Color := kolor;
    Rectangle(ARect.Left + 2, ARect.Top + 2, ARect.Left + 22, ARect.Bottom - 2);
    Brush.Style := bsClear; // tło na przezroczyste
    TextOut(ARect.Left + 30, ARect.Top, TComboBox(Control).Items[Index]); // pisz tekst
  end;
end;

procedure TRejestrProsbDodaj.cbKategoriaDrawItem(Control: TWinControl;
  Index: Integer; ARect: TRect; State: TOwnerDrawState);
begin
  with TComboBox(Control).Canvas do
  begin
    FillRect(ARect);
    Brush.Style := bsSolid; // styl - jednolity
    Brush.Color := Kat[Index].Kolor;
    Rectangle(ARect.Left + 2, ARect.Top + 2, ARect.Left + 22, ARect.Bottom - 2);
    Brush.Style := bsClear; // tło na przezroczyste
    TextOut(ARect.Left + 30, ARect.Top, TComboBox(Control).Items[Index]); // pisz tekst
  end;
end;

procedure TRejestrProsbDodaj.WczytajKategorie;
var ZQPom: TZQueryPom;
    i: integer;
    kolor: integer;
begin
  ZQPom:= TZQueryPom.Create(Self);
  ZQPom.SQL.Text:= 'SELECT * FROM rej_prosb_sl ORDER BY Znaczenie';
  ZQPom.Open;

  SetLength(Kat, ZQPom.RecordCount);
  cbKategoria.Items.Clear;

  i:=-1;
  while not ZQPom.EOF do
  begin
    inc(i);
    cbKategoria.Items.Add( ZQPom.FieldByName('OPIS').AsString );
    Kat[i].cel   := ZQPom.FieldByName('ID_Katalog_prosb').AsInteger;
    Kat[i].id    := ZQPom.FieldByName('ID').AsInteger;
    Kat[i].kolor := ZQPom.FieldByName('Znaczenie').AsInteger;
    ZQPom.Next;
  end;
  FreeAndNil(ZQPom);

  for i:=0 to cbKategoria.Items.Count-1 do
  begin
      kolor:=clWhite;
      if (Kat[i].kolor>0)   AND (Kat[i].kolor<10) then Kolor:=clAqua;
      if (Kat[i].kolor>=10) AND (Kat[i].kolor<20) then Kolor:=clSkyBlue;
      if (Kat[i].kolor>=20) AND (Kat[i].kolor<30) then Kolor:=clAqua;
      if (Kat[i].kolor>=30) AND (Kat[i].kolor<40) then Kolor:=clSkyBlue;
      if (Kat[i].kolor>=40) AND (Kat[i].kolor<50) then Kolor:=clAqua;
      if (Kat[i].kolor>=50) AND (Kat[i].kolor<60) then Kolor:=clSkyBlue;
      if (Kat[i].kolor>=60) AND (Kat[i].kolor<70) then Kolor:=clAqua;
      if (Kat[i].kolor>=70) AND (Kat[i].kolor<80) then Kolor:=clSkyBlue;
      Kat[i].kolor:= Kolor;
  end;

end;

function TRejestrProsbDodaj.GetIndexKatById(kId: integer): integer;
var i: integer;
begin
  Result:=-1;
  i:=0;
  for i:=0 to High(Kat) do
  begin
    if Kat[i].id = kId then
    begin
      Result:=i;
      exit;
    end;
  end;
end;

end.

