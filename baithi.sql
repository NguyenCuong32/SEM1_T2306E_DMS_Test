create database baithi
use baithi
create table Employee
(
	EmployeeCode varchar(12) primary key not null,
	EmployeeName nvarchar(43) not null,
	DepartmentCode varchar(12) not null
)
create table EmployeeWorkingDays
(
	EmployeeCode varchar(12) primary key not null,
	NumberofWorkingday int not null,
	Numberofdaysoffwithpay int not null,
	Numberofdaysoffwithoutpay int not null,
	foreign key (EmployeeCode) references Employee(EmployeeCode)
)
create table Salary
(
	EmployeeCode varchar(12) primary key not null,
	BasicSalary int not null,
	GrossSalary int not null,
	NetSalary int not null,
	foreign key (EmployeeCode) references Employee(EmployeeCode)
)
insert into Employee
values
('A1',N'Nguyễn Văn A','IT'),
('A2',N'Lê Thị Bình','IT'),
('B1',N'Nguyễn Lan','HR'),
('D1',N'Mai Tuấn Anh','HR'),
('C1',N'Hà Thị Lan','HR'),
('C2',N'Lê Tú Chinh','SALE'),
('D2',N'Trần Văn Toàn','HR'),
('A3',N'Trần Văn Nam','IT'),
('B2',N'Huỳnh Anh','SALE')
insert into EmployeeWorkingDays
values
('A1',22,0,0),
('A2',21,1,0),
('B1',20,1,1),
('D1',20,1,1),
('C1',22,0,0),
('C2',22,0,0),
('D2',22,0,0),
('A3',22,0,0),
('B2',21,1,0)
insert into Salary
values
('A1',1000,22000,20000),
('A2',1200,26400,23000),
('B1',600,13200,12000),
('D1',500,11000,10000),
('C1',500,11000,10000),
('C2',1200,26400,23000),
('D2',500,11000,10000),
('A3',1200,26400,23000),
('B2',1200,26400,23000)
update proc tongluong
as
begin 
select E.DepartmentCode, sum(S.NetSalary)as tongluong from Employee E
inner join Salary S on E.EmployeeCode= S.EmployeeCode
group by E.DepartmentCode
end
exec tongluong 