-- Tạo cơ sở dữ liệu
CREATE DATABASE PayrollDB;
GO

-- Sử dụng cơ sở dữ liệu PayrollDB
USE PayrollDB;
GO

-- Tạo bảng Employee
CREATE TABLE Employee (
  EmployeeCode varchar(5) PRIMARY KEY,
  EmployeeName varchar(50),
  DepartmentCode varchar(5),
  WorkingDays int,
  DaysOffWithPay int,
  DaysOffWithoutPay int,
  BasicSalary decimal(10, 2),
  GrossSalary decimal(10, 2),
  NetSalary decimal(10, 2)
);
GO

-- Chèn giá trị vào bảng Employee
INSERT INTO Employee (EmployeeCode, EmployeeName, DepartmentCode, WorkingDays, DaysOffWithPay, DaysOffWithoutPay, BasicSalary, GrossSalary, NetSalary)
VALUES
  ('A1', 'Nguyễn Văn A', 'IT', 22, 0, 0, 1000, 22000, 20000),
  ('A2', 'Lê Thị Bình', 'IT', 21, 1, 0, 1200, 26400, 23000),
  ('B1', 'Nguyễn Lan', 'HR', 20, 1, 1, 600, 13200, 12000),
  ('D1', 'Mai Tuấn Anh', 'HR', 20, 1, 1, 500, 11000, 10000),
  ('C1', 'Hà Thị Lan', 'HR', 22, 0, 0, 500, 11000, 10000),
  ('C2', 'Lê Tú Chinh', 'SALE', 22, 0, 0, 1200, 26400, 23000),
  ('D2', 'Trần Văn Toàn', 'HR', 22, 0, 0, 500, 11000, 10000),
  ('A3', 'Trần Văn Nam', 'IT', 22, 0, 0, 1200, 26400, 23000),
  ('B2', 'Huỳnh Anh', 'SALE', 21, 1, 0, 1200, 26400, 23000);
GO

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

-- Gọi stored procedure
EXEC CalculateTotalSalariesByDepartment;
GO

