CREATE TABLE [employee] (
  [employee_code] char(10) PRIMARY KEY,
  [employee_name] Nvarchar(100)
)
GO

CREATE TABLE [department] (
  [department_code] char(10) PRIMARY KEY,
  [department_name] Nvarchar(50)
)
GO

CREATE TABLE [day_work] (
  [id_day] char(10) PRIMARY KEY,
  [day_work] int,
  [day_off_with_pay] int,
  [day_off_without_pay] int
)
GO

CREATE TABLE [salary] (
  [id_salary] char(10) PRIMARY KEY,
  [basic_salary] decimal,
  [gross_salary] decimal,
  [net_salary] decimal,
  [not] Nvarchar(350)
)
GO

CREATE TABLE [employee_and_day] (
  [employee_code] char(10),
  [id_day] char(10)
)
GO

CREATE TABLE [employee_department] (
  [employee_code] char(10),
  [department_code] char(10)
)
GO

CREATE TABLE [day_salary] (
  [id_day] char(10),
  [id_salary] char(10)
)
GO

ALTER TABLE [employee_and_day] ADD FOREIGN KEY ([employee_code]) REFERENCES [employee] ([employee_code])
GO

ALTER TABLE [day_salary] ADD FOREIGN KEY ([id_salary]) REFERENCES [salary] ([id_salary])
GO

ALTER TABLE [employee_and_day] ADD FOREIGN KEY ([id_day]) REFERENCES [day_work] ([id_day])
GO

ALTER TABLE [day_salary] ADD FOREIGN KEY ([id_day]) REFERENCES [day_work] ([id_day])
GO

ALTER TABLE [employee_department] ADD FOREIGN KEY ([department_code]) REFERENCES [department] ([department_code])
GO

ALTER TABLE [employee_department] ADD FOREIGN KEY ([employee_code]) REFERENCES [employee] ([employee_code])
GO
