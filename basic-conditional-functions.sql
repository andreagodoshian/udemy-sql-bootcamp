USE company;
###~~~~~~~~~~~~~~~~~~~###
-- SELECT name, IFNULL(phone, 'unspecified') 
-- 	AS staff_contact FROM staff;
#########################
-- SELECT name, IF(days_off > 0, 'YES', 'NO') 
-- 	AS has_days_off, days_off FROM staff;
#########################
-- SELECT name, CASE ISO_code
-- 	WHEN 'US' THEN 'USA'
--     WHEN 'CA' THEN 'CANADA'
--     WHEN 'IN' THEN 'INDIA'
-- 		ELSE ISO_code
-- 		END
--     AS country
--     FROM staff;
#########################
SELECT name, 
	COALESCE(phone, email, address, 'unspecified')
    AS staff_contact
    FROM staff;