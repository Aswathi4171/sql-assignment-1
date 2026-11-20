create database employee;
use employee;
create table Departments ( department_id INT, department_name varchar(100) );
show tables;
create table Location (location_id int primary key, location varchar(30) );
CREATE TABLE Employees (employee_id INT PRIMARY KEY, employee_name VARCHAR(50), gender ENUM('M', 'F'), age INT, hire_date DATE, designation VARCHAR(100), department_id INT, location_id INT, salary DECIMAL(10,2) );
ALTER TABLE Employees ADD email VARCHAR(255);
ALTER TABLE Employees MODIFY designation VARCHAR(255);
ALTER TABLE Employees DROP COLUMN age;
show tables;
ALTER TABLE Employees RENAME COLUMN hire_date TO date_of_joining;
RENAME TABLE Departments TO Departments_Info;
show tables;
RENAME TABLE Location TO Locations;
TRUNCATE TABLE Employees;
show tables;
DROP TABLE Employees;
DROP DATABASE employee;

 -- PART 2: CONSTRAINTS

-- 1. DATABASE RECREATION

DROP DATABASE IF EXISTS employee;
CREATE DATABASE employee;
USE employee;
CREATE TABLE Departments (department_id INT PRIMARY KEY, department_name VARCHAR(100) NOT NULL UNIQUE);
CREATE TABLE Location ( location_id INT PRIMARY KEY AUTO_INCREMENT, location VARCHAR(30) NOT NULL UNIQUE);

CREATE TABLE Employees (employee_id INT PRIMARY KEY, employee_name VARCHAR(50) NOT NULL, gender ENUM('M', 'F'), age INT CHECK (age >= 18), hire_date DATE DEFAULT (CURRENT_DATE), designation VARCHAR(100), department_id INT, location_id INT, salary DECIMAL(10,2), FOREIGN KEY (department_id) REFERENCES Departments(department_id), FOREIGN KEY (location_id) REFERENCES Location(location_id) );
show tables;
desc Departments;
desc Location;
desc Employees;
show create table Employees;

