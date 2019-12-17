/*создание базы данных  KW-shop - БД для харнения информации сайта онлайн 
 * продаж вязаных товаров Knitted World  */
DROP DATABASE IF EXISTS KW_shop;
CREATE DATABASE IF NOT EXISTS KW_shop DEFAULT CHARSET=utf8;
USE KW_shop;

/*создание таблицы основной сущности "Пользователи"
структура данных должна обеспечивать авторизацию, аутентификацию, хранение информации
о пользователе для возможности исполнения заказов, а также накопления информации об 
истории его активности для формирования в будущем маркетинговых кампаний
*/
/* Основная таблица сущности "Пользователи" - users - содержит поля, необходимые для 
 * авторизации, аутентификации зарегистрированных пользователей, а также необязательную
 * информацию профиля.8
 **/
DROP TABLE IF EXISTS users;
CREATE TABLE users (
	id SERIAL PRIMARY KEY, 				-- SERIAL = BIGINT UNSIGNED NOT NULL AUTO_INCREMENT UNIQUE
    firstname VARCHAR(50) NOT NULL,		-- имя
    lastname VARCHAR(50), 				-- фамилия
    email VARCHAR(120) UNIQUE NOT NULL, -- электронная почта
    phone BIGINT UNIQUE NOT NULL, 		-- номер мобильного телефона
    basket_id BIGINT UNSIGNED UNIQUE,	-- номер корзины. внешний ключ бюдет добавлен после создания соответствующей таблицы
   -- не обязательные данные профиля
    sex ENUM ('m', 'f'), 				-- пол
	birthday DATE,						-- дата рождения
	age SMALLINT UNSIGNED,				-- возраст
	hometown VARCHAR(100),				-- город
    address VARCHAR(255),				-- адрес
    status ENUM ('registred', 'active', 'online', 'deleted'),
    /* Описание статусов
     * 'registred' - зарегистрированный пользователь
     * 'active' - активный пользователь, совершивший одну или несколько покупок
     * 'online' - пользователь в системе
     * 'deleted' - пользователь, по каким-то причинам помеченный как удаленный (доступ к системе заблокирован)
     */
    created_at DATETIME DEFAULT NOW(),		-- временая метка (создание записи)
    -- индексы
    INDEX users_phone_idx(phone), 		-- индекс по полю моб. теленфон
    INDEX users_firstname_lastname_idx(firstname, lastname), -- индекс по полям: имя, фамилия
    INDEX users_email_idx(email) 		-- индекс по полю электронной почты
) DEFAULT CHARSET=utf8;

/* создание второй ключевой сущности "Товар" и связанной структурной сущности "Каталог"
 * Каталог - это двухуровневая иерархия, позволяющая классифицировать товар следующим
 * образом:
 * -->Категория| (таблица categories)
 * 			   --> Подкатегория|(таблица subcategories)
 * 								--> Товар (таблица items)	
 */
/*
 * создание таблицы верхнего уровня иерархии каталога - categories
 * примеры катгорий:
 * одежда, игрушки, аксесуары
 * */
DROP TABLE IF EXISTS categories;
CREATE TABLE categories (
	id SERIAL primary key,
	name varchar(25) NOT NULL,
	description varchar(255) 		
) DEFAULT CHARSET=utf8;

/*
 * создание таблицы нижнего уровня иерархии каталога - subcategories
 * примеры подкатегорий (для категории "Игрушки"):
 * куклы, животные, мультгерои
 * */
DROP TABLE IF EXISTS subcategories;
CREATE TABLE subcategories (
	id SERIAL primary key,
	name varchar(25) NOT NULL,
	description varchar(255), 
	cat_id BIGINT UNSIGNED NOT NULL,
	-- индексы
 	index subcat_cat_idx (cat_id),
	-- внешние ключи
	FOREIGN KEY (cat_id) REFERENCES categories(id)
 		ON UPDATE CASCADE 		
	   	ON DELETE RESTRICT 
) DEFAULT CHARSET=utf8;

/*
 * создание таблицы, содержащей структуру второй ключевой сущности - items.
 * Содержит все связанные характеристики товара: размер, ссылку на фото, 
 * идентификатор подкатегории
 * */
DROP TABLE IF EXISTS items;
CREATE TABLE items (
	id SERIAL primary key,
	name varchar(25) NOT NULL,
	description varchar(255), 
	subcat_id BIGINT UNSIGNED NOT NULL,
	item_size TINYINT unsigned,
	pic_id BIGINT UNSIGNED NOT NULL, /* - ссылка на сущность galary, которая будет определена ниже
			после описания таблицы galary, необходимо дополнить таблицу items ограничением целостности 
			с внешним ключом по полю pic_ID
	*/
	created DATETIME DEFAULT NOW(),
	-- индексы
	index item_subcat_idx (subcat_id),
	index item_name_idx (name),
	index item_pic_idx (pic_id),
	-- внешние ключи
	FOREIGN KEY (subcat_id) REFERENCES subcategories(id)
		ON UPDATE CASCADE 		
    	ON DELETE RESTRICT
) DEFAULT CHARSET=utf8;

/*
 * создание сущности "Прайс-лист", состоящей из двух таблиц:
 * pricelists и prices
 * 
 */
 /* создание таблицы pricelists, содержащей наименование прайслистов
  * изначально предполагается использовать 1 прайслист - базовый, однако
  * архитектурно закладывается возможность использования нескольких прайс-
  * листов
  */
DROP TABLE IF EXISTS pricelists;
CREATE TABLE IF NOT EXISTS pricelists (
	id SERIAL primary key,
	name varchar(100),
	active BINARY,
	is_main BOOL DEFAULT 0 NOT NULL
	
) DEFAULT CHARSET=utf8;

 /*создание таблицы prices, содержащей позиционные цены всех товаров для каждого
  * активного прайслиста
  * 
  */
DROP TABLE IF EXISTS prices;

CREATE TABLE IF NOT EXISTS prices(
	pricelist_id BIGINT UNSIGNED NOT NULL,
	item_id BIGINT UNSIGNED NOT NULL,
	price INT UNSIGNED NOT NULL,
	start_date DATETIME NOT NULL DEFAULT NOW(),
	finish_date DATETIME NOT NULL,
	-- ключи
	PRIMARY KEY (pricelist_id, item_id),
	FOREIGN KEY (item_id) REFERENCES items(id),
	FOREIGN KEY (pricelist_id) REFERENCES pricelists(id),
	-- индексы
	INDEX prices_item_idx (item_id)
) DEFAULT CHARSET=utf8;


/* создание сущности "Склад" 
 * 
  * free_quant - количество товара, доступное к поставке;
  * reserved_quant - количество товара, зарезервированное для заказа; 
  * in_prod_quant - количество товара в производстве.
  * отношение с таблицей items: 1-1
  */
DROP TABLE IF EXISTS warehouse;
CREATE TABLE IF NOT EXISTS warehouse(
	id BIGINT UNSIGNED UNIQUE primary key,
	free_quant INTEGER DEFAULT 0,
	reserved_quant INTEGER DEFAULT 0,
	in_prod_quant INTEGER DEFAULT 0,
	-- внешний ключ
	FOREIGN KEY (id) REFERENCES items(id)
    	ON UPDATE CASCADE 				
    	ON DELETE RESTRICT	
) DEFAULT CHARSET=utf8;

/* создание сущности "Корзина"
 * для одного пользователя может существовать не более одной
 * корзины. 
 * отношение с таблицей users: 1-1
 */
DROP TABLE IF EXISTS baskets;
CREATE TABLE IF NOT EXISTS baskets(
	id SERIAL primary key, -- связан с users(basket_id)
	item_id BIGINT UNSIGNED NOT NULL,
	item_quant_ INT UNSIGNED NOT NULL,
	-- внешний ключ
	FOREIGN KEY (item_id) REFERENCES items(id)
) DEFAULT CHARSET=utf8;

/*
 * на данном этапе необходимо добавить ограничение целостности в таблицу users
 * по ключу basket_id 
 */
ALTER TABLE users ADD CONSTRAINT FOREIGN KEY users_basket (basket_id) REFERENCES baskets(id);

/* создание сущности "Заказ"
 * состоит из таблиц statuses и orders 
*/
/* создание таблицы statuses 
 *  доступные статусы:
 *  1 - размещен, 
 *  2 - оплачен,
 *  3 - в производстве, 
 *  4 - готов к отправке, 
 *  5 - отправлен, 
 *  6 - доставлен, 
 *  7 - исполнен, 
 *  8 - отменен 
 */
DROP TABLE IF EXISTS statuses;
CREATE TABLE IF NOT EXISTS  statuses(
	id SERIAL primary key, 
	status varchar (20)
) DEFAULT CHARSET=utf8;

/* создание таблицы orders (темпоральная)
 * данные из таблице НЕ УДАЛЯЮТСЯ, манипуляции производятся со полями
 * status, begin_date и end_date
 *
 * Перечень статусов во избежание хардкодирования в случае их добавления 
 * (изменения, удаления в процессе проектирования) вынесен в отдельную таблицу
 * (описана выше).
 * oredrs - шапка заказа. orders_content - содержание заказа 
 */
DROP TABLE IF EXISTS orders;
CREATE TABLE IF NOT EXISTS orders(
	id BIGINT UNSIGNED NOT NULL,
	status_id BIGINT UNSIGNED NOT NULL,
	begin_date DATETIME NOT NULL DEFAULT NOW(),
	end_date DATETIME, -- если Null, значит запись действующая.
	user_id BIGINT UNSIGNED NOT NULL, 
	order_sum BIGINT UNSIGNED NOT NULL, -- стоимость заказа 
	-- ключи
	PRIMARY KEY (id, begin_date),
	FOREIGN KEY (user_id) REFERENCES users(id),
	FOREIGN KEY (status_id) REFERENCES statuses(id),
	-- индексы
	INDEX orders_item_idx (user_id)	
) DEFAULT CHARSET=utf8;

/*
 * содержание заказа - таблица orders_content 
 */


DROP TABLE IF EXISTS orders_content;
CREATE TABLE IF NOT EXISTS orders_content(
	order_id BIGINT UNSIGNED NOT NULL,
	item_id BIGINT UNSIGNED NOT NULL,
	item_quant INT UNSIGNED NOT NULL,
	item_cost INT UNSIGNED NOT NULL,
	-- ключи
	PRIMARY KEY (order_id, item_id),
	FOREIGN KEY (item_id) REFERENCES items(id),
	FOREIGN KEY (order_id) REFERENCES orders(id),
	-- индексы
	INDEX orders_cont_item_idx (item_id),
	INDEX orders_cont_order_idx (order_id)
) DEFAULT CHARSET=utf8;


/* создание сущности "Отзыв"
 * создаваемая таблица должна хранить user_id, текст отзыва,
 * item_id, по которому составлен отзыв, а также ссылку на фото.  
 * отзывы допустимо оставлять на приобретенные товары (не более одного 
 * на каждый товар). Такую проверку необходимо органиховать на фазе
 * программирования бизнес-логики приложения
 */
DROP TABLE IF EXISTS user_refs;
CREATE TABLE IF NOT EXISTS user_refs(
		id SERIAL primary key, 
		user_id BIGINT UNSIGNED NOT NULL,
		item_id BIGINT UNSIGNED DEFAULT NULL,
		pic_id BIGINT UNSIGNED DEFAULT NULL, /* - ссылка на сущность galary, которая будет определена ниже
			после описания таблицы galary, необходимо дополнить таблицу items ограничением целостности 
			с внешним ключом по полю pic_ID
		*/
		-- ключи
		FOREIGN KEY (user_id) REFERENCES users(id),
	    FOREIGN KEY (item_id) REFERENCES items(id),
		-- индексы
		INDEX ref_user_idx(user_id),
		INDEX ref_item_idx(item_id),
		INDEX ref_pic_idx(pic_id)
) DEFAULT CHARSET=utf8;

/* создание сущности "Маркетинговая кампания". Таблица discounts
 * Для поля Discounts допустимы значения:
 * 'item' - скидка на конкретную товарную позицию
 * 'subcat' - скидка на подкатегорию товара
 * 'cat' - скидка на подкатегорию товара
 * 'user' - скидка, предоставляемая конкретному пользователю
 * 'all' - скидка "всем на все"  
 */

DROP TABLE IF EXISTS discounts; 
CREATE TABLE IF NOT EXISTS discounts (
		id SERIAL primary key,
		pricelist_id BIGINT UNSIGNED NOT NULL, -- скидки предоставляются только на определенный прайслист 
		disc_type ENUM ('item','subcat','cat','user','all'),
		start_date DATETIME, -- дата начала действия скидок
		finish_date DATETIME,  -- дата окончания действия скидок
		object_id BIGINT UNSIGNED, /* объект предоставления скидок (идентификатор
					пользователя/категории/подкатегории/товара)
					если поле NULL - значит disc_type = 'all'
					*/
		disc_value TINYINT DEFAULT 0, /* уровень скидок (%). Представлен целым числом. Необходимо учесть при расчете 
								окончательной цены на товар при формировании заказа
							*/
		-- внешние ключи
		FOREIGN KEY (pricelist_id) REFERENCES pricelists(id),
		-- индексы
		INDEX discount_obj_idx(object_id),
		INDEX discount_pricelist_idx(pricelist_id) 
) DEFAULT CHARSET=utf8;


/* создание сущности "Галерея"
 * хранит таблицу с идентификатором фотографий и ссылками на их хранение
 * содержит поле pic_type со значениями:
 * portfolio - для хранения нескольких картинок товарной позиции
 * reference - для хранения пользовательских фотографий для отзывов
 */
DROP TABLE IF EXISTS galery;
CREATE TABLE IF NOT EXISTS galery(
		id SERIAL primary key,
		pic_type ENUM ('profile','reference'),
		pic_path varchar(255)
) DEFAULT CHARSET=utf8;

/* добавление необходимых ключей, ссылающихся на таблицу фотогалереи
 * 
 * таблица items
 */
ALTER TABLE items ADD CONSTRAINT foreign key (pic_id) REFERENCES galery(id);
/** 
 * таблица references
 */
ALTER TABLE user_refs ADD CONSTRAINT foreign key (pic_id) REFERENCES galery(id);


/*
 * ******************************************************
 *                 ПРЕДСТАВЛЕНИЯ
 * ******************************************************
 */

/*
 * представление VIEW, содержащее инфрмацию о заказах в акутальном состоянии
 */
create OR REPLACE VIEW orders_view (id, status_id, user_id, updated, order_sum) 
AS
select id, status_id, user_id, begin_date, order_sum
from orders
WHERE end_date is NULL;

/*
 * представление VIEW, хиты продаж - самое большое количество товарных позиций заказов,
 * находящихся в статусе 'оплаченный' или выше
 */
create OR REPLACE VIEW most_ordered_view (id, name, ordered, /*last_ordered,*/ cur_price)
AS
select t1.*, prices.price
from
(select oc.item_id as iid, items.name as name, count(oc.item_quant) as cnt
from orders_view ov1
join orders_content oc on ov1.id = oc.order_id
join items on oc.item_id = items.id 
where ov1.status_id >= 2
group by oc.item_id
order by cnt desc limit 5) as t1
join prices on t1.iid = prices.item_id 
join pricelists on prices.pricelist_id = pricelists.id
where pricelists.is_main is True;


/*
 * ******************************************************
 *            СКРИПТЫ ХАРАКТЕРНЫХ ВЫБОРОК
 * ******************************************************
 */

-- 1. Вернуть список всех товаров заданной подкатегории (subcat_id = 1)

select * from items where subcat_id = 1;

-- 2. Вернуть список всех категорий заданной подкатегории (cat_id = 3)

select * from subcategories where cat_id = 3;

-- 3. Вернуть список список цен всех товаров (прайс-лист)(id = 1)

select items.name, subcategories.name, categories.name, prices.price
from prices
join items on prices.item_id = items.id
join pricelists on prices.pricelist_id = pricelists.id
join subcategories on items.subcat_id = subcategories.id
join categories on categories.id = subcategories.cat_id
where pricelists.is_main is True
order by categories.name, subcategories.name, items.name;  

-- 4. Вернуть список всех размещенных, но не исполненных заказов с указанием товарных позиций

select orders_view.id, orders_view.user_id, users.firstname, users.email, orders_view.updated, items.name, orders_content.item_quant
from orders_view 
join users on orders_view.user_id = users.id
join orders_content on orders_view.id = orders_content.order_id 
join items on orders_content.item_id = items.id
where (orders_view.status_id = 3);

-- 5 Вернуть список топовых пользователей (топ 10) с максимальным количеством покупок и совокупной суммой покупок

select users.id, users.firstname, users.lastname, users.email, SUM(orders_content.item_quant) as total_items, SUM(orders_view.order_sum) as total_sum
from orders_content
join orders_view  on orders_view .id =  orders_content.order_id
join users on users.id = orders_view .user_id
group by users.id
ORDER by total_items desc, total_sum desc; 
