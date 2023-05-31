use library;
-- create table readers (
-- id INT primary key auto_increment,
-- name VARCHAR(255) not null,
-- address VARCHAR(255)
-- )
select * from readers;

-- insert into readers(name, address) values("Гена", "Мира, д. 17");
-- insert into readers(name, address) values("Маша", "Луначарского, д. 7");
-- insert into readers(name, address) values("Витя", "Распутина, д. 13");
-- 

-- ALTER TABLE readers
-- ADD date_of_birth DATE

-- SHOW COLUMNS from readers;

-- UPDATE readers
-- set date_of_birth = "2010-10-10"
-- where name = "витя"

-- 
-- ALTER TABLE readers
-- ADD created_at TIMESTAMP DEFAULT CURRENT_TIMESTAMP;
-- 
-- ALTER TABLE readers
-- ADD updatet_at TIMESTAMP DEFAULT CURRENT_TIMESTAMP on UPDATE CURRENT_TIMESTAMP

-- ALTER TABLE readers
-- CHANGE birth_date2 birth_date DATE DEFAULT(CURRENT_DATE);

-- UPDATE readers
-- SET birth_date = CURRENT_DATE

-- alter table readers add is_deleted integer default 0