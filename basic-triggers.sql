SHOW TRIGGERS;
-- DROP TRIGGER stock_name
##########################################
-- UPDATE shops
-- 	SET total = 
-- 		(SELECT SUM(price) FROM orders WHERE shop_id = 2)
--     WHERE shop_id = 2;

-- SELECT * FROM shops;
##########################################
-- DELIMITER $$
-- CREATE TRIGGER orders_after_insert
-- 	AFTER INSERT ON orders
--     FOR EACH ROW
-- 		BEGIN
-- 			UPDATE shops
-- 				SET total = total + NEW.price
--                 WHERE shop_id = NEW.shop_id;
--         END $$
-- DELIMITER ;
#~~~~~~~~~~~~~~~~~~~~~~~~~~~~#
-- INSERT INTO orders (id, category, product, price, shop_id)
-- 	VALUES (5, 'Smartphone', 'Samsung Galaxy A52', 1000, 2);
#~~~~~~~~~~~~~~~~~~~~~~~~~~~~#
-- SELECT * FROM shops;
##########################################

-- DELIMITER $$
-- CREATE TRIGGER orders_after_delete
-- 	AFTER DELETE ON orders
--     FOR EACH ROW
-- 		BEGIN
-- 			UPDATE shops
-- 				SET total = total - OLD.price
--                 WHERE shop_id = OLD.shop_id;
--         END $$
-- DELIMITER ;

#~~~~~~~~~~~~~~~~~~~~~~~~~~~~#
-- DELETE FROM orders WHERE id = 5;
#~~~~~~~~~~~~~~~~~~~~~~~~~~~~#
-- SELECT * FROM shops;