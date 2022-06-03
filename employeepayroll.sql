show databases;
create database payroll_service;
use payroll_service;

create table employee_payroll(id int auto_increment not null, name varchar(20), salary bigint, start_date date, primary key (id));
show tables;
desc employee_payroll;
