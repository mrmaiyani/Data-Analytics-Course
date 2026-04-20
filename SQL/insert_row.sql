USE ecom;
-- CREATE TABLE customers (
-- 	customer_id INT PRIMARY KEY AUTO_INCREMENT,
--     name VARCHAR(100),
--     email VARCHAR(150),
--     age INT,
--     phone VARCHAR(15),
--     is_active BOOLEAN,
--     sign_up_date DATE,
--     created_at DATETIME,
--     total_spent DECIMAL(10,2)
--     );
    
INSERT INTO customers ( name, email, age, phone, is_active, sign_up_date, created_at, total_spent)
VALUES ('Amit Sharma', 'amit@gmail.com', 19, '7584964857', TRUE, '2025-05-18', '2025-05-18 10:30:30',12000.50),
('Neha Verma', 'neha@gmail.com', 58, '5623145214', TRUE, '2025-03-04', '2025-03-04 12:00:00', 45000.12),
('Tanvi Navadiya', 'tanvi@gmail.com', 17, '4545454545', FALSE, '2024-06-15', '2024-06-15 10:10:12', 15000.15);