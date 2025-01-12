CREATE TABLE Employees (
    id INT PRIMARY KEY,
    name VARCHAR(50),
    department VARCHAR(50),
    managerId INT
);

DROP TABLE `Employees`;
INSERT INTO Employees (id, name, department, managerId) VALUES
(101, 'John', 'A', NULL),
(102, 'Dan', 'A', 101),
(103, 'James', 'A', 101),
(104, 'Amy', 'A', 101),
(105, 'Anne', 'A', 101),
(106, 'Ron', 'B', 101),
(111, 'John', 'A', NULL),
(112, 'Dan', 'A', 111),
(113, 'James', 'A', 111),
(114, 'Amy', 'A', 111),
(115, 'Anne', 'A', 111),
(116, 'Ron', 'B', 111);


SELECT e2.name
FROM Employees e1
    JOIN Employees e2 ON e1.managerId = e2.id
GROUP BY e2.id,e2.name
HAVING COUNT(e1.id) > 4;




-- Step 2: Insert the data into the Employee table
INSERT INTO Employees (id, name, department, managerId) VALUES
(101, 'John', 'A', NULL),
(102, 'Dan', 'A', 101),
(103, 'James', 'A', 101),
(104, 'Amy', 'A', 101),
(105, 'Anne', 'A', 101),
(106, 'Ron', 'B', 101);


INSERT INTO Employees (id, name, department, managerId) VALUES
(101, NULL, 'A', NULL),
(102, NULL, 'A', 101),
(103, NULL, 'A', 101),
(104, NULL, 'A', 101),
(105, NULL, 'A', 101),
(106, NULL, 'B', 101);