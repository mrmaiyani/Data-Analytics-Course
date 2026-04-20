USE ecom;

-- DELIMITER //

-- CREATE PROCEDURE get_delivered_orders()
-- BEGIN
--     SELECT *
--     FROM orders
--     WHERE order_status = 'Delivered';
-- END //

-- DELIMITER ;

-- CALL get_delivered_orders();


DELIMITER //

CREATE PROCEDURE get_orders_by_city(IN city_name VARCHAR(50))
BEGIN
    SELECT *
    FROM orders
    WHERE city = city_name;
END //

DELIMITER ;

CALL get_orders_by_city('Delhi');