-- create database library;
-- 
use library;

-- select * from books;

-- create table books(
-- 	id integer primary key auto_increment,
--     title varchar(128) not null,
--     author varchar(128) check(author in ("Чехов", "Бунин"))
-- );

-- insert into books(title, author) values("Тараканище", "Чуковский Корней");
-- insert into books(title, author) values("Муха-цокотуха", "Чуковский Корней");
-- insert into books(title, author) values("Ружья, микробы и сталь", "Джарельд Даймонд");
-- insert into books(title, author) values("Тараканище", "Чуковский Корней");
-- insert into books(title, author) values("Муха-цокотуха", "Чуковский Корней");
-- insert into books(title, author) values("Ружья, микробы и сталь", "Джарельд Даймонд");
-- insert into books(title, author) values("Тараканище", "Чуковский Корней");
-- insert into books(title, author) values("Муха-цокотуха", "Чуковский Корней");
-- insert into books(title, author) values("Ружья, микробы и сталь", "Джарельд Даймонд");
-- insert into books(title, author) values("Тараканище", "Чуковский Корней");
-- insert into books(title, author) values("Муха-цокотуха", "Чуковский Корней");
-- insert into books(title, author) values("Ружья, микробы и сталь", "Джарельд Даймонд");

-- ALTER TABLE books
-- ADD inv_number integer default 0;

-- SELECT * from books;

-- ALTER TABLE books
-- MODIFY inv_number integer default 1;

-- INSERT into books(title, author) values("Три мушкетёра", "Александр Дюма");

-- UPDATE books
-- SET inv_number = null;

-- ALTER TABLE books
-- MODIFY inv_number varchar(128) default "000/000";
-- 
-- INSERT into books(title, author) values("Три мушкетёра, 20 лет спустя", "Александр Дюма");
-- 
-- UPDATE books
-- SET inv_number = 1;

-- Select * from books; 

-- INSERT into books(title, author) values("Сказка о золотом петушке", "Александр Пушкин");

-- SHOW COLUMNS from books;

-- UPDATE books
-- set inv_number = "111/111"
-- where title = "Тараканище";

-- select * from books;

-- ALTER TABLE books
-- CHANGE inv_number inventory_number varchar(255);

-- ALTER TABLE books
-- DROP COLUMN inventory_number;

-- select * from books;

-- DELETE from books WHERE id = 13;

-- insert into books(title, author) values("Азбука", "Маршак")

-- update books
-- set id = 13
-- where id = 17;

-- insert into books(title, author) values("Красная Шапочка", "Шарль Пьерро");
-- select * from books;

-- ALTER TABLE books
-- ADD is_deleted integer default 0;

-- UPDATE books
-- SET is_deleted = 1
-- WHERE author = "Чуковский Корней";

-- select * from books;

-- Создать новую таблицу readers с полями:
-- id (primary key + автоинкремент)
-- name (varchar(255)) обязательное поле
-- address(varchar(255))
-- и вставить в неё 3 читателей: Петя, живёт на улице Мира, д. 17
-- Маша, живёт на проспекте Луначарского, д. 7
-- Витя, живёт на улице Распутина, д. 13

-- CREATE TABLE readers(
-- 	id integer primary key auto_increment,
--     name varchar(255) not null,
--     address varchar(255)
-- );
-- insert into readers(name, address) values("Петя", "ул. Мира, д. 17");
-- insert into readers(name, address) values("Маша", "пр. Луначарского, д. 7");
-- insert into readers(name, address) values("Витя", "ул. Распутина, д. 13");

-- Добавить новую колонку date_of_birth
-- тип DATE, может быть пустым
-- поставить дни рождения ребят в следующем порядке:
-- Петя 2010-01-01
-- Маша 2011-02-02
-- Витя 2010-10-10

-- ALTER TABLE readers
-- ADD date_of_birth date;

-- update readers
-- set date_of_birth = "2010-01-01"
-- where name = "Петя";

-- update readers
-- set date_of_birth = "2011-02-02"
-- where name = "Маша";

-- update readers
-- set date_of_birth = "2010-10-10"
-- where name = "Витя";



-- ALTER TABLE readers
-- ADD created_at TIMESTAMP DEFAULT CURRENT_TIMESTAMP;
-- 
-- ALTER TABLE readers
-- ADD updated_at TIMESTAMP DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP;

-- update readers
-- set name = "Петя"
-- where name = "Пётр";

-- select * from readers;

-- переименовать колонку date_of_birth в birth_date и поставить значение по умолчанию 
-- равное текущей дате 
-- чтобы проверить, создайте новую строку с name = "Коля" и address = "ул. Лунтика, д. 99"

-- ALTER TABLE readers
-- CHANGE date_of_birth birth_date date;

-- ALTER TABLE readers
-- MODIFY birth_date date default(current_date);

-- insert into readers(name, address) values("Иммануил", "ул. Прунтика, д. 69");

-- select * from readers;

-- в таблице books создать колонки created_at и updated_at (логика колонок идентична логике в readers)
-- ALTER TABLE books
-- ADD created_at TIMESTAMP DEFAULT CURRENT_TIMESTAMP;

-- ALTER TABLE books
-- ADD updated_at TIMESTAMP DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP;

-- в таблице books переименовать колонку title в name
-- ALTER TABLE books
-- CHANGE title name varchar(255);

-- в таблице readers реализовать механизм soft delete
-- ALTER TABLE readers
-- ADD is_deleted int DEFAULT 0;

-- работаем в таблице hr: посчитать среднюю зарплату для каждого департамента
-- SELECT department_id, avg(salary) from employees GROUP BY department_id;

-- работаем в таблице hr: посчитать разницу между максимальной и минимальной зарплатой для каждого департамента 
-- SELECT department_id, max(salary) - min(salary) from employees GROUP BY department_id;

-- SELECT * from readers where is_deleted = 0;

-- создать таблицу workers с полями id (автоинкремент), last_name, gender("M", "F"), birthdate
-- create table workers(
-- 	id int primary key auto_increment,
--     last_name varchar(255),
--     gender varchar(1) check(gender in ("M", "F")),
--     birthdate date
-- );

-- -- добавить в таблицу 2 сотрудников "Иванова, "F", 1990-03-20", "Петров, "M", 1991-07-15"
-- insert into workers(last_name, gender, birthdate) values("Иванова", "F", "1990-03-20");
-- insert into workers(last_name, gender, birthdate) values("Петров", "M", "1991-07-15");

-- поменять тип у gender на char(1)
-- ALTER TABLE workers
-- MODIFY gender char(1);

-- insert into workers(last_name, gender, birthdate) values("Сидорова", "F", "1990-03-20");
-- insert into workers(last_name, gender, birthdate) values("Кузнецова", "F", "1990-03-20");
-- insert into workers(last_name, gender, birthdate) values("Кузнецов", "M", "1991-07-15");

-- показать 2 колонки. первая колонка - gender, вторая колонка - "Количество", где количество - 
-- это число сотрудников с этим полом
-- select gender, count(id) as "Количество" from workers group by gender;



-- добавить новую колонку first_name и у существующих записей поменять значения на:
-- Иванова - Мария
-- Петров - Пётр
-- Сидорова - Ксения
-- Кузнецова - Ольга
-- Кузнецов - Семён

-- ALTER TABLE workers
-- ADD first_name varchar(255);

-- UPDATE workers
-- set first_name = "Мария"
-- where last_name = "Иванова";

-- UPDATE workers
-- set first_name = "Пётр"
-- where last_name = "Петров";

-- UPDATE workers
-- set first_name = "Ксения"
-- where last_name = "Сидорова";

-- UPDATE workers
-- set first_name = "Ольга"
-- where last_name = "Кузнецова";

-- UPDATE workers
-- set first_name = "Семён"
-- where last_name = "Кузнецов";

-- поменять у Ольги Кузнецовой день рождения на 1990-04-05
-- UPDATE workers
-- set birthdate = "1990-04-05"
-- where last_name = "Кузнецова";

-- select * from workers 
-- where DATE_FORMAT(birthdate, "%m %d") = DATE_FORMAT(CURRENT_DATE(), "%m %d");

-- select * from readers;

-- создать новую таблицу employees
-- поля: id, created_at, updated_at (по аналогии), is_deleted
-- name, address, birth_date
-- поле is_deleted может быть только 0 или 1

-- create table employees(
-- id int primary key auto_increment, 
-- name varchar(255), 
-- address varchar(255), 
-- birth_date date,
-- created_at TIMESTAMP DEFAULT CURRENT_TIMESTAMP,
-- updated_at TIMESTAMP DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
-- is_deleted int DEFAULT 0 check(is_deleted in (0,1))
-- );

-- insert into employees(name, address, birth_date) values("Иванов Иван", "ул. Мира, д. 17", "1989-09-22");

-- select * from employees

-- select id, name, birth_date from readers
-- union
-- select id, name, date_of_birth from employees

-- ALTER TABLE employees
-- change birth_date date_of_birth date;



-- **************************************************
-- 											19.04
-- **************************************************




-- select 
-- 	id, 
--     name, 
--     birth_date, 
--     address, 
--     (case when true then "reader" end) as "status" 
-- from readers
-- 
-- union
-- select 
-- 	id, 
--     name, 
--     date_of_birth, 
--     address, 
--     (case when true then "employee" end) as "status" 
-- from employees;

-- ALTER TABLE employees
-- add salary int 
-- 
-- insert into employees(name, address, date_of_birth) values("Миша", "ул. чиполино, д. 172", "1989-09-22");

-- UPDATE employees 
-- set salary = 8000
-- where id = 1

-- ALTER TABLE employees
-- MODIFY salary int DEFAULT(0)


-- select id, name, null as salary from readers
-- union
-- select id, name, salary from employees;

-- ALTER TABLE employees
-- MODIFY COLUMN salary int NOT NULL CHECK(salary > 0) DEFAULT 0;


-- ALTER table books 
-- add reader_id int 

-- ALTER table books 
-- add FOREIGN key(reader_id) REFERENCES readers(id);
-- 

-- ALTER table books 
-- add employee_id int 
-- 
-- ALTER table books 
-- add FOREIGN key(employee_id) REFERENCES employees(id);
-- 
-- ALTER TABLE employees
-- DROP COLUMN employee_id
-- ALTER TABLE books
-- DROP COLUMN inv_number

-- ALTER TABLE books
-- ADD employee_id INT,
-- ADD FOREIGN KEY(employee_id) REFERENCES employees(id);


-- UPDATE books
-- set employee_id = 1
-- WHERE id = 5 
-- 
-- UPDATE books
-- set is_deleted = 0

-- ALTER TABLE books
-- add created_at TIMESTAMP DEFAULT CURRENT_TIMESTAMP
-- ,
-- updated_at TIMESTAMP DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP