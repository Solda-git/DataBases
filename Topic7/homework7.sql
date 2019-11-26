/*
* Домашнее задание к занятию № 7
*  Тема “Сложные запросы”
*/
use temp;
/*
1.	Составьте список пользователей users, которые осуществили хотя бы один 
заказ orders в интернет магазине.
*/

select * from users
where exists (select 1 from orders where users.id = orders.user_id)

/*
2.	Выведите список товаров products и разделов catalogs, который соответствует 
товару.
*/

select products.id, products.name as Product, catalogs.name as Category
from products, catalogs
where products.catalog_id = catalogs.id


/*
3.	(по желанию) Пусть имеется таблица рейсов flights (id, from, to) и таблица 
городов cities (label, name). Поля from, to и label содержат английские названия 
городов, поле name — русское. Выведите список рейсов flights с русскими названиями 
городов.
*/


select flights.id, c1.name, c2.name
from flights
left join cities as c1
on c1.label = flights.from_city
left join cities as c2
on c2.label = flights.to_city
order by flights.id


