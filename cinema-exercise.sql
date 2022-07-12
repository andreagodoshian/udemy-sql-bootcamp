### MY ANSWER ###
-- SELECT * FROM cinema.directors AS crime_directors
-- 	WHERE id IN 
-- 		(SELECT director_id FROM films
--         WHERE genre_id = 1);
############################
### TEACHER'S ANSWER ###
# Step one:
-- SELECT id FROM genres WHERE genre = 'crime';

# Step two:
-- SELECT * FROM films WHERE genre_id =
-- 	(SELECT id FROM genres WHERE genre = 'crime');
    
# Step three:
-- SELECT director_id FROM films WHERE genre_id =
-- 	(SELECT id FROM genres WHERE genre = 'crime');

# Step four:
-- SELECT * FROM directors 
-- 	WHERE id IN
-- 		(SELECT director_id FROM films WHERE genre_id =
-- 			(SELECT id FROM genres WHERE genre = 'crime'));