use tmp;

-- CREATE table users(
-- id int primary key auto_increment,
-- name VARCHAR(128),
-- age int CHECK(age >0 AND age <= 120),
-- email VARCHAR(255)
-- )
-- 
-- insert into users(name, age, email) values("Иван", 25, "ivan@mail.com"),
-- ("анатолий", 18, "tolik@mail.com"),
-- ("Егор", 42, "egor123@mail.com"),
-- ("Сергей", 63, "sergay@mail.com"),
--  ('Иван', 23, 'ivan@gmail.com'),
--  ('Игнат', 35, 'ignat@gmail.com'),
--  ('Игорь', 42, 'igor@gmail.com'),
--  ('Степан', 42, 'stepan@gmail.com'),
--  ('Алина', 39, 'alina@gmail.com');
-- 
-- 
-- create table employees(
--  id integer primary key auto_increment,
--  name varchar(128),
--  age integer check(age between 0 and 120),
--  phone varchar(128)
-- );
-- 
-- insert into employees(name, age, phone)values
--  ('Иван', 23, '+3746450730'),
--  ('Ольга', 35, '+37477755309'),
--  ('Игорь', 42, '+37445983335'),
--  ('Ирина', 39, '+37476333009');


-- CREATE table human as
-- select name, age, phone, null as email, "employee" as "type"  from employees
-- union all
-- select name, age, null as phone,  email, "user" as "type"  from users

-- select * from human where(age < 30 or age > 40) 
-- select * from human where age not between 30 and 40
-- select * from human where name LIKE "_г%"
