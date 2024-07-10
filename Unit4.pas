unit Unit4;

interface

uses
  SysUtils, Classes, DB, ZAbstractRODataset, ZAbstractDataset, ZDataset,
  ZAbstractConnection, ZConnection, frxClass, frxDBSet;

type
  TDataModule4 = class(TDataModule)
    con1: TZConnection;
    tbl_kategori: TZQuery;
    ds_kategori: TDataSource;
    tbl_satuan: TZQuery;
    ds_satuan: TDataSource;
    ds_supplier: TDataSource;
    tbl_supplier: TZQuery;
    tbl_kustomer: TZQuery;
    tbl_penjualan: TZQuery;
    ds_kustomer: TDataSource;
    ds_penjualan: TDataSource;
    ds_pembelian: TDataSource;
    tbl_pembelian: TZQuery;
    tbl_user: TZQuery;
    ReportKat: TfrxReport;
    dbKat: TfrxDBDataset;
    ReportSat: TfrxReport;
    dbSat: TfrxDBDataset;
    dbSupp: TfrxDBDataset;
    ReportSupp: TfrxReport;
    dbKus: TfrxDBDataset;
    ReportKus: TfrxReport;
    dbJual: TfrxDBDataset;
    ReportJual: TfrxReport;
    dbBeli: TfrxDBDataset;
    ReportBeli: TfrxReport;
    dbUser: TfrxDBDataset;
    ReportUser: TfrxReport;
    tbl_barang: TZQuery;
    ds_barang: TDataSource;
    dbBarang: TfrxDBDataset;
    ReportBarang: TfrxReport;
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  DataModule4: TDataModule4;

implementation

{$R *.dfm}

end.
