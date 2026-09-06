create database skInfotech
use skInfotech

create table employee(
first_name varchar(20),
last_name varchar(20),
title varchar(20),
age int,
salary int
)
select *from employee

alter table employee
add gender varchar(10)

alter table employee
add random_ varchar(10)

alter table employee
drop column random_



create table student(
first_name varchar(20),
last_name varchar(20),
title varchar(20),
age int,
salary int
)

select *from student

//dropping a table
drop table student

drop database database_name