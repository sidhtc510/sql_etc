-- use tmp;
-- сформировать запрос, который содержит имя 
-- сотрудника и все номера его задач
-- select t1.name, t2.title 
-- from employee t1
-- LEFT JOIN tasks t2
-- on t1.id = t2.employee_id
-- 


-- сформировать запрос, который содержит имя 
-- сотрудника и все номера его несделаных задач;
-- select t1.name, t2.title 
-- from employee t1
-- LEFT JOIN tasks t2
-- on t1.id = t2.employee_id
-- and t2.done_flg = 0


-- написать запрос, который выводит имя и фамилию сотрудников
-- у которых есть задачи, которые они еще не сделали

-- select DISTINCT t1.name, t1.lastname
-- from employee t1
-- INNER JOIN tasks t2
-- on t1.id = t2.employee_id
-- and t2.done_flg = 0


-- вывести имя сотрудника и имя его менеджера
-- name, manager_name
-- select t1.name, t2.name as 'manager'
-- from employee t1
-- left JOIN employee t2
-- on t1.manager_id = t2.id

-- вывести имя и фамилию сотрудников, у которых зарплата больше 
-- зарплаты менеджера
-- select t1.name, t2.name as 'manager', t1.salary, t2.salary
-- from employee t1
-- inner JOIN employee t2
-- on t1.manager_id = t2.id and t1.salary > t2.salary

-- use hr;

-- select t1.first_name, t1.last_name, t2.department_name, 
-- CASE
-- 	WHEN t3.city is null THEN 'GOROD NE UKAZAN'
-- 	ELSE
-- 		t3.city
-- END as city
--  from employees t1
-- left join departments t2
-- on t1.department_id = t2.department_id
-- LEFT JOIN locations t3
-- on t2.location_id = t3.location_id

-- select t1.first_name, t1.last_name, t2.department_name, COALESCE(t3.city, 'GOROD NE IZVESTEN') as city
--  from employees t1
-- left join departments t2
-- on t1.department_id = t2.department_id
-- LEFT JOIN locations t3
-- on t2.location_id = t3.location_id



-- Сформируйте выборку, которая содержит имя и фамилию менеджеров и 
-- все задачи их непосредственных подчиненных. В выборке должны быть 
-- поля name, lastname, workers_task (наименование задач подчиненных).
	
use tmp;

-- SELECT t1.name, t1.lastname, t3.title as 'worker_tasks'
-- from employee t1
-- inner JOIN employee t2 
-- on t1.id = t2.manager_id
-- INNER JOIN tasks t3
-- on t2.id = t3.employee_id