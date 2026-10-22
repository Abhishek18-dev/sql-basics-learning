use prime;

create table customer(
	customer_id int primary key,
    name varchar(30),
    city varchar(30)
);

insert into customer
(customer_id , name , city)
values
(1 , "alice" , "mum"),
(2 , "bob" , "del"),
(3 , "cay" , "bang"),
(4 , "day" , "mum");

create table orders(
	order_id int primary key,
    customer_id int,
    amount int
);


insert into orders
(order_id  , customer_id , amount)
values
(101 ,  1, 500),
(102 , 1 , 900),
(103 , 2 , 300),
(104 , 3 , 700);





select * from customer;
select * from orders;



-- inner join


select * 
from customer c
inner join orders o
on c.customer_id = o.customer_id;


select c.customer_id , o.customer_id , name
from customer c
inner join orders o
on c.customer_id = o.customer_id;



-- outer left join 

select * 
from customer c
left join orders o
on c.customer_id = o.customer_id;


-- right join

select * 
from customer c
right join orders o
on c.customer_id = o.customer_id;


-- outer join
select * 
from customer c
left join orders o
on c.customer_id = o.customer_id
union
select * 
from customer c
right join orders o
on c.customer_id = o.customer_id;


-- cross join 

select * 
from customer c
cross join orders o;



-- self join

select * 
from customer as A
join customer as B
on A.customer_id = B.customer_id;


-- exculsive left join
select * 
from customer c
left join orders o
on c.customer_id = o.customer_id
where o.customer_id is null;


-- exculsive right join
select * 
from customer c
right join orders o
on c.customer_id = o.customer_id
where o.customer_id is null;

