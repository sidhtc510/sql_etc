use tmp;
create view v_active_tasks as 
select * from tasks;

SELECT * FROM v_active_tasks;
DROP VIEW v_active_tasks;