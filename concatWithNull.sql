	select 
		concat (e.first_name, ' ',IFNULL(e.middle_name, ''), ' ' ,e.last_name)
        as 'full_name', e.job_title
	from employees as e;