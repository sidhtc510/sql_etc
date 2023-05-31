-- сформировать выборку, которая содержит имя и фамилию cотрудника 
-- и job_title его работы

-- SELECT t1.first_name, t1.last_name, t2.job_title 
-- FROM employees t1
-- INNER JOIN jobs t2
-- on t1.job_id = t2.job_id


-- определить, кто в каком городе работает
-- вывести имя, фамилию и кород, в котором работает сотрудник

-- доработать запрос и вывести помимо города еще и регион

-- доработать запрос таким образом, чтобы в выборке были только сотрудники
-- из Европы
-- SELECT t1.first_name, t1.last_name, t3.city, t5.region_name
-- FROM employees t1
-- inner JOIN departments t2
-- on t1.department_id = t2.department_id
-- inner JOIN locations t3
-- on t2.location_id = t3.location_id
-- inner JOIN countries t4
-- on t3.country_id = t4.country_id
-- inner JOIN regions t5
-- on t4.region_id = t5.region_id
-- and t5.region_name = "Europe"

