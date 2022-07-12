USE website;

-- SELECT LOWER(CONCAT(first_name, ' ', last_name)) AS full_name 
-- 	FROM customers;
###################################
-- SELECT LENGTH(TRIM(password)) AS pass_length 
-- 	FROM customers;
###################################
-- SELECT REPLACE(country, 'USA', 'United States') AS country 
-- 	FROM customers;
###################################
-- SELECT SUBSTRING(address, 1, 3) AS house_num 
-- 	FROM customers;
    
-- SELECT POSITION(' ' IN address) AS space_pos 
-- 	FROM customers;
    
-- SELECT SUBSTRING(address, 1, POSITION(' ' IN address) - 1)
-- 	AS house_num FROM customers;
###################################
-- SELECT SUBSTRING_INDEX(address, ' ', 1) AS house_num
-- 	FROM customers;
    
SELECT SUBSTRING_INDEX(address, ' ', -2) AS house_num
	FROM customers;