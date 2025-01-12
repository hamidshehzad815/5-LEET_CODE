-- Step 1: Create the table
CREATE TABLE Cinema (
    id INT PRIMARY KEY,
    movie VARCHAR(50),
    description VARCHAR(100),
    rating DECIMAL(3,1)
);

-- Step 2: Insert the data
INSERT INTO Cinema (id, movie, description, rating) VALUES
(1, 'War', 'great 3D', 8.9),
(2, 'Science', 'fiction', 8.5),
(3, 'irish', 'boring', 6.2),
(4, 'Ice song', 'Fantacy', 8.6),
(5, 'House card', 'Interesting', 9.1);


SELECT *
FROM `Cinema`
WHERE id % 2 <> 0 and description <> 'boring'
ORDER BY rating desc