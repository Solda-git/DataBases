use vk;

select sum(count_id) as counter, user_id -- итоговое суммирование писем от друзей и друзьям от заданного пользователя
from 
(				-- блок поиска писем друзьям от заданного пользователя (id = 1)
( select count(id) as count_id, to_user_id as user_id  from messages where (from_user_id = 1) and (to_user_id in
				-- блок поиска друзей
				(
					select target_user_id as id from  friend_requests 
					WHERE (initiator_user_id = 1) and (status = 'approved')
					UNION
					select initiator_user_id as id from friend_requests 
					WHERE (target_user_id = 1) and (status = 'approved')
				)	
	)
	group by user_id 
)
	union all
				-- блок поиска от друзей	
	( select count(id) as count_id, from_user_id as user_id  from messages where (to_user_id = 1) and (from_user_id in
				-- блок поиска друзей
				(
					select target_user_id  as id from  friend_requests 
					WHERE (initiator_user_id = 1) and (status = 'approved')
					UNION
					select initiator_user_id as id from friend_requests 
					WHERE (target_user_id = 1) and (status = 'approved')
				) 																	
	)
	group by user_id 
) 
) as t
group by user_id
order by counter desc;

/* 2. Подсчитать общее количество лайков, которые получили пользователи младше 10 лет.
*/

-- находим лайки по нужным медиа и считаем их
select count(id) from likes where media_id in (
		-- находим идентификаторы медиа нужных пользователей
		select id from media 
		where user_id in (
					-- находим нужных пользователей
					select user_id 	from profiles
					where timestampdiff(YEAR,birthday,now()) < 10
						 )
				 					   )
				 
/* 3.	- Определить кто больше поставил лайков (всего) - мужчины или женщины?
*/
				 					   
select count(likes.id), profiles.gender
from likes, profiles
where likes.user_id = profiles.user_id
group by profiles.gender