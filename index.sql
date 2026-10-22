create table acc(
	acc_id int primary key,
    name varchar(30),
    branch varchar(30),
    balance decimal(10 , 2)
);

insert into acc
(acc_id , name , branch,balance)
values
(1 , "alice" , "mum", 500 ),
(2 , "bob" , "del" , 300),
(3 , "cay", "ban" , 700),
(4 , "day" , "noi" , 1000);



select * from acc;


-- fast data retrieval

create index idx_branch on acc(branch);

show index from acc;

select * from acc
where branch = "ban";





create index idx2 on acc(branch , balance);

show index from acc;

drop index idx2 on acc;

show index from acc;