USE tmp;

-- create table orders(
--  id integer,
--  customer_id integer,
--  product_id integer,
--  amount integer
-- );
-- -----написать запрос, который выводит id покупателя и общее кол-во заказаных товаров----
-- SELECT
-- 	customer_id,
-- 	SUM(amount) AS "sum_amount"
-- FROM
-- 	orders
-- GROUP BY
-- 	customer_id
-- ORDER BY
-- 	customer_id ASC;
--
-- -------------------------------------------------------------
USE hr;
-- 
-- --
-- SELECT
-- 	COUNT(*),
-- 	-- кол-во всех записей
-- 	COUNT(commission_pct),
-- 	-- кол-во всех без null записей
-- 	COUNT(DISTINCT commission_pct) -- кол-во уникальных записей
-- FROM
-- 	employees
-- -------------------------------------------------------------
-- salary_group
-- от 0 до 4 - 1
-- от 4 до 9 - 2
-- от 9      - 3
-- SELECT
-- 	CASE
-- 	WHEN salary < 4000 THEN 1
-- 	WHEN salary < 9000 THEN 1
-- 	ELSE 3
-- 	END AS salary_group,
-- 	COUNT(*) AS cnt
-- FROM
-- 	employees
-- GROUP BY
-- 	CASE
-- 	WHEN salary < 4000 THEN 1
-- 	WHEN salary < 9000 THEN 1
-- 	ELSE 3
-- 	END;
-- --------------------------- найти у каждого менеджера кол-во сотрудников----------------------------------
SELECT
	manager_id,
	COUNT(*) AS count_of_employees
FROM
	employees
WHERE
	manager_id IS NOT NULL
GROUP BY
	manager_id;
	
	
	