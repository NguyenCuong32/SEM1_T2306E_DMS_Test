if not exists (select name from master.sys.databases where name=N'EmployeeManagement')
begin
create database EmployeeManagement
end
go

use EmployeeManagement
if not exists (select * from INFORMATION_SCHEMA.TABLES where TABLE_NAME='EmployeeInfo')
begin
create table EmployeeInfo
(
	EmployeeCode nvarchar(5),
	EmployeeName nvarchar(20),
	Primary Key (EmployeeCode)
)
end
if not exists (select * from INFORMATION_SCHEMA.TABLES where TABLE_NAME='DepartmentInfo')
begin
create table DepartmentInfo
(
	GenNumberDepart nvarchar(5),
	DepartmentCode nvarchar(3),
	NumberWorkDay int,
	NumberDayOffWithPay int,
	NumberDayOffWithoutPay int,
	Primary Key (GenNumberDepart)
)
end
if not exists (select * from INFORMATION_SCHEMA.TABLES where TABLE_NAME='SalaryInfo')
begin
create table SalaryInfo
(
	GenNumberSalary nvarchar(5),
	BasicSalary bigint,
	GrossSalary bigint,
	NetSalary bigint,
	Primary Key (GenNumberSalary)
)
end
if not exists (select * from INFORMATION_SCHEMA.TABLES where TABLE_NAME='EmployDepartRelation')
begin
create table EmployDepartRelation
(
	EmployeeCode nvarchar(5),
	GenNumberPart nvarchar(5),
	Foreign key (EmployeeCode) references EmployeeInfo(EmployeeCode),
	Foreign key (GenNumberPart) references DepartmentInfo(GenNumberPart)
)
end
if not exists (select * from INFORMATION_SCHEMA.TABLES where TABLE_NAME='DepartSalaryRelation')
begin
create table DepartSalaryRelation
(
	GenNumberDepart nvarchar(5),
	GenNumberSalary nvarchar(5),
	Foreign key (GenNumberDepart) references EmployeeInfo(GenNumberDepart),
	Foreign key (GenNumberSalary) references DepartmentInfo(GenNumberSalary)
)
end

begin
insert into EmployeeInfo
values
('A1',N'Nguyễn Văn A'),('A2',N'Lê Thị Bình'),('B1',N'Nguyễn Lan'),('D1',N'Mai Tuấn Anh'),('C1',N'Hà Thị Lan'),('C2',N'Lê Tú Chinh'),('D2','Trần Văn Toàn'),('A3',N'Trần Văn Nam'),('B2',N'Huỳnh Anh')
end

begin
insert into DepartmentInfo
values
('Dep1','IT',22,0,0),('Dep2','IT',21,1,0),('Dep3','HR',20,1,1),('Dep4','HR',20,1,1),('Dep5','HR',22,0,0),('Dep6','Sale',22,0,0),('Dep7','HR',22,1,1),('Dep8','IT',20,1,1)
end
begin
insert into SalaryInfo
values
('Sal1',1000,22000,20000),('Sal2',1200,26400,23.000),('Sal3',600,13200,12000)
end
begin
insert into EmployDepartRelation
values
('A1','Dep1'),('A2','Dep2'),('A3','Dep3'),('A4','Dep4'),('A5','Dep5'),('A6','Dep6'),('A7','Dep8'),('A8','Dep8'),('A9','Dep9')
end
begin
insert into DepartSalaryRelation
values
('Dep1','Sal1'),('Dep2','Sal2'),('Dep3','Sal3'),('Dep4','Sal4'),('Dep5','Sal5'),('Dep6','Sal6'),('Dep7','Sal7'),('Dep8','Sal8'),('Dep9','Sal9')
end

