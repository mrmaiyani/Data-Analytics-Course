SELECT * FROM orders;

ALTER TABLE orders
ADD COLUMN delivery_partner
VARCHAR (50);

ALTER TABLE orders
MODIFY price_per_unit 
DECIMAL(12,2);

ALTER TABLE orders
RENAME COLUMN city TO customer_city;

ALTER TABLE orders
DROP COLUMN delivery_partner;

SET SQL_SAFE_UPDATES = 1;
DELETE FROM orders;

DROP TABLE orders;
DROP TABLE IF EXISTS orders;