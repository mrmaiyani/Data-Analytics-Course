-- CREATE VIEW delivered_orders AS SELECT order_id, customer_name, city, product, price_per_unit, order_date FROM orders WHERE order_status = 'delivered';

-- SELECT * FROM delivered_orders;

DROP VIEW delivered_orders;
