USE online_store;

-- CREATE OR REPLACE VIEW revenue AS
-- 	SELECT shops.name, SUM(price) AS total_price
-- 		FROM orders
-- 		INNER JOIN shops
-- 			ON orders.shop_id = shops.shop_id
-- 		GROUP BY orders.shop_id
-- 		ORDER BY shops.name;
        
# schemas -> online_store -> views

SELECT * FROM revenue
	ORDER BY total_price DESC;

-- DROP VIEW revenue;