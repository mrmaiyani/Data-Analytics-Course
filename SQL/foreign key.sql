-- USE ecom;
-- CREATE TABLE sellers(seller_id INT PRIMARY KEY AUTO_INCREMENT, seller_name VARCHAR(100) UNIQUE NOT NULL,city VARCHAR(50));

-- SELECT * FROM sellers;

-- ALTER TABLE orders ADD COLUMN seller_id INT;

-- SELECT * FROM ORDERS;

-- ALTER TABLE orders ADD CONSTRAINT fk_orders_sellers FOREIGN KEY (seller_id) REFERENCES sellers(seller_id);

ALTER TABLE orders DROP FOREIGN KEY fk_orders_sellers;