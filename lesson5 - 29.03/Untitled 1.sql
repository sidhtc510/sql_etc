use library;

-- select * from books;
-- insert into books(title, author) values("Тараканище5", "Чуковский Корней");

-- ALTER TABLE books
-- ADD inv_number integer default 0

-- ALTER TABLE books
-- MODIFY inv_number varchar(128) default "textDefault"

-- ALTER TABLE books
-- MODIFY inv_number varchar(128) default "000/000"

-- UPDATE books
-- SET inv_number = "000/000"

-- SHOW COLUMNS from books;

-- UPDATE books
-- set inv_number = "111/111"
-- where title = "Тараканище";

-- ALTER TABLE books 
-- CHANGE inv_number inventory_number varchar(255);
-- 
-- ALTER TABLE books
-- DROP COLUMN inventory_number


-- DELETE FROM books WHERE id = 13

-- ALTER TABLE books 
-- ADD is_deleted integer default 0

-- UPDATE books
-- set is_deleted = 1
-- WHERE author = "Чуковский Корней"


-- home Work 29.03.23
-- в таблице books создать колонки created_at и updated_at (логика колонок идентична логике в readers)
-- в таблице books переименовать колонку title в name
-- в таблице readers реализовать механизм soft delete
-- работаем в таблице hr: посчитать среднюю зарплату для каждого департамента
-- работаем в таблице hr: посчитать разницу между максимальной и минимальной зарплатой для каждого департамента

-- select * from books
-- alter table books add column created_at timestamp default current_timestamp

-- alter table books add column updatet_at timestamp default current_timestamp on update current_timestamp

-- alter table books change title name varchar(255)

-- alter table readers add is_deleted integer default 0


-- use hr;
-- select department_id, avg(salary) from employees group by department_id;

-- select department_id, MAX(salary), MIN(salary),
-- MAX(salary) - MIN(salary) as difference
-- from employees group by department_id;