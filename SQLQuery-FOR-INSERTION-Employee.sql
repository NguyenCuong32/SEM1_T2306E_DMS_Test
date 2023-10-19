--INSERT INTO EmployeeInfo( EmployeeCode, EmployeeName, NOTE)
--VALUES ('A1', 'Nguyen Van A', 'Dedicated worker'),
--		('A2', 'Lê Thị Bình ', 'none'),
--		('B1', 'Nguyễn Lan', 'none'),
--		('D1', 'Mai Tuấn Anh', 'none'),
--		('C1', 'Hà Thị Lan', 'Slacking'),
--		('C2', 'Lê Tú Chinh', 'Dedicated'),
--		('D2', 'Trần Văn Toàn', 'none'),
--		('A3', 'Trần Văn Nam', 'none'),
--		('B2', 'Huỳnh Anh', 'dedicated');



--calculate totalsalary
	SELECT D.DepartmentCode, D.DepartmentName, SUM(S.BasicSalary) AS TotalSalaries
	FROM DepartmentInfo D
	LEFT JOIN DepartmentCheck DC ON D.DepartmentCode = DC.DepartmentCode
	LEFT JOIN SalaryCheck S ON DC.EmployeeCode = S.EmployeeCode
	GROUP BY D.DepartmentCode, D.DepartmentName
	ORDER BY D.DepartmentCode ASC;

