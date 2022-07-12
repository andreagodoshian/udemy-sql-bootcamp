USE website;
###~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~###
-- UPDATE customers 
-- 	SET registered = '2035-06-21'
--     WHERE first_name='Liam';

-- UPDATE customers 
-- 	SET r_time = '17:50:16'
--     WHERE first_name='Liam';
######################################
-- UPDATE customers 
-- 	SET registered = CURDATE() 
--     WHERE first_name='Ethan';

-- UPDATE customers 
-- 	SET r_time = CURTIME() 
--     WHERE first_name='Ethan';
######################################
-- ALTER TABLE customers 
-- 	ADD COLUMN last_update DATETIME
--     DEFAULT NOW() 
--     ON UPDATE NOW();
###~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~###
-- SELECT first_name, DAYNAME(registered) 
-- 	AS r_day FROM customers;

-- SELECT first_name, MONTHNAME(last_update) 
-- 	AS last_update FROM customers;
######################################
-- SELECT DAYNAME(NOW()) AS who_needs_a_clock;

-- SELECT DAYNAME('2049-01-01') AS who_needs_a_calendar;
######################################
# search "mysql specifier date time functions" for complete list

-- SELECT DATE_FORMAT(registered, '%m/%d/%Y') 
-- 	AS date FROM customers;

SELECT DATE_FORMAT(registered, '%M %D, %Y')
	AS formatted_date FROM customers;