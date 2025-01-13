-- Create the Traveller table
-- Create the Users table
CREATE TABLE User (
    id INT PRIMARY KEY,
    name VARCHAR(50) NOT NULL
);

-- Insert data into the Users table (include all unique user IDs from both tables)
INSERT INTO User (id, name) VALUES
(1, 'Alice'),
(2, 'Bob'),
(3, 'Alex'),
(19, 'Alice'),
(7, 'Placeholder'), -- Add a placeholder for user_id 7
(13, 'Placeholder'); -- Add a placeholder for user_id 13

-- Create the Rides table
CREATE TABLE Rides (
    id INT PRIMARY KEY,
    user_id INT NOT NULL,
    distance INT NOT NULL,
    FOREIGN KEY (user_id) REFERENCES User(id)
);

-- Insert data into the Rides table (all provided data)
INSERT INTO Rides (id, user_id, distance) VALUES
(1, 1, 120),  -- Alice
(2, 2, 317),  -- Bob
(3, 3, 222),  -- Alex
(4, 7, 100),  -- Placeholder for user_id 7
(5, 13, 312), -- Placeholder for user_id 13
(9, 7, 230);  -- Placeholder for user_id 7



SELECT name,COALESCE(sum(distance),0) as "travelled_distance"
FROM `User` t
LEFT JOIN `Rides` r
ON t.id=r.user_id
GROUP BY t.id,name
ORDER BY travelled_distance DESC,name ASC
