use prime;


select *
from orders
where amount > (
	select avg(amount)
    from orders
);



select name , (
		select count(*)
		from orders o
		where c.customer_id = o.customer_id
	) as order_count
from customer c;



select summary.customer_id , summary.avg_am
from
	(select customer_id , avg(amount) as avg_am
from orders
group by customer_id
) as summary;



select * from customer;
select * from orders;