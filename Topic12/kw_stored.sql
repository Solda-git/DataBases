
DELIMITER $$
$$
/*
 * работа с номенклатурой
 * 1. категории
 * 1.1 создание категории
 */
DROP PROCEDURE IF EXISTS KW_shop.sp_add_cat$$

CREATE PROCEDURE KW_shop.sp_add_cat(_name varchar(25), _descr varchar(255), out result_text varchar(100))
BEGIN
	declare _err varchar (255);
	declare CONTINUE HANDLER for SQLSTATE '23000' SET _err = 'Ошибка вставки';
	insert into categories (name, description)
	values (_name, _descr);
	if _err is not NULL THEN
	   set result_text = _err;
	end IF;
END$$

-- 1.2 изменение категории

DROP PROCEDURE IF EXISTS KW_shop.sp_edit_cat$$

CREATE PROCEDURE KW_shop.sp_edit_cat(_id BIGINT, _name varchar(25), _descr varchar(255), out result_text varchar(100))
BEGIN
	
	declare err_code varchar(100) DEFAULT NULL;
	DECLARE error_string varchar(100);
	
	DECLARE CONTINUE HANDLER for SQLEXCEPTION
	BEGIN
		GET stacked DIAGNOSTICS CONDITION 1
			err_code = RETURNED_SQLSTATE, error_string = MESSAGE_TEXT;
		set result_text := concat('Error occured. Code: ', err_code, '. Text: ', error_string);
	end;
	Update categories 
	SET name= _name, description = _descr
	where id = _id;
	if err_code is NULL THEN
		set result_text = 'Ok';
	end IF;
END$$

-- 1.3 удаление категории
drop PROCEDURE if EXISTS KW_shop.sp_del_cat$$

CREATE PROCEDURE KW_shop.sp_del_cat(_id BIGINT, out result_text varchar(100))
BEGIN
	
	DECLARE err_code varchar(100) DEFAULT NULL;
	DECLARE error_string varchar(100);
	DECLARE CONTINUE HANDLER for SQLEXCEPTION
	BEGIN
		GET stacked DIAGNOSTICS CONDITION 1
			err_code = RETURNED_SQLSTATE, error_string = MESSAGE_TEXT;
		set result_text := concat('Error occured. Code: ', err_code, '. Text: ', error_string);
	end;
	if exists (select id from subcategories where cat_id = _id) THEN	
		set result_text = 'Не могу удалить запись, так как существуют записи в зависимой таблице Subcategories.';
	else
		delete from categories 
		where id = _id;
		if err_code is NULL THEN
			set result_text = 'Ok';
		end IF;
	end IF;
END$$

/*
 * 2. подкатегории
 * 2.1 создание подкатегории
 */
DROP PROCEDURE IF EXISTS KW_shop.sp_add_subcat$$

CREATE PROCEDURE KW_shop.sp_add_subcat(_name varchar(25), _descr varchar(255), _cat_id bigint, out result_text varchar(100))
BEGIN
	declare _err varchar (255);
	declare CONTINUE HANDLER for SQLSTATE '23000' SET _err = 'Ошибка вставки';
	insert into subcategories (name, description, cat_id)
	values (_name, _descr, _cat_id);
	if _err is not NULL THEN
	   set result_text = _err;
	end IF;
END$$


-- 2.2 изменение подкатегории
DROP PROCEDURE IF EXISTS KW_shop.sp_edit_subcat$$

CREATE PROCEDURE KW_shop.sp_edit_subcat(_id BIGINT, _name varchar(25), _descr varchar(255), out result_text varchar(100))
BEGIN
	
	declare err_code varchar(100) DEFAULT NULL;
	DECLARE error_string varchar(100);
	
	DECLARE CONTINUE HANDLER for SQLEXCEPTION
	BEGIN
		GET stacked DIAGNOSTICS CONDITION 1
			err_code = RETURNED_SQLSTATE, error_string = MESSAGE_TEXT;
		set result_text := concat('Error occured. Code: ', err_code, '. Text: ', error_string);
	end;
	Update subcategories 
	SET name= _name, description = _descr
	where id = _id;
-- категории менять не предполагается
	if err_code is NULL THEN
		set result_text = 'Ok';
	end IF;
END$$

-- 2.3 удаление подкатегории
drop PROCEDURE if EXISTS KW_shop.sp_del_subcat$$

CREATE PROCEDURE KW_shop.sp_del_subcat(_id BIGINT, out result_text varchar(100))
BEGIN
	
	DECLARE err_code varchar(100) DEFAULT NULL;
	DECLARE error_string varchar(100);
	DECLARE CONTINUE HANDLER for SQLEXCEPTION
	BEGIN
		GET stacked DIAGNOSTICS CONDITION 1
			err_code = RETURNED_SQLSTATE, error_string = MESSAGE_TEXT;
		set result_text := concat('Error occured. Code: ', err_code, '. Text: ', error_string);
	end;
	if exists (select id from items where subcat_id = _id) THEN	
		set result_text = 'Не могу удалить запись, так как существуют записи в зависимой таблице Items.';
	else
		delete from subcategories 
		where id = _id;
		if err_code is NULL THEN
			set result_text = 'Ok';
		end IF;
	end IF;
END$$
/*
 * 3. товарная позиция/единица
 * 3.1 создание товарной позиции
 */
DROP PROCEDURE IF EXISTS KW_shop.sp_add_item$$

CREATE PROCEDURE KW_shop.sp_add_item(_name varchar(25), _descr varchar(255), _subcat_id bigint, _item_size tinyint, _pic_id bigint,  out result_text varchar(100))
BEGIN
	declare _err varchar(255);
	declare CONTINUE HANDLER for SQLSTATE '23000' SET _err = 'Ошибка вставки';
	insert into items (name, description, subcat_id, item_size, pic_id, created)
	values (_name, _descr, _subcat_id, _item_size, _pic_id, now() );
	if _err is not NULL THEN
	   set result_text = _err;
	end IF;
END$$

-- 3.2 изменением товарной позиции

DROP PROCEDURE IF EXISTS KW_shop.sp_edit_item$$

CREATE PROCEDURE KW_shop.sp_edit_item(_id BIGINT, _name varchar(25) , _descr varchar(255), _item_size TINYINT, _pic_id bigint, out result_text varchar(100))
BEGIN
	declare err_code varchar(100) DEFAULT NULL;
	DECLARE error_string varchar(100);
	
	DECLARE CONTINUE HANDLER for SQLEXCEPTION
	BEGIN
		GET stacked DIAGNOSTICS CONDITION 1
			err_code = RETURNED_SQLSTATE, error_string = MESSAGE_TEXT;
		set result_text := concat('Error occured. Code: ', err_code, '. Text: ', error_string);
	end;
	Update items 
	SET name = _name, description = _descr, item_size = _item_size, pic_id = _pic_id
	where id = _id;
-- подкатегории менять не предполагается
	if err_code is NULL THEN
		set result_text = 'Ok';
	end IF; 
END$$

-- 3.3 удаление товарной позиции
drop PROCEDURE if EXISTS KW_shop.sp_del_item$$

CREATE PROCEDURE KW_shop.sp_del_item(_id BIGINT, out result_text varchar(100))

-- не удалаяем, а деактивируем (active = FALSE)
BEGIN
	
	DECLARE err_code varchar(100) DEFAULT NULL;
	DECLARE error_string varchar(100);
	DECLARE CONTINUE HANDLER for SQLEXCEPTION
	BEGIN
		GET stacked DIAGNOSTICS CONDITION 1
			err_code = RETURNED_SQLSTATE, error_string = MESSAGE_TEXT;
		set result_text := concat('Error occured. Code: ', err_code, '. Text: ', error_string);
	end;
	/* Условие проверки на деактивацию продумать позже
	 * if exists (select id from orders where subcat_id = _id) THEN	
		set result_text = 'Не могу удалить запись, так как существуют записи в зависимой таблице Items.';
	else
	*/
		update items set is_active = false 
		where id = _id;
		if err_code is NULL THEN
			set result_text = 'Ok';
		end IF;
	-- end IF;
END$$


/*
 * 4. Работа с заказами
 * 4.1 создание заказа
 */

drop PROCEDURE if EXISTS sp_add_order$$

CREATE PROCEDURE sp_add_order(_user_id BIGINT, out result_text varchar(100))

BEGIN
	
	DECLARE err_code varchar(100) DEFAULT NULL;
	DECLARE error_string varchar(100);
	DECLARE CONTINUE HANDLER for SQLEXCEPTION
	BEGIN
		GET stacked DIAGNOSTICS CONDITION 1
			err_code = RETURNED_SQLSTATE, error_string = MESSAGE_TEXT;
		set result_text := concat('Error occured. Code: ', err_code, '. Text: ', error_string);
	end;
	insert into orders (id, status_id, begin_date, end_date, user_id,order_sum)
	values (LAST_INSERT_ID()+1, 1, now(), NULL, _user_id, 0);	 

	if err_code is NULL THEN
		set result_text = 'Ok';
	end IF;
	
END$$

-- select * from orders
-- call  sp_add_order(1 , @res);
-- select @res;
-- select * from orders
-- select * from orders_view



-- 4.2 изменение статуса заказа

drop PROCEDURE if EXISTS sp_change_order_status$$

CREATE PROCEDURE sp_change_order_status(_order_id BIGINT, _new_status_id BIGINT, out result_text varchar(100))
-- впоследствии доработать проверкой на статусы!!!!
BEGIN
	declare _begin_date_stamp datetime DEFAULT now();
	declare _cur_date datetime DEFAULT now();
	DECLARE err_code varchar(100) DEFAULT NULL;
	DECLARE error_string varchar(100);
	DECLARE CONTINUE HANDLER for SQLEXCEPTION
	BEGIN
		GET stacked DIAGNOSTICS CONDITION 1
			err_code = RETURNED_SQLSTATE, error_string = MESSAGE_TEXT;
		set result_text := concat('Error occured. Code: ', err_code, '. Text: ', error_string);
	end;

	if not exists (select id from orders where id = _order_id) THEN
		set result_text = 'No order exists';
	ELSE
		START TRANSACTION;
			-- 1. ищем актуальную запись с нужным order_id, берем его start_date и запоминаем текущее время
			set _begin_date_stamp = (select begin_date from orders where (id = _order_id) and (end_date is NULL));
			set _cur_date = now();
			-- 2. меняем date предыдущей записи на begin_date новой
			update orders set end_date = _cur_date where (id = _order_id) and (begin_date = _begin_date_stamp);
			-- 3. добавляем новую запись с теми же полями, но новым статусом и текущим begin_date
			insert into orders (id, status_id, begin_date, end_date, user_id, order_sum)
					select _order_id, _new_status_id, _cur_date, NULL,  orders.user_id, orders.order_sum 
					from orders where (id = _order_id) and (begin_date =_begin_date_stamp);
								
		if err_code is NULL THEN
			set result_text = 'Ok';
			COMMIT;
		ELSE ROLLBACK;
		end IF;
	end IF;
END$$

-- select now()
-- select * from orders 
 -- call sp_change_order_status(4, 3, @res);
  -- SELECT @res;
  -- update orders set end_date = Null where id = 4

-- select * from orders;
-- select @result_text;


/*

-- sp_del_order
drop PROCEDURE if EXISTS $$

CREATE PROCEDURE (_id BIGINT, out result_text varchar(100))


BEGIN
	
	DECLARE err_code varchar(100) DEFAULT NULL;
	DECLARE error_string varchar(100);
	DECLARE CONTINUE HANDLER for SQLEXCEPTION
	BEGIN
		GET stacked DIAGNOSTICS CONDITION 1
			err_code = RETURNED_SQLSTATE, error_string = MESSAGE_TEXT;
		set result_text := concat('Error occured. Code: ', err_code, '. Text: ', error_string);
	end;




	if err_code is NULL THEN
		set result_text = 'Ok';
	end IF;
	-- end IF;
END$$
*/
 
drop  function if exists sf_calc_order_sum$$

create function sf_calc_order_sum (_order_id BIGINT)
returns bigint not DETERMINISTIC
BEGIN
	
	DECLARE CONTINUE HANDLER for SQLEXCEPTION
		return -1; 

	return (select sum(item_quant*item_cost) from orders_content where order_id = _order_id);
	
END$$



 
drop PROCEDURE if EXISTS sp_add_order_item$$

CREATE PROCEDURE sp_add_order_item(_order_id BIGINT, _item_id BIGINT, _item_quant BIGINT, _item_cost BIGINT, out result_text varchar(100))
-- пока процедура принимает параметр _item_cost BIGINT
-- впоследствии будет вызваться друга хранимая процедура, которая будет формировать стоимость товара исходя из значения
-- прайслиста и примененных акций/рекламных компаний, доступных пользователю и/или товару.
-- !!! добавить проверку! Если order_id и order_item_id - существуют, не добавлять запись,а сплюсовать кол-во order_item_id
BEGIN
	
	DECLARE err_code varchar(100) DEFAULT NULL;
	DECLARE error_string varchar(100);
	DECLARE CONTINUE HANDLER for SQLEXCEPTION
	BEGIN
		GET stacked DIAGNOSTICS CONDITION 1
			err_code = RETURNED_SQLSTATE, error_string = MESSAGE_TEXT;
		set result_text := concat('Error occured. Code: ', err_code, '. Text: ', error_string);
	end;

	insert into orders_content (order_id, item_id, item_quant, item_cost)
	values (_order_id, _item_id, _item_quant , _item_cost);

	if err_code is NULL THEN
		set result_text = 'Ok';
	end IF;
	-- end IF;
END$$

-- CALL sp_add_order_item (6, 3, 1, 1500, @RES);
-- SELECT @RES;
 
-- CALL sp_add_order_item (6, 2, 2, 1200, @RES);
-- SELECT @RES;

-- SELECT sf_calc_order_sum (6);
/*
-- sp_edit_order_item
drop PROCEDURE if EXISTS $$

CREATE PROCEDURE (_id BIGINT, out result_text varchar(100))


BEGIN
	
	DECLARE err_code varchar(100) DEFAULT NULL;
	DECLARE error_string varchar(100);
	DECLARE CONTINUE HANDLER for SQLEXCEPTION
	BEGIN
		GET stacked DIAGNOSTICS CONDITION 1
			err_code = RETURNED_SQLSTATE, error_string = MESSAGE_TEXT;
		set result_text := concat('Error occured. Code: ', err_code, '. Text: ', error_string);
	end;




	if err_code is NULL THEN
		set result_text = 'Ok';
	end IF;
	-- end IF;
END$$

-- sp_del_order_item
drop PROCEDURE if EXISTS $$

CREATE PROCEDURE (_id BIGINT, out result_text varchar(100))


BEGIN
	
	DECLARE err_code varchar(100) DEFAULT NULL;
	DECLARE error_string varchar(100);
	DECLARE CONTINUE HANDLER for SQLEXCEPTION
	BEGIN
		GET stacked DIAGNOSTICS CONDITION 1
			err_code = RETURNED_SQLSTATE, error_string = MESSAGE_TEXT;
		set result_text := concat('Error occured. Code: ', err_code, '. Text: ', error_string);
	end;




	if err_code is NULL THEN
		set result_text = 'Ok';
	end IF;
	-- end IF;
END$$

*/


drop TRIGGER if EXISTS tr_on_insert_oitem$$

CREATE TRIGGER tr_on_insert_oitem
AFTER INSERT
ON orders_content FOR EACH ROW
	update orders set orders.order_sum = sf_calc_order_sum(new.order_id) 
	where (orders.id = new.order_id) and (orders.end_date is NULL) 
$$

drop TRIGGER if EXISTS tr_on_delete_oitem$$

CREATE TRIGGER tr_on_delete_oitem
AFTER DELETE
ON orders_content FOR EACH ROW
	update orders set orders.order_sum = sf_calc_order_sum(old.order_id) 
	where (orders.id = old.order_id) and (orders.end_date is NULL) 
$$


drop TRIGGER if EXISTS tr_on_update_oitem$$

CREATE TRIGGER tr_on_update_oitem
AFTER UPDATE
ON orders_content FOR EACH ROW
	update orders set orders.order_sum = sf_calc_order_sum(new.order_id) 
	where (orders.id = new.order_id) and (orders.end_date is NULL) 
$$


DELIMITER ;




