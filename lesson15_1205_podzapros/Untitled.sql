-- select countries.country_name, locations.city 
-- from countries
-- INNER JOIN locations
-- on countries.country_id = locations.country_id


-- select t1.first_name, t1.first_name
-- from employees t1
-- INNER JOIN employees t2 
-- on t1.manager_id= t2.employee_id
-- and t2.job_id = 'IT_PROG'

-- такой же запрос через подзапрос
-- SELECT first_name, last_name
-- from employees
-- where manager_id in (
-- SELECT employee_id
-- from employees
-- WHERE job_id = 'IT_PROG'
-- )


-- SELECT
-- t1.first_name, t1.last_name
-- from employees t1
-- INNER JOIN (
-- SELECT employee_id
-- from employees
-- WHERE job_id = 'IT_PROG'
-- ) t2
-- on t1.manager_id = t2.employee_id
