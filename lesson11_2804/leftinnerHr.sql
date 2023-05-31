use hr;

-- SELECT
-- t1.first_name, t1.last_name, t2.department_name
-- FROM
-- employees t1
-- LEFT JOIN departments t2
-- on t1.department_id = t2.department_id

-- название департаментов и их городов
-- select 
-- t1.department_name, t2.city
-- FROM
-- departments t1
-- LEFT JOIN locations t2
-- on t1.location_id = t2.location_id

-- название департаментов которые есть в лондоне
-- select 
-- t1.department_name, t2.city
-- FROM
-- departments t1
-- INNER JOIN locations t2
-- on t1.location_id = t2.location_id
-- and t2.city = 'London'