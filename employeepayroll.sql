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
update employee_payroll set gender='M' where name='rohit' or name='puhit' or name='mahi';
update employee_payroll set gender='F' where name='neha' or name='shivpooja';

-- finding sum of salary for males 
select sum(salary) from employee_payroll where gender='M';

alter table employee_payroll add phone int(10);
alter table employee_payroll add address varchar(20) null;
alter table employee_payroll add department varchar(20) not null;
update employee_payroll set address='pune' where name='shivpooja';

alter table employee_payroll add basic_pay bigint not null;
alter table employee_payroll add deduction bigint not null;
alter table employee_payroll add taxable_pay bigint not null;
alter table employee_payroll add tax int(10) not null;



