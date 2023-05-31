use hr;
-- drop table citizens;
-- drop table real_estate;
-- 
-- create table citizens(
-- 	id int primary key auto_increment,
--     name varchar(255)
-- );
-- 
-- create table real_estate(
-- 	id int primary key auto_increment,
--     address varchar(255)
-- );
-- 
-- insert into citizens(name) values("Иван");
-- insert into citizens(name) values("Мария");
-- insert into citizens(name) values("Игнат");
-- 
-- insert into real_estate(address) values("ул. Мира, д. 17");
-- insert into real_estate(address) values("ул. Алабяна, д. 3");
-- insert into real_estate (address) values("Лабутенко д.16");
-- -----------------------------------------------------------------



-- *************************************** Дз *****************************************
-- *****1***** 
-- *****1***** 
-- *****1***** 
-- *****1***** - у одного жителя может быть много домов. Реализовать механизм связи между домом и жителем.
-- проверка: написать запрос, который вернёт все дома гражданина с id = 1
-- alter table real_estateq
-- add column citizen_id int
-- 
-- alter table real_estate
-- modify citizen_id int DEFAULT(0)

-- update real_estate
-- set citizen_id = 0

-- SELECT *
-- FROM citizens
-- JOIN real_estate ON citizens.id = real_estate.citizen_id
-- WHERE citizens.id = 1;
-- 


-- *****2***** 
-- *****2***** 
-- *****2***** 
-- *****2***** - у одно жителя может быть много домов и у одного дома может быть несколько владельцев
-- реализовать механизм связи многие ко многим в рамках этой задачи


-- CREATE TABLE citizens_realEstates (
--   name_id INT NOT NULL,
--   address_id INT NOT NULL,
--   FOREIGN KEY (name_id) REFERENCES citizens(id),
--   FOREIGN KEY (address_id) REFERENCES real_estate(id),
--   PRIMARY KEY (name_id, address_id)
-- );

-- INSERT INTO citizens_realEstates (name_id, address_id) VALUES (1, 1);
-- INSERT INTO citizens_realEstates (name_id, address_id) VALUES (1, 2);
-- INSERT INTO citizens_realEstates (name_id, address_id) VALUES (2, 2);


-- SELECT * FROM real_estate
--   INNER JOIN citizens_realEstates ON real_estate.id = citizens_realEstates.address_id
