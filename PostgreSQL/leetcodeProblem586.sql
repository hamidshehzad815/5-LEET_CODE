-- Active: 1729865850858@@127.0.0.1@3306@leetcode
-- Create the Orders table
CREATE TABLE Orders (
    order_number INT PRIMARY KEY,
    customer_number INT NOT NULL
);

-- Insert data into the Orders table
INSERT INTO Orders (order_number, customer_number) VALUES
(1, 1),
(2, 2),
(3, 3),
(4, 3);


SELECT *
FROM `Orders`

SELECT customer_number
FROM `Orders`
GROUP BY customer_number
ORDER BY COUNT(customer_number) DESC
LIMIT 1