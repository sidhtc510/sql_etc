use tmp;

-- create table employee(
--     id integer primary key,
--     name varchar(128) not null,
--     lastname varchar(128) not null,
--     salary integer check(salary >= 0) default 0,
--     manager_id integer
-- );
-- 
-- insert into employee values (1, 'Thomas'   , 'Nelson'     , 150000, null);
-- insert into employee values (2, 'Willie'   , 'Mitchell'   , 90000 , 1);
-- insert into employee values (3, 'David'    , 'Garrett'    , 170000, 2);
-- insert into employee values (4, 'Gary'     , 'Richardson' , 140000, 1);
-- insert into employee values (5, 'Donald'   , 'Stewart'    , 100000, 3);
-- insert into employee values (6, 'Frederick', 'White'      , 70000 , 2);
-- insert into employee values (7, 'Willie'   , 'Gonzales'   , 12000 , 1);
-- insert into employee values (8, 'Angel'    , 'Carter'     , 990000, 3);
-- 
-- create table tasks(
--     id integer,
--     title varchar(128),
--     employee_id integer,
--     done_flg integer
-- );

-- insert into tasks values(1,  'Task # 616', 1, 1);
-- insert into tasks values(2,  'Task # 741', 4, 1);
-- insert into tasks values(3,  'Task # 526', 4, 0);
-- insert into tasks values(4,  'Task # 588', 1, 1);
-- insert into tasks values(5,  'Task # 964', 2, 0);
-- insert into tasks values(6,  'Task # 282', 4, 0);
-- insert into tasks values(7,  'Task # 350', 5, 0);
-- insert into tasks values(8,  'Task # 523', 7, 1);
-- insert into tasks values(9,  'Task # 776', 2, 1);
-- insert into tasks values(10, 'Task # 155', 2, 1);
-- insert into tasks values(11, 'Task # 348', 4, 0);
-- insert into tasks values(12, 'Task # 703', 3, 1);
-- insert into tasks values(13, 'Task # 727', 6, 0);
-- insert into tasks values(14, 'Task # 131', 5, 0);
-- insert into tasks values(15, 'Task # 166', 10, 0);
-- insert into tasks values(16, 'Task # 167', 10, 1);
-- insert into tasks values(17, 'Task # 168', 10, 0);

-- employee
-- 
-- id - идентификатор сотрудника
-- name - имя сотрудника
-- lastname - фамилия сотрудника
-- salary - зарплата сотрудника
-- manager_id - идентификатор менеджера сотрудника
-- 
-- tasks
-- 
-- id - идентификатор задачи
-- title - наименование задачи
-- employee_id - идентификатор сотрудника, который назначен исполнителем
-- done_flg - флаг выполнения задачи (1 - задача выполнена, 0 - задача не выполнена)


-- Сформируйте выборку, которая содержит в себе имя и фамилию сотрудника, а так же наименование задачи.
-- SELECT t1.name, t1.lastname, t2.title
-- from employee t1
-- LEFT JOIN tasks t2
-- on t1.id = t2.employee_id


-- Сформируйте выборку, которая содержит в себе имя и фамилию сотрудника, у которых нет задач.
-- SELECT t1.name, t1.lastname, t2.title
-- from employee t1
-- LEFT JOIN tasks t2
-- on t1.id = t2.employee_id
-- where t2.employee_id is null


-- Сформировать выборку, которая содержит название задач (title). 
-- Выборка должна содержать только невыполненные задачи, назначенные на сотрудников, которых нет в таблице employee.

-- 		1) найти задачи, которые назначены на сотрудников, которых нет в таблице employee

-- SELECT t1.title
-- from  tasks t1
-- LEFT JOIN  employee t2
-- on t1.employee_id = t2.id
-- where t2.id is null
-- 






