-- Create the MyNumbers table
-- Create the MyNumbers table
CREATE TABLE MyNumbers (
    num INT NOT NULL
);

DROP TABLE `MyNumbers`;
-- Insert data into the MyNumbers table
INSERT INTO MyNumbers (num) VALUES
(8),
(8),
(7),
(7),
(3),
(3);



SELECT COALESCE(num,NULL) as "num"
FROM (
SELECT COALESCE(max(num),NULL) as "num"
FROM `MyNumbers`
GROUP BY num
HAVING count(num) = 1
ORDER BY num DESC
LIMIT 1
) as gg