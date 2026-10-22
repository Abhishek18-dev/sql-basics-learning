create database if not exists company;

use company;

create table employee(
	EmpID int primary key ,FirstName varchar(30) ,LastName varchar(30), Department varchar(30),Salary int ,HireDate varchar(30) 
);


drop table employee;

insert into employee
(EmpID ,FirstName ,LastName ,Department, Salary, HireDate)
values
(101, "Alice", "Johnson", "IT", 6500 ,"2020-03-15"),

;



select * from employee;