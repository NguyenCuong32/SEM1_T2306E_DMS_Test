use ABC
Create Table bang_1(
EmployeeCode nvarchar(5) not null ,
EmployeeName nvarchar(10)not null,
DepartmentCode nvarchar(10)not null,
)
go

Create Table bang_2(
EmployeeNumber nvarchar(20)not null,
NumberOfWorkingDay nvarchar(20)not null,
NumberOffDaysOffWithPay nvarchar(20)not null,
NumberOffDaysOffWithoutPay nvarchar(20)not null
)

go
Create Table Bang_3(
	EmployeeCode nvarchar(20)not null,
	BasicSalary nvarchar(20)not null,
	GrossSalary nvarchar(20)not null,
	NetSalary nvarchar(20)not null,
)
go
Insert into bang_1(
EmployeeCode nvarchar(5) not null ,
EmployeeName nvarchar(10)not null,
DepartmentCode nvarchar(10)not null,
)
VALUES(
'A1',
'Nguyen van A',
'IT'

)