USE ecom;
-- SELECT * FROM orders WHERE city IN ("Delhi", "Mumbai", "Ahmedabad");

-- SELECT * FROM orders WHERE payment_mode NOT IN ("UPI", "Cash");

-- SELECT * FROM orders WHERE price_per_unit BETWEEN 1000 AND 10000;

-- SELECT * FROM orders WHERE price_per_unit NOT BETWEEN 1000 AND 10000;

-- SELECT * FROM orders WHERE customer_name LIKE 'A%';

-- SELECT * FROM orders WHERE product LIKE '%Table%';

-- SELECT * FROM orders WHERE city LIKE 'D_lhi';

SELECT * FROM orders WHERE category IN ('Electronics', 'Furniture') AND price_per_unit NOT BETWEEN 5000 AND 20000;