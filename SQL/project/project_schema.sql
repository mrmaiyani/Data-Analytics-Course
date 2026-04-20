-- CREATE DATABASE utsav_shop;
-- USE utsav_shop;

CREATE TABLE customers(
	customer_id INT PRIMARY KEY AUTO_INCREMENT,
    name VARCHAR(150),
    email VARCHAR(100) UNIQUE,
    city VARCHAR(50),
    signup_date DATE 
);

CREATE TABLE products(
	product_id INT PRIMARY KEY AUTO_INCREMENT,
    product_name VARCHAR(100),
    category VARCHAR(50),
    price DECIMAL(10,2),
    stock INT
);

CREATE TABLE orders(
	order_id INT PRIMARY KEY AUTO_INCREMENT,
    customer_id INT,
    order_date DATE,
    order_status VARCHAR(50),
    FOREIGN KEY (customer_id) REFERENCES customers(customer_id)
);

CREATE TABLE order_items (
	order_items_id INT PRIMARY KEY AUTO_INCREMENT,
    order_id INT,
    product_id INT,
    quantity INT,
    FOREIGN KEY (order_id) REFERENCES orders(order_id),
    FOREIGN KEY (product_id) REFERENCES products(product_id)
);

CREATE TABLE payments(
	payment_id INT PRIMARY KEY AUTO_INCREMENT,
    order_id INT,
    payment_mode VARCHAR(100),
    amount DECIMAL(10,2),
    payment_date DATE,
    FOREIGN KEY (order_id) REFERENCES orders(order_id)
);