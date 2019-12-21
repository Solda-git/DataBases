/*
* �������� ������� � ������� � 7
*  ���� �������� ��������
*/
use temp;
/*
1.	��������� ������ ������������� users, ������� ����������� ���� �� ���� 
����� orders � �������� ��������.
*/

select * from users
where exists (select 1 from orders where users.id = orders.user_id)

/*
2.	�������� ������ ������� products � �������� catalogs, ������� ������������� 
������.
*/

select products.id, products.name as Product, catalogs.name as Category
from products, catalogs
where products.catalog_id = catalogs.id


/*
3.	(�� �������) ����� ������� ������� ������ flights (id, from, to) � ������� 
������� cities (label, name). ���� from, to � label �������� ���������� �������� 
�������, ���� name � �������. �������� ������ ������ flights � �������� ���������� 
�������.
*/


select flights.id, c1.name, c2.name
from flights
left join cities as c1
on c1.label = flights.from_city
left join cities as c2
on c2.label = flights.to_city
order by flights.id


