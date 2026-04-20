USE utsav_shop;

-- CUSTOMERS DATA 

INSERT INTO customers (name, email, city, signup_date) VALUES
('Amit Sharma','amit@gmail.com','Delhi','2025-01-01'),
('Neha Verma','neha@gmail.com','Mumbai','2025-01-02'),
('Rahul Khan','rahul@gmail.com','Bangalore','2025-01-03'),
('Pooja Nair','pooja@gmail.com','Chennai','2025-01-04'),
('Rohit Gupta','rohit@gmail.com','Delhi','2025-01-05'),
('Ananya Roy','ananya@gmail.com','Kolkata','2025-01-06'),
('Karan Mehta','karan@gmail.com','Ahmedabad','2025-01-07'),
('Simran Kaur','simran@gmail.com','Chandigarh','2025-01-08'),
('Mohit Jain','mohit@gmail.com','Jaipur','2025-01-09'),
('Sneha Patel','sneha@gmail.com','Surat','2025-01-10'),
('Vikram Singh','vikram@gmail.com','Lucknow','2025-01-11'),
('Alok Mishra','alok@gmail.com','Patna','2025-01-12'),
('Nidhi Agarwal','nidhi@gmail.com','Noida','2025-01-13'),
('Saurabh Verma','saurabh@gmail.com','Ghaziabad','2025-01-14'),
('Riya Sen','riya@gmail.com','Pune','2025-01-15'),
('Aditya Malhotra','aditya@gmail.com','Delhi','2025-01-16'),
('Kritika Shah','kritika@gmail.com','Mumbai','2025-01-17'),
('Yash Tiwari','yash@gmail.com','Kanpur','2025-01-18'),
('Mehul Joshi','mehul@gmail.com','Vadodara','2025-01-19'),
('Isha Kapoor','isha@gmail.com','Gurgaon','2025-01-20');

-- PRODUCTS DATA

INSERT INTO products (product_name, category, price, stock) VALUES
('Python Hoodie','Clothing',1999,50),
('Java Hoodie','Clothing',1899,40),
('Debugging Mug','Accessories',599,100),
('Code Like a Pro Mug','Accessories',649,80),
('DSA Notebook','Stationery',499,150),
('SQL Cheat Sheet','Stationery',299,200),
('Sticker Pack','Stationery',249,300),
('Algorithm T-Shirt','Clothing',1499,60),
('GitHub Cap','Accessories',799,70),
('Keyboard Mat','Accessories',999,90),
('Linux Hoodie','Clothing',2099,35),
('AI Nerd T-Shirt','Clothing',1599,55),
('Whiteboard Notebook','Stationery',699,120),
('Bug Hunter Mug','Accessories',549,100),
('Terminal Stickers','Stationery',199,250),
('Coder Bottle','Accessories',899,110),
('Late Night Hoodie','Clothing',2199,30),
('Python Socks','Accessories',399,140),
('DSA Flash Cards','Stationery',349,180),
('Clean Code Notebook','Stationery',599,130);

-- ORDERS DATA

INSERT INTO orders (customer_id, order_date, order_status) VALUES
(1,'2025-02-01','Delivered'),
(2,'2025-02-02','Delivered'),
(3,'2025-02-03','Delivered'),
(4,'2025-02-04','Cancelled'),
(5,'2025-02-05','Delivered'),
(6,'2025-02-06','Pending'),
(7,'2025-02-07','Delivered'),
(8,'2025-02-08','Delivered'),
(9,'2025-02-09','Delivered'),
(10,'2025-02-10','Cancelled'),
(11,'2025-02-11','Delivered'),
(12,'2025-02-12','Delivered'),
(13,'2025-02-13','Pending'),
(14,'2025-02-14','Delivered'),
(15,'2025-02-15','Delivered'),
(16,'2025-02-16','Delivered'),
(17,'2025-02-17','Cancelled'),
(18,'2025-02-18','Delivered'),
(19,'2025-02-19','Delivered'),
(20,'2025-02-20','Delivered');

-- ORDERS ITEMS DATA

INSERT INTO order_items (order_id, product_id, quantity) VALUES
(1,1,1),(1,7,2),
(2,3,1),(2,5,1),
(3,8,1),
(4,2,1),
(5,6,3),
(6,4,1),
(7,10,1),
(8,12,2),
(9,15,3),
(10,9,1),
(11,11,1),
(12,13,1),
(13,14,2),
(14,16,1),
(15,17,1),
(16,18,2),
(17,19,1),
(18,20,1),
(19,1,1),
(20,5,2);

-- PAYMENTS DATA

INSERT INTO payments (order_id, payment_mode, amount, payment_date) VALUES
(1,'UPI',2497,'2025-02-01'),
(2,'Credit Card',1098,'2025-02-02'),
(3,'UPI',1499,'2025-02-03'),
(5,'Debit Card',897,'2025-02-05'),
(7,'UPI',999,'2025-02-07'),
(8,'Credit Card',3198,'2025-02-08'),
(9,'UPI',747,'2025-02-09'),
(11,'UPI',2099,'2025-02-11'),
(12,'Debit Card',699,'2025-02-12'),
(14,'UPI',899,'2025-02-14'),
(15,'Credit Card',2199,'2025-02-15'),
(16,'UPI',798,'2025-02-16'),
(18,'Debit Card',599,'2025-02-18'),
(19,'UPI',1999,'2025-02-19'),
(20,'Credit Card',998,'2025-02-20');