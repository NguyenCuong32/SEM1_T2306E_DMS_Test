create database baithi
go
use [baithi]
go
create table EmployeeInformation(
Employeecode varchar(10) not null,
Employeename nvarchar(50) not null,
Departmentcode varchar(10) not null,
primary key(Employeecode)
)
create table NumberofworkingdayInformation(
Numberofworkingday int not null,
Numberofdaysoffwithpay int not null,
Numberofdaysoffwithoutpay int not null,
primary key(Numberofworkingday)
)
create table SalaryInformation(
BasicSalary int not null,
GrossSalary int not null,
Netsalary int not null,
primary key(BasicSalary)
)
create table DetailsNumberofworkingdayInformation(
Employeecode varchar(10) not null,
Departmentcode varchar(10) not null,
Numberofworkingday int not null
)
create table DeatailsofSalaryInformation(
Employeecode varchar(10) not null,
Employeename nvarchar(50) not null,
BasicSalary int not null,
GrossSalary int not null,
Netsalary int not null
)
insert into EmployeeInformation
values('A1','Nguyễn Văn A','IT')
values('A2','Lê Thị Bình','IT');
values('B1','Nguyễn Lan','HR');
values('D1','Mai Tuấn Anh','HR');
values('C1','Hà Thị Lan','HR');
values('C2','Lê Tú Chinh','SALE');
values('D2','Trần Văn Toàn','HR');
values('A3','Trần Văn Nam','IT');
values('B2','Huỳnh Anh','SALE')

