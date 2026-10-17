-- MINISHOP: SQL Business Analysis Queries
-- Database: PostgreSQL

-- 1. View all customers
SELECT *
FROM customers;

-- 2. View all products
SELECT *
FROM products;

-- 3. View all orders
SELECT *
FROM orders;

-- 4. Calculate revenue for each order
SELECT
    o.order_id,
    p.product_name,
    o.quantity,
    p.price,
    o.quantity * p.price AS order_revenue
FROM orders o
JOIN products p
    ON o.product_id = p.product_id;

-- 5. Total revenue generated
SELECT
    SUM(o.quantity * p.price) AS total_revenue
FROM orders o
JOIN products p
    ON o.product_id = p.product_id;

-- 6. Revenue by product category
SELECT
    p.category,
    SUM(o.quantity * p.price) AS category_revenue
FROM orders o
JOIN products p
    ON o.product_id = p.product_id
GROUP BY p.category
ORDER BY category_revenue DESC;

-- 7. Total spending by each customer
SELECT
    c.customer_name,
    SUM(o.quantity * p.price) AS total_spending
FROM customers c
JOIN orders o
    ON c.customer_id = o.customer_id
JOIN products p
    ON o.product_id = p.product_id
GROUP BY c.customer_id, c.customer_name
ORDER BY total_spending DESC;

-- 8. Number of orders by city
SELECT
    c.city,
    COUNT(o.order_id) AS total_orders
FROM customers c
JOIN orders o
    ON c.customer_id = o.customer_id
GROUP BY c.city
ORDER BY total_orders DESC;

-- 9. Products ranked by quantity sold
SELECT
    p.product_name,
    SUM(o.quantity) AS units_sold
FROM products p
JOIN orders o
    ON p.product_id = o.product_id
GROUP BY p.product_id, p.product_name
ORDER BY units_sold DESC;

-- 10. Monthly revenue
SELECT
    DATE_TRUNC('month', o.order_date)::DATE AS order_month,
    SUM(o.quantity * p.price) AS monthly_revenue
FROM orders o
JOIN products p
    ON o.product_id = p.product_id
GROUP BY DATE_TRUNC('month', o.order_date)
ORDER BY order_month;
