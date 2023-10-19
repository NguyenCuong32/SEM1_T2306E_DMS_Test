
-- Tạo Database
IF Not EXISTS (SELECT name FROM master.sys.databases WHERE name = 'OctoberPayroll')
BEGIN
Create Database OctoberPayroll
END
GO
-- Tạo Table trong Database
Use OctoberPayroll
If Not Exists(select * from INFORMATION_SCHEMA.TABLES where TABLE_NAME ='Employee')
Begin
Create Table Employee
(
    Employeecode nvarchar(20) not null,
    Employeename nvarchar(64) null,
    Departmentcode nvarchar(10) null,
    PRIMARY KEY (Employeecode)
)
end
Go
If Not Exists( select * from INFORMATION_SCHEMA.TABLES where TABLE_NAME ='Numberofworking')
Begin
Create Table Numberofworking(
    Employeecode NVARCHAR(10) not null,
    Numberofworkingday NVARCHAR(48) not null,
    Numberofdaysoffwithpay NVARCHAR(10) not null,
	Numberofdaysoffwithoutpay NVARCHAR(10) not null
    PRIMARY KEY (Employeecode)
)
End
Go
If Not Exists( select * from INFORMATION_SCHEMA.TABLES where TABLE_NAME ='Salary')
Begin
Create Table Salary(
    Employeecode NVARCHAR(10) not null,
    Basicsalary NVARCHAR(48) not null,
	Grosssalary NVARCHAR(48) not null,
	NetSalary NVARCHAR(48) not null
    PRIMARY KEY (Employeecode)
)
End

-- Insert dữ liệu vào Table

Insert Into Employee  
VALUES('A1',N'Nguyễn Văn A','IT'),('A2',N'Lê Thị Bình','IT'),('B1',N'Nguyễn Lan','HR'),
('D1',N'Mai Tuấn Anh','HR'),('C1',N'Hà Thị Lan','HR'),
('C2',N'Lê Tú Chinh','SALE'),('D2',N'Trần Văn Toàn','HR'),
('A3',N'Trần Văn Nam','IT'),('B2',N'Huỳnh Anh','SALE')
Insert Into Numberofworking  
VALUES('A1','22','0','0'),('A2','21','1','0'),('B1','20','1','1'),
('D1','20','1','1'),('C1','22','0','0'),
('C2','22','0','0'),('D2','22','0','0'),
('A3','22','0','0'),('B2','21','1','0')
Insert Into Salary
VALUES('A1','1000','22000','20000'),('A2','1200','26400','23000'),('B1','600','13200','12000'),
('D1','500','11000','10000'),('C1','500','11000','10000'),
('C2','1200','26400','23000'),('D2','500','11000','10000'),
('A3','1200','26400','23000'),('B2','1200','26400','23000')

-- Select group
Use OctoberPayroll
SELECT * from Employee 
SELECT * from Numberofworking 
SELECT * from Numberofworking 




