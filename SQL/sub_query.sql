-- USE ecom;
-- SELECT * FROM orders;

-- SELECT * FROM orders 
-- WHERE price_per_unit > (SELECT AVG(price_per_unit) FROM orders);

-- SELECT * FROM orders WHERE city IN (SELECT city FROM orders WHERE category = 'Electronics');

-- SELECT order_id, customer_name, price_per_unit, (SELECT AVG(price_per_unit) FROM orders) AS avg_price FROM orders;

SELECT * FROM orders o WHERE EXISTS (SELECT 1 FROM orders WHERE city = o. city AND category = 'Furniture');