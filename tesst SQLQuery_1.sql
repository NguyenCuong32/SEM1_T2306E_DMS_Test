CREATE DATABASE ABC
 CREATE TABLE employee(
    employee_code CHAR( 20) NOT NULL PRIMARY KEY,
    employee_name char (40 ) NOT NULL
 )
 INSERT INTO employee(
    employee_code,
    employee_name
 )
 VALUES(
    'A1',N'nguyễn văn a',
    'A2',N'lê thị bình ',
    'B1',N'nguyễn văn B1',
    'D1',N'nguyễn văn D1',
    'C1',N'nguyễn văn C1',
    'C2',N'nguyễn văn C2',
    'D2',N'nguyễn văn D2',
    'A3',N'nguyễn văn A3',
    'B2',N'nguyễn văn B2'
 )
 CREATE TABLE department (
    department_code NVARCHAR( 20) NOT NULL PRIMARY KEY,
    department_name NVARCHAR (40) NOT NULL
 )
 INSERT INTO department(
    department_code ,
   department_name 
 )
 VALUES(
    'IT',
    'IT',
    'HR',
    'HR',
    'HR',
    'SALE',
    'HR',
    'IT',
    'SALE'
 )
 CREATE TABLE number_of_day(
    working_day NVARCHAR(20) NOT NULL PRIMARY KEY,
    days_off_with_day NVARCHAR(20)NOT NULL,
    days_off_without_day NVARCHAR(20)NOT NULL,
 )
 INSERT INTO number_of_day(
    working_day,
    days_off_with_day,
    days_off_without_day
 )
 VALUES(
    '22','0','0',
    '21','1','0',
    '20','1','1',
    '20','1','1',
    '22','0','0',
    '22','0','0',
    '22','0','0',
    '22','0','0',
    '21','1','0'
 )
 CREATE TABLE salary(
    id_salary NVARCHAR(20) NOT NULL PRIMARY KEY,
    basic_salary NVARCHAR(20) NOT NULL ,
    gross_salary NVARCHAR(20) NOT NULL ,
    net_salary NVARCHAR(20) NOT NULL ,
    note NVARCHAR(20) NOT NULL
 )
 INSERT INTO salary(
    id_salary,
    basic_salary,
    gross_salary,
    net_salary,
    note
 )
 VALUES(
    '1','1.000','22.000','20.000','',
    '1','1.000','22.000','20.000','',
    '1','1.000','22.000','20.000','',
    '1','1.000','22.000','20.000','',
    '1','1.000','22.000','20.000','',
    '1','1.000','22.000','20.000','',
    '1','1.000','22.000','20.000','',
    '1','1.000','22.000','20.000','',
    '1','1.000','22.000','20.000',''
 )
 CREATE TABLE employee_and_day(
    id_employee NVARCHAR(20) NOT NULL PRIMARY KEY ,
    id_day NVARCHAR(20) NOT NULL  
 )
 CREATE TABLE day_and_salary(
    id_day NVARCHAR(20) NOT NULL  PRIMARY KEY,
    id_salary NVARCHAR(20) NOT NULL 
 )
 SELECT* FROM
