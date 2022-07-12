USE online_store;

###################################################

-- DELIMITER $$
-- CREATE PROCEDURE report(p_date DATE)
-- 	BEGIN
-- 		SELECT category, product, price
-- 			FROM orders
-- 			WHERE date = p_date
-- 			ORDER BY price;
-- 	END $$
-- DELIMITER 

# schemas -> online_store -> stored procedures

###################################################

-- DELIMITER $$
-- CREATE PROCEDURE orders_by_category(the_param VARCHAR(255))
-- 	BEGIN
-- 		SELECT * FROM orders
-- 			WHERE category = the_param
-- 			ORDER BY price DESC;
-- 	END $$
-- DELIMITER ;

###################################################

## IN = INput parameters
## OUT = OUTput paramenters

-- DELIMITER $$
-- CREATE PROCEDURE min_max (
-- 	IN the_shop_id INT,
--     OUT min_price INT,
--     OUT max_price INT
-- )
-- 	BEGIN
-- 		SELECT MIN(price), MAX(price)
-- 			INTO min_price, max_price
-- 			FROM orders
--             WHERE shop_id = the_shop_id;
--     END $$
-- DELIMITER ;

SET @min = 0;
SET @max = 0;

CALL min_max(2, @min, @max);

SELECT @min, @max
-- SELECT (@max - @min) AS diff;
###################################################

-- CALL report('2035-10-24');
-- CALL orders_by_category('TV')