delimiter $$ 
create function
	ufn_is_word_comprised(set_of_letters varchar(50), word varchar(50))
    returns bit
    begin
		declare result bit;
		declare word_lenght int(11);
        declare current_index int(11);
        
        set result := 1;
        set word_length := char_length(word);
        set current_index := 1;
        
        while (current_index <= word_length) do 
			if (set_of_letters not like (concat('%',substr(word, current_index, 1),'%'))) then 
				set result := 0;
            end if;
            set current_index := current_index +1;
		end while;
        
    end $$
delimiter ;