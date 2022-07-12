-- SELECT name, price FROM coffee
-- UNION SELECT name, price FROM syrups;

-- SELECT 'coffee' AS type, name, price FROM coffee
-- UNION SELECT 'syrup', name, price FROM syrups;

-- SELECT price FROM coffee
-- UNION ALL SELECT price FROM syrups;

SELECT SUM(price)
FROM
(SELECT price FROM coffee UNION ALL SELECT price FROM syrups)
as prices;