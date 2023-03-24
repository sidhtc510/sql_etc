-- create database lesson1703;
-- 
-- use lesson1703;
-- 
-- create table products(
--  id integer primary key,
--  title varchar(128),
--  price integer,
--  discount_pct integer,
--  category varchar(128)
-- );
-- 
-- insert into products values(1,  'Велосипед',   45000, 12,   'sport');
-- insert into products values(2,  'Ролики',      22000, 5,    'sport');
-- insert into products values(3,  'Самокат',     15000, null, 'sport');
-- insert into products values(4,  'Лыжи',        28000, 10,   'sport');
-- insert into products values(5,  'Диван',       65000, 15,   'home');
-- insert into products values(6,  'Стол',        12000, null, 'home');
-- insert into products values(7,  'Шкаф',        84000, 5,    'home');
-- insert into products values(8,  'Кровать',     57000, 25,   'home');
-- insert into products values(9,  'Молоко',      120,   null, 'food');
-- insert into products values(10, 'Хлеб',        56,    null, 'food');
-- insert into products values(11, 'Ягоды',       130,   10,   'food');
-- insert into products values(12, 'Картошка',    64,    null, 'food');
-- insert into products values(13, 'Шоколад',     80,    15,   'food');

-- select title, price from products where category = 'home'

-- select title from products where price between 10000 and 20000
-- select title from products where price >= 10000 and price <= 20000

-- select title from products where title not like "%о%"

-- select title from products where discount_pct is null
-- select title from products where discount_pct is not null

-- select title from products where discount_pct in (5, 15) or discount_pct is null