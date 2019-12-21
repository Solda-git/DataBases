/* �������� ������ � ������� � 4
 * ������ ��� ���������� CRUD  � DML
 * �������� � �� VK_Sol
 */ 
Use vk_sol;
/*  * ������� 1. INSERT
 * ����������� 1
������� � ������� communities ������:
  */

-- INSERT INTO communities (name)
-- VALUES ('��������');

-- ������� ������ � ������� users
insert ignore into users (firstname, lastname, email, phone, is_deleted)
values ('����','������','ivan@mail.ru',Null,default);


INSERT ignore INTO vk_sol.users
(firstname, lastname, email, phone)
VALUES('����', '������', 'petrov@mail.ru', 0);

-- �������� �������
insert ignore into users (firstname, lastname, email, phone, is_deleted) 
values
	('�������','������','ivanov1@mail.ru',Null,default),
	('����','������','ivanov3@mail.ru',Null,default),
	('�������','������','ivanov2@mail.ru',Null,default),
	('�������','������','ivanov4@mail.ru',Null,default),
	('�������','������','ivanov5@mail.ru',Null,default);
insert ignore into users (firstname, lastname, email, phone, is_deleted) 
values
    ('�������','������','ivanov6@mail.ru',Null,default),
    ('�������','������','ivanov7@mail.ru',Null,default),
    ('�������','������','ivanov8@mail.ru',Null,default);
   
insert ignore into friend_requests (`initiator_user_id`, `target_user_id`, `status`)
VALUES		
		(101, 105, 'requested'),
		(101, 108, 'requested'),
		(101, 109, 'requested'),
		(101, 110, 'requested'),
		(101, 111, 'requested'),
		(101, 1112, 'requested');
		
		select * from users
		where id > 100;
		
/*  INSERT
 * ����������� 2
 */
insert ignore into users 
set 
	firstname = '���������',
	lastname = '���������',
	email = 'alexalex@mail.ru';


/*  INSERT
 * ����������� 3
 * ��������� ����� ����������� ������ (id > 100 )  ������� users
 * � ������� �� ��������� �� temp2 �� ����������� ������� is_deleted
 */
insert into temp2.users (firstname, lastname, email, phone)
select firstname, lastname, email, phone from vk_sol.users
where id > 100;

/*
SELECT * FROM communities
order by id;
*/
-- �������� ���������� insert select ������ ����
SELECT id, firstname, lastname, email, phone
FROM temp2.users
where id > 1000;

select firstname, lastname
from users
where id > 100;

select DISTINCT firstname, lastname
from users
where id > 100 or id in (10,20,30,40,50)
limit 5
offset 0
;


/*  * ������� 2. UPDATE
 * ����������� 1
 */

-- ������������ 105, 108 � 109 ������� �����������
update friend_requests 
set 
	`status` = 'approved',
	confirmed_at = now()
where `initiator_user_id` = 101 and `target_user_id` in (105, 108, 109);
-- ������������ 110 �������� �����������
update friend_requests 
set `status` = 'declined'
where `initiator_user_id` = 101 and `target_user_id` = 110;
-- ��������
select * from friend_requests;

/*  * ������� 3. DELETE
 * ����������� 1
 */

insert into `messages` (from_user_id, to_user_id, body, created_at) 
values 
('101','105','message 1.......', now());

insert into `messages` (from_user_id, to_user_id, body, created_at) 
values 
(101,108,'message 2................', now()),
(105,109,'message 3..', default),
(110,101,'message 4..............', default),
(111,112,'message 5........', default),
(108,109,'message 6...........', now()),
(109,112,'message 7...................', now());

 delete from `messages`
 where from_user_id = 101 and to_user_id = 108


/*  * ������� 4. TRUNCATE
 */

truncate table friend_requests




