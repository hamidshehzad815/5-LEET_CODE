-- Create Product table
CREATE DATABASE leetcode;
USE leetcode;
CREATE TABLE Product (
    product_id INT PRIMARY KEY,
    product_name VARCHAR(50)
);

-- Create Sales table with a composite primary key (sale_id, year)
CREATE TABLE Sales (
    sale_id INT,
    product_id INT,
    year INT,
    quantity INT,
    price INT,
    PRIMARY KEY (sale_id, year),
    CONSTRAINT fk_product
      FOREIGN KEY (product_id) REFERENCES Product(product_id)
);

-- Insert data into Product table
INSERT INTO Product (product_id, product_name)
VALUES 
    (100, 'Nokia'),
    (200, 'Apple'),
    (300, 'Samsung');

-- Insert data into Sales table
INSERT INTO Sales (sale_id, product_id, year, quantity, price) 
VALUES 
    (1, 100, 2008, 10, 5000),
    (2, 100, 2009, 12, 5000),
    (7, 200, 2011, 15, 9000);


SELECT * FROM Product

SELECT p.product_name,s.year,s.price
FROM Sales s JOIN Product p USING(product_id)