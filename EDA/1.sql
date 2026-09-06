create database intro
use intro

Student-->id,name,age,gender,location
create table student
(
student_id int primary key,
student_name varchar(50) not null,
age int,
location varchar(100)
)
select *from student

INSERT INTO student values(1,'sk',18,'kolhapur')
INSERT INTO student values(2,'pk',18,'solapur')
INSERT INTO student values(2,'pk',18,'solapur')
INSERT INTO student values(1,'sk',18,'kolhapur')
INSERT INTO student values(2,'pk',18,'solapur')
INSERT INTO student values(2,'pk',18,'solapur')

create table student1
(
student_id int primary key,
student_name varchar(50) not null,
age int,
location varchar(100)
)
select *from student1

INSERT INTO student1 values(1,'sk',18,'kolhapur')
INSERT INTO student1 values(2,'pk',18,'solapur')
INSERT INTO student1 values(3,'pk',18,'solapur')

create table department
(
department_id int primary key ,
dep_name varchar(50) not null,
location varchar(100)
)

create table emp
(
emp_id int,
emp_name varchar(90),
department_id int,
PRIMARY KEY (emp_id),
FOREIGN KEY (department_id) REFERENCES department(department_id)
)
select *from emp