# THIS IS WRONG!!! #

-- SELECT title, 
-- 	IF (seasons >= AVG(seasons), 'Long', 'Short')
--     AS duration
--     FROM series;

# okay, now we can continue :) #

################################
-- SELECT title, 
-- 	IF (seasons >= 
--     (SELECT AVG(seasons) FROM series), 'Long', 'Short')
--     AS duration
--     FROM series;
################################
-- SELECT name, AVG(rating) AS avg_rating 
-- 	FROM series
--     INNER JOIN networks ON series.network_id = networks.id
--     GROUP BY name;

-- SELECT MAX(avg_rating) AS max_avg_rating
-- 	FROM
-- 		(SELECT name, AVG(rating) AS avg_rating 
-- 			FROM series
-- 			INNER JOIN networks ON series.network_id = networks.id
-- 			GROUP BY name)
--             AS ERROR__every_derived_table_must_have_;
################################
-- SELECT name FROM networks
-- 	WHERE EXISTS
-- 		(SELECT * FROM series
--         WHERE network_id = networks.id);

-- SELECT name FROM networks
-- 	WHERE NOT EXISTS
-- 		(SELECT * FROM series
-- 			WHERE network_id = networks.id);
################################
-- SELECT name FROM networks
-- 	WHERE id IN
-- 		(SELECT network_id FROM series);

-- SELECT name FROM networks
-- 	WHERE id NOT IN
-- 		(SELECT network_id FROM series);
################################
-- SELECT title FROM series
-- 	WHERE network_id = 2
--     AND rating >
--     ANY(SELECT rating FROM series WHERE network_id = 3);

-- SELECT title FROM series
-- 	WHERE network_id = 2
--     AND rating >
--     ALL(SELECT rating FROM series WHERE network_id = 3);
################################
SELECT title, rating, network_id
	FROM series AS ERROR__same_glitch_every_derived__
	WHERE rating >
		(SELECT AVG(rating) FROM series
        GROUP BY network_id
        HAVING network_id = ERROR__same_glitch_every_derived__.network_id);