use intro_sql;

create table emp_exp(
name_ varchar(50),
designation varchar(15),
age int,
salary float);

insert into emp_exp values( 'sk','data analyst',25,69000.00);
insert into emp_exp values( 'Kumar','data scientist',23,127000.00);
insert into emp_exp values( 'sham','devops engg',24,27000.00);
insert into emp_exp values( 'bhamu','Busines analyst',30,57000.00);
insert into emp_exp values( 'pk','AI\ML engg',25,77000.00);
insert into emp_exp values( 'jon','software engg',29,57000.00);

select *from emp_exp;

select *from emp_exp
where salary>30000;

select *from emp_exp
where designation like '%analyst%';

\updating records

SET SQL_SAFE_UPDATES=0;
UPDATE emp_exp set designation='busines analyst'
where name_='ramu';

update emp_exp set age=27 
where name_='sk';

\\deleting record;

delete from emp_exp 
where designation='busines analyst';

create table pradnyan(
name varchar(90)
);
delete from pradnyan;