show databases;
create database payroll_service;
use payroll_service;

create table employee_payroll(id int auto_increment not null, name varchar(20), salary bigint, start_date date, primary key (id));
show tables;
desc employee_payroll;

 -- creating employee payroll data 
insert into employee_payroll (name, salary, start_date) values('neha', 30000, 7/1/2021);
select * from employee_payroll;