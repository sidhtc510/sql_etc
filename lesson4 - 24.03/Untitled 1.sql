USE hr;

-- SELECT
-- 	*
-- FROM
-- 	employees
-- ----------------------
-- SELECT
-- department_id,
-- 	SUM(salary),
-- 	MAX(salary),
-- 	MIN(salary),
-- 	AVG(salary)
-- FROM
-- 	employees
-- group by department_id

-- ------------найти максимальную зп для каждого значения job_id----------
SELECT
job_id,
	MAX(salary)
FROM
	employees
group by job_id;

-- ------------------------------------
