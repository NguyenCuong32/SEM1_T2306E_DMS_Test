-- Insert rows into table 'employee' in schema '[dbo]'
INSERT INTO [dbo].[employee]
(
 [employee_code], [employee_name]
)
VALUES
(
 'A1',N'Nguyễn Văn A'
),
(
 'A2',N'Lê Thị Bình'
),
(
 'B1',N'Nguyễn Lan'
),
(
 'B2',N'Huỳnh Anh'
),
(
 'C1',N'Hà Thị Lan'
),
(
 'C2',N'Lê Tú Chinh'
),
(
 'D1',N'Mai Tuấn Anh'
),
(
 'D2',N'Trần Văn Toàn'
),
(
 'A3',N'Trần Văn Nam'
)
GO


INSERT INTO [dbo].[department]
( 
 [department_code], [department_name]
)
VALUES
(
 'IT', 'IT'
),
(
 'HR', 'HR'
),(
 'SALE', 'SALE'
)
GO

-- Insert rows into table 'salary' in schema '[dbo]'
INSERT INTO [dbo].[salary]
( -- Columns to insert data into
 [id_salary], [basic_salary], [gross_salary],[net_salary]
)
VALUES
( 
 '001',1000,22000,20000
),
( 
 '002',600,13200,12000
),
( 
 '003',500,11000,10000
),
( 
 '004',1200,26400,23000
)
GO


INSERT INTO [dbo].[day_work]
( -- Columns to insert data into
 [id_day], [day_work], [day_off_with_pay],[day_off_without_pay]
)
VALUES
('001',22,0,0)
,
('002',21,1,0),
('003',20,1,1)

GO

-- Insert rows into table 'TableName' in schema '[dbo]'
INSERT INTO [dbo].[day_salary]
( -- Columns to insert data into
 [id_day], [id_salary]
)
VALUES
( 
 '001','001'
)
GO