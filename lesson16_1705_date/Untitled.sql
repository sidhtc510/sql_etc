-- use shop;
-- SELECT STR_TO_DATE("17,05,2023 11:53:30", "%d,%m,%Y %H:%i:%s") as dttm

-- заказы с 01 по 31 марта
-- select * from ORDERS
-- where odate between STR_TO_DATE("01,03,2022", "%d,%m,%Y") and STR_TO_DATE("31,03,2022", "%d,%m,%Y")

-- заказы от 10/05 а так же заказы за 1 месяц и после
-- SELECT * FROM ORDERS WHERE odate BETWEEN
-- date_add(STR_TO_DATE("10/05/2022", "%d/%m/%Y"), interval -1 MONTH) and
-- date_add(STR_TO_DATE("10/05/2022", "%d/%m/%Y"), interval 1 MONTH)

-- выбор даты через 30 дней от заданной
-- select date_add(str_to_date("10/05/2022", "%d/%m/%Y"), interval 30 day)

-- достать датц или время hour week month
-- select extract(hour from "2022-05-24 14:53")
-- сокращенный синтаксис
-- select hour("2022-05-24 14:53")



-- select month(ODATE),
-- count(ORDER_ID)
-- FROM ORDERS
-- GROUP BY MONTH(odate)


-- select
-- 	concat(year(odate), "-", month(odate)),
--     count(order_id)
-- from orders
-- group by concat(year(odate), "-", month(odate));
-- 
-- 
-- SELECT month(odate),
--        count(*) AS purchase_count
-- FROM ORDERS
-- GROUP BY month(odate)
-- limit 1


-- SELECT month_year, COUNT(*) AS purchase_count
-- FROM (
--     SELECT CONCAT(YEAR(odate), "-", MONTH(odate)) AS month_year
--     FROM orders
-- ) AS subquery
-- GROUP BY month_year
-- LIMIT 1;

-- SELECT m, cnt
-- FROM (
--     SELECT CONCAT(year(odate), "-", month(odate)) AS m, COUNT(*) AS cnt
--     FROM orders
--     GROUP BY m
-- ) AS subquery
-- WHERE cnt = (
--     SELECT MAX(cnt)
--     FROM (
--         SELECT COUNT(*) AS cnt
--         FROM orders
--         GROUP BY CONCAT(year(odate), "-", month(odate))
--     ) AS counts
-- );

-- какие из покупок были совершены в марте
-- select *
-- FROM ORDERS
-- where MONTH(odate) = 3

-- найти все покупки, которые были сделаны весной 2022 года
-- SELECT *
-- FROM ORDERS
-- WHERE YEAR(odate) = 2022 AND MONTH(odate) BETWEEN 3 AND 5;

-- определить, сколько покупок было сделано в июне 22-ого
-- SELECT COUNT(*)FROM ORDERS
-- WHERE YEAR(odate) = 2022 AND MONTH(odate) = 6;

-- определить среднюю стоимость покупок за первое полугодие
-- SELECT AVG(amt) FROM ORDERS
-- WHERE  QUARTER(odate) BETWEEN 1 and 2

-- найти все покупки, которые сделали в выходные WEEKDAY() - это дни недели счет которых идет с 0 до 6 - понедельник это 0, воскресение это 6
-- SELECT * FROM ORDERS
-- WHERE WEEKDAY(odate) in (5,6)

use uni;
-- вывести компетенцию, по которой нет ни одного преподавателя
-- SELECT * from competencies
-- LEFT JOIN teachers2competencies
-- on teachers2competencies.competencies_id = competencies.id
-- WHERE teachers2competencies.competencies_id is null
-- та же задача через постзапросы
-- SELECT * FROM competencies
-- WHERE id not in 
-- (SELECT DISTINCT competencies_id FROM teachers2competencies)


-- найти всех студентов, которые не ходят ни на один курс
-- SELECT * FROM students where id not in
-- (SELECT DISTINCT student_id FROM students2courses)

-- найти все курсы, на которые не записан староста
-- create view tmp as select students2courses.student_id, courses.title as tmp_title
-- 	from students2courses
-- 	inner join courses
-- 	on students2courses.course_id = courses.id;
--     
-- select * from courses 
-- 	where headman_id not in (select student_id from tmp where tmp_title = title);
-- 
-- drop view tmp;