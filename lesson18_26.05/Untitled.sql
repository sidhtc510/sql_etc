-- вывести среднюю зарплату сотрудников
-- select round(avg(salary),2) from employees

-- вывести среднюю зарплату сотрудников по департаменту
-- select department_id, round(avg(salary),2) from employees
-- WHERE department_id is not null
-- GROUP BY department_id


-- найти сотрудников, у которых наибольшая зп
-- select *
-- from employees
-- where salary = (select max(salary) from employees)


-- сформировать запрос, который выдает кол-во департаментов в штатах
-- country_id US
-- select count(*) from locations t1
-- left join departments t2
-- on t1.location_id = t2.location_id
-- WHERE t1.country_id = "US"


-- сформировать запрос, который выводит поле с кол-вом локаций в штатах
-- и кол-во локаций вообще
-- агрегация и оператор case
-- select 
-- count(*) as total_Count, 
-- count(
-- case
-- 	when country_id = 'US' then 1
-- end) as us_count 
-- from locations t1
-- 
-- 
-- SELECT
-- 	CASE 
-- 	WHEN country_id = 'US' THEN
-- 		1
-- END, country_id
-- from locations