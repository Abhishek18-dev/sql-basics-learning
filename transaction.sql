select @@autocommit;

set autocommit = 0;


create database prime;

use prime;

create table accounts(
	id int primary key auto_increment,
    name varchar(30) ,
    balance decimal(10,2)
);


select * from accounts;


insert into accounts
(name , balance)
values
("ace" ,500),
("bob" ,300),
("casy" ,1000);


start transaction;

update accounts
set balance = balance - 50 
where id = 1;

update accounts
set balance = balance + 50 
where id = 2;

commit;



start transaction;

update accounts
set balance = balance - 50 
where id = 1;
commit;

update accounts
set balance = balance + 50 
where id = 2;

rollback;

select * from accounts;

start transaction;

update accounts
set balance = balance + 1000 
where id = 1;
savepoint after_wallet_topup;

update accounts
set balance = balance + 10 
where id = 1;
-- error
rollback to after_wallet_topup;

commit;






select * from accounts;