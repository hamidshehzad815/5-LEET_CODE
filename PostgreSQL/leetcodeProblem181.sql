-- Create the table
CREATE TABLE Employee (
    id INT PRIMARY KEY,
    name VARCHAR(50) NOT NULL,
    salary INT NOT NULL,
    managerId INT
);

-- Insert data into the table
INSERT INTO Employee (id, name, salary, managerId) VALUES
(1, 'Joe', 70000, 3),
(2, 'Henry', 80000, 4),
(3, 'Sam', 60000, NULL),
(4, 'Max', 90000, NULL);


SELECT *
FROM Employee

SELECT e.name
FROM Employee e
JOIN Employee m
ON m.id = e.managerid
WHERE m.salary < e.salary
