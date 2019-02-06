delimiter //
create procedure usp_raise_salary_by_department_name(
	department_name varchar(10))
    begin
update employees e
join departments d
on e.department_id = d.department_id
set salary = salary * 1.05
where d.name = department_name;
	end//
call usp_raise_salary_by_department_name('')