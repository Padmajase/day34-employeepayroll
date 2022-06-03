show databases;
create database payroll_service;
use payroll_service;

create table employee_payroll(id int auto_increment not null, name varchar(20), salary bigint, start_date date, primary key (id));
show tables;
desc employee_payroll;

 -- creating employee payroll data 
insert into employee_payroll (name, salary, start_date) values('shivpooja', 45000, '2012-09-05');
select * from employee_payroll;

select salary from employee_payroll where name='neha';
select name from employee_payroll where start_date between cast('2012-09-2' as date) and date (now());

-- adding  column gender to table
alter table employee_payroll add gender char after name ;
update employee_payroll set gender='M' where name='rohit' or name='punit' or name='mahi';