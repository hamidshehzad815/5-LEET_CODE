-- Active: 1736051556968@@127.0.0.1@5432@testdatabase
-- Create Products Table if it does not exist
CREATE TABLE IF NOT EXISTS Products (
    product_id INT,
    product_name VARCHAR(40),
    product_category VARCHAR(40)
);

-- Create Orders Table if it does not exist
CREATE TABLE IF NOT EXISTS Orders (
    product_id INT,
    order_date DATE,
    unit INT
);

-- Truncate Products Table to remove existing data
TRUNCATE TABLE Products;

-- Insert data into Products Table
INSERT INTO Products (product_id, product_name, product_category) VALUES (1, 'Leetcode Solutions', 'Book');
INSERT INTO Products (product_id, product_name, product_category) VALUES (2, 'Jewels of Stringology', 'Book');
INSERT INTO Products (product_id, product_name, product_category) VALUES (3, 'HP', 'Laptop');
INSERT INTO Products (product_id, product_name, product_category) VALUES (4, 'Lenovo', 'Laptop');
INSERT INTO Products (product_id, product_name, product_category) VALUES (5, 'Leetcode Kit', 'T-shirt');

-- Truncate Orders Table to remove existing data
TRUNCATE TABLE Orders;

-- Insert data into Orders Table
INSERT INTO Orders (product_id, order_date, unit) VALUES (1, '2020-02-05', 60);
INSERT INTO Orders (product_id, order_date, unit) VALUES (1, '2020-02-10', 70);
INSERT INTO Orders (product_id, order_date, unit) VALUES (2, '2020-01-18', 30);
INSERT INTO Orders (product_id, order_date, unit) VALUES (2, '2020-02-11', 80);
INSERT INTO Orders (product_id, order_date, unit) VALUES (3, '2020-02-17', 2);
INSERT INTO Orders (product_id, order_date, unit) VALUES (3, '2020-02-24', 3);
INSERT INTO Orders (product_id, order_date, unit) VALUES (4, '2020-03-01', 20);
INSERT INTO Orders (product_id, order_date, unit) VALUES (4, '2020-03-04', 30);
INSERT INTO Orders (product_id, order_date, unit) VALUES (4, '2020-03-04', 60);
INSERT INTO Orders (product_id, order_date, unit) VALUES (5, '2020-02-25', 50);
INSERT INTO Orders (product_id, order_date, unit) VALUES (5, '2020-02-27', 50);
INSERT INTO Orders (product_id, order_date, unit) VALUES (5, '2020-03-01', 50);

SELECT order_date
FROM orders;

SELECT p.product_name,SUM(o.unit) as "unit"
FROM Products p
JOIN Orders o
ON p.product_id = o.product_id
WHERE o.order_date BETWEEN to_date('2020-02-01','yyyy-mm-dd') AND to_date('2020-03-01','yyyy-mm-dd') - INTERVAL '1 day'
GROUP BY p.product_name
HAVING sum(o.unit) >= 100