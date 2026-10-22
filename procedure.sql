use prime;

select * from acc;

delimiter $$
create procedure check_balance (in account_id int)
begin
	select balance
    from acc
    where acc_id = account_id ;
    
end $$

delimiter ;


call check_balance(4);



delimiter $$
create procedure check_balance2 (in account_id int , out bal decimal(10,2))
begin
	select balance into bal
    from acc
    where acc_id = account_id ;
    
end $$

delimiter ;

call check_balance2(4 , @balance);
select @balance;