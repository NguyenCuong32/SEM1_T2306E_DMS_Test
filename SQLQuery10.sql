use [bảng tính lương]
go
CREATE TABLE Employee (
  EmployeeCode VARCHAR(10) PRIMARY KEY,
  EmployeeName VARCHAR(50),
  DepartmentCode VARCHAR(10) REFERENCES Department(DepartmentCode),
  Note VARCHAR(100)
);

CREATE TABLE Department (
  DepartmentCode VARCHAR(10) PRIMARY KEY,
  DepartmentName VARCHAR(50)
);
begin
CREATE TABLE Payroll (
  EmployeeCode VARCHAR(10) REFERENCES Employee(EmployeeCode),
  NumberOfWorkingDay INT not null,
  NumberOfDaysOffWithPay INT not null,
  NumberOfDaysOffWithoutPay INT not null,
  BasicSalary DECIMAL(10, 3),
  GrossSalary DECIMAL(10, 3),
  NetSalary DECIMAL(10, 3),
  primary key (EmployeeCode)
)end

INSERT INTO Employee (EmployeeCode, EmployeeName, DepartmentCode, Note) VALUES
  ('A1', 'Nguyễn Văn A', 'IT', ''),
  ('A2', 'Lê Thị Bình', 'IT', ''),
  ('B1', 'Nguyễn Lan', 'HR', ''),
  ('D1', 'Mai Tuấn Anh', 'HR', ''),
  ('C1', 'Hà Thị Lan', 'HR', ''),
  ('C2', 'Lê Tú Chinh', 'SALE', ''),
  ('D2', 'Trần Văn Toàn', 'HR', ''),
  ('A3', 'Trần Văn Nam', 'IT', ''),
  ('B2', 'Huỳnh Anh', 'SALE', '');


INSERT INTO Payroll (EmployeeCode, NumberOfWorkingDay, NumberOfDaysOffWithPay, NumberOfDaysOffWithoutPay, BasicSalary, GrossSalary, NetSalary) VALUES
  ('A1', 22, 0, 0, 1000, 22000, 20000),
  ('A2', 21, 1, 0, 1200, 26400, 23000),
  ('B1', 20, 1, 1, 600, 13200, 12000),
  ('D1', 20, 1, 1, 500, 11000, 10000),
  ('C1', 22, 0, 0, 500, 11000, 10000),
  ('C2', 22, 0, 0, 1200, 26400, 23000),
  ('D2', 22, 0, 0, 500, 11000, 10000),
  ('A3', 22, 0, 0, 1200, 26400, 23000),
  ('B2', 21, 1, 0, 1200, 26400, 23000)

  