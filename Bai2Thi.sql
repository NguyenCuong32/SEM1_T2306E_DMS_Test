-- Create database
CREATE DATABASE employee_management;

 --Use database
USE employee_management;

 --Create table
CREATE TABLE employees (
    code VARCHAR(10) NOT NULL,
    name VARCHAR(50) NOT NULL,
    department_code VARCHAR(10) NOT NULL,
    number_of_working_days INT NOT NULL,
    number_of_days_off_with_pay INT NOT NULL,
    number_of_days_off_without_pay INT NOT NULL,
    basic_salary DECIMAL(10,2) NOT NULL,
    gross_salary DECIMAL(10,2) NOT NULL,
    net_salary DECIMAL(10,2) NOT NULL,
    note VARCHAR(255)
);

-- Insert values
INSERT INTO employees VALUES
    ('A1', 'Nguyễn Văn A', 'IT', 22, 0, 0, 1000, 22000, 20000),
    ('A2', 'Lê Thị Bình', 'IT', 21, 1, 0, 1200, 26400, 23000),
    ('B1', 'Nguyễn Lan', 'HR', 20, 1, 1, 600, 13200, 12000),
    ('D1', 'Mai Tuấn Anh', 'HR', 20, 1, 1, 500, 11000, 10000),
    ('C1', 'Hà Thị Lan', 'HR', 22, 0, 0, 500, 11000, 10000),
    ('C2', 'Lê Tú Chinh', 'SALE', 22, 0, 0, 1200, 26400, 23000),
    ('D2', 'Trần Văn Toàn', 'HR', 22, 0, 0, 500, 11000, 10000),
    ('A3', 'Trần Văn Nam', 'IT', 22, 0, 0, 1200, 26400, 23000),
    ('B2', 'Huỳnh Anh', 'SALE', 21, 1, 0, 1200, 26400, 23000);