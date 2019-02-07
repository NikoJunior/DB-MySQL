delimiter $$
create procedure usp_get_towns_starting_with(input_str varchar(50))
begin
	declare town_wildcard varchar(50);
    set town_wildcard := concat(input_str,'%');
    
    select t.name
    from towns t
    where lower(t.name) like lower(town_wildcard)
    order by t.name;
end$$
delimiter ;
call usp_get_towns_starting_with('b');