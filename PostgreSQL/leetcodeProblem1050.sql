-- Create the ActorDirector table
CREATE TABLE ActorDirector (
    actor_id INT NOT NULL,
    director_id INT NOT NULL,
    timestamp INT NOT NULL
);

DROP TABLE `ActorDirector`;
-- Insert new data into the ActorDirector table
INSERT INTO ActorDirector (actor_id, director_id, timestamp) VALUES
(3, 2, 7),
(3, 5, 6),
(2, 2, 0),
(4, 5, 14),
(2, 3, 2),
(4, 3, 11),
(3, 1, 4),
(5, 1, 9),
(3, 3, 1),
(5, 5, 12),
(2, 5, 13),
(3, 5, 10),
(4, 5, 8),
(1, 1, 3),
(4, 5, 5);

-- Insert data into the ActorDirector table
INSERT INTO ActorDirector (actor_id, director_id, timestamp) VALUES
(1, 1, 0),
(1, 1, 1),
(1, 1, 2),
(1, 2, 3),
(1, 2, 4),
(2, 1, 5),
(2, 1, 6);

SELECT actor_id,director_id
FROM `ActorDirector`
GROUP BY actor_id,director_id
HAVING COUNT(*) >= 3