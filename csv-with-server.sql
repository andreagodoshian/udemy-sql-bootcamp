-- USE super_csv_db;

-- CREATE TABLE server_staff (
-- 	First_name VARCHAR(255),
--     Last_name VARCHAR(255),
--     Department VARCHAR(50),
--     Id INT,
--     Location VARCHAR(255)
-- );

####################################

-- LOAD DATA INFILE '\MySQL\staff.csv'
-- 	INTO TABLE server_staff
-- 	FIELDS TERMINATED BY ','
--     ENCLOSED BY '"'
--     LINES TERMINATED BY '\n'
--     IGNORE 1 ROWS;
--     # (First_name, Last_name, Location)
    
####################################

# in order to get column names...
-- SELECT 'First_name', 'Last_name', 'Department', 'Id', 'Location'
-- UNION ALL

-- SELECT * FROM server_staff
-- 	INTO OUTFILE '\MySQL\exported.csv'
--     FIELDS TERMINATED BY ','
--     ENCLOSED BY '"'
--     LINES TERMINATED BY '\n';
    
####################################

-- SET GLOBAL event_scheduler = ON;

-- CREATE EVENT daily_report
-- 	ON SCHEDULE EVERY 1 DAY
--     STARTS '2035-10-12 23:00:00'
-- 		DO
--         INSERT INTO reports (total, date) VALUES (
-- 			SELECT SUM(price) FROM orders,
--             CURDATE());

####################################
####################################
####################################

-- SET GLOBAL event_scheduler = ON;

-- CREATE EVENT single_backup
-- 	ON SCHEDULE AT '2035-10-12 23:00:00'
-- 		DO
-- 			SELECT 'First_name', 'Last_name', 'Department', 'Id', 'Location'
-- 				UNION ALL
-- 				SELECT * FROM server_staff
-- 					INTO OUTFILE '\MySQL\single_event.csv'
-- 					FIELDS TERMINATED BY ','
-- 					ENCLOSED BY '"'
-- 					LINES TERMINATED BY '\n';
--                     
-- SHOW events;

####################################
####################################
####################################

SET GLOBAL event_scheduler = ON;

DELIMITER $$
CREATE EVENT backup
	ON SCHEDULE EVERY 1 DAY
		DO
		BEGIN
			SET @statement = CONCAT('
			SELECT \'First_name\', \'Last_name\', \'Department\', \'Id\', \'Location\'
				UNION ALL
				SELECT * FROM server_staff
					INTO OUTFILE \'MySQL', CURDATE(), ' exported.csv\'
					FIELDS TERMINATED BY \',\'
					ENCLOSED BY \'"\'
					LINES TERMINATED BY \'\n\';
                    ');
			PREPARE p1 FROM @statement;
            EXECUTE p1;
            DROP PREPARE p1;
		END $$
        DELIMITER ;
                    
SHOW events;