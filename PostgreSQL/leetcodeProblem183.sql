-- Create the Customers table
CREATE TABLE Customers (
    id INT PRIMARY KEY,
    name VARCHAR(50) NOT NULL
);

-- Insert data into the Customers table
INSERT INTO Customers (id, name) VALUES
(1, 'Joe'),
(2, 'Henry'),
(3, 'Sam'),
(4, 'Max');

-- Create the Orders table
CREATE TABLE Orders (
    id INT PRIMARY KEY,
    customerId INT NOT NULL,
    FOREIGN KEY (customerId) REFERENCES Customers(id)
);

-- Insert data into the Orders table
INSERT INTO Orders (id, customerId) VALUES
(1, 3),
(2, 1);


SELECT name as "Customer"
FROM customers c
LEFT JOIN orders o
ON c.id = o.customerid
WHERE o.customerid IS NULL