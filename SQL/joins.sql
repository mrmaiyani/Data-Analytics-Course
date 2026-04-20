USE ecom;

-- UPDATE orders set seller_id = 1 WHERE order_id IN (1,4,7,2,9,6);
-- UPDATE orders set seller_id = 2 WHERE order_id IN (3,5,8,10,11,12);

-- INSERT INTO sellers VALUES(1,'Utsav Maiyani','Surat');
-- INSERT INTO sellers VALUES(2,'Raj Furniture','Pune');
-- INSERT INTO sellers VALUES(3,'Nikhil Stationary','Ahmedabad');
-- INSERT INTO sellers VALUES(4,'Shyam Stores','Banglore');

-- UPDATE sellers SET seller_name = "Utsav Electronics" WHERE seller_id = 1;
-- SELECT * FROM sellers;

-- SELECT o.order_id, o.city AS customer_city, o.product, s.seller_name FROM orders o INNER JOIN sellers s ON o.seller_id = s.seller_id;

-- SELECT o.order_id, o.city AS customer_city, o.product, s.seller_name FROM orders o LEFT JOIN sellers s ON o.seller_id = s.seller_id;

SELECT o.order_id, o.city AS customer_city, o.product, s.seller_name FROM orders o RIGHT JOIN sellers s ON o.seller_id = s.seller_id;