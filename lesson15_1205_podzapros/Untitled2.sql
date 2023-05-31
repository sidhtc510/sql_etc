-- SELECT t2.name, t2.lastname, t1.title, t1.done_flg
--  from tasks t1
--  left JOIN employee t2
--  on t1.employee_id = t2.id
--  where t1.done_flg = 0

-- SELECT * from employee
-- WHERE id not in(
-- SELECT employee_id
-- FROM tasks
-- WHERE done_flg = 0
-- )

-- select title from tasks
-- where employee_id not in
-- (
-- SELECT id from employee
-- )
-- and done_flg = 0