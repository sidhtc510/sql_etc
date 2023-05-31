-- select employees.first_name, employees.last_name, departments.department_name 
-- from employees
-- INNER JOIN departments
-- on employees.department_id = departments.department_id
-- and departments.department_name = "IT"


-- склеить таблицу саму с собой

-- select employees.first_name, employees.last_name,  managers.first_name, managers.last_name
-- from employees
-- INNER JOIN employees as managers
-- on employees.manager_id = managers.employee_id

-- вывести имя и фамилию тех сотрудников, которые зарабатывают больше, чем их менеджер
-- select employees.first_name, employees.last_name, (employees.salary - managers.salary) as 'difference'
-- from employees
-- INNER JOIN employees as managers
-- on employees.manager_id = managers.employee_id
-- and employees.salary > managers.salary 
-- 

-- для всех сотрудников вывести имя, фамилию и город проживания
-- select employees.first_name, employees.last_name, locations.city
-- from employees
-- INNER JOIN departments
-- on employees.department_id = departments.department_id
-- INNER JOIN locations
-- on departments.location_id = locations.location_id


-- вывести названия департаментов, где никто не работает
-- select departments.department_name
-- from departments
-- left JOIN employees
-- on employees.department_id = departments.department_id
-- where employees.employee_id is null

-- вывести названия департаментов, где менеджеры получают > 10000
-- select departments.department_name, employees.first_name, employees.salary
-- from departments
-- left JOIN employees
-- on employees.employee_id = departments.manager_id
-- where employees.salary > 10000

-- для каждого сотрудника вывести имя, фамилию, название должности
-- select employees.first_name, employees.last_name, jobs.job_title
-- from employees
-- inner JOIN jobs
-- on employees.job_id = jobs.job_id

-- вывести все города из locations как имя города + страна
-- select locations.city, countries.country_name
-- from locations
-- inner JOIN countries
-- on locations.country_id = countries.country_id


-- для каждого сотрудника вывести его имя, зарплату, минимальную и максимальную зарплату
-- для его должности
-- select employees.first_name, employees.salary, jobs.job_title ,jobs.min_salary, jobs.max_salary
-- from employees
-- inner JOIN jobs
-- on employees.job_id = jobs.job_id
