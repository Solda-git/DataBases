/* домашняя работа к занятию № 4
 * работа над операциями CRUD  в DML
 * Работаем с БД VK_Sol
 */ 
Use vk_sol;
/*  * Задание 1. INSERT
 * Констркуция 1
добавим в таблицу communities запись:
  */

-- INSERT INTO communities (name)
-- VALUES ('Животные');

-- добавим записи в таблицу users
insert ignore into users (firstname, lastname, email, phone, is_deleted)
values ('Иван','Иванов','ivan@mail.ru',Null,default);


INSERT ignore INTO vk_sol.users
(firstname, lastname, email, phone)
VALUES('Петр', 'Петров', 'petrov@mail.ru', 0);

-- пакетная вставка
insert ignore into users (firstname, lastname, email, phone, is_deleted) 
values
	('Николай','Иванов','ivanov1@mail.ru',Null,default),
	('Петр','Иванов','ivanov3@mail.ru',Null,default),
	('Дмитрий','Иванов','ivanov2@mail.ru',Null,default),
	('Василий','Иванов','ivanov4@mail.ru',Null,default),
	('Алексей','Иванов','ivanov5@mail.ru',Null,default);
insert ignore into users (firstname, lastname, email, phone, is_deleted) 
values
    ('Алексей','Иванов','ivanov6@mail.ru',Null,default),
    ('Алексей','Иванов','ivanov7@mail.ru',Null,default),
    ('Алексей','Иванов','ivanov8@mail.ru',Null,default);
   
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
 * Констркуция 2
 */
insert ignore into users 
set 
	firstname = 'Александр',
	lastname = 'Александр',
	email = 'alexalex@mail.ru';


/*  INSERT
 * Констркуция 3
 * скопируем новые добавленные записи (id > 100 )  таблицы users
 * в сходную по структуре БД temp2 за исключением столбца is_deleted
 */
insert into temp2.users (firstname, lastname, email, phone)
select firstname, lastname, email, phone from vk_sol.users
where id > 100;

/*
SELECT * FROM communities
order by id;
*/
-- проверка выполнения insert select задачи выше
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


/*  * Задание 2. UPDATE
 * Констркуция 1
 */

-- ПОЛЬЗОВАТЕЛИ 105, 108 и 109 приняли приглашение
update friend_requests 
set 
	`status` = 'approved',
	confirmed_at = now()
where `initiator_user_id` = 101 and `target_user_id` in (105, 108, 109);
-- ПОЛЬЗОВАТЕЛЬ 110 отклонил приглашение
update friend_requests 
set `status` = 'declined'
where `initiator_user_id` = 101 and `target_user_id` = 110;
-- проверка
select * from friend_requests;

/*  * Задание 3. DELETE
 * Констркуция 1
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


/*  * Задание 4. TRUNCATE
 */

truncate table friend_requests




