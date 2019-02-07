delimiter 
create trigger tr_delete_employees 
after delete
on employees
for each row 
begin 
	insert into deleted_employees (first_name, last_name,
middle_name,job_title,department_id,salary)
	values(old.first_name,old.last_name,old.middle_name,
old.job_title,old.department_id,old.salary);
end;
