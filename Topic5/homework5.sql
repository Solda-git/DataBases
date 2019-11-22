/*
 * “Операторы, фильтрация, сортировка и ограничение”
 */


/* задание №1
Пусть в таблице users поля created_at и updated_at оказались незаполненными. Заполните их текущими датой и временем.
**/


-- подготовка
use vk_sol;
SELECT * FROM users;

alter table users add created_at datetime,  add updated_at datetime;
-- выполнение
update users set created_at = now(), updated_at = now();
-- проверка
select * from users;


/*задание №2
 * Таблица users была неудачно спроектирована. Записи created_at и updated_at были заданы 
 * типом VARCHAR и в них долгое время помещались значения в формате "20.10.2017 8:10".
 * Необходимо  преобразовать поля к типу DATETIME, сохранив введеные ранее значения.
*/
-- подготовка
alter table users MODIFY created_at VARCHAR(20), MODIFY updated_at VARCHAR(20);
update users set created_at = '20.10.2017 8:10', updated_at = '20.10.2017 8:10';
select * from users;
-- выполнение
alter table users add created_at_new datetime, add updated_at_new datetime;
update users set created_at_new = STR_TO_DATE(created_at,'%d.%m.%Y %h:%i:%s'), updated_at_new = STR_TO_DATE(updated_at,'%d.%m.%Y %h:%i:%s');
alter table users drop column created_at, drop column  updated_at; 
-- проверка
select * from users;

/* Задание № 3
 * В таблице складских запасов storehouses_products в поле value могут встречаться самые 
 * разные цифры: 0, если товар закончился и выше нуля, если на складе имеются запасы. 
 * Необходимо отсортировать записи таким образом, чтобы они выводились в порядке увеличения 
 * значения value. Однако, нулевые запасы должны выводиться в конце, после всех записей.
 * 
 */

/* Подготовка
 * создадим в БД temp  таблицу storehouses_products с полями:
 * id INT primary key,
 * name varchar (2),
 * value int
 * */
use temp;
create table storehouses_products (
	id SERIAL PRIMARY KEY,
	name varchar(20),
	value int unsigned not null default 0
	);
-- заполним значениями 
insert into storehouses_products (name, value) values
		('Product 1', 0),
		('Product 2', 2500),
		('Product 3', 0),
		('Product 4', 30),
		('Product 5', 500),
		('Product 6', 1);
	
-- выполнение и проверка

select id, name, value from (	
			select  id, name, value, if ( value > 0, value, 			
					( select max(value)+1 as maxval
					  from storehouses_products 
					)
				) as maxval
			from storehouses_products
			group by value,id
) as t
order by t.maxval


/* Задание № 4 
 * (по желанию) Из таблицы users необходимо извлечь пользователей, родившихся в 
 * августе и мае. Месяцы заданы в виде списка английских названий ('may', 'august')
 * 
 */
use vk_sol;

select id, firstname, lastname, birth from users
where monthname(birth) in ('may','august');


/* Задание № 5
 * (по желанию) Из таблицы catalogs извлекаются записи при помощи запроса. 
 * SELECT * FROM catalogs WHERE id IN (5, 1, 2); 
 * Отсортируйте записи в порядке, заданном в списке IN.
 */
-- подготовка
use temp;
drop table if exists catalogs;
create table temp.catalogs (
	id SERIAL primary key,
	name varchar(25)
	) CHARACTER SET = 'utf8';

select * from catalogs;
truncate table temp.catalogs; 
insert into catalogs (id, name) values
	(1, 'Материнские платы'),
	(2, 'Процессоры'),
	(3, 'Жесткие диски'),
	(4, 'Оперативная память'),
	(5, 'Видеокарты');
select * from catalogs; 
-- выполнение и проверка

select id, name FROM (
			select id, name, case 
						when id = 5 then 1
						when id = 1 then 2
						when id = 2 then 3
						else 100 
					end as sortorder	
						from catalogs
						)  as t
where id in (5,5,1,2)
order by t.sortorder

/*
 * “Агрегация данных”
*/

/* задание №1
* Подсчитайте средний возраст пользователей в таблице users
**/
-- решение
select avg((TO_DAYS(NOW()) - TO_DAYS(birth))/365.25) as age 
	from users;
	
/* задание №2
* Подсчитайте количество дней рождения, которые приходятся на каждый из дней недели. 
* Следует учесть, что необходимы дни недели текущего года, а не года рождения.
*/
-- решение
select weekdays, count(weekdays) from 
(select DAYOFWEEK(STR_TO_DATE(concat(date_format (birth, '%d.%m.'), date_format(now(),'%Y')),'%d.%m.%Y')) as weekdays
 from users ) as t 
group by weekdays

/* задание №3
 * (по желанию) Подсчитайте произведение чисел в столбце таблицы
*/
-- подготовка
use temp;
create table tmp 
	(value tinyint);
insert into tmp values (1),(2),(3),(4),(5);
-- решение
select round (pow(10,sum(log10(value))),0) 
from tmp;


-- решение