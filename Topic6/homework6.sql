use vk;

select sum(count_id) as counter, user_id -- �������� ������������ ����� �� ������ � ������� �� ��������� ������������
from 
(				-- ���� ������ ����� ������� �� ��������� ������������ (id = 1)
( select count(id) as count_id, to_user_id as user_id  from messages where (from_user_id = 1) and (to_user_id in
				-- ���� ������ ������
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
				-- ���� ������ �� ������	
	( select count(id) as count_id, from_user_id as user_id  from messages where (to_user_id = 1) and (from_user_id in
				-- ���� ������ ������
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

/* 2. ���������� ����� ���������� ������, ������� �������� ������������ ������ 10 ���.
*/

-- ������� ����� �� ������ ����� � ������� ��
select count(id) from likes where media_id in (
		-- ������� �������������� ����� ������ �������������
		select id from media 
		where user_id in (
					-- ������� ������ �������������
					select user_id 	from profiles
					where timestampdiff(YEAR,birthday,now()) < 10
						 )
				 					   )
				 
/* 3.	- ���������� ��� ������ �������� ������ (�����) - ������� ��� �������?
*/
				 					   
select count(likes.id), profiles.gender
from likes, profiles
where likes.user_id = profiles.user_id
group by profiles.gender