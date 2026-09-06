create database aggregate_function;
use aggregate_function;

create table tuesday(
salary int,
age int,
work_experience int
);
alter table tuesday
add column gender varchar(4);

insert into tuesday values(57000,25,3,'male');
insert into tuesday values(59000,26,4,'fema');
insert into tuesday values(87000,27,6,'male');
insert into tuesday values(117000,29,7,'fema');
insert into tuesday values(50000,24,4,'fema');
insert into tuesday values(97000,28,6,'fema');
insert into tuesday values(59000,23,3,'male');
insert into tuesday values(57040,25,3,'male');
insert into tuesday values(57005,26,4,'fema');

select *from tuesday;

set sql_safe_updates=0;
delete from tuesday;

select age,count(*) from tuesday
group by age;

select gender,count(*) from tuesday
group by gender;

select age,gender,count(*) from tuesday
group by age,gender order by gender asc;

select count(age) from tuesday;

select count(salary) from tuesday where gender='male'; 


select sum(salary) from tuesday;

select min(salary) from tuesday;
select max(salary) from tuesday;
select avg(salary) from tuesday;
select round(avg(salary),2) from tuesday;