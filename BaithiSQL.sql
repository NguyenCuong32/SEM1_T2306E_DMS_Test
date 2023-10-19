Create database Employee

use Employee

Begin
Create table EmployeeInfo
(
	EmployeeCode nvarchar(10) not null,
	EmployeeName nvarchar(64) not null,
	DepartmentCode nvarchar(10) not null,
	Primary key (EmployeeCode)
)
End
Go

Begin
Create table EmployeeWorkingDay
(
	EmployeeCode nvarchar(10) not null,
	DepartmentCode nvarchar(10) not null,
	Number_of_Working_Day int not null,
	Numner_of_day_of_with_pay int not null,
	Numner_of_day_of_without_pay int not null,
	Primary key (EmployeeCode, DepartmentCode)
)
End
Go

Begin
Create table EmpoyeeSalary
(
	EmployeeName nvarchar(64) not null,
	Basic_Salary nvarchar(20) not null,
	Gross_Salary nvarchar(20) not null,
	Net_Salary int not null,
	primary key (EmployeeName)
)
End

--Insert Data Into Tables--

Insert into EmployeeInfo
(
	EmployeeCode,
	EmployeeName,
	DepartmentCode
)
Values
('A1', N'Nguyễn Văn A', 'IT'),
('A2', N'Lê Thị Bình', 'IT'),
('B1', N'Nguyễn Lan', 'HR'),
('D1', N'Mai Tuấn Anh', 'HR'),
('C1', N'Hà Thị Lan','HR'),
('C2', N'Lê Tú Chinh', 'SALE'),
('D2', N'Trần Văn Toàn', 'HR'),
('A3', N'Trần Văn Nam', 'IT'),
('B2', N'Huỳnh Anh', 'SALE')

select * from EmployeeInfo

Insert into EmployeeWorkingDay
(
	EmployeeCode,
	DepartmentCode,
	Number_of_Working_Day,
	Numner_of_day_of_with_pay,
	Numner_of_day_of_without_pay
)
Values
('A1','IT',22,0,0),
('A2','IT',21,1,0),
('B1','HR',20,1,1),
('D1','HR',20,1,1),
('C1','HR',22,0,0),
('C2','SALE',22,0,0),
('D2','HR',22,0,0),
('A3','IT',22,0,0),
('B2','SALE',21,1,0)

select * from EmployeeWorkingDay

insert into EmpoyeeSalary
(
	EmployeeName,
	Basic_Salary,
	Gross_Salary,
	Net_Salary
)
Values
(N'Nguyễn Văn A','1.000','22.000',20.000),
(N'Lê Thị Bình','1.200','26.400',23.000),
(N'Nguyễn Lan','600','13.200',12.000),
(N'Mai Tuấn Anh','500','11.000',10.000),
(N'Hà Thị Lan','500','11.000',10.000),
(N'Lê Tú Chinh','1.200','26.400',23.000),
(N'Trần Văn Toàn','500','11.000',10.000),
(N'Trần Văn Nam','1.200','26.400',23.000),
(N'Huỳnh Anh','1.200','26.400',23.000)

drop table EmpoyeeSalary

select * from EmpoyeeSalary

select ei.DepartmentCode, sum(es.Net_Salary)
from EmployeeInfo ei
inner join EmployeeWorkingDay ed
on ei.EmployeeCode = ed.EmployeeCode
inner join EmpoyeeSalary es
on ei.EmployeeName = es.EmployeeName
group by ei.DepartmentCode
order by ei.DepartmentCode asc