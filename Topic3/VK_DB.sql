DROP DATABASE IF EXISTS vk_sol;
CREATE DATABASE vk_sol;
USE vk_sol;

DROP TABLE IF EXISTS users;
CREATE TABLE users (
	id SERIAL PRIMARY KEY, -- SERIAL = BIGINT UNSIGNED NOT NULL AUTO_INCREMENT UNIQUE
    firstname VARCHAR(50),
    lastname VARCHAR(50) COMMENT '������', -- COMMENT �� ������, ���� ��� �����������
    email VARCHAR(120) UNIQUE,
    phone BIGINT, 
    INDEX users_phone_idx(phone), -- ��� �������� �������?
    INDEX users_firstname_lastname_idx(firstname, lastname)
);

DROP TABLE IF EXISTS `profiles`;
CREATE TABLE `profiles` (
	user_id SERIAL PRIMARY KEY,
    gender CHAR(1),
    birthday DATE,
	photo_id BIGINT UNSIGNED NULL,
    created_at DATETIME DEFAULT NOW(),
    hometown VARCHAR(100),
    FOREIGN KEY (user_id) REFERENCES users(id) -- ��� �� ����� � �����?
    	ON UPDATE CASCADE -- ��� ��� ��������? ����� ��������?
    	ON DELETE restrict -- ��� ��� ��������? ����� ��������?
    -- , FOREIGN KEY (photo_id) REFERENCES media(id) -- ���� ����, �.�. ������� media ��� ���
);

DROP TABLE IF EXISTS messages;
CREATE TABLE messages (
	id SERIAL PRIMARY KEY,
	from_user_id BIGINT UNSIGNED NOT NULL,
    to_user_id BIGINT UNSIGNED NOT NULL,
    body TEXT,
    created_at DATETIME DEFAULT NOW(), -- ����� ����� ���� �� ��������� ��� ���� ��� �������
    INDEX messages_from_user_id (from_user_id),
    INDEX messages_to_user_id (to_user_id),
    FOREIGN KEY (from_user_id) REFERENCES users(id),
    FOREIGN KEY (to_user_id) REFERENCES users(id)
);

DROP TABLE IF EXISTS friend_requests;
CREATE TABLE friend_requests (
	-- id SERIAL PRIMARY KEY, -- �������� �� ����������� ���� (initiator_user_id, target_user_id)
	initiator_user_id BIGINT UNSIGNED NOT NULL,
    target_user_id BIGINT UNSIGNED NOT NULL,
    -- `status` TINYINT UNSIGNED,
    `status` ENUM('requested', 'approved', 'unfriended', 'declined'),
    -- `status` TINYINT UNSIGNED, -- � ���� ������ � ���� ������� �� �������� enum (0, 1, 2, 3...)
	requested_at DATETIME DEFAULT NOW(),
	confirmed_at DATETIME,
	
    PRIMARY KEY (initiator_user_id, target_user_id),
	INDEX (initiator_user_id), -- ������ ��� ������ ����� ������ ������ ����������� ������������
    INDEX (target_user_id),
    FOREIGN KEY (initiator_user_id) REFERENCES users(id),
    FOREIGN KEY (target_user_id) REFERENCES users(id)
);

DROP TABLE IF EXISTS communities;
CREATE TABLE communities(
	id SERIAL PRIMARY KEY,
	name VARCHAR(150),

	INDEX communities_name_idx(name)
);

DROP TABLE IF EXISTS users_communities;
CREATE TABLE users_communities(
	user_id BIGINT UNSIGNED NOT NULL,
	community_id BIGINT UNSIGNED NOT NULL,
  
	PRIMARY KEY (user_id, community_id), -- ����� �� ���� 2 ������� � ������������ � ����������
    FOREIGN KEY (user_id) REFERENCES users(id),
    FOREIGN KEY (community_id) REFERENCES communities(id)
);

DROP TABLE IF EXISTS media_types;
CREATE TABLE media_types(
	id SERIAL PRIMARY KEY,
    name VARCHAR(255) 
/*,
    created_at DATETIME DEFAULT NOW(),
    updated_at DATETIME DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP
*/
    -- ������� ����, ������� ������ ����� ������ (�������� ������)!
);

DROP TABLE IF EXISTS media;
CREATE TABLE media(
	id SERIAL PRIMARY KEY,
    media_type_id BIGINT UNSIGNED NOT NULL,
    user_id BIGINT UNSIGNED NOT NULL,
  	body text,
    filename VARCHAR(255),
    size INT,
	metadata JSON,
    created_at DATETIME DEFAULT NOW(),
    updated_at DATETIME DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,

    INDEX (user_id),
    FOREIGN KEY (user_id) REFERENCES users(id),
    FOREIGN KEY (media_type_id) REFERENCES media_types(id)
);

DROP TABLE IF EXISTS likes;
CREATE TABLE likes(
	id SERIAL PRIMARY KEY,
    user_id BIGINT UNSIGNED NOT NULL,
    media_id BIGINT UNSIGNED NOT NULL,
    created_at DATETIME DEFAULT NOW()

    -- PRIMARY KEY (user_id, media_id) � ����� ���� � ��� ������ id � �������� PK
  	-- ������� ���������� ��������� ���� ������, ������������ �� ��������� �� ���� ������������� (����., ��������� �� ������� �����-�� �������)  

/* ��������� ������, ����� ������� �������� � ER-���������
    , FOREIGN KEY (user_id) REFERENCES users(id)
    , FOREIGN KEY (media_id) REFERENCES media(id)
*/
);

DROP TABLE IF EXISTS `photo_albums`;
CREATE TABLE `photo_albums` (
	`id` SERIAL,
	`name` varchar(255) DEFAULT NULL,
    `user_id` BIGINT UNSIGNED DEFAULT NULL,

    FOREIGN KEY (user_id) REFERENCES users(id),
  	PRIMARY KEY (`id`)
);

/*
DROP TABLE IF EXISTS `photos`;
CREATE TABLE `photos` (
	id SERIAL PRIMARY KEY,
	`album_id` BIGINT unsigned NOT NULL,
	`media_id` BIGINT unsigned NOT NULL,

	FOREIGN KEY (album_id) REFERENCES photo_albums(id),
    FOREIGN KEY (media_id) REFERENCES media(id)
);
*/

ALTER TABLE vk_sol.likes ADD CONSTRAINT likes_FK FOREIGN KEY (media_id) REFERENCES vk_sol.media(id);
ALTER TABLE vk_sol.likes ADD CONSTRAINT likes_FK_1 FOREIGN KEY (user_id) REFERENCES vk_sol.users(id);
ALTER TABLE vk_sol.profiles ADD CONSTRAINT profiles_fk FOREIGN KEY (photo_id) REFERENCES vk_sol.media(id);

/* � ��������� �������, �.1 
 ����������� ��������� ���� ������ VK*/


alter table vk_sol.photo_albums add column media_id BIGINT unsigned NOT NULL;
alter table vk_sol.photo_albums add CONSTRAINT FOREIGN KEY (media_id) REFERENCES vk_sol.media(id);

DROP TABLE IF EXISTS like_types;
CREATE TABLE like_types(
	id SERIAL PRIMARY KEY,
	like_type ENUM ('like', 'heart', 'funny', 'wow', 'cry', 'diclike')
);
alter table vk_sol.likes add column like_type_id BIGINT unsigned NOT NULL;
alter table vk_sol.likes add CONSTRAINT FOREIGN KEY (like_type_id) REFERENCES vk_sol.like_types(id);

/* � ��������� �������, �.2 
���������� ��������� �� ��� ����������� ������������� ������ ��� �����������, ������ � �������������.
1. ��� ������ ����������� ��������� �� ������ - ������� likes
�������� ����������� ��� ������ ������������� � ���������:
2. ��� ������ ������������� - ������� likes_users
3. ��� ������ ��������� - ������� likes_mesages
*/
DROP TABLE IF EXISTS like_users;
CREATE TABLE like_users(
	id SERIAL PRIMARY KEY,
	user_id BIGINT UNSIGNED NOT NULL,
	whom_id BIGINT UNSIGNED NOT NULL, -- ���� ����
	like_type_id BIGINT UNSIGNED NOT NULL,
	created_at DATETIME DEFAULT NOW(),
	
	FOREIGN KEY (user_id) REFERENCES users(id),
	FOREIGN KEY (whom_id) REFERENCES users(id),
	FOREIGN KEY (like_type_id) REFERENCES like_types(id)
);

DROP TABLE IF EXISTS like_messages;
CREATE TABLE like_messages(
	id SERIAL PRIMARY KEY,
	user_id BIGINT UNSIGNED NOT NULL,
	message_id BIGINT UNSIGNED NOT NULL,
	like_type_id BIGINT UNSIGNED NOT NULL,
	created_at DATETIME DEFAULT NOW(),
	
	FOREIGN KEY (user_id) REFERENCES users(id),
	FOREIGN KEY (message_id) REFERENCES messages(id),
	FOREIGN KEY (like_type_id) REFERENCES like_types(id)
);

/*
��� ����� ������� �����, ����������� � ������ ��������, ����� ��������� � ������ ��������.
�������� ������, ��� ������� ��� ����� ��������� �� � ����� ������� likes. � ����� ������ ���� �� ���������� ���� 
��������� ������� likes ���������������� ������ � ������� ������������� �����������, ������������ NULL. 
����� ���������� �������������� �������, � ����� �� ����������� �������������� �������� ������ ������� ��������� ����.

 ������ ����� ��� ����� ����� ������������ ������ ���� ��� ������ ��������) 

 */
