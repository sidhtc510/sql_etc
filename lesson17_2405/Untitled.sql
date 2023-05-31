-- select 
-- 	department_id, max(salary) 
-- from employees
-- where department_id is not null
-- group by department_id
-- order by max(salary) desc;

-- максимальная зарплата для департамента. вместо id вывести название департамента
-- select t2.department_name, max(t1.salary)
-- from employees t1
-- left join departments t2
-- on t1.department_id = t2.department_id
-- where t1.department_id is not null
-- GROUP BY t2.department_name
-- ORDER BY max(salary) desc

-- тут тоже самое только через подзапрос
-- select t1.department_name, t2.max_salary
-- from departments t1
-- inner join (select 
-- 		department_id, max(salary) as max_salary
-- 	from employees
-- 	where department_id is not null
-- 	group by department_id) t2
-- on t1.department_id = t2.department_id
-- order by t2.max_salary desc;

-- найти сотрудников, получающих максимальную зарплату в компании (колонки first_name, last_name, salary)
-- select first_name, last_name, salary,
-- from employees
-- where salary = (select max(salary) from employees)

-- найти сотрудников, получающих максимальную зп в своём департаменте (колонки first_name, last_name, salary, department_id)	
-- 	SELECT t1.first_name, t1.last_name, t1.salary, t1.department_id
-- 	from employees t1
-- 	INNER JOIN (select 
-- 		department_id, max(salary) as max_salary
-- 	from employees
-- 	where department_id is not null
-- 	group by department_id) t2
-- 	on t1.department_id = t2.department_id AND t1.salary = t2.max_salary


-- найти всех сотрудников, получающих зарплату меньше средней по компании

-- 	SELECT t1.first_name, t1.last_name, t1.salary
-- 	from employees t1
-- 	INNER JOIN (select 
-- 		avg(salary) as avg_salary
-- 		from employees) t2
-- 	on t1.salary < t2.avg_salary
-- без джоина
-- 	select * from employees where salary < (select avg(salary) from employees);

-- найти сотрудников (first_name, last_name, salary, department_id), получающих ниже среднего по своему департаменту
-- 	SELECT t1.first_name, t1.last_name, t1.salary, t1.department_id
-- 	from employees t1
-- 	inner JOIN (select 
-- 		department_id, avg(salary) as avg_salary
-- 	from employees
-- 	group by department_id) t2
-- 	on t1.department_id = t2.department_id AND t1.salary < t2.avg_salary

-- найти всех сотрудников (first_name, last_name, salary, department_id)
-- которые получают НЕ максимум и НЕ минимум в своём департаменте
-- 	SELECT t1.first_name, t1.last_name, t1.salary, t1.department_id
-- 	from employees t1
-- 	inner JOIN (select 
-- 		department_id, max(salary) as max_salary, min(salary) as min_salary
-- 	from employees
-- 	group by department_id) t2
-- 	on t1.department_id = t2.department_id AND t1.salary != t2.max_salary AND t1.salary != t2.min_salary


-- посчитать сколько сотрудников в каждом департаменте
-- select department_id, count(*) from employees 
-- where department_id is not null
-- GROUP BY department_id


-- вывести id департамента, где работает больше всего сотрудников
-- select max(t1.amountOfEmployees) from
-- (select department_id, count(*) as amountOfEmployees from employees 
-- where department_id is not null
-- GROUP BY department_id) t1
-- то же самое через VIEW
-- create view tmp as select department_id, count(employee_id) as amount_of_employees
-- 	from employees
-- 	group by department_id;
-- 
-- select department_id from tmp 
-- where amount_of_employees = (select max(amount_of_employees) from tmp);
-- 
-- drop view tmp;



-- вывести всех сотрудников (first_name, last_name, department_id), 
-- работающих в самом большом департаменте

-- create view tmp as select department_id, count(employee_id) as amount_of_employees
-- 	from employees
-- 	group by department_id;
--     
-- select
-- 	first_name, last_name, department_id
-- from employees
-- where department_id = (
-- 	select department_id from tmp 
-- 	where amount_of_employees = (
-- 		select max(amount_of_employees) from tmp
-- 	)
-- );
-- 
-- drop view tmp;

-- вывести среднюю зп в департаментах с минимальным кол-вом сотрудников
-- create view tmp as select department_id, count(employee_id) as amount_of_employees
-- 	from employees
-- 	group by department_id;
--     
-- select avg(salary) from employees where department_id in (select 
-- 	department_id 
-- from tmp 
-- where amount_of_employees = (select min(amount_of_employees) from tmp));
-- 
-- drop view tmp;