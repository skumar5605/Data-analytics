create database intro_sql;
use intro_sql;
create table emp_infp(
first_name varchar(20),
last_name varchar(20),
id int not null,
city varchar(20),
state varchar(20),
PRIMARY KEY (id)
);
select *from emp_infp;

insert into emp_infp values('sk','patil',2001,'kolhapur','mah',19);
insert into emp_infp values('pk','rana',2002,'solapur','ka',18);
insert into emp_infp values('kk','patiala',2003,'kolhapur','gu',21);
insert into emp_infp values('hk','patel',2004,'pune','Goa',21);
insert into emp_infp values('zk','more',2005,'kashi','mah',22);
insert into emp_infp values('puchi_k','gomte',2006,'vashi','mah',21);

select first_name,id from emp_infp;

select count(id) from emp_infp;

select count(*)as record_count from emp_infp;

alter table emp_infp
add column age int;
SET SQL_SAFE_UPDATES=0;

delete from emp_infp;

select *from emp_infp
where age>21;

select *from emp_infp
where age>18 and age<23;

select *from emp_infp
where first_name like '%h';

select *from emp_infp
where first_name like 'h%';

select *from emp_infp
where age=18 or age=22;

select *from emp_infp
where age in (22,23,18,19);

