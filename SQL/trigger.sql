-- CREATE TABLE order_cancellations (
--     log_id INT PRIMARY KEY AUTO_INCREMENT,
--     order_id INT,
--     cancelled_on DATETIME,
--     reason VARCHAR(100)
-- );

-- SELECT * FROM order_cancellations;

-- DELIMITER //

-- CREATE TRIGGER trg_log_order_cancel
-- AFTER UPDATE ON orders
-- FOR EACH ROW
-- BEGIN
--     IF NEW.order_status = 'Cancelled'
--        AND OLD.order_status <> 'Cancelled' THEN

--         INSERT INTO order_cancellations
--         (order_id, cancelled_on, reason)
--         VALUES
--         (NEW.order_id, NOW(), 'Order cancelled by user');

--     END IF;
-- END //

-- DELIMITER ;

-- UPDATE orders
-- SET order_status = 'Cancelled'
-- WHERE order_id = 2;

SELECT * FROM order_cancellations;