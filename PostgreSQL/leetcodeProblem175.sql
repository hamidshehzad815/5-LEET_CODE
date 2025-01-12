-- Active: 1736051556968@@127.0.0.1@5432@testdatabase
-- Create the Person table
CREATE TABLE Person (
    personId SERIAL PRIMARY KEY,
    lastName VARCHAR(50),
    firstName VARCHAR(50)
);

-- Insert data into the Person table
INSERT INTO Person (personId, lastName, firstName) VALUES
(1, 'Wang', 'Allen'),
(2, 'Alice', 'Bob');

-- Create the Address table
CREATE TABLE Address (
    addressId SERIAL PRIMARY KEY,
    personId INT,
    city VARCHAR(100),
    state VARCHAR(100),
    FOREIGN KEY (personId) REFERENCES Person(personId)
);

-- Insert data into the Address table
-- Drop the foreign key constraint
ALTER TABLE Address DROP CONSTRAINT address_personid_fkey;

-- Now insert the data into the Address table
INSERT INTO Address (addressId, personId, city, state) VALUES
(1, 2, 'New York City', 'New York'),
(2, 3, 'Leetcode', 'California');


SELECT * from Person;
SELECT * from Address;


SELECT firstname,lastname , COALESCE(city,NULL),COALESCE(state,NULL)
FROM Person p
LEFT JOIN Address a USING (personId)

SELECT *
FROM Person
CROSS JOIN Address