use FinalTest
go
CREATE TABLE Employee (
  EmployeeCode varchar not null,
  EmployeeName NVARCHAR(200) not null,
  DepartmentCode INT not null,
  PRIMARY KEY (EmployeeCode)
);

CREATE TABLE Salary (
  EmployeeCode varchar not null,
  BasicSalary DECIMAL(10,2) not null,
  GrossSalary DECIMAL(10,2) not null,
  NetSalary DECIMAL(10,2) not null,
  PRIMARY KEY (EmployeeCode),
  FOREIGN KEY (EmployeeCode) REFERENCES Employee (EmployeeCode)
);

CREATE TABLE Department (
  DepartmentCode INT not null,
  DepartmentName NVARCHAR(50) not null,
  PRIMARY KEY (DepartmentCode)
);
create table SoNgayLamViec
(
    ngaylamviec char(8) NOT NULL,
    ngaynghicoluong  char(8) NOT NULL,
    ngaynghikhongluong  char(8) NOT NULL,
    PRIMARY KEY(ngaylamviec)
)
INSERT INTO Employee (EmployeeCode, EmployeeName, DepartmentCode) VALUES
  ('A1', N'Nguyễn Văn A', 1),
  ('A2', N'Lê Thị Bình', 1),
  ('B1', N'Nguyễn Lan', 2),
  ('D1', N'Mai Tuấn Anh', 2),
  ('C1', N'Hà Thị Lan', 2),
  ('C2', N'Lê Tú Chinh', 3),
  ('D2', N'Trần Văn Toàn', 2),
  ('A3', N'Trần Văn Nam', 1),
  ('B2', N'Huỳnh Anh', 3);

INSERT INTO Salary (EmployeeCode, BasicSalary, GrossSalary, NetSalary) VALUES
  ('A1', 1000, 22000, 20000),
  ('A2', 1200, 26400, 23000),
  ('B1', 600, 13200,12000),
  ('D1', 500, 11000, 10000),
  ('C1', 500, 11000, 10000),
  ('C2', 1200, 26400, 23000),
  ('D2', 500, 11000, 10000),
  ('A3', 1.200, 26400, 23000),
  ('B2', 1.200, 26400, 23000)

INSERT INTO Department (DepartmentCode, DepartmentName) VALUES
  (1, 'IT'),
  (2, 'HR'),
  (3, 'Sale');
  INSERT INTO SoNgayLamViec(ngaylamviec,ngaynghicoluong,ngaynghikhongluong)
  Values
('10','2','1')

