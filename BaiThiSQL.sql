CREATE DATABASE BaiThi
GO
USE BaiThi
GO

CREATE TABLE EmployeeTable (
	EmployeeCode nchar(3) PRIMARY KEY,
	EmployeeName nvarchar(30),
	Numberwork int,
	NumberoffWorkpay int,
	NumberoffWithoutpay int,
	Basicsalary int ,
	Growsalary int,
	Netsalary int
)
CREATE TABLE DepartmentTable (
	Departmentcode nchar(5)
)
CREATE TABLE DepartmentEmployee (
	IDDepEmp int IDENTITY PRIMARY KEY,
	EmployeeCode nchar(3),
	Departmentcode nchar(5)
)


-- insert
INSERT INTO EmployeeTable (EmployeeCode,EmployeeName,Numberwork,NumberoffWorkpay,NumberoffWithoutpay,Basicsalary,Growsalary,Netsalary)
VALUES	('A1','Nguyễn Văn A',22,1,0,1000,22000,20000)

INSERT INTO DepartmentTable (Departmentcode)
VALUES	('IT')

INSERT INTO  DepartmentEmployee
VALUES ('A1','IT')