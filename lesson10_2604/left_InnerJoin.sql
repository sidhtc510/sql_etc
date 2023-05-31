-- select id, name, created_at from employees
-- union ALL
-- select id, name, created_at from readers

-- select books.id, books.title, books.author, readers.name as "читатель", readers.address as "адрес"
-- from books 
-- left join readers 
-- on  books.reader_id = readers.id;

-- select books.id, books.title, books.author, employees.name as "Employees name", employees.salary as "zarplata"  
-- from books
-- INNER JOIN employees
-- on books.employee_id = employees.id


-- select books.id, books.title, books.author, employees.name as "Employees name", employees.salary as "zarplata", readers.name as "читатель", readers.address as "адрес"
-- from books
-- INNER JOIN employees
-- on books.employee_id = employees.id
-- inner join readers
-- on books.reader_id = readers.id