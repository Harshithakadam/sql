create database Ecommerce_Details;
use Ecommerce_Details;

-- table 1
CREATE TABLE customers (
    customer_id INT PRIMARY KEY,
    customer_name VARCHAR(50),
    email VARCHAR(100)
);

-- ALTER: Add 3 columns
ALTER TABLE customers ADD phone VARCHAR(15);
ALTER TABLE customers ADD city VARCHAR(50);
ALTER TABLE customers ADD pincode VARCHAR(10);

-- ALTER: Drop 1 column
ALTER TABLE customers DROP COLUMN pincode;

-- ALTER: Rename 2 columns
ALTER TABLE customers RENAME COLUMN city TO location;
ALTER TABLE customers RENAME COLUMN phone TO contact;

-- ALTER: Modify 2 datatypes
ALTER TABLE customers MODIFY email VARCHAR(150);
ALTER TABLE customers MODIFY contact VARCHAR(20);

-- INSERT 15 records (Method 1: with column names)
INSERT INTO customers (customer_id, customer_name, email, contact, location)
VALUES (1, 'Harshitha', 'harsh@gmail.com', '9876543210', 'Mandya');

INSERT INTO customers (customer_id, customer_name, email, contact, location)
VALUES (2, 'Riya', 'riya@gmail.com', '9876543211', 'Mysore');

INSERT INTO customers (customer_id, customer_name, email, contact, location)
VALUES (3, 'Priya', 'priya@gmail.com', '9876543212', 'Bangalore');

INSERT INTO customers (customer_id, customer_name, email, contact, location)
VALUES (4, 'Sneha', 'sneha@gmail.com', '9876543213', 'Chennai');

INSERT INTO customers (customer_id, customer_name, email, contact, location)
VALUES (5, 'Anita', 'anita@gmail.com', '9876543214', 'Hyderabad');

INSERT INTO customers (customer_id, customer_name, email, contact, location)
VALUES (6, 'Kavya', 'kavya@gmail.com', '9876543215', 'Mangalore');

INSERT INTO customers (customer_id, customer_name, email, contact, location)
VALUES (7, 'Deepa', 'deepa@gmail.com', '9876543216', 'Hubli');

INSERT INTO customers (customer_id, customer_name, email, contact, location)
VALUES (8, 'Pooja', 'pooja@gmail.com', '9876543217', 'Belgaum');

INSERT INTO customers (customer_id, customer_name, email, contact, location)
VALUES (9, 'Nisha', 'nisha@gmail.com', '9876543218', 'Shimoga');

INSERT INTO customers (customer_id, customer_name, email, contact, location)
VALUES (10, 'Meena', 'meena@gmail.com', '9876543219', 'Tumkur');

INSERT INTO customers (customer_id, customer_name, email, contact, location)
VALUES (11, 'Rekha', 'rekha@gmail.com', '9876543220', 'Mandya');

INSERT INTO customers (customer_id, customer_name, email, contact, location)
VALUES (12, 'Suma', 'suma@gmail.com', '9876543221', 'Mysore');

INSERT INTO customers (customer_id, customer_name, email, contact, location)
VALUES (13, 'Geetha', 'geetha@gmail.com', '9876543222', 'Bangalore');

INSERT INTO customers (customer_id, customer_name, email, contact, location)
VALUES (14, 'Latha', 'latha@gmail.com', '9876543223', 'Hassan');

INSERT INTO customers (customer_id, customer_name, email, contact, location)
VALUES (15, 'Usha', 'usha@gmail.com', '9876543224', 'Mysore');

-- UPDATE 5 columns
UPDATE customers SET customer_name = 'Harshitha K' WHERE customer_id = 1;
UPDATE customers SET email = 'riya123@gmail.com' WHERE customer_id = 2;
UPDATE customers SET contact = '9999999999' WHERE customer_id = 3;
UPDATE customers SET location = 'Hassan' WHERE customer_id = 4;
UPDATE customers SET customer_name = 'Sneha R' WHERE customer_id = 5;

-- DELETE
DELETE FROM customers WHERE customer_id = 15;
DELETE FROM customers WHERE customer_id = 14;

-- table 2
CREATE TABLE products (
    product_id INT PRIMARY KEY,
    product_name VARCHAR(50),
    price DECIMAL(10,2)
);

-- ALTER: Add 3 columns
ALTER TABLE products ADD category VARCHAR(50);
ALTER TABLE products ADD stock INT;
ALTER TABLE products ADD discount DECIMAL(5,2);

-- ALTER: Drop 1 column
ALTER TABLE products DROP COLUMN discount;

-- ALTER: Rename 2 columns
ALTER TABLE products RENAME COLUMN category TO product_category;
ALTER TABLE products RENAME COLUMN stock TO stock_quantity;

-- ALTER: Modify 2 datatypes
ALTER TABLE products MODIFY price DECIMAL(12,2);
ALTER TABLE products MODIFY product_category VARCHAR(100);

-- INSERT 15 records 
INSERT INTO products VALUES (1, 'Laptop', 55000.00, 'Electronics', 10);
INSERT INTO products VALUES (2, 'Phone', 20000.00, 'Electronics', 25);
INSERT INTO products VALUES (3, 'Headphones', 2500.00, 'Accessories', 50);
INSERT INTO products VALUES (4, 'Keyboard', 1500.00, 'Accessories', 40);
INSERT INTO products VALUES (5, 'Mouse', 800.00, 'Accessories', 60);
INSERT INTO products VALUES (6, 'Monitor', 12000.00, 'Electronics', 15);
INSERT INTO products VALUES (7, 'Tablet', 25000.00, 'Electronics', 20);
INSERT INTO products VALUES (8, 'Charger', 500.00, 'Accessories', 100);
INSERT INTO products VALUES (9, 'Speaker', 3000.00, 'Electronics', 30);
INSERT INTO products VALUES (10, 'Webcam', 2000.00, 'Accessories', 35);
INSERT INTO products VALUES (11, 'Pendrive', 600.00, 'Storage', 80);
INSERT INTO products VALUES (12, 'Hard Disk', 4000.00, 'Storage', 25);
INSERT INTO products VALUES (13, 'SSD', 6000.00, 'Storage', 20);
INSERT INTO products VALUES (14, 'Smartwatch', 8000.00, 'Wearables', 15);
INSERT INTO products VALUES (15, 'Earbuds', 1800.00, 'Accessories', 45);

-- UPDATE 5 columns
UPDATE products SET product_name = 'Gaming Laptop' WHERE product_id = 1;
UPDATE products SET price = 22000.00 WHERE product_id = 2;
UPDATE products SET stock_quantity = 30 WHERE product_id = 3;
UPDATE products SET product_category = 'Computer Accessories' WHERE product_id = 4;
UPDATE products SET price = 900.00 WHERE product_id = 5;

-- DELETE
DELETE FROM products WHERE product_id = 15;
DELETE FROM products WHERE product_id = 14;

-- table 3
CREATE TABLE orders (
    order_id INT PRIMARY KEY,
    customer_id INT,
    order_date DATE
);

-- ALTER: Add 3 columns
ALTER TABLE orders ADD total_amount DECIMAL(10,2);
ALTER TABLE orders ADD status VARCHAR(30);
ALTER TABLE orders ADD delivery_date DATE;

-- ALTER: Drop 1 column
ALTER TABLE orders DROP COLUMN delivery_date;

-- ALTER: Rename 2 columns
ALTER TABLE orders RENAME COLUMN status TO order_status;
ALTER TABLE orders RENAME COLUMN total_amount TO order_total;

-- ALTER: Modify 2 datatypes
ALTER TABLE orders MODIFY order_status VARCHAR(50);
ALTER TABLE orders MODIFY order_total DECIMAL(12,2);

-- INSERT 15 records (Method 3: multiple rows at once)
INSERT INTO orders (order_id, customer_id, order_date, order_total, order_status)
VALUES
(1, 1, '2026-01-01', 55000.00, 'Delivered'),
(2, 2, '2026-01-05', 20000.00, 'Shipped'),
(3, 3, '2026-01-10', 2500.00, 'Pending'),
(4, 4, '2026-01-12', 1500.00, 'Delivered'),
(5, 5, '2026-01-15', 800.00, 'Cancelled'),
(6, 6, '2026-01-18', 12000.00, 'Shipped'),
(7, 7, '2026-01-20', 25000.00, 'Delivered'),
(8, 8, '2026-01-22', 500.00, 'Pending'),
(9, 9, '2026-01-25', 3000.00, 'Delivered'),
(10, 10, '2026-01-28', 2000.00, 'Shipped'),
(11, 11, '2026-02-01', 600.00, 'Pending'),
(12, 12, '2026-02-03', 4000.00, 'Delivered'),
(13, 13, '2026-02-05', 6000.00, 'Shipped'),
(14, 14, '2026-02-08', 8000.00, 'Pending'),
(15, 15, '2026-02-10', 1800.00, 'Delivered');

-- UPDATE 5 columns
UPDATE orders SET order_status = 'Delivered' WHERE order_id = 2;
UPDATE orders SET order_total = 2800.00 WHERE order_id = 3;
UPDATE orders SET order_date = '2026-01-13' WHERE order_id = 4;
UPDATE orders SET order_status = 'Returned' WHERE order_id = 5;
UPDATE orders SET order_total = 13000.00 WHERE order_id = 6;

-- DELETE
DELETE FROM orders WHERE order_id = 15;
DELETE FROM orders WHERE order_id = 14;

-- table 4
CREATE TABLE payments (
    payment_id INT PRIMARY KEY,
    order_id INT,
    amount DECIMAL(10,2)
);

-- ALTER: Add 3 columns
ALTER TABLE payments ADD payment_method VARCHAR(30);
ALTER TABLE payments ADD payment_date DATE;
ALTER TABLE payments ADD remarks VARCHAR(50);

-- ALTER: Drop 1 column
ALTER TABLE payments DROP COLUMN remarks;

-- ALTER: Rename 2 columns
ALTER TABLE payments RENAME COLUMN payment_method TO pay_mode;
ALTER TABLE payments RENAME COLUMN amount TO paid_amount;

-- ALTER: Modify 2 datatypes
ALTER TABLE payments MODIFY pay_mode VARCHAR(50);
ALTER TABLE payments MODIFY paid_amount DECIMAL(12,2);

-- INSERT 15 records 
INSERT INTO payments (payment_id, order_id, paid_amount, pay_mode, payment_date)
VALUES (1, 1, 55000.00, 'UPI', '2026-01-01');
INSERT INTO payments (payment_id, order_id, paid_amount, pay_mode, payment_date)
VALUES (2, 2, 20000.00, 'Credit Card', '2026-01-05');
INSERT INTO payments (payment_id, order_id, paid_amount, pay_mode, payment_date)
VALUES (3, 3, 2500.00, 'Net Banking', '2026-01-10');
INSERT INTO payments (payment_id, order_id, paid_amount, pay_mode, payment_date)
VALUES (4, 4, 1500.00, 'UPI', '2026-01-12');
INSERT INTO payments (payment_id, order_id, paid_amount, pay_mode, payment_date)
VALUES (5, 5, 800.00, 'Debit Card', '2026-01-15');
INSERT INTO payments (payment_id, order_id, paid_amount, pay_mode, payment_date)
VALUES (6, 6, 12000.00, 'Credit Card', '2026-01-18');
INSERT INTO payments (payment_id, order_id, paid_amount, pay_mode, payment_date)
VALUES (7, 7, 25000.00, 'UPI', '2026-01-20');
INSERT INTO payments (payment_id, order_id, paid_amount, pay_mode, payment_date)
VALUES (8, 8, 500.00, 'Cash', '2026-01-22');
INSERT INTO payments (payment_id, order_id, paid_amount, pay_mode, payment_date)
VALUES (9, 9, 3000.00, 'Net Banking', '2026-01-25');
INSERT INTO payments (payment_id, order_id, paid_amount, pay_mode, payment_date)
VALUES (10, 10, 2000.00, 'UPI', '2026-01-28');
INSERT INTO payments (payment_id, order_id, paid_amount, pay_mode, payment_date)
VALUES (11, 11, 600.00, 'Debit Card', '2026-02-01');
INSERT INTO payments (payment_id, order_id, paid_amount, pay_mode, payment_date)
VALUES (12, 12, 4000.00, 'Credit Card', '2026-02-03');
INSERT INTO payments (payment_id, order_id, paid_amount, pay_mode, payment_date)
VALUES (13, 13, 6000.00, 'UPI', '2026-02-05');
INSERT INTO payments (payment_id, order_id, paid_amount, pay_mode, payment_date)
VALUES (14, 14, 8000.00, 'Net Banking', '2026-02-08');
INSERT INTO payments (payment_id, order_id, paid_amount, pay_mode, payment_date)
VALUES (15, 15, 1800.00, 'Cash', '2026-02-10');

-- UPDATE 5 columns
UPDATE payments SET pay_mode = 'UPI' WHERE payment_id = 2;
UPDATE payments SET paid_amount = 2800.00 WHERE payment_id = 3;
UPDATE payments SET payment_date = '2026-01-13' WHERE payment_id = 4;
UPDATE payments SET pay_mode = 'Credit Card' WHERE payment_id = 5;
UPDATE payments SET paid_amount = 13000.00 WHERE payment_id = 6;

-- DELETE
DELETE FROM payments WHERE payment_id = 15;
DELETE FROM payments WHERE payment_id = 14;

-- table 5
CREATE TABLE shipping (
    shipping_id INT PRIMARY KEY,
    order_id INT,
    address VARCHAR(100)
);

-- ALTER: Add 3 columns
ALTER TABLE shipping ADD city VARCHAR(50);
ALTER TABLE shipping ADD status VARCHAR(30);
ALTER TABLE shipping ADD pincode VARCHAR(10);

-- ALTER: Drop 1 column
ALTER TABLE shipping DROP COLUMN pincode;

-- ALTER: Rename 2 columns
ALTER TABLE shipping RENAME COLUMN status TO shipping_status;
ALTER TABLE shipping RENAME COLUMN city TO shipping_city;

-- ALTER: Modify 2 datatypes
ALTER TABLE shipping MODIFY address VARCHAR(200);
ALTER TABLE shipping MODIFY shipping_status VARCHAR(50);

-- INSERT 15 records (Method 1: with column names)
INSERT INTO shipping (shipping_id, order_id, address, shipping_city, shipping_status)
VALUES (1, 1, '12 MG Road', 'Mandya', 'Delivered');
INSERT INTO shipping (shipping_id, order_id, address, shipping_city, shipping_status)
VALUES (2, 2, '45 Sayyaji Rao Road', 'Mysore', 'In Transit');
INSERT INTO shipping (shipping_id, order_id, address, shipping_city, shipping_status)
VALUES (3, 3, '78 Brigade Road', 'Bangalore', 'Processing');
INSERT INTO shipping (shipping_id, order_id, address, shipping_city, shipping_status)
VALUES (4, 4, '23 Anna Salai', 'Chennai', 'Delivered');
INSERT INTO shipping (shipping_id, order_id, address, shipping_city, shipping_status)
VALUES (5, 5, '56 Banjara Hills', 'Hyderabad', 'Cancelled');
INSERT INTO shipping (shipping_id, order_id, address, shipping_city, shipping_status)
VALUES (6, 6, '89 Hampankatta', 'Mangalore', 'Shipped');
INSERT INTO shipping (shipping_id, order_id, address, shipping_city, shipping_status)
VALUES (7, 7, '34 Deshpande Nagar', 'Hubli', 'Delivered');
INSERT INTO shipping (shipping_id, order_id, address, shipping_city, shipping_status)
VALUES (8, 8, '67 Tilakwadi', 'Belgaum', 'Processing');
INSERT INTO shipping (shipping_id, order_id, address, shipping_city, shipping_status)
VALUES (9, 9, '11 Vinoba Nagar', 'Shimoga', 'Delivered');
INSERT INTO shipping (shipping_id, order_id, address, shipping_city, shipping_status)
VALUES (10, 10, '22 BH Road', 'Tumkur', 'In Transit');
INSERT INTO shipping (shipping_id, order_id, address, shipping_city, shipping_status)
VALUES (11, 11, '33 KM Road', 'Mandya', 'Processing');
INSERT INTO shipping (shipping_id, order_id, address, shipping_city, shipping_status)
VALUES (12, 12, '44 Nazarbad', 'Mysore', 'Delivered');
INSERT INTO shipping (shipping_id, order_id, address, shipping_city, shipping_status)
VALUES (13, 13, '55 Koramangala', 'Bangalore', 'Shipped');
INSERT INTO shipping (shipping_id, order_id, address, shipping_city, shipping_status)
VALUES (14, 14, '66 Jayanagar', 'Bangalore', 'Pending');
INSERT INTO shipping (shipping_id, order_id, address, shipping_city, shipping_status)
VALUES (15, 15, '77 Rajajinagar', 'Bangalore', 'Delivered');

-- UPDATE 5 columns
UPDATE shipping SET shipping_status = 'Delivered' WHERE shipping_id = 2;
UPDATE shipping SET address = '99 New Street' WHERE shipping_id = 3;
UPDATE shipping SET shipping_city = 'Coimbatore' WHERE shipping_id = 5;
UPDATE shipping SET shipping_status = 'Delivered' WHERE shipping_id = 6;
UPDATE shipping SET address = '100 Main Road' WHERE shipping_id = 8;

-- DELETE
DELETE FROM shipping WHERE shipping_id = 15;
DELETE FROM shipping WHERE shipping_id = 14;