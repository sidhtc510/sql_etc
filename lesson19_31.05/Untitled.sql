-- select * 
-- from (
-- 	select department_id, count(department_id) as count
-- 	from employees
-- 	group by department_id
-- ) t1
-- where count >= 10;

-- select department_id, count(department_id)
-- from employees
-- group by department_id
-- having count(department_id) >= 10;

-- вывести названия департаментов, где работает больше 10 человек
-- select t2.department_name, count(t1.department_id)
-- from employees t1
-- INNER JOIN departments t2
-- on t1.department_id = t2.department_id
-- group by t2.department_name
-- having count(t1.department_id) >= 10;
-- 
-- вариант Никиты
-- select t1.department_name
-- from departments t1
-- inner join (
-- 	select department_id
-- 	from employees
-- 	group by department_id
-- 	having count(*) >=10
-- ) t2
-- on t1.department_id = t2.department_id;


-- вывести название департамента, в котором работает больше среднего по компании число людей

-- select t1.department_name
-- from departments t1
-- 	inner join (
-- 		select department_id
-- 		from employees
-- 		group by department_id
-- 		having count(*) >= (
-- 			SELECT AVG(cnt) AS count
-- 			FROM (
-- 			SELECT COUNT(department_id) AS cnt
-- 				FROM employees
-- 				GROUP BY department_id
-- 			) AS t3
-- 		)
-- 	) t2
-- on t1.department_id = t2.department_id;



-- найти такие департаменты, где работают не минимум и не максимум сотрудников

-- create view tmp as select department_id, count(*) as cnt
-- 	from employees
-- 	group by department_id;
-- 
-- select department_id
-- from tmp
-- where cnt != (
-- 	select min(cnt) from tmp 
-- ) and cnt != (
-- 	select max(cnt) from tmp
-- );
-- 
-- drop view tmp;


-- найти такие департаменты, где число сотрудников отличается от среднего не больше, чем на 5

-- create view tmp as select department_id, count(*) as cnt
-- 	from employees
-- 	group by department_id;
-- 
-- select department_id
-- from tmp
-- where cnt >= (
-- 	select avg(cnt)-5 from tmp 
-- ) and cnt <= (
-- 	select avg(cnt)+5 from tmp
-- );
-- 
-- drop view tmp;


-- найти должность (или все должности) с самым большим разбросом между максимальной и минимальной зп

-- select *
-- from jobs
-- where (max_salary - min_salary) = (
-- SELECT  max(diff) from (
-- select (max_salary - min_salary) AS diff  from jobs
-- ) as t1
-- );


-- вывести id, first_name, last_name, salary всех сотрудников, которые зарабатывают больше, чем минимальная зарплата на их позиции

-- select t1.first_name, t1.last_name, t1.salary 
-- from employees t1
-- INNER JOIN jobs t2
-- on t1.job_id = t2.job_id
-- where t1.salary > t2.min_salary

-- найти всех сотрудников, получающих ближе к максимальной зп, чем к минимальной
-- select t1.first_name, t1.last_name, t1.salary, t2.min_salary, t2.max_salary 
-- from employees t1
-- INNER JOIN jobs t2
-- on t1.job_id = t2.job_id
-- where t1.salary > (t2.max_salary + t2.min_salary) / 2

-- посчитать коэфициент
-- select 
-- 	t1.employee_id, t1.first_name, t1.last_name, 
--     (
-- 		(t1.salary - t2.min_salary) / (t2.max_salary - t2.min_salary)
-- 	) as ratio
-- from employees t1
-- inner join jobs t2
-- on t1.job_id = t2.job_id
-- where (t1.salary - t2.min_salary) / (t2.max_salary - t2.min_salary) > 0.5;



-- все сотрудники договорились переводить от 10 до 20 процентов своей зп в фонд. сколько всего в месяц перевели денег?
-- create view tmp as select 
-- 	t1.employee_id, t1.first_name, t1.last_name, t1.salary as salary,
--     (
-- 		(t1.salary - t2.min_salary) / (t2.max_salary - t2.min_salary)
-- 	) as ratio
-- from employees t1
-- inner join jobs t2
-- on t1.job_id = t2.job_id;
-- 
-- select sum(donation) 
-- from (
-- 	select salary * (0.1 + 0.1 * ratio) as donation from tmp
-- ) t4;
-- 
-- drop view tmp;



-- вывести список стран и число сотрудников, которые в них работают
-- select t4.country_name, count(t1.first_name) as emploees_count from employees t1
-- INNER JOIN departments t2
-- on t1.department_id = t2.department_id
-- INNER JOIN locations t3
-- on t2.location_id = t3.location_id
-- INNER JOIN countries t4
-- on t3.country_id = t4.country_id
-- GROUP BY t4.country_name
-- 


