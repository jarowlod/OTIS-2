unit URozmieszczenie;

{$mode objfpc}{$H+}

interface

uses
  Classes, SysUtils, FileUtil, rxdbgrid, Forms, Controls, Graphics, Dialogs,
  ExtCtrls, ComCtrls, Buttons, StdCtrls, datamodule, LR_Class, LR_DBSet,
  TplGradientUnit, db, ZDataset, ZSqlUpdate, DBGrids, DbCtrls, Grids;

type

  { TRozmieszczenie }

  TRozmieszczenie = class(TForm)
    BitBtn1: TBitBtn;
    BitBtn2: TBitBtn;
    BitBtn3: TBitBtn;
    cbTrybEdycji: TCheckBox;
    cbR: TCheckBox;
    cbR_N: TCheckBox;
    cbP: TCheckBox;
    cbP_N: TCheckBox;
    cbM: TCheckBox;
    cbM_N: TCheckBox;
    cbPrzejsciowa: TCheckBox;
    cbPrzejsciowa_N: TCheckBox;
    cbAB: TCheckBox;
    cbWolne: TCheckBox;
    cbGrypsuje: TCheckBox;
    cbSpecjalne: TCheckBox;
    cbPrzeludnione: TCheckBox;
    cbGrypsuje_N: TCheckBox;
    cbPali: TCheckBox;
    cbPali_N: TCheckBox;
    cbOchronka: TCheckBox;
    cbOchronka_N: TCheckBox;
    cbTA: TCheckBox;
    cbTA_N: TCheckBox;
    cbDodatkowyPanel: TCheckBox;
    cbPanelZdjec: TCheckBox;
    cmbPOC: TComboBox;
    DSOsadzeni: TDataSource;
    DSRozmieszczenie: TDataSource;
    frDBDataSet1: TfrDBDataSet;
    frReport1: TfrReport;
    GroupBox1: TGroupBox;
    ImageList1: TImageList;
    Image_1: TImage;
    Image_10: TImage;
    Image_11: TImage;
    Image_12: TImage;
    Image_2: TImage;
    Image_3: TImage;
    Image_4: TImage;
    Image_5: TImage;
    Image_6: TImage;
    Image_7: TImage;
    Image_8: TImage;
    Image_9: TImage;
    Label1: TLabel;
    Label2: TLabel;
    lbNazwisko_1: TLabel;
    lbNazwisko_10: TLabel;
    lbNazwisko_11: TLabel;
    lbNazwisko_12: TLabel;
    lbNazwisko_2: TLabel;
    lbNazwisko_3: TLabel;
    lbNazwisko_4: TLabel;
    lbNazwisko_5: TLabel;
    lbNazwisko_6: TLabel;
    lbNazwisko_7: TLabel;
    lbNazwisko_8: TLabel;
    lbNazwisko_9: TLabel;
    PageControl1: TPageControl;
    Panel1: TPanel;
    Panel2: TPanel;
    DodatkowyPanel: TPanel;
    PanelZdjec: TPanel;
    Panel_1: TPanel;
    Panel_10: TPanel;
    Panel_11: TPanel;
    Panel_12: TPanel;
    Panel_2: TPanel;
    Panel_3: TPanel;
    Panel_4: TPanel;
    Panel_5: TPanel;
    Panel_6: TPanel;
    Panel_7: TPanel;
    Panel_8: TPanel;
    Panel_9: TPanel;
    plGradient1: TplGradient;
    RxDBGrid1: TRxDBGrid;
    RxDBGrid2: TRxDBGrid;
    Splitter1: TSplitter;
    Splitter2: TSplitter;
    TabSheet1: TTabSheet;
    TabSheet2: TTabSheet;
    ZQRozmieszczenie: TZQuery;
    ZQOsadzeni: TZQuery;
    ZURozmieszczenie: TZUpdateSQL;
    procedure BitBtn2Click(Sender: TObject);
    procedure BitBtn3Click(Sender: TObject);
    procedure cbDodatkowyPanelChange(Sender: TObject);
    procedure cbTrybEdycjiChange(Sender: TObject);
    procedure cbPanelZdjecChange(Sender: TObject);
    procedure cmbPOCSelect(Sender: TObject);
    procedure DSRozmieszczenieDataChange(Sender: TObject; Field: TField);
    procedure KryteriaCheckBoxClick(Sender: TObject);
    procedure FormCreate(Sender: TObject);
    procedure RxDBGrid1CellClick(Column: TColumn);
    procedure RxDBGrid1GetCellProps(Sender: TObject; Field: TField;
      AFont: TFont; var Background: TColor);
    procedure RxDBGrid2DblClick(Sender: TObject);
    procedure RxDBGrid2GetCellProps(Sender: TObject; Field: TField;
      AFont: TFont; var Background: TColor);
    procedure PanelZdjecResize(Sender: TObject);
    procedure TabSheet2Show(Sender: TObject);
    procedure ZQRozmieszczeniePostError(DataSet: TDataSet; E: EDatabaseError;
      var DataAction: TDataAction);
  private
    DodRozmieszczenie: TRozmieszczenie;
    SQLRozmieszczenie: string;
    SQLGroup: string;
    PanelZdj: array[1..12]of TPanel;
    POC: string;
    Procedure PictureResize;
    Procedure PreparePicture;
    procedure WczytajWychowawcowDoEdycji;
  public
    Procedure NewSelect;
  end;

var
  Rozmieszczenie: TRozmieszczenie;

implementation
{$R *.frm}
uses UPenitForm;

{ TRozmieszczenie }

procedure TRozmieszczenie.FormCreate(Sender: TObject);
begin
  cbTrybEdycji.Enabled:= DM.uprawnienia[5];  // modyfikacja typu celi

  SQLRozmieszczenie:= ZQRozmieszczenie.SQL.Text;
  SQLGroup := ' GROUP BY POC';
  ZQRozmieszczenie.SQL.Text:= SQLRozmieszczenie+SQLGroup;
  ZQRozmieszczenie.Open;
  ZQOsadzeni.Open;

  PanelZdj[1]:= Panel_1;
  PanelZdj[2]:= Panel_2;
  PanelZdj[3]:= Panel_3;
  PanelZdj[4]:= Panel_4;
  PanelZdj[5]:= Panel_5;
  PanelZdj[6]:= Panel_6;
  PanelZdj[7]:= Panel_7;
  PanelZdj[8]:= Panel_8;
  PanelZdj[9]:= Panel_9;
  PanelZdj[10]:= Panel_10;
  PanelZdj[11]:= Panel_11;
  PanelZdj[12]:= Panel_12;
  PictureResize;

  POC:='null';
  TabSheet1.Show;

  WczytajWychowawcowDoEdycji;
end;

procedure TRozmieszczenie.RxDBGrid1CellClick(Column: TColumn);
var book: TBookMark;
begin
  if not cbTrybEdycji.Checked then exit;
  if (Column.ButtonStyle= cbsCheckboxColumn) and (not Column.Field.IsNull) then
  begin
    book:= Column.Field.DataSet.GetBookmark;
    Column.Field.DataSet.Edit;

    if Column.Field.IsNull then Column.Field.Value:= Column.ValueChecked
      else if Column.Field.AsString = Column.ValueChecked then Column.Field.Value:= Column.ValueUnchecked
        else Column.Field.Value:= Column.ValueChecked;

    Column.Field.DataSet.Post;

    SetToBookmark(Column.Field.DataSet, Book);
  end;
end;

procedure TRozmieszczenie.RxDBGrid2GetCellProps(Sender: TObject; Field: TField;
  AFont: TFont; var Background: TColor);
begin
  if Assigned(Field) and (Field.FieldName = 'Status') then
  begin
    if (Field.IsNull) then   // status nieokoreslony
    begin
      Background := clYellow;
      AFont.Color:= clBlack;
    end else
        if (Field.AsInteger =0 ) then      // status nie przeludniac
        begin
          Background := clRed;
          AFont.Color:= clWhite;
        end else
            if (Field.AsInteger =1) then // status mozna przeludniac
            begin
              Background := clGreen;
              AFont.Color:= clWhite;
            end
  end;

  if Assigned(Field) and ((Field.FieldName = 'data_od')
                      or  (Field.FieldName = 'data_do')) then
  begin
    if not (Field.IsNull) then   // jesli jest jakas data
    begin
      Background := clRed;
      AFont.Color:= clBlack;
    end;
  end;
end;

procedure TRozmieszczenie.NewSelect;
var
  stWhere : string;
  stHaving: string;

    procedure AddWHERE(s: string);
    begin
      if s='' then exit;
      if stWhere<>'' then stWhere:= stWhere+' and '+ s
                     else stWhere:= s;
    end;
    procedure AddHAVING(s: string);
    begin
      if s='' then exit;
      if stHaving<>'' then stHaving:= stHaving+' and '+ s
                      else stHaving:= s;
    end;

begin
  stWhere:='';
  stHaving:='';

  // Budujemy zapytanie do bazy
  if cbGrypsuje_N.Checked then AddHAVING('(GR=0)');
  if cbGrypsuje.Checked   then AddHAVING('(GR>0)');
  if cbPali_N.Checked     then AddWHERE('(Pali=0)');
  if cbPali.Checked       then AddWHERE('(Pali=1)');
  if cbOchronka_N.Checked then AddWHERE('(Ochronka=0)');
  if cbOchronka.Checked   then AddWHERE('(Ochronka=1)');
  if cbTA_N.Checked      then AddWHERE('(TA=0)');
  if cbTA.Checked        then AddWHERE('(TA=1)');
  if cbR_N.Checked       then AddWHERE('(R=0)');
  if cbR.Checked         then AddWHERE('(R=1)');
  if cbP_N.Checked       then AddWHERE('(P=0)');
  if cbP.Checked         then AddWHERE('(P=1)');
  if cbM_N.Checked       then AddWHERE('(M=0)');
  if cbM.Checked         then AddWHERE('(M=1)');
  if cbPrzejsciowa_N.Checked then AddWHERE('(Przejsciowa=0)');
  if cbPrzejsciowa.Checked   then AddWHERE('(Przejsciowa=1)');

  if cbAB.Checked    then AddWHERE('((typ_cel.POC LIKE "A-%")or(typ_cel.POC LIKE "B-%"))');
  if cbWolne.Checked then AddHAVING('(Wolne>0)');
  if cbSpecjalne.Checked    then AddWHERE('(Wychowawca<>"")');
  if cbPrzeludnione.Checked then AddHAVING('(blokuje=0)');

  if cmbPOC.ItemIndex>0 then AddWHERE('(typ_cel.POC LIKE "' +cmbPOC.Text+ '%")');
  //----------------------- koniec łączenia zapytań

  if stWhere<>'' then stWhere:=' WHERE '+stWhere;
  if stHaving<>'' then stHaving:=' HAVING '+stHaving;

  ZQRozmieszczenie.SQL.Text:= SQLRozmieszczenie + stWhere + SQLGroup + stHaving;
  ZQRozmieszczenie.Open;
end;

procedure TRozmieszczenie.RxDBGrid1GetCellProps(Sender: TObject; Field: TField;
  AFont: TFont; var Background: TColor);
begin
  if Assigned(Field) and (Field.FieldName = 'blokuje') then
      begin
        if (Field.AsInteger>0) then // są bez mozliwosci przeludnienia
        begin
            Background := clRed;
            AFont.Color:= clWhite;
        end else
        begin
            Background := clGreen;
            AFont.Color:= clWhite;
        end;
      end
  else
  if Assigned(Field) and (Field.FieldName = 'Wolne') then
      begin
          if (Field.AsInteger >0 ) then
              begin
                  Background := clGreen;
                  AFont.Color:= clWhite;
              end
           else
              if (Field.AsInteger <0 ) then
              begin
                  Background := clRed;
                  AFont.Color:= clWhite;
              end;
      end
  else
      if Assigned(Field) and (Field.FieldName = 'Zajete') then
          begin
              if (Field.AsInteger =0 ) then
              begin
                  Background := clGreen;
                  AFont.Color:= clWhite;
              end;
          end;
end;

procedure TRozmieszczenie.RxDBGrid2DblClick(Sender: TObject);
begin
  if (DM.Wychowawca<>'') then
  with TPenitForm.Create(Self) do
  begin
       SetIDO( ZQOsadzeni.FieldByName('ido').AsInteger );
       ShowModal;
       Free;
  end;
end;

// TRYB EDYCJI
procedure TRozmieszczenie.cbTrybEdycjiChange(Sender: TObject);
begin
  if cbTrybEdycji.Checked then
    begin
      RxDBGrid1.Options := RxDBGrid1.Options - [dgRowSelect] + [dgEditing, dgRowHighlight];
    end
  else
    begin
      RxDBGrid1.Options := RxDBGrid1.Options - [dgEditing, dgRowHighlight] + [dgRowSelect];
    end;
end;

procedure TRozmieszczenie.cmbPOCSelect(Sender: TObject);
begin
  NewSelect;
end;

procedure TRozmieszczenie.DSRozmieszczenieDataChange(Sender: TObject;
  Field: TField);
begin
  if cbPanelZdjec.Checked then PreparePicture;
end;

// odśwież
procedure TRozmieszczenie.BitBtn2Click(Sender: TObject);
begin
  cbGrypsuje_N.Checked    := false;   cbGrypsuje.Checked      := false;
  cbPali_N.Checked        := false;   cbPali.Checked          := false;
  cbOchronka_N.Checked    := false;   cbOchronka.Checked      := false;
  cbTA_N.Checked          := false;   cbTA.Checked            := false;
  cbR_N.Checked           := false;   cbR.Checked             := false;
  cbP_N.Checked           := false;   cbP.Checked             := false;
  cbM_N.Checked           := false;   cbM.Checked             := false;
  cbPrzejsciowa_N.Checked := false;   cbPrzejsciowa.Checked   := false;

  cbAB.Checked            := false;
  cbWolne.Checked         := false;
  cbSpecjalne.Checked     := false;
  cbPrzeludnione.Checked  := false;

  cmbPOC.ItemIndex        := 0;

  NewSelect;
end;

procedure TRozmieszczenie.BitBtn3Click(Sender: TObject);
begin
  frReport1.LoadFromFile(DM.Path_Raporty + 'pen_rozmieszczenie.lrf');
  frReport1.ShowReport;
end;

//Dodatkowy widok rozmieszczenia
procedure TRozmieszczenie.cbDodatkowyPanelChange(Sender: TObject);
begin
  if (cbDodatkowyPanel.Checked)and(DodRozmieszczenie=Nil) then
    begin
      cbPanelZdjec.Enabled:= false;  // blokujemy panel dla zdjęć.
      Splitter2.Visible:= true;
      DodatkowyPanel.Visible   := true;
      DodatkowyPanel.Width     := Width div 2;
      DodRozmieszczenie:= TRozmieszczenie.Create( DodatkowyPanel );
      DodRozmieszczenie.BorderStyle:= bsNone;
      DodRozmieszczenie.Align      := alClient;
      DodRozmieszczenie.Parent     := DodatkowyPanel;
      // ukrywamy zbędne dodatki
      DodRozmieszczenie.cbDodatkowyPanel.Visible := false;
      DodRozmieszczenie.BitBtn1.Visible          := false;
      DodRozmieszczenie.cbTrybEdycji.Visible     := false;
      DodRozmieszczenie.cbPanelZdjec.Visible     := false;
      DodRozmieszczenie.Show;
    end
  else
    begin
      DodatkowyPanel.Visible   := false;
      Splitter2.Visible:= false;
      FreeAndNil( DodRozmieszczenie );
      cbPanelZdjec.Enabled:= true;
    end;
end;

procedure TRozmieszczenie.cbPanelZdjecChange(Sender: TObject);
begin
  if cbPanelZdjec.Checked then
    begin
      cbDodatkowyPanel.Enabled:= false; // blokujemy CheckBox dodatkowy panel Cel
      Splitter2.Visible:= true;
      DodatkowyPanel.Visible   := true;
      DodatkowyPanel.Width     := Width div 2;

      PanelZdjec.Parent:= DodatkowyPanel;
      TabSheet2.TabVisible    := false;
      PreparePicture;
      //autoupdate zdjec on data change
    end
  else
    begin
      DodatkowyPanel.Visible   := false;
      Splitter2.Visible:= false;

      PanelZdjec.Parent       := TabSheet2;
      TabSheet2.TabVisible    := true;
      cbDodatkowyPanel.Enabled:= true;
    end;
end;

procedure TRozmieszczenie.KryteriaCheckBoxClick(Sender: TObject);
var i: integer;
    cbName: string;
begin
  i:= TCheckBox(Sender).Tag;
  cbName:= TCheckBox(Sender).Name;
  if (i>=1)and(TCheckBox(Sender).Checked) then
    begin
      case cbName of
        'cbGrypsuje'  : cbGrypsuje_N.Checked:= false;
        'cbGrypsuje_N': cbGrypsuje.Checked  := false;
        'cbPali'      : cbPali_N.Checked    := false;
        'cbPali_N'    : cbPali.Checked      := false;
        'cbOchronka'  : cbOchronka_N.Checked:= false;
        'cbOchronka_N': cbOchronka.Checked  := false;
        'cbTA'        : cbTA_N.Checked      := false;
        'cbTA_N'      : cbTA.Checked        := false;
        'cbR'         : cbR_N.Checked       := false;
        'cbR_N'       : cbR.Checked         := false;
        'cbP'         : cbP_N.Checked       := false;
        'cbP_N'       : cbP.Checked         := false;
        'cbM'         : cbM_N.Checked       := false;
        'cbM_N'       : cbM.Checked         := false;
        'cbPrzejsciowa'  : cbPrzejsciowa_N.Checked:= false;
        'cbPrzejsciowa_N': cbPrzejsciowa.Checked  := false;
      end;
    end;

  // Budujemy zapytanie do bazy
  NewSelect;
end;

procedure TRozmieszczenie.WczytajWychowawcowDoEdycji;
var ZQ: TZQueryPom;
    p_List: TStrings;
begin
  ZQ:= TZQueryPom.Create(Self);
  ZQ.SQL.Text:= 'SELECT Wychowawca FROM uprawnienia WHERE ZastepstwaWych<>"" ORDER BY Wychowawca ASC;';
  ZQ.Open;
  p_List:= RxDBGrid1.ColumnByFieldName('Wychowawca').PickList;
  p_List.Clear;
  while not ZQ.EOF do
  begin
    p_List.Add( ZQ.FieldByName('Wychowawca').AsString );
    ZQ.Next;
  end;
  FreeAndNil(ZQ);
end;

// =====================================================================
// =============            TabSheet2          =========================

procedure TRozmieszczenie.TabSheet2Show(Sender: TObject);
begin
  PreparePicture;
end;

procedure TRozmieszczenie.ZQRozmieszczeniePostError(DataSet: TDataSet;
  E: EDatabaseError; var DataAction: TDataAction);
begin
  if DataSet.Modified then
    begin
      DataAction:= daAbort;
      DataSet.Cancel;
    end;
end;

procedure TRozmieszczenie.PanelZdjecResize(Sender: TObject);
begin
  PictureResize;
end;

procedure TRozmieszczenie.PictureResize;
var PanelW, PanelH: integer;
    i: integer;
begin
    PanelW:= PanelZdjec.Width div 4;
    PanelH:= PanelZdjec.Height div 3;

    for i:=1 to 12 do
    begin
      if i<= ZQOsadzeni.RecordCount then PanelZdj[i].Visible:= true else PanelZdj[i].Visible:= false;

      PanelZdj[i].Width:= PanelW - 8;
      if i<=4 then PanelZdj[i].Left:= 4 + ((i-1) * PanelW)
         else
      if i<=8 then PanelZdj[i].Left:= 4 + ((i-1-4) * PanelW)
         else
                   PanelZdj[i].Left:= 4 + ((i-1-8) * PanelW);

      PanelZdj[i].Height:= PanelH - 8;
      if i<=4 then PanelZdj[i].Top:= 4
         else
      if i<=8 then PanelZdj[i].Top:= 8 + PanelH
         else
                   PanelZdj[i].Top:= 12 + PanelH*2;
    end;
end;

procedure TRozmieszczenie.PreparePicture;
var i: integer;
    plik: string;
    nazwisko: string;
    p_image: TImage;
    p_label: TLabel;
begin
  PictureResize;
  // wczytujemy zdjęcia.
  if ZQOsadzeni.IsEmpty then exit;
  if POC = ZQRozmieszczenie.FieldByName('POC').AsString then exit;
  POC:= ZQRozmieszczenie.FieldByName('POC').AsString;
  ZQOsadzeni.DisableControls;
  ZQOsadzeni.First;
  i:=1;
  while (not ZQOsadzeni.EOF)and(i<=12) do // ograniczenie do 12 zdjęć
  begin
    plik    := DM.Path_Foto + IntToStr(ZQOsadzeni.FieldByName('IDO').AsInteger)+'.jpg';
    nazwisko:= ZQOsadzeni.FieldByName('Nazwisko').AsString+' '+ZQOsadzeni.FieldByName('Imie').AsString;
    if ZQOsadzeni.FieldByName('GR').AsInteger = 1 then nazwisko:=nazwisko+ ' - GR';
    nazwisko:= nazwisko + LineEnding + 'Data Przyjęcia: ' + ZQOsadzeni.FieldByName('Przyj').AsString;

    p_image:= TImage(FindComponent('Image_'+IntToStr(i)));
    p_image.Picture.Clear; // czyścimy zdjęcie.
    p_image.Hint:= nazwisko;
    TLoadFotoThread.Create(plik, p_image );

    p_Label:= TLabel(FindComponent('lbNazwisko_'+IntToStr(i)));
    p_Label.Caption:= nazwisko;
    p_label.Hint   := nazwisko;

    inc(i);
    ZQOsadzeni.Next;
  end;
  ZQOsadzeni.EnableControls;
end;

end.

