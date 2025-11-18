create database employee;
show databases;
create table Employees(Emp_id int,Emp_name varchar(50),Emp_dept varchar(50),Emp_age int);
drop database employee;
create database employeedb;
use employeedb;
create table Employees(Emp_id int,Emp_name varchar(50),Emp_dept varchar(50),Emp_age int);
show tables;
alter table employees add Emp_salary int;
select * from employees;
insert into employees(Emp_id,Emp_name,Emp_dept,Emp_age,Emp_salary)
values(101,'SAMI','IT',20,20000);
insert into employees(Emp_id,Emp_name,Emp_dept,Emp_age,Emp_salary)
values(102,'KALIM','CSE',21,25000),(103,'AABID','MECH',25,30000),(104,'NITISH','AGRI',22,50000),(105,'VASAN','ECE',26,45000),(106,'THILLAI','R-SMART',21,35000),(107,'SANJAY','IT',22,50000),(108,'GOWTHAM','MECH',20,35000),(109,'YASHIR','ECE',21,45000),(110,'ANIS','CSE',24,75000);
select * from employees;
set SQL_SAFE_UPDATES=0;
delete from employees where Emp_id=105;
select * from employees;
insert into employees(Emp_id,Emp_name,Emp_dept,Emp_age,Emp_salary)
values(105,'VASAN','ECE',26,45000);
select * from employees;
update employees set Emp_name='JOE' where Emp_id=105;
select * from employees;
