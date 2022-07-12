### SYSTEM VARIABLES ###

-- SHOW VARIABLES;
#~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~#
### same thing, I guess ###
-- SET SQL_SAFE_UPDATES = 0;
-- SET SESSION SQL_SAFE_UPDATES = 0;
#~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~#
### use this, if multiple users need access ###
-- SET GLOBAL SQL_SAFE_UPDATES = 0;
-- SHOW GLOBAL VARIABLES;
#####################################
#####################################
### USER-DEFINED VARIABLES ###

### first method ###
-- SET @avg_price := (SELECT AVG(price) FROM orders);
-- SELECT * FROM orders 
-- 	WHERE price > @avg_price;

### second method ###
-- SET @avg_price := 0;
-- 	SELECT AVG(price)
-- 	INTO @avg_price
-- 	FROM orders;
-- SELECT * FROM orders 
-- 	WHERE price > @avg_price;
#####################################
#####################################
### LOCAL VARIABLES ###

### basically what's inside of a function ###
### sorry, I'm tired ###