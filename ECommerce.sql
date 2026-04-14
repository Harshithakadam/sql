CREATE DATABASE ECommerce;
USE ECommerce;

-- Table 1: Customers
CREATE TABLE Customers (
    customer_id INT PRIMARY KEY AUTO_INCREMENT,
    first_name VARCHAR(50) NOT NULL,
    last_name VARCHAR(50) NOT NULL,
    email VARCHAR(100) UNIQUE NOT NULL,
    phone VARCHAR(15),
    date_of_birth DATE,
    gender ENUM('Male', 'Female', 'Other'),
    address TEXT,
    city VARCHAR(100),
    state VARCHAR(100),
    pincode VARCHAR(10),
    registration_date DATE,
    loyalty_points INT DEFAULT 0
);

INSERT INTO Customers VALUES (1, 'Priya', 'Nair', 'priya@gmail.com', '9876501234', '1998-11-05', 'Female', '12 MG Road', 'Bengaluru', 'Karnataka', '560001', '2023-03-15', 150);

-- Table 2: Products
CREATE TABLE Products (
    product_id INT PRIMARY KEY AUTO_INCREMENT,
    product_name VARCHAR(150) NOT NULL,
    category VARCHAR(100),
    brand VARCHAR(100),
    price DECIMAL(10,2) NOT NULL,
    discount_percent DECIMAL(5,2) DEFAULT 0,
    stock_quantity INT,
    rating DECIMAL(3,2),
    description TEXT,
    added_date DATE
);

INSERT INTO Products VALUES (1, 'Samsung Galaxy M35', 'Smartphones', 'Samsung', 18999.00, 10.00, 200, 4.30, '6000mAh battery, 50MP camera', '2024-01-20');

-- Table 3: Orders
CREATE TABLE Orders (
    order_id INT PRIMARY KEY AUTO_INCREMENT,
    customer_id INT,
    order_date DATETIME,
    total_amount DECIMAL(10,2),
    discount_amount DECIMAL(10,2) DEFAULT 0,
    final_amount DECIMAL(10,2),
    payment_method ENUM('COD', 'UPI', 'Card', 'Wallet'),
    payment_status ENUM('Paid', 'Pending', 'Failed') DEFAULT 'Pending',
    order_status ENUM('Placed', 'Shipped', 'Delivered', 'Cancelled') DEFAULT 'Placed',
    delivery_address TEXT,
    FOREIGN KEY (customer_id) REFERENCES Customers(customer_id)
);

INSERT INTO Orders VALUES (1, 1, '2024-10-10 14:30:00', 18999.00, 1899.90, 17099.10, 'UPI', 'Paid', 'Delivered', '12 MG Road, Bengaluru');

-- Table 4: Order_Items
CREATE TABLE Order_Items (
    item_id INT PRIMARY KEY AUTO_INCREMENT,
    order_id INT,
    product_id INT,
    quantity INT,
    unit_price DECIMAL(10,2),
    discount_percent DECIMAL(5,2),
    subtotal DECIMAL(10,2),
    FOREIGN KEY (order_id) REFERENCES Orders(order_id),
    FOREIGN KEY (product_id) REFERENCES Products(product_id)
);

INSERT INTO Order_Items VALUES (1, 1, 1, 1, 18999.00, 10.00, 17099.10);

-- Table 5: Reviews
CREATE TABLE Reviews (
    review_id INT PRIMARY KEY AUTO_INCREMENT,
    product_id INT,
    customer_id INT,
    rating INT CHECK (rating BETWEEN 1 AND 5),
    review_title VARCHAR(150),
    review_text TEXT,
    review_date DATE,
    helpful_votes INT DEFAULT 0,
    verified_purchase BOOLEAN DEFAULT TRUE,
    FOREIGN KEY (product_id) REFERENCES Products(product_id),
    FOREIGN KEY (customer_id) REFERENCES Customers(customer_id)
);

INSERT INTO Reviews VALUES (1, 1, 1, 5, 'Excellent Phone!', 'Battery life is amazing, camera quality is top notch. Highly recommended!', '2024-10-20', 12, TRUE);