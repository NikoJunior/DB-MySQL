create table logs(
	log_id int(11) primary key auto_increment,
    account_id int(11),
    old_sum decimal(19,4),
    new_sum decimal(19,4)
);
delimiter $$
create trigger tr_logs
after update
on accounts
for each row
begin
	insert into logs(account_id, old_sum,new_sum)
    values(old.id,old.balance,new.balance);
end$$
delimiter ;
 