USE ecom;
-- SELECT COUNT(*) FROM orders;

-- SELECT SUM(quantity * price_per_unit) AS total_revenue FROM orders;

-- SELECT AVG(price_per_unit) AS AVERAGE FROM orders;

-- SELECT MIN(price_per_unit) AS MIN, MAX(price_per_unit) AS MAX FROM orders;

-- SELECT customer_name, ROUND(price_per_unit,0) FROM orders;

-- SELECT UPPER(customer_name), LOWER(city) FROM orders;

-- SELECT customer_name, LENGTH(customer_name) AS LENGTHH FROM orders;

-- SELECT CURRENT_DATE;

-- SELECT CURRENT_TIME;

-- SELECT order_id, DATEDIFF(delivery_date, order_date) AS delivery_days FROM orders;

SELECT * FROM orders WHERE YEAR(order_date) = 2025;