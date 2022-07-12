-- USE library;
-- CREATE TABLE books (
-- 	name VARCHAR(255) NOT NULL,
--     author VARCHAR(255) NOT NULL,
--     format VARCHAR(50) DEFAULT 'hardcover',
--     pages INT CHECK (pages>0),
--     id INT PRIMARY KEY AUTO_INCREMENT
-- ### id INT NOT NULL UNIQUE AUTO_INCREMENT ###
-- );

-- SET SQL_SAFE_UPDATES = 0;

-- ALTER TABLE books ADD CONSTRAINT u_id UNIQUE (id);
-- ALTER TABLE books ADD CONSTRAINT PRIMARY KEY (id);
-- ALTER TABLE books ADD CHECK (pages > 0);
-- ALTER TABLE books MODIFY COLUMN id INT AUTO_INCREMENT;
-- ALTER TABLE books ALTER format SET DEFAULT 'hardcover';
-- DESCRIBE books;

############################

-- USE library;
-- CREATE TABLE details (
-- 	id INT PRIMARY KEY AUTO_INCREMENT,
--     language VARCHAR(255),
--     publisher VARCHAR(255),
--     book_id INT,
--     
--     FOREIGN KEY (book_id) REFERENCES books(id)
-- );

INSERT INTO details (language, publisher, book_id)
	VALUES ('English', 'Scribner', 10);