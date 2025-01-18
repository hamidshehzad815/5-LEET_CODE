Followers table:
+---------+-------------+
| user_id | follower_id |
+---------+-------------+
| 0       | 1           |
| 1       | 0           |
| 2       | 0           |
| 2       | 1           |
+---------+-------------+
Output: 
+---------+----------------+
| user_id | followers_count|
+---------+----------------+
| 0       | 1              |
| 1       | 1              |
| 2       | 2              |
+---------+----------------+

-- Create the Followers table
CREATE TABLE Followers (
    user_id INT NOT NULL,
    follower_id INT NOT NULL
);

-- Insert data into the Followers table
INSERT INTO Followers (user_id, follower_id) VALUES
(0, 1),
(1, 0),
(2, 0),
(2, 1);


SELECT user_id,count(follower_id) as "followers_count"
FROM Followers
GROUP BY user_id
ORDER BY user_id