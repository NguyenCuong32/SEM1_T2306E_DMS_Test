use EmployeeManagement
-- 1nf querry
--CREATE TABLE EmployeeManagement1NF (
--	EmployeeCode NVARCHAR(20) NOT NULL,
--	EmployeeName NVARCHAR(60) NOT NULL,
--	DepartmentCode NVARCHAR(20) NOT NULL,
--	NumberOfWorkingDay INT NOT NULL,
--	NumberOfDaysOffWithPay INT NOT NULL,
--	NumberOfDaysOffWithoutPay INT NOT NULL,
--	BasicSalary INT NOT NULL,
--	GrossSalary INT NOT NULL,
--	NetSalary INT NOT NULL,
--	NOTE NVARCHAR(100)
--);


--2nf querry
--CREATE TABLE EmployeeInfo
--(
--	EmployeeCode NVARCHAR(20) NOT NULL PRIMARY KEY,
--	EmployeeName NVARCHAR(60) NOT NULL,
--	NOTE NVARCHAR(100) NOT NULL
--);

--CREATE TABLE WorkingDayCheck
--(
--	EmployeeCode NVARCHAR(20) NOT NULL PRIMARY KEY,
--	EmployeeName NVARCHAR(60) NOT NULL,
--	NumberOfWorkingDay INT NOT NULL,
--	NumberOfDaysOffWithPay INT NOT NULL,
--	NumberOfDaysOffWithoutPay INT NOT NULL
--);

--CREATE TABLE SalaryCheck
--(
--	EmployeeCode NVARCHAR(20) NOT NULL PRIMARY KEY,
--	EmployeeName NVARCHAR(60) NOT NULL,
--	BasicSalary INT NOT NULL,
--	GrossSalary INT NOT NULL,
--	NetSalary INT NOT NULL
--);
--CREATE TABLE DepartmentCheck
--(
--	DepartmentCode NVARCHAR(20) NOT NULL PRIMARY KEY,
--	DepartmentName NVARCHAR(60) NOT NULL
--);

--3nf querry
CREATE TABLE EmployeeInfo
(
	EmployeeCode NVARCHAR(20) NOT NULL PRIMARY KEY,
	EmployeeName NVARCHAR(60) NOT NULL,
	NOTE NVARCHAR(100) NOT NULL
);


CREATE TABLE WorkingDayCheck
(
	EmployeeCode NVARCHAR(20) NOT NULL,
	NumberOfWorkingDay INT NOT NULL,
	NumberOfDaysOffWithPay INT NOT NULL,
	NumberOfDaysOffWithoutPay INT NOT NULL
	FOREIGN KEY (EmployeeCode) REFERENCES EmployeeInfo(EmployeeCode)
);

CREATE TABLE SalaryCheck
(
	EmployeeCode NVARCHAR(20) NOT NULL,
	BasicSalary INT NOT NULL,
	GrossSalary INT NOT NULL,
	NetSalary INT NOT NULL
	FOREIGN KEY (EmployeeCode) REFERENCES EmployeeInfo(EmployeeCode)
);

CREATE TABLE DepartmentInfo
(
	DepartmentCode NVARCHAR(20) NOT NULL PRIMARY KEY,
	DepartmentName NVARCHAR(60) NOT NULL,
);

CREATE TABLE DepartmentCheck
(
	EmployeeCode NVARCHAR(20) NOT NULL,
	DepartmentCode NVARCHAR(20),
	FOREIGN KEY (EmployeeCode) REFERENCES EmployeeInfo(EmployeeCode),
	FOREIGN KEY (DepartmentCode) REFERENCES DepartmentInfo(DepartmentCode)
);


