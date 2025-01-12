-- Create the Department table
CREATE TABLE Department (
    id INT PRIMARY KEY,
    name VARCHAR(50) NOT NULL
);

-- Insert data into the Department table
INSERT INTO Department (id, name) VALUES
(1, 'IT'),
(2, 'Sales');

-- Create the Employee table
CREATE TABLE Employeee (
    id INT PRIMARY KEY,
    name VARCHAR(50) NOT NULL,
    salary INT NOT NULL,
    departmentId INT NOT NULL,
    FOREIGN KEY (departmentId) REFERENCES Department(id)
);

-- Insert data into the Employee table
INSERT INTO Employeee (id, name, salary, departmentId) VALUES
(1, 'Joe', 70000, 1),
(2, 'Jim', 90000, 1),
(3, 'Henry', 80000, 2),
(4, 'Sam', 60000, 2),
(5, 'Max', 90000, 1);



SELECT *
FROM department d
CROSS JOIN employeee e


SELECT d.name,e.name
FROM employeee e,department d
