-- вывести имена всех продавцов и имя их руководителя как колонку boss_name
-- склеивание таблицы саму с собой
-- select sellers.sname, boss.sname as boss_name
-- from sellers
-- left join sellers as boss
-- on sellers.sell_id = boss.sell_id


-- вывести имена всех покупателей, которые совершили разовую покупку на сумму > 1000
-- select distinct CUSTOMERS.cname, ORDERS.AMT
-- from CUSTOMERS
-- left join ORDERS
-- on CUSTOMERS.CUST_ID = ORDERS.CUST_ID
-- where ORDERS.AMT > 1000

-- insert into orders(order_id, amt, odate, cust_id, sell_id) values(111, 1001, curdate(), 301, 201);


-- вывести все заказы в виде пары "Имя покупателя", "Имя продавца", AMT
-- select CUSTOMERS.cname as 'покупатель', SELLERS.sname as 'продавец', ORDERS.AMT as 'сумма'
-- from orders
-- inner join customers
-- on CUSTOMERS.CUST_ID = ORDERS.CUST_ID
-- inner join SELLERS
-- on SELLERS.sell_ID = ORDERS.sell_ID


-- вывести имена покупателей и продавцов, связанных с каким-то заказом
-- в котором продавец и покупатель были из разных городов
-- select CUSTOMERS.cname as 'покупатель',CUSTOMERS.city, SELLERS.sname as 'продавец',SELLERS.city, ORDERS.AMT as 'сумма'
-- from orders
-- inner join customers
-- on CUSTOMERS.CUST_ID = ORDERS.CUST_ID
-- inner join SELLERS
-- on SELLERS.sell_ID = ORDERS.sell_ID
-- where CUSTOMERS.city != SELLERS.city

-- 
-- select customers.cname as "Имя", orders.order_id, 'customer' as 'role'
-- from customers
-- left join orders
-- on orders.cust_id = customers.cust_id
-- union all
-- select sellers.sname, orders.order_id, 'seller'
-- from sellers
-- left join orders
-- on orders.sell_id = sellers.sell_id;


-- вывести таблицу из двух колонок: sname (имя продавца), 
-- diff (разница между комиссией начальника и комиссией продавца)
-- если начальника нет, то выводить в колонке diff null
-- select sellers.sname, (boss.comm - sellers.comm) as 'diff'
-- from sellers
-- left join sellers as boss
-- on sellers.sell_id = boss.boss_id


-- вывести все order_id + имя продавца + сколько он получил за этот заказ
-- select orders.ORDER_ID,sellers.sname, orders.AMT, (orders.AMT*sellers.comm) as 'zpha'
-- from orders
-- inner join sellers 
-- on orders.sell_id = sellers.sell_id

-- общая зп к предидущей задаче
-- select sellers.sname, sum(orders.AMT*sellers.comm) as 'zpha'
-- from orders
-- inner join sellers 
-- on orders.sell_id = sellers.sell_id
-- group by SELLERS.sname


