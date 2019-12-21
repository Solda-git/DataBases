/*
 * ����������, ����������, ���������� � �����������
 */


/* ������� �1
����� � ������� users ���� created_at � updated_at ��������� ��������������. ��������� �� �������� ����� � ��������.
**/


-- ����������
use vk_sol;
SELECT * FROM users;

alter table users add created_at datetime,  add updated_at datetime;
-- ����������
update users set created_at = now(), updated_at = now();
-- ��������
select * from users;


/*������� �2
 * ������� users ���� �������� ��������������. ������ created_at � updated_at ���� ������ 
 * ����� VARCHAR � � ��� ������ ����� ���������� �������� � ������� "20.10.2017 8:10".
 * ����������  ������������� ���� � ���� DATETIME, �������� �������� ����� ��������.
*/
-- ����������
alter table users MODIFY created_at VARCHAR(20), MODIFY updated_at VARCHAR(20);
update users set created_at = '20.10.2017 8:10', updated_at = '20.10.2017 8:10';
select * from users;
-- ����������
alter table users add created_at_new datetime, add updated_at_new datetime;
update users set created_at_new = STR_TO_DATE(created_at,'%d.%m.%Y %h:%i:%s'), updated_at_new = STR_TO_DATE(updated_at,'%d.%m.%Y %h:%i:%s');
alter table users drop column created_at, drop column  updated_at; 
-- ��������
select * from users;

/* ������� � 3
 * � ������� ��������� ������� storehouses_products � ���� value ����� ����������� ����� 
 * ������ �����: 0, ���� ����� ���������� � ���� ����, ���� �� ������ ������� ������. 
 * ���������� ������������� ������ ����� �������, ����� ��� ���������� � ������� ���������� 
 * �������� value. ������, ������� ������ ������ ���������� � �����, ����� ���� �������.
 * 
 */

/* ����������
 * �������� � �� temp  ������� storehouses_products � ������:
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
-- �������� ���������� 
insert into storehouses_products (name, value) values
		('Product 1', 0),
		('Product 2', 2500),
		('Product 3', 0),
		('Product 4', 30),
		('Product 5', 500),
		('Product 6', 1);
	
-- ���������� � ��������

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


/* ������� � 4 
 * (�� �������) �� ������� users ���������� ������� �������������, ���������� � 
 * ������� � ���. ������ ������ � ���� ������ ���������� �������� ('may', 'august')
 * 
 */
use vk_sol;

select id, firstname, lastname, birth from users
where monthname(birth) in ('may','august');


/* ������� � 5
 * (�� �������) �� ������� catalogs ����������� ������ ��� ������ �������. 
 * SELECT * FROM catalogs WHERE id IN (5, 1, 2); 
 * ������������ ������ � �������, �������� � ������ IN.
 */
-- ����������
use temp;
drop table if exists catalogs;
create table temp.catalogs (
	id SERIAL primary key,
	name varchar(25)
	) CHARACTER SET = 'utf8';

select * from catalogs;
truncate table temp.catalogs; 
insert into catalogs (id, name) values
	(1, '����������� �����'),
	(2, '����������'),
	(3, '������� �����'),
	(4, '����������� ������'),
	(5, '����������');
select * from catalogs; 
-- ���������� � ��������

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
 * ���������� �������
*/

/* ������� �1
* ����������� ������� ������� ������������� � ������� users
**/
-- �������
select avg((TO_DAYS(NOW()) - TO_DAYS(birth))/365.25) as age 
	from users;
	
/* ������� �2
* ����������� ���������� ���� ��������, ������� ���������� �� ������ �� ���� ������. 
* ������� ������, ��� ���������� ��� ������ �������� ����, � �� ���� ��������.
*/
-- �������
select weekdays, count(weekdays) from 
(select DAYOFWEEK(STR_TO_DATE(concat(date_format (birth, '%d.%m.'), date_format(now(),'%Y')),'%d.%m.%Y')) as weekdays
 from users ) as t 
group by weekdays

/* ������� �3
 * (�� �������) ����������� ������������ ����� � ������� �������
*/
-- ����������
use temp;
create table tmp 
	(value tinyint);
insert into tmp values (1),(2),(3),(4),(5);
-- �������
select round (pow(10,sum(log10(value))),0) 
from tmp;


-- �������