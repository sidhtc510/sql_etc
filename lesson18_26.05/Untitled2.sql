use tmp;
-- в трех полях вывести 
--  - кол-во сделаных задач
--  - кол-во не сделаных задач
--  - общее кол-во задач

-- select count(*) as total, 
-- count(CASE WHEN done_flg = 1 THEN true END) as done, 
-- count(CASE WHEN done_flg = 0 THEN true END) as Not_done 
-- from tasks

-- SELECT
-- 	CASE 
-- 	WHEN done_flg = 1 THEN
-- 		true
-- END as 'sss', id
-- from tasks


-- вывести процент сделаных задач и процент не сделаных от общего кол-ва
-- SELECT 
--     (COUNT(CASE WHEN done_flg = 1 THEN 1 END) / COUNT(*)) * 100 AS percent_done,
--     (COUNT(CASE WHEN done_flg = 0 THEN 1 END) / COUNT(*)) * 100 AS percent_not_done
-- FROM tasks;

-- Найдите колличество сотрудников, у которых есть хотя бы одна невыполненая задача. Выборка должна содержать поле busy_cont
-- select count(DISTINCT employee_id)
-- from tasks WHERE done_flg = 0
