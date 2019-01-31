update employees
set salary = salary * 1.12
where id in (1,2,3);

select salary from employees;
