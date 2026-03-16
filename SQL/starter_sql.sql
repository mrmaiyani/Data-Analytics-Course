CREATE DATABASE ecom;
USE ecom;

CREATE TABLE orders (
    order_id INT PRIMARY KEY AUTO_INCREMENT,
    customer_name VARCHAR(100),
    city VARCHAR(50),
    product VARCHAR(100),
    category VARCHAR(50),
    quantity INT,
    price_per_unit DECIMAL(10,2),
    discount_percent INT,
    order_date DATE,
    delivery_date DATE,
    payment_mode VARCHAR(30),
    order_status VARCHAR(30),
    rating INT
);


INSERT INTO orders
(customer_name, city, product, category, quantity, price_per_unit, discount_percent, order_date, delivery_date, payment_mode, order_status, rating)
VALUES
('Amit Sharma', 'Delhi', 'Laptop', 'Electronics', 1, 65000, 10, '2025-01-05', '2025-01-08', 'Credit Card', 'Delivered', 5),
('Neha Verma', 'Mumbai', 'Headphones', 'Electronics', 2, 2500, 0, '2025-01-10', '2025-01-12', 'UPI', 'Delivered', 4),
('Rahul Khan', 'Delhi', 'Office Chair', 'Furniture', 1, 12000, 15, '2025-01-12', '2025-01-20', 'Debit Card', 'Delivered', 5),
('Priya Singh', 'Bangalore', 'Notebook', 'Stationery', 10, 80, 0, '2025-01-15', '2025-01-16', 'Cash', 'Delivered', 3),
('Arjun Mehta', 'Ahmedabad', 'Smartphone', 'Electronics', 1, 30000, 5, '2025-01-18', NULL, 'UPI', 'Cancelled', NULL),
('Sara Ali', 'Delhi', 'Table Lamp', 'Home Decor', 2, 1500, 20, '2025-01-20', '2025-01-23', 'Credit Card', 'Delivered', 4),
('Rohit Gupta', 'Mumbai', 'Water Bottle', 'Kitchen', 5, 500, 0, '2025-01-22', '2025-01-24', 'Cash', 'Delivered', 2),
('Kavita Joshi', 'Pune', 'Backpack', 'Accessories', 1, 3500, 10, '2025-01-25', '2025-01-29', 'Debit Card', 'Delivered', 5),
('Mohammed Faisal', 'Hyderabad', 'Keyboard', 'Electronics', 1, 1800, 0, '2025-01-28', '2025-02-01', 'UPI', 'Delivered', 4),
('Ananya Roy', 'Kolkata', 'Study Table', 'Furniture', 1, 15000, 25, '2025-02-01', NULL, 'Credit Card', 'Pending', NULL),
('Vikram Patel', 'Surat', 'Mixer Grinder', 'Appliances', 1, 4200, 5, '2025-02-03', '2025-02-06', 'UPI', 'Delivered', 4),
('Pooja Nair', 'Chennai', 'Yoga Mat', 'Fitness', 2, 1200, 0, '2025-02-05', '2025-02-07', 'Cash', 'Delivered', 5);