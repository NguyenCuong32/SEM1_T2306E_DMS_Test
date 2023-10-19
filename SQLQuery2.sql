create database Employee
use Employee
GO 
create table nhanvien
(
EmployeeCode varchar(2) primary key not null,
EmployeeName nvarchar(20) not null,
DepartmentCode varchar(5) not null,
Note varchar(10)
)
create table ngaylamviec
(
EmployeeCode varchar(2) primary key not null,
Numberofworkingday tinyint not null,
Numberofdaysoffwithpay tinyint not null,
Numberofdaysoffwithoutpay tinyint not null,
foreign key ( EmployeeCode) references nhanvien(EmployeeCode)
)

create table luong
(EmployeeCode varchar(2) primary key not null, 
Basicsalary decimal(7,3) not null,
GrossSsalary decimal(7,3) not null,
NetSalary decimal(7,3) not null,
foreign key ( EmployeeCode) references nhanvien(EmployeeCode)
)

insert into nhanvien values
('A1',N'Nguyễn Văn A','IT',''),
('A2',N'Lê Thị Bình ','IT',''),
('B1',N'Nguyễn Lan ','HR',''),
('D1 ',N'Mai Tuấn Anh ','HR',''),
('C1 ',N'Hà Thị Lan ','HR',''),
('C2',N'Lê Tú Chinh ','SALE',''),
('D2 ',N'Trần Văn Toàn','HR',''),
('A3',N'Trần Văn Nam','IT',''),
('B2 ',N'Huỳnh Anh  ','SALE','') 

insert into ngaylamviec values 
('A1',22,0,0),
('A2',21,1,0),
('B1',20,1,1),
('D1',20,1,1),
('C1',22,0,0),
('C2',22,0,0),
('D2',22,0,0),
('A3',22,0,0),
('B2',21,1,0)

insert into luong values 

('A1','1.000','22.000','20.000'),
('A2','1.200','26.400','23.000'),
('B1','600','13.200','12.000'),
('D1','500','11.000','10.000'),
('C1','500' ,'11.000','10.000'),
('C2','1.200','26.400','23.000'),
('D2','500','11.000','10.000'),
('A3','1.200' ,'26.400' ,'23.000'),
('B2','1.200','26.400' ,'23.000')

create proc TONGLUONG
as
begin 
select nv.DepartmentCode, sum(l.GrossSsalary)as tongluong from nhanvien nv
inner join luong L on nv.EmployeeCode= l.EmployeeCode
group by nv.DepartmentCode
end

exec TONGLUONG