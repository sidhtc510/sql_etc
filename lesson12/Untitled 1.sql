-- select employees.first_name, employees.last_name, departments.department_name 
-- from departments
-- left join employees
-- on departments.department_id = employees.department_id


-- analog full join --

-- select 
-- 	employees.first_name, employees.last_name, 
--     departments.department_name, employees.department_id
-- from employees
-- left join departments
-- on departments.department_id = employees.department_id
-- 
-- union
-- 
-- select 
-- 	employees.first_name, employees.last_name, 
--     departments.department_name, employees.department_id
-- from employees
-- right join departments
-- on departments.department_id = employees.department_id;