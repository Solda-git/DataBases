/*
 * Домашнее задание к видеоуроку № 11
 * 
 */
/*Практическое задание по теме “Оптимизация запросов”
Задание 1
 Создайте таблицу logs типа Archive. Пусть при каждом создании записи в таблицах 
 users, catalogs и products в таблицу logs помещается время и дата создания записи,
  название таблицы, идентификатор первичного ключа и содержимое поля name.
*/



-- подготовка


use shop;

-- выполенение 

drop table if exists logs;

CREATE TABLE logs (
	logtime DATETIME DEFAULT now() not null,
	name varchar (255) not null,
	pr_key_id bigint not null,
	content varchar(255) not null
) ENGINE=Archive;


CREATE TRIGGER tr_users_on_insert
AFTER INSERT
ON users FOR EACH ROW
BEGIN
	insert into logs (logtime, name, pr_key_id, content )
	values (new.created_at, 'users', new.id, new.name);
END;
DROP TRIGGER if exists tr_catalogs_on_insert;
CREATE TRIGGER tr_catalogs_on_insert
AFTER INSERT
ON catalogs FOR EACH ROW
BEGIN
	insert into logs (logtime, name, pr_key_id, content )
	values (now(), 'catalogs', new.id, new.name);
END;

DROP TRIGGER if exists tr_products_on_insert;

CREATE TRIGGER tr_products_on_insert
AFTER INSERT
ON products FOR EACH ROW
BEGIN
	insert into logs (logtime, name, pr_key_id, content )
	values (new.created_at, 'products', new.id, new.name);
END;

-- проверка:
insert into users (name, birthday_at, created_at, updated_at) 
values ('Петр', '1980-08-08', now(), now());

insert into catalogs (name) 
values ('New test catalog');

insert into products (name, price, created_at, updated_at) 
values ('intel core i7-xxxx', 9999, now(), now());

select * from logs;
/* 
Задание 2
(по желанию) Создайте SQL-запрос, который помещает в таблицу users миллион записей.
*/

-- -

/*
Задание 1
Практическое задание по теме “NoSQL”
В базе данных Redis подберите коллекцию для подсчета посещений с определенных IP-адресов.
*/

-- наилучший тип коллекции - хэш. при посещении IP-адреса необходимо выполнить:
-- назовем коллекцию IP_log, которая будет хранить хэши, где ключ - IP-адрес, 
-- а значение - кол-во посещений. При очередном посещении с адреса '10.123.13.233' 
-- необходимо выполнить:
HEXISTS IP_log, '10.123.13.233'
-- если вернет 0, от
HSET IP_log, '10.123.13.233', '1'
-- иначе
HSET IP_log, '10.123.13.233', INCR HGET IP_log, '10.123.13.233'



/*
Задание 2
При помощи базы данных Redis решите задачу поиска имени пользователя по электронному адресу и наоборот, поиск электронного адреса пользователя по его имени.
Организуйте хранение категорий и товарных позиций учебной базы данных shop в СУБД MongoDB.
*/

-- 1. поиск имени пользователя по электронному адресу
-- коллекция Usr-by-Addr

-- добавление записи
HSET Usr_by_Addr, 'ssolda@mail.com','SSoldatov'
-- поиск 
HGET Usr_by_Addr, 'ssolda@mail.com' 

-- 2. поиск электронного адреса по имени пользователя 

-- добавление записи
HSET Addr_by_Usr, 'SSoldatov', 'ssolda@mail.com'
-- поиск 
HGET Addr_by_Usr, 'SSoldatov'

-- 3 хранение категорий и товарных позиций В MongoDB
-- целесообразно денормализовать две таблицы в одну и хранить 
-- записи в одном плоском документе.
-- добавим несколько записей:

USE SHOP

db.shop.insert ({name: 'Intel Core i3-8100', description:'Процессор на платформе Intel.', price: 7890, catalog: 'Процессоры', created_at:'2019-12-07 09:06:24', uppdated_at: '2019-12-07 09:06:24'})

db.shop.insert ({name: 'Intel Core i5-7400', description:'Процессор на платформе Intel.', price: 12700, catalog: 'Процессоры', created_at:'2019-12-07 09:06:24', uppdated_at: '2019-12-07 09:06:24'})

db.shop.insert ({name: 'Gigabyte H310M S2H', description:'Материнская плата Gigabyte H310M S2H', price: 4790, catalog: 'Материнские платы', created_at:'2019-12-07 09:06:24', uppdated_at: '2019-12-07 09:06:24'})

-- проверка

dp.shop.find()
