-- Create the table
CREATE TABLE Persons (
    id INT PRIMARY KEY,
    email VARCHAR(100) NOT NULL
);

-- Insert data into the table
INSERT INTO Persons (id, email) VALUES
(1, 'a@b.com'),
(2, 'c@d.com'),
(3, 'a@b.com');


SELECT *
FROM Persons

SELECT email as "Email"
FROM Persons
GROUP BY email 
HAVING count(email) > 1

DELETE FROM persons
HAVING count(email)>1