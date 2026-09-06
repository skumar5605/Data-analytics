use intro_sql;
 
 create table customers(
first_name varchar(20),
c_id int not null,
city varchar(20),
state varchar(20),
postal_code int,
country varchar(20),
PRIMARY KEY (c_id)
);

select *from customers;

create table orders(
order_id int not null,
c_id int,
emp_id int,
order_date datetime,
shipperid int,
primary key(order_id)
);

select *from orders;

insert into orders values(111,21,1,'2025-01-01',17);
insert into orders values(112,22,2,'2025-01-02',18);
insert into orders values(113,23,3,'2025-01-04',19);
insert into orders values(114,24,4,'2025-01-03',20);
insert into orders values(115,25,5,'2025-01-05',16);
insert into orders values(116,26,5,'2025-01-05',16);

insert into customers values('ram',21,'kolhapur','MH',416508,'IND');
insert into customers values('sam',22,'solapur','MH',417503,'IND');
insert into customers values('fam',23,'Malkapur','GU',426502,'IND');
insert into customers values('sham',24,'kanapur','KA',416505,'IND');
insert into customers values('mam',25,'badlapur','GOA',416448,'IND');


//left join;

select*from customers c LEFT JOIN orders o
on c.c_id=o.c_id;

select c.first_name,c.c_id,order_id from customers c LEFT JOIN orders o
on c.c_id=o.c_id;

//rightjoin;
select*from customers c RIGHT JOIN orders o
on c.c_id=o.c_id;

select c.c_id,c.first_name,c.country,o.order_id,o.order_date
from customers c RIGHT JOIN orders o
ON c.c_id=o.c_id;

//inner join=only common coulmns are selected 5 out_of 6;
select c.c_id,c.first_name,c.country,o.order_id,o.order_date
from customers c INNER JOIN orders o
ON c.c_id=o.c_id;
            or_;
select c.c_id,c.first_name,c.country,o.order_id,o.order_date
from customers c,orders o
where c.c_id=o.c_id;


OUTER_JOINS;
select c.c_id,c.first_name,c.country,o.order_id,o.order_date
from customers c LEFT OUTER JOIN orders o
on c.c_id=o.c_id;

select c.c_id,c.first_name,c.country,o.order_id,o.order_date
from customers c RIGHT OUTER JOIN orders o
on c.c_id=o.c_id;


FULL_JOIN;
select c.c_id,c.first_name,c.country,o.order_id,o.order_date
from customers c LEFT OUTER JOIN orders o
on c.c_id=o.c_id
UNION
select c.c_id,c.first_name,c.country,o.order_id,o.order_date
from customers c RIGHT OUTER JOIN orders o
on c.c_id=o.c_id;

CROSS_JOIN;
select c.c_id,c.first_name,c.country,o.order_id,o.order_date
from customers c CROSS JOIN orders o
on c.c_id=o.c_id