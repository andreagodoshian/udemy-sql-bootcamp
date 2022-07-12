### REMEMBER!! FUNCTIONS ONLY HAVE INPUT VARIABLES!! ###
### NO OUTPUT... BUT TECHNICALLY ONE RETURN ###

-- DELIMITER $$
-- 	CREATE FUNCTION total_price()
-- 	RETURNS DOUBLE
-- 	DETERMINISTIC
-- 		BEGIN
-- 			DECLARE total DOUBLE;
-- 			SELECT SUM(price * quantity)
-- 				INTO total
--             	# assign to "total" #
-- 				FROM orders;
--             	# taken from orders #
-- 			RETURN total;
-- 		END $$
-- DELIMITER ;

# schemas -> online_store -> functions

-- SELECT total_price();

####################################################

-- DELIMITER $$
-- CREATE FUNCTION total_price_for_id (param_shop_id INT)
-- RETURNS DOUBLE
-- DETERMINISTIC
-- 	BEGIN
-- 		DECLARE total DOUBLE;
--         SELECT SUM(price*quantity)
-- 			INTO total
-- 			FROM orders
-- 			WHERE shop_id = param_shop_id;
--         RETURN total;
--     END $$
-- DELIMITER ;

-- SELECT total_price_for_id(2);

####################################################
-- DROP FUNCTION total_price_for_id;
####################################################

-- DELIMITER $$
-- CREATE FUNCTION count_by_c_and_d(param_c VARCHAR(255), param_d DATE)
-- RETURNS INT
-- DETERMINISTIC
-- 	BEGIN
-- 		DECLARE count INT;
--         SELECT COUNT(*)
-- 			INTO count
-- 			FROM orders
-- 			WHERE category = param_c AND date = param_d;
--         RETURN count;
--     END $$
-- DELIMITER ;

SELECT count_by_c_and_d('TV', '2035-10-24') AS blah;