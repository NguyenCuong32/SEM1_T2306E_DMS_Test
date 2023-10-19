CREATE DATABASE OctoberPayroll
use OctoberPayroll
create table EmployeeInfo
(
    EmployeeCode VARCHAR(2) primary key not null,
    EmployeeName NVARCHAR(20) not null,
    DepartmentCode VARCHAR(5) not null,
    Note VARCHAR(10)
)

create table WorkDays
(
    EmployeeCode VARCHAR(2) primary key not null,
    NumberOfWorkingDay TINYINT not null,
    NumberOfDaysOffWithPay TINYINT not null,
    NumberOfDaysOffWithoutPay TINYINT not null,
    foreign key (EmployeeCode) references EmployeeInfo (EmployeeCode)
)

create table Salaries
(
    EmployeeCode VARCHAR(2) primary key not null,
    BasicSalary int not null,
    GrossSalary int not null,
    NetSalary int not null,
    foreign key (EmployeeCode) references EmployeeInfo (EmployeeCode)
)

insert into EmployeeInfo VALUES
('A1',N'Nguyễn Văn A','IT',''),
('A2',N'Lê Thị Bình','IT',''),
('B1',N'Nguyễn Lan','HR',''),
('D1',N'Mai Tuấn Anh','HR',''),
('C1',N'Hà Thị Lan','HR',''),
('C2',N'Lê Tú Chinh','SALE',''),
('D2',N'Trần Văn Toàn','HR',''),
('A3',N'Trần Văn Nam','IT',''),
('B2',N'Huỳnh Anh','SALE','')

insert into WorkDays VALUES
('A1',22,0,0),
('A2',21,1,0),
('B1',20,1,1),
('D1',20,1,1),
('C1',22,0,0),
('C2',22,0,0),
('D2',22,0,0),
('A3',22,0,0),
('B2',21,1,0)

insert into Salaries VALUES
('A1',1.000,22.000,20.000),
('A2',1.200, 26.400,23.000),
('B1',600,13.200,12.000),
('D1',500,11.000,10.000),
('C1',500,11.000,10.000),
('C2',1.200,26.400,23.000),
('D2',500,11.000,10.000),
('A3',1.200,26.400,23.000),
('B2',1.200,26.400,23.000)