/*�������� ���� ������  KW-shop - �� ��� �������� ���������� ����� ������ 
 * ������ ������� ������� Knitted World  */
DROP DATABASE IF EXISTS KW_shop;
CREATE DATABASE IF NOT EXISTS KW_shop;
USE KW_shop;

/*�������� ������� �������� �������� "������������"
��������� ������ ������ ������������ �����������, ��������������, �������� ����������
� ������������ ��� ����������� ���������� �������, � ����� ���������� ���������� �� 
������� ��� ���������� ��� ������������ � ������� ������������� ��������
*/
/* �������� ������� �������� "������������" - users - �������� ����, ����������� ��� 
 * �����������, �������������� ������������������ �������������
 **/
DROP TABLE IF EXISTS users;
CREATE TABLE users (
	id SERIAL PRIMARY KEY, 				-- SERIAL = BIGINT UNSIGNED NOT NULL AUTO_INCREMENT UNIQUE
    firstname VARCHAR(50) NOT NULL,		-- ���
    lastname VARCHAR(50), 				-- �������
    email VARCHAR(120) UNIQUE NOT NULL, -- ����������� �����
    phone BIGINT UNIQUE NOT NULL, 		-- ����� ���������� ��������
    basket_id BIGINT UNSIGNED UNIQUE,	-- ����� �������. ������� ���� ����� �������� ����� �������� ��������������� �������
    INDEX users_phone_idx(phone), 		-- ������ �� ���� ���. ��������
    INDEX users_firstname_lastname_idx(firstname, lastname), -- ������ �� �����: ���, �������
    INDEX users_email_idx(email) 		-- ������ �� ���� ����������� �����
);

/*�������� �������������� ������� Profile �������� �������� "������������".
��������� ������ ������������ �������� ���������� � ������������ ��� ����������� ���������� 
�������, � ����� ���������� ���������� �� ������� ��� ���������� ��� ������������ � ������� 
������������� ��������
**/
DROP TABLE IF EXISTS user_profiles;
CREATE TABLE user_profiles (
	id BIGINT UNSIGNED UNIQUE primary key,
	sex ENUM ('m', 'f'), 				-- ���
	birthday DATE,						-- ���� ��������
	age SMALLINT UNSIGNED,				-- �������
	hometown VARCHAR(100),				-- �����
    address VARCHAR(255),				-- �����
    status ENUM ('registred', 'active', 'deleted'),
    created DATETIME DEFAULT NOW(),		-- �������� ����� (�������� ������)
    /* �������� ��������
     * 'registred' - ������������������ ������������
     * 'active' - �������� ������������, ����������� ���� ��� ��������� �������
     * 'deleted' - ������������, �� �����-�� �������� ���������� ��� ��������� (������ � ������� ������������)
     */
    FOREIGN KEY (id) REFERENCES users(id)
    	ON UPDATE CASCADE 				-- ��������� ����������
    	ON DELETE RESTRICT				-- �������� ���������
);

/* �������� ������ �������� �������� "�����" � ��������� ����������� �������� "�������"
 * ������� - ��� ������������� ��������, ����������� ���������������� ����� ���������
 * �������:
 * -->���������| (������� categories)
 * 			   --> ������������|(������� subcategories)
 * 								--> ����� (������� items)	
 */
/*
 * �������� ������� �������� ������ �������� �������� - categories
 * ������� ��������:
 * ������, �������, ���������
 * */
DROP TABLE IF EXISTS categories;
CREATE TABLE categories (
	id SERIAL primary key,
	name varchar(25) NOT NULL,
	description varchar(255) 		
);

/*
 * �������� ������� ������� ������ �������� �������� - subcategories
 * ������� ������������ (��� ��������� "�������"):
 * �����, ��������, ����������
 * */
DROP TABLE IF EXISTS subcategories;
CREATE TABLE subcategories (
	id SERIAL primary key,
	name varchar(25) NOT NULL,
	description varchar(255), 
	cat_id BIGINT UNSIGNED NOT NULL,
	-- �������
 	index subcat_cat_idx (cat_id),
	-- ������� �����
	FOREIGN KEY (cat_id) REFERENCES categories(id)
 		ON UPDATE CASCADE 		
	   	ON DELETE RESTRICT 
);

/*
 * �������� �������, ���������� ��������� ������ �������� �������� - items.
 * �������� ��� ��������� �������������� ������: ������, ������ �� ����, 
 * ������������� ������������
 * */
DROP TABLE IF EXISTS items;
CREATE TABLE items (
	id SERIAL primary key,
	name varchar(25) NOT NULL,
	description varchar(255), 
	subcat_id BIGINT UNSIGNED NOT NULL,
	item_size TINYINT unsigned,
	pic_id BIGINT UNSIGNED NOT NULL, /* - ������ �� �������� galary, ������� ����� ���������� ����
			����� �������� ������� galary, ���������� ��������� ������� items ������������ ����������� 
			� ������� ������ �� ���� pic_ID
	*/
	created DATETIME DEFAULT NOW(),
	-- �������
	index item_subcat_idx (subcat_id),
	index item_name_idx (name),
	index item_pic_idx (pic_id),
	-- ������� �����
	FOREIGN KEY (subcat_id) REFERENCES subcategories(id)
		ON UPDATE CASCADE 		
    	ON DELETE RESTRICT
);

/*
 * �������� �������� "�����-����", ��������� �� ���� ������:
 * pricelists � prices
 * 
 */
 /* �������� ������� pricelists, ���������� ������������ �����������
  * ���������� �������������� ������������ 1 ��������� - �������, ������
  * ������������ ������������� ����������� ������������� ���������� �����-
  * ������
  */
DROP TABLE IF EXISTS pricelists;
CREATE TABLE IF NOT EXISTS pricelists (
	id SERIAL primary key,
	name varchar(100),
	active BINARY
);

 /*�������� ������� prices, ���������� ����������� ���� ���� ������� ��� �������
  * ��������� ����������
  * 
  */
DROP TABLE IF EXISTS prises;
CREATE TABLE IF NOT EXISTS prises (
	pricelist_id BIGINT UNSIGNED NOT NULL,
	item_id BIGINT UNSIGNED NOT NULL,
	price INT UNSIGNED NOT NULL,
	start_date DATETIME NOT NULL DEFAULT NOW(),
	finish_date DATETIME NOT NULL,
	-- �����
	PRIMARY KEY (pricelist_id, item_id),
	FOREIGN KEY (item_id) REFERENCES items(id),
	FOREIGN KEY (pricelist_id) REFERENCES pricelists(id),
	-- �������
	INDEX prices_item_idx (item_id)
);

/* �������� �������� "�����" 
 * 
  * free_quant - ���������� ������, ��������� � ��������;
  * reserved_quant - ���������� ������, ����������������� ��� ������; 
  * in_prod_quant - ���������� ������ � ������������.
  * ��������� � �������� items: 1-1
  */
DROP TABLE IF EXISTS warehouse;
CREATE TABLE IF NOT EXISTS warehouse(
	id BIGINT UNSIGNED UNIQUE primary key,
	free_quant INTEGER DEFAULT 0,
	reserved_quant INTEGER DEFAULT 0,
	in_prod_quant INTEGER DEFAULT 0,
	-- ������� ����
	FOREIGN KEY (id) REFERENCES items(id)
    	ON UPDATE CASCADE 				
    	ON DELETE RESTRICT	
);

/* �������� �������� "�������"
 * ��� ������ ������������ ����� ������������ �� ����� �����
 * �������. 
 * ��������� � �������� users: 1-1
 */
DROP TABLE IF EXISTS baskets;
CREATE TABLE IF NOT EXISTS baskets(
	id SERIAL primary key, -- ������ � users(basket_id)
	item_id BIGINT UNSIGNED NOT NULL,
	item_quant_ INT UNSIGNED NOT NULL,
	-- ������� ����
	FOREIGN KEY (item_id) REFERENCES items(id)
);

/*
 * �� ������ ����� ���������� �������� ����������� ����������� � ������� users
 * �� ����� basket_id 
 */
ALTER TABLE users ADD CONSTRAINT FOREIGN KEY users_basket (basket_id) REFERENCES baskets(id);

/* �������� �������� "�����"
 * ������� �� ������ statuses � orders 
*/
/* �������� ������� statuses 
 *  ��������� �������: ��������, �������, � ������������, ����� � ��������, 
 *  ���������, ���������, ��������, ������� 
 */
DROP TABLE IF EXISTS statuses;
CREATE TABLE IF NOT EXISTS  statuses(
	id SERIAL primary key, 
	status varchar (20)
);

/* �������� ������� orders (������������)
 * ������ �� ������� �� ���������, ����������� ������������ �� ������
 * status, begin_date � end_date
 *
 * �������� �������� �� ��������� ��������������� � ������ �� ���������� 
 * (���������, �������� � �������� ��������������) ������� � ��������� �������
 * (������� ����). 
 */
DROP TABLE IF EXISTS orders;
CREATE TABLE IF NOT EXISTS orders(
	id BIGINT UNSIGNED NOT NULL,
	status_id BIGINT UNSIGNED NOT NULL,
	begin_date DATETIME NOT NULL DEFAULT NOW(),
	end_date DATETIME NOT NULL,
	item_id BIGINT UNSIGNED NOT NULL, -- INDEX
	item_quant INT UNSIGNED NOT NULL,
	item_cost INT UNSIGNED NOT NULL,
	-- �����
	PRIMARY KEY (id, begin_date),
	FOREIGN KEY (item_ID) REFERENCES items(id),
	FOREIGN KEY (status_id) REFERENCES statuses(id),
	-- �������
	INDEX orders_item_idx (item_id)
	
);

/* �������� �������� "�����"
 * ����������� ������� ������ ������� user_id, ����� ������,
 * item_id, �� �������� ��������� �����, � ����� ������ �� ����.  
 * ������ ��������� ��������� �� ������������� ������ (�� ����� ������ 
 * �� ������ �����). ����� �������� ���������� ������������ �� ����
 * ���������������� ������-������ ����������
 */
DROP TABLE IF EXISTS user_refs;
CREATE TABLE IF NOT EXISTS user_refs(
		id SERIAL primary key, 
		user_id BIGINT UNSIGNED NOT NULL,
		item_id BIGINT UNSIGNED DEFAULT NULL,
		pic_id BIGINT UNSIGNED DEFAULT NULL, /* - ������ �� �������� galary, ������� ����� ���������� ����
			����� �������� ������� galary, ���������� ��������� ������� items ������������ ����������� 
			� ������� ������ �� ���� pic_ID
		*/
		-- �����
		FOREIGN KEY (user_id) REFERENCES users(id),
	    FOREIGN KEY (item_id) REFERENCES items(id),
		-- �������
		INDEX ref_user_idx(user_id),
		INDEX ref_item_idx(item_id),
		INDEX ref_pic_idx(pic_id)
);

/* �������� �������� "������������� ��������". ������� discounts
 * ��� ���� Discounts ��������� ��������:
 * 'item' - ������ �� ���������� �������� �������
 * 'subcat' - ������ �� ������������ ������
 * 'cat' - ������ �� ������������ ������
 * 'user' - ������, ��������������� ����������� ������������
 * 'all' - ������ "���� �� ���"  
 */

DROP TABLE IF EXISTS discounts; 
CREATE TABLE IF NOT EXISTS discounts (
		id SERIAL primary key,
		pricelist_id BIGINT UNSIGNED NOT NULL, -- ������ ��������������� ������ �� ������������ ��������� 
		disc_type ENUM ('item','subcat','cat','user','all'),
		start_date DATETIME, -- ���� ������ �������� ������
		finish_date DATETIME,  -- ���� ��������� �������� ������
		object_id BIGINT UNSIGNED, /* ������ �������������� ������ (�������������
					������������/���������/������������/������)
					���� ���� NULL - ������ disc_type = 'all'
					*/
		disc_value TINYINT DEFAULT 0, /* ������� ������ (%). ����������� ����� ������. ���������� ������ ��� ������� 
								������������� ���� �� ����� ��� ������������ ������
							*/
		-- ������� �����
		FOREIGN KEY (pricelist_id) REFERENCES pricelists(id),
		-- �������
		INDEX discount_obj_idx(object_id),
		INDEX discount_pricelist_idx(pricelist_id) 
);

/* �������� �������� "�����" (������� 'likes' 
 * ������������ ������������ � ����������� ������ � ����������
 * ���� �������
*/
DROP TABLE IF EXISTS likes;
CREATE TABLE IF NOT EXISTS likes (

		user_id BIGINT UNSIGNED NOT NULL,
		item_id BIGINT UNSIGNED NOT NULL,
		created_at DATETIME DEFAULT NOW(),
		-- ����� 
		primary key (item_id, user_id),
		FOREIGN key (item_id) REFERENCES items(id),
		FOREIGN key (user_id) REFERENCES users(id),
		-- �������
		INDEX likes_item_idx (item_id),
		INDEX likes_user_idx (user_id)
);

/* �������� �������� "�������"
 * ������ ������� � ��������������� ���������� � �������� �� �� ��������
 * �������� ���� pic_type �� ����������:
 * portfolio - ��� �������� ���������� �������� �������� �������
 * reference - ��� �������� ���������������� ���������� ��� �������
 */
DROP TABLE IF EXISTS galery;
CREATE TABLE IF NOT EXISTS galery(
		id SERIAL primary key,
		pic_type ENUM ('profile','reference'),
		pic_path varchar(255)
);

/* ���������� ����������� ������, ����������� �� ������� �����������
 * 
 * ������� items
 */
ALTER TABLE items ADD CONSTRAINT foreign key (pic_id) REFERENCES galery(id);
/** 
 * ������� references
 */
ALTER TABLE user_refs ADD CONSTRAINT foreign key (pic_id) REFERENCES galery(id);
