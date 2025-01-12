-- Active: 1728706307382@@127.0.0.1@3306@leetcode
-- Create the table
CREATE TABLE queries (
    query_name VARCHAR(50),
    result VARCHAR(50),
    position INT,
    rating INT
);

-- Insert the data
INSERT INTO
    queries (
        query_name,
        result,
        position,
        rating
    )
VALUES (
        'Dog',
        'Golden Retriever',
        1,
        5
    ),
    (
        'Dog',
        'German Shepherd',
        2,
        5
    ),
    ('Dog', 'Mule', 200, 1),
    ('Cat', 'Shirazi', 5, 2),
    ('Cat', 'Siamese', 3, 3),
    ('Cat', 'Sphynx', 7, 4);

SELECT query_name, ROUND(
        SUM(rating / position) / COUNT(query_name), 2
    ) as 'quality', ROUND(
        (
            (
                COUNT(
                    CASE
                        WHEN rating < 3 THEN 1
                    END
                )
            ) / COUNT(query_name)
        ) * 100, 2
    ) as 'poor_query_percentage'
FROM queries
GROUP BY
    query_name;

SELECT COUNT(*) FROM queries WHERE rating < 3 GROUP BY query_name