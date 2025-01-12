-- Active: 1728706307382@@127.0.0.1@3306@leetcode
-- Create the table
CREATE TABLE activity (
    player_id INT,
    device_id INT,
    event_date DATE,
    games_played INT
);

DROP TABLE activity;
-- Insert the data
-- Inserting additional data into the activity table
-- Inserting more complex data into the activity table
INSERT INTO
    activity (
        player_id,
        device_id,
        event_date,
        games_played
    )
VALUES (1, 2, '2016-03-01', 5),
    (1, 2, '2016-03-02', 6),
    (2, 3, '2017-06-25', 1),
    (3, 1, '2016-03-02', 0),
    (3, 4, '2018-07-03', 5),
    (1, 1, '2016-03-03', 4),
    (2, 2, '2017-06-26', 3),
    (1, 2, '2016-03-04', 2),
    (3, 3, '2018-07-04', 7),
    (2, 3, '2017-06-27', 2),
    (1, 1, '2016-03-05', 1),
    (2, 2, '2017-06-28', 0),
    (3, 4, '2018-07-05', 6),
    (1, 2, '2016-03-06', 8),
    (3, 1, '2016-03-03', 2),
    (2, 3, '2017-06-29', 5),
    (4, 2, '2018-05-10', 3),
    (5, 1, '2019-08-15', 4),
    (5, 3, '2019-08-16', 2),
    (6, 2, '2020-01-01', 7),
    (6, 4, '2020-01-02', 6),
    (7, 1, '2021-04-10', 3),
    (8, 3, '2021-05-20', 5),
    (9, 2, '2022-02-28', 4),
    (10, 1, '2022-03-01', 1),
    (4, 4, '2018-05-11', 2),
    (5, 2, '2019-08-17', 3),
    (6, 3, '2020-01-03', 5),
    (7, 4, '2021-04-11', 2),
    (8, 1, '2021-05-21', 8),
    (9, 2, '2022-03-02', 0),
    (10, 3, '2022-03-03', 6);



SELECT player_id, MIN(event_date) AS first_login
FROM Activity
GROUP BY
    player_id;

SELECT ROUND(
        COUNT(DISTINCT player_id) / (
            SELECT COUNT(DISTINCT player_id)
            FROM Activity
        ), 2
    ) AS fraction
FROM Activity
WHERE (
        player_id,
        DATE_SUB(event_date, INTERVAL 1 DAY)
    ) IN (
        SELECT player_id, MIN(event_date) AS first_login
        FROM Activity
        GROUP BY
            player_id
    )