/*
* �������� ������� � ������� � 9
*  ���� �����������, ����������, ��������������
*/



/*
 1. � ���� ������ shop � sample ������������ ���� � �� �� �������, ������� 
 ���� ������. ����������� ������ id = 1 �� ������� shop.users � ������� 
 sample.users. ����������� ����������.
*/

-- ����������
SELECT  * from sample.users;
SELECT  * from shop.users;

-- ����������
START TRANSACTION;
insert into sample.users select * from shop.users where id = 1;
delete from shop.users where id = 1;
COMMIT;

-- ��������
select * from sample.users;
select * from shop.users;

/*
 2.	�������� �������������, ������� ������� �������� name �������� ������� 
 �� ������� products � ��������������� �������� �������� name �� ������� 
 catalogs.
*/

-- ����������
create VIEW prod_view (prod_name, cat_name)
AS
select products.name, catalogs.name FROM
products join catalogs on products.catalog_id = catalogs.id 

-- ��������
select * from prod_view 

/*
3.	�� �������) ����� ������� ������� � ����������� ����� created_at. � ���
 ��������� ���������� ����������� ������ �� ������ 2018 ���� '2018-08-01', 
 '2016-08-04', '2018-08-16' � 2018-08-17. ��������� ������, ������� �������
  ������ ������ ��� �� ������, ��������� � �������� ���� �������� 1, ���� 
  ���� ������������ � �������� ������� � 0, ���� ��� �����������.
*/
-- ����������
select * from vk.likes;
update vk.likes set created_at = '2018-08-01' where id = 1;

update vk.likes set created_at = '2018-08-04' where id = 2;
update vk.likes set created_at = '2018-08-16' where id = 3;

update vk.likes set created_at = '2018-08-17' where id = 4;



create TABLE tdates(tdate DATE);
delete from tdates;
insert  into tdates(tdate) values ('2018-08-01'), ('2018-08-02'), ('2018-08-03'), ('2018-08-04'), ('2018-08-05'),
('2018-08-06'), ('2018-08-07'), ('2018-08-08'), ('2018-08-09'), ('2018-08-10'),
('2018-08-11'), ('2018-08-12'), ('2018-08-13'), ('2018-08-14'), ('2018-08-15'),
('2018-08-16'), ('2018-08-17'), ('2018-08-18'), ('2018-08-19'), ('2018-08-20'),
('2018-08-21'), ('2018-08-22'), ('2018-08-23'), ('2018-08-24'), ('2018-08-25'),
('2018-08-26'), ('2018-08-27'), ('2018-08-28'), ('2018-08-29'), ('2018-08-30'), ('2018-08-31');
select * from tdates;
-- ����������
-- ������� 1
select t1.tdate, if (t1.column2 +  t2.column2, 1, 0 ) as col2 from
(select tdate, 0 as column2
from tdates left join vk.likes on tdates.tdate = vk.likes.created_at) as t1
left JOIN
(select tdate, 1 as column2
from tdates join vk.likes on tdates.tdate = vk.likes.created_at) as t2 
on t1.tdate = t2.tdate
order by t1.tdate;

-- ������� 2

(select tdate, 0 AS column2
from tdates left join vk.likes on tdates.tdate = vk.likes.created_at
WHERE vk.likes.created_at is NULL
)
union 
(
select tdate, 1 as column2
from tdates join vk.likes 
on tdates.tdate = vk.likes.created_at
)
order by tdate;


-- �������� 
drop TABLE tdates;
/*
4.	(�� �������) ����� ������� ����� ������� � ����������� ����� created_at.
 �������� ������, ������� ������� ���������� ������ �� �������, �������� 
 ������ 5 ����� ������ �������.
*/
/*
 * �������� � ������� orders �� �������
 * ����������
 */
insert into sample.orders (user_id, created_at, updated_at) values 
(1,'2018-08-01','2018-08-01'),
(1,'2018-08-02','2018-08-02'),
(1,'2018-08-03','2018-08-03'),
(1,'2018-08-04','2018-08-04'),
(1,'2018-08-05','2018-08-05'),
(1,'2018-08-06','2018-08-06'),
(1,'2018-08-07','2018-08-07'),
(1,'2018-08-08','2018-08-08'),
(1,'2018-08-09','2018-08-09'),
(1,'2018-08-10','2018-08-10'),
(1,'2018-08-11','2018-08-11'),
(1,'2018-08-12','2018-08-12'),
(1,'2018-08-13','2018-08-13');

-- ���������� 

delete from sample.orders where id not IN
-(select * from (
	select id 
	from sample.orders 
	order by created_at DESC 
	limit 5
				) AS id
);

-- ��������
SELECT * from sample.orders

/*
*  ���� ������������������ MySQL�
*/
/*
1.	�������� ���� ������������� ������� ����� ������ � ���� ������ shop. 
������� ������������ shop_read ������ ���� �������� ������ ������� �� ������ 
������, ������� ������������ shop � ����� �������� � �������� ���� ������ shop.
*/

--  ���������� 
create user shop_read identified with sha256_password by '123456';
create user shop identified with sha256_password by '123456';

grant usage, select  on shop.* to 'shop_read'@'%'; 
grant ALL  on shop.* to 'shop'@'%';

-- ��������

select * from mysql.user;


/*
2.	(�� �������) ����� ������� ������� accounts ���������� ��� ������� id, 
name, password, ���������� ��������� ����, ��� ������������ � ��� ������. 
�������� ������������� username ������� accounts, ��������������� ������ �
 ������� id � name. �������� ������������ user_read, ������� �� �� ���� 
 ������� � ������� accounts, ������, ��� �� ��������� ������ �� ������������� 
 username.
�������� � �� temp
**/

-- ����������
use temp;

drop table if exists accounts;

create table if not exists accounts (
	id SERIAL primary key,
	name varchar (50),
	passwd varchar (50)
	);

insert into accounts (name, passwd) values ('user_read','');
create user shop identified with sha256_password by '123456';

-- ����������
drop view if exists username; 
create or replace view username (id, name) as select id, name from accounts;
create user user_read identified with sha256_password by '123456';
grant select on temp.username to 'user_read'@'%'; 

-- �������� ��� �������������� 'user_read'@'%' (� ��������)
select * from accounts;
/* ������ ������ 
 * 
ERROR 1142 (42000): SELECT command denied to user 'user_read'@'localhost' for table 'accounts'
*/

select * from username;

/*
 * ������ ���������
 * 
+----+-----------+
| id | name      |
+----+-----------+
|  1 | user_read |
+----+-----------+
1 row in set (0.00 sec)
 */

/*
*  ���� ��������� ��������� � �������, ���������
*/


/*
1.	�������� �������� ������� hello(), ������� ����� ���������� �����������, 
� ����������� �� �������� ������� �����. � 6:00 �� 12:00 ������� ������ 
���������� ����� "������ ����", � 12:00 �� 18:00 ������� ������ ����������
 ����� "������ ����", � 18:00 �� 00:00 � "������ �����", � 00:00 �� 6:00 � 
 "������ ����".
*/

-- ����������
SET @@time_zone = '+03:00'

-- ����������

drop procedure if exists hello;

create procedure hello()
BEGIN
	SET @mess = '';
	set  @cur_hour = hour (curtime());
	if  @cur_hour < 6 then set @mess = '������ ����';
		ELSEIF @cur_hour < 12 then  set @mess = '������ ����';
		ELSEIF @cur_hour < 18 then set @mess = '������ ����';
		ELSE set @mess = '������ �����';
	end if;
	select @mess; 
END;
-- ��������
call hello();
/*
2.	� ������� products ���� ��� ��������� ����: name � ��������� ������ � 
description � ��� ���������. ��������� ����������� ����� ����� ��� ���� �� ���. 
��������, ����� ��� ���� ��������� �������������� �������� NULL �����������. 
��������� ��������, ��������� ����, ����� ���� �� ���� ����� ��� ��� ���� ���� 
���������. ��� ������� ��������� ����� NULL-�������� ���������� �������� ��������.
*/
-- ����������
use shop;

select * from products;
-- ����������
drop TRIGGER if EXISTS products_check;


Create TRIGGER products_check before INSERT on products
	for each ROW
	BEGIN
		if (new.name is NULL) and (new.description is NULL)
			then SIGNAL SQLSTATE  '45000' SET MESSAGE_TEXT = 'Record must contain Name or Description not NULL value';
		end if;
	END;

drop TRIGGER if EXISTS products_check_update;


Create TRIGGER products_check_update before UPDATE on products
	for each ROW
	BEGIN
		if (new.name is NULL) and (new.description is NULL)
			then set new.name = old.name, new.description = old.description ;
		end if;
	END;

-- ��������
insert into shop.products (name, description, price, catalog_id, created_at, updated_at) VALUES
('Intel XEON  D-1602', '��������� Xenon, ����������� �� ��������� Intel', 15000,1, now(),now());
-- ��������
insert into shop.products (name, description, price, catalog_id, created_at, updated_at) VALUES
(NULL, '��������� Xenon, ����������� �� ��������� Intel', 16000,1, now(),now());
-- ��������
insert into shop.products (name, description, price, catalog_id, created_at, updated_at) VALUES
('Intel XEON  D-1622', NULL, 21500,1, now(),now());
-- ��������
insert into shop.products (name, description, price, catalog_id, created_at, updated_at) VALUES
(NULL, NULL, 10000,1, now(),now());
-- �� ��������, ������� ���������� ���������� !

select * from products;

update shop.products set name = null where id = 10;
-- �� ��������, ������� ������� ��������
update shop.products set name = null, description = NULL  where id = 8;
-- �� ��������, ������� ������� ��������
update shop.products set name = null where id = 8;
-- ��������

select * from products;

/*
3.	(�� �������) �������� �������� ������� ��� ���������� ������������� �����
 ���������. ������� ��������� ���������� ������������������ � ������� ����� 
 ����� ����� ���� ���������� �����. ����� ������� FIBONACCI(10) ������ ���������� 
 ����� 55.
 */

drop  function if exists FIBONACCI;


create function FIBONACCI(val int)
	returns bigint not DETERMINISTIC
	BEGIN
		
        declare cur int default 3; 
		declare fib_cur int default 1; 
		declare fib_prev int default 1;
	    declare temp int default 1;
	
		if val in (1,2) THEN RETURN 1;
		end if; 
		while cur <= val DO
			set temp = fib_prev, fib_prev = fib_cur, fib_cur = fib_cur + temp;
			set cur = cur + 1;
		end while;
 		RETURN fib_cur;
	END;


-- ��������

select FIBONACCI(1);

select FIBONACCI(2);

select FIBONACCI(3);


select FIBONACCI(4);

select FIBONACCI(5);

select FIBONACCI(6);

select FIBONACCI(7);

select FIBONACCI(8);

select FIBONACCI(9);

select FIBONACCI(10);
