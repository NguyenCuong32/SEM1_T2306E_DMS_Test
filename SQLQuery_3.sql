IF Not EXISTS (SELECT name FROM master.sys.databases WHERE name = N'CustomerInfoSystem')
BEGIN
Create Database CustomerInfoSystem
END
GO
Use CustomerInfoSystem
If Not Exists(select * from INFORMATION_SCHEMA.TABLES where TABLE_NAME ='CustomerTable')
Begin
Create Table CustomerTable
(
    CustomerNumber nvarchar(20) not null,
    CustomerName nvarchar(64) null,
    CustomerTypeCode nvarchar(10) null,
    CustomerTypeName nvarchar(20) null,
    PRIMARY KEY (CustomerNumber)
)
end
Go
If Not Exists( select * from INFORMATION_SCHEMA.TABLES where TABLE_NAME ='ItemTable')
Begin
Create Table ItemTable(
    ItemNumber NVARCHAR(10) not null,
    ItemName NVARCHAR(48) not null,
    Price DECIMAL(21,6) null
    PRIMARY KEY (ItemNumber)
)
End
Go
If Not Exists( select * from INFORMATION_SCHEMA.TABLES where TABLE_NAME ='SupplyTable')
Begin
Create Table SupplyTable(
    ItemSupplierID NVARCHAR(10) not null,
    SupplierName NVARCHAR(48) not null
    PRIMARY KEY (ItemSupplierID)
)
End
Go
If Not Exists( select * from INFORMATION_SCHEMA.TABLES where TABLE_NAME ='CustomerItemTable')
Begin
Create Table CustomerItemTable(
    CustomerNumber NVARCHAR(10) not null,
    ItemNumber NVARCHAR(48) not null,
    Quantity int 
    PRIMARY KEY (CustomerNumber,ItemNumber)
)
End

-- Insert to Tables
Insert into CustomerTable (
    CustomerNumber,
    CustomerName,
    CustomerTypeCode,
    CustomerTypeName
)
VALUES(
    'A123',
    N'Nguyen Thanh Minh',
    '1',
    'VIP'
)
Insert into CustomerTable (
    CustomerNumber,
    CustomerName,
    CustomerTypeCode,
    CustomerTypeName
)
VALUES(
    'A124',
    N'Nguyen Thanh Minh',
    '1',
    'VIP'
)
Insert into CustomerTable (
    CustomerNumber,
    CustomerName,
    CustomerTypeCode,
    CustomerTypeName
)
VALUES(
    'A125',
    N'Nguyen Thanh Minh',
    '1',
    'VIP'
)

Insert Into ItemTable  VALUES('1',N'Sách',10000),('2',N'Vở',17000),('3',N'Báo',77000)
Insert Into SupplyTable  VALUES('A1',N'Nhã Nam'),('A2',N'Kim Đồng')
Insert Into CustomerItemTable  VALUES('A125','1',3),('A125','3',5),('A124','3',1),('A124','1',5)

SELECT * from CustomerItemTable 

SELECT CustomerNumber AS MaKhachHang,SUM(Quantity) AS SOLUONG from CustomerItemTable GROUP BY (CustomerNumber) ORDER BY MaKhachHang DESC

SELECT CustomerNumber AS MaKhachHang,SUM(Quantity) AS SOLUONG from CustomerItemTable GROUP BY (CustomerNumber)
HAVING  SUM(Quantity) >6