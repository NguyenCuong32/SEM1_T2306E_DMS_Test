-- câu 1 :
use master
go
if exists(select name from sysdatabases where name='Payroll')
drop Database Payroll
go
Create Database Payroll
go
use Payroll
go

-- Tao Bang Employees table
CREATE TABLE Employees
(
  EmployeeCode VARCHAR(10) PRIMARY KEY,
  EmployeeName VARCHAR(50),
  DepartmentCode VARCHAR(10),
  NumberOfWorkingDays INT,
  NumberOfDaysOffWithPay INT,
  NumberOfDaysOffWithoutPay INT,
  BasicSalary DECIMAL(10, 2),
  GrossSalary DECIMAL(10, 2),
  NetSalary DECIMAL(10, 2)
);

-- Insert gia tri :
INSERT INTO Employees (EmployeeCode, EmployeeName, DepartmentCode, NumberOfWorkingDays, NumberOfDaysOffWithPay, NumberOfDaysOffWithoutPay, BasicSalary, GrossSalary, NetSalary)
VALUES 
  ('A1', N'Nguyễn Văn A', 'IT', 22, 0, 0, 1000, 22000, 20000),
  ('A2', N'Lê Thị Bình', 'IT', 21, 1, 0, 1200, 26400, 23000),
  ('B1', N'Nguyễn Lan', 'HR', 20, 1, 1, 600, 13200, 12000),
  ('D1', N'Mai Tuấn Anh', 'HR', 20, 1, 1, 500, 11000, 10000),
  ('C1', N'Hồ Thị Lan', 'HR', 22, 0, 0, 500, 11000, 10000),
  ('C2', N'Lê Tấn Chính', 'SALE', 22, 0, 0, 1200, 26400, 23000),
  ('D2', N'Trần Văn Toản', 'HR', 22, 0, 0, 500, 11000, 10000),
  ('A3', N'Trần Văn Nam', 'IT', 22, 0, 0, 1200, 26400, 23000),
  ('B2', N'Hương Anh', 'SALE', 21, 1, 0, 1200, 26400, 23000);


SELECT * FROM Employees;

-- Tạo bảng Department
CREATE TABLE Department (
  DepartmentCode varchar(5) PRIMARY KEY,
  DepartmentName varchar(50)
);
GO

-- Chèn giá trị vào bảng Department
INSERT INTO Department (DepartmentCode, DepartmentName)
VALUES
  ('IT', 'Information Technology'),
  ('HR', 'Human Resources'),
  ('SALE', 'Sales');
GO

--câu 3 :
-- Tạo stored procedure
CREATE PROCEDURE CalculateTotalSalariesByDepartment
AS
BEGIN
  SELECT e.DepartmentCode, d.DepartmentName, SUM(e.NetSalary) AS TotalSalary
  FROM Employee e
  INNER JOIN Department d ON e.DepartmentCode = d.DepartmentCode
  GROUP BY e.DepartmentCode, d.DepartmentName
  ORDER BY e.DepartmentCode ASC;
END;
GO


EXEC CalculateTotalSalariesByDepartment;
GO



