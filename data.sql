-- ============================================
-- MINISHOP — Beginner eCommerce Dataset
-- ============================================

CREATE TABLE customers (
    customer_id   INT PRIMARY KEY,
    customer_name VARCHAR(50),
    city          VARCHAR(30)
);

CREATE TABLE products (
    product_id   INT PRIMARY KEY,
    product_name VARCHAR(50),
    category     VARCHAR(30),
    price        DECIMAL(10,2)
);

CREATE TABLE orders (
    order_id    INT PRIMARY KEY,
    customer_id INT,
    product_id  INT,
    quantity    INT,
    order_date  DATE
);

-- ---------- CUSTOMERS (6) ----------
INSERT INTO customers VALUES
(1,'Aarav','Mumbai'),
(2,'Priya','Delhi'),
(3,'Rohan','Mumbai'),
(4,'Sneha','Pune'),
(5,'Karan','Delhi'),
(6,'Meera','Pune');

-- ---------- PRODUCTS (6) ----------
INSERT INTO products VALUES
(101,'Wireless Earbuds','Electronics',2000.00),
(102,'T-Shirt','Apparel',800.00),
(103,'Face Wash','Beauty',300.00),
(104,'Running Shoes','Apparel',2500.00),
(105,'Water Bottle','Home',500.00),
(106,'Smart Watch','Electronics',4000.00);

-- ---------- ORDERS (12) ----------
INSERT INTO orders VALUES
(1,1,101,1,'2024-01-10'),
(2,2,102,2,'2024-01-15'),
(3,1,103,3,'2024-02-05'),
(4,3,104,1,'2024-02-12'),
(5,4,105,2,'2024-02-20'),
(6,2,106,1,'2024-03-02'),
(7,5,102,1,'2024-03-10'),
(8,1,105,1,'2024-03-18'),
(9,6,103,2,'2024-04-05'),
(10,3,101,1,'2024-04-12'),
(11,4,104,1,'2024-04-20'),
(12,2,101,1,'2024-05-01');
