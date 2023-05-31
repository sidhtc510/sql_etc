use library;

-- create table workers (
-- id int primary key auto_increment,
-- last_name varchar (255),
-- gender varchar (1) check(gender in ('m' , 'F')),
-- birthdate date
-- )

-- insert into workers (last_name, gender, birthdate) values ("ivanova", "F", "1990-03-20");
-- insert into workers (last_name, gender, birthdate) values ("petrova", "f", "1991-07-15");
-- insert into workers(last_name, gender, birthdate) values("Сидорова", "F", "1990-03-20");
-- insert into workers(last_name, gender, birthdate) values("Кузнецова", "F", "1990-03-20");
-- insert into workers(last_name, gender, birthdate) values("Кузнецов", "M", "1991-07-15");

-- show columns from workers;

-- alter table workers modify gender char(1)
-- select gender, count(id) as "count" from workers group by gender

-- alter table workers add firs_name varchar(255)
-- alter table workers change firs_name first_name varchar(255)

-- update workers 
-- set first_name = "вася"
-- where last_name = "кузнецов"

-- UPDATE workers SET first_name = "vasya", first_name = "ira"
-- WHERE last_name = "petrov" AND last_name = "petrova";

-- update workers
-- set birthdate = "1990-04-05"
-- where last_name = "кузнецова"

