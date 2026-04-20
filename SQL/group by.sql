USE ecom;
SELECT * FROM orders;

SELECT city, COUNT(*) AS total_orders FROM orders GROUP BY city;

SELECT category, SUM(quantity * price_per_unit) AS total_sales FROM orders GROUP BY category;

SELECT city, AVG(price_per_unit) AS avg_price FROM orders GROUP BY city;

SELECT city, order_status, COUNT(*) AS count
FROM orders GROUP BY city, order_status;

SELECT category , COUNT(*) AS total_orders FROM orders GROUP BY category ORDER BY total_orders DESC;

-- SELECT city, COUNT(*) AS total_orders FROM orders GROUP BY city HAVING COUNT(*) > 5;