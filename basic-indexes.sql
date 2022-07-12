-- SHOW INDEXES IN amazon.reviews;

EXPLAIN SELECT * FROM reviews 
	WHERE doRecommend = 'FALSE'
    &&
    dateAdded = '2017-03-03';
    
###############################################
-- USE amazon;
-- SELECT * FROM reviews
-- 	WHERE dateAdded = '2017-03-03';
##~~~~~~~~~~~~~~~~~~~~~~~~~~~~~##
-- CREATE INDEX idx_dateAdded ON reviews(dateAdded);
##~~~~~~~~~~~~~~~~~~~~~~~~~~~~~##
-- SELECT * FROM reviews
-- 	WHERE dateAdded = '2017-03-03';

## (went from 1.437 seconds --> 0.094 seconds) ##
###############################################
-- CREATE INDEX idx_doRecommend ON reviews (doRecommend);

-- SELECT * FROM reviews
-- 	WHERE doRecommend = 'FALSE';
    
## (went from 1.453 seconds --> 0.234 seconds) ##
###############################################