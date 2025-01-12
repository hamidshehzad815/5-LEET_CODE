-- Active: 1728706307382@@127.0.0.1@3306@leetcode
CREATE TABLE Users (
    user_id INT,
    user_name VARCHAR(100),
    PRIMARY KEY (user_id)
);

INSERT INTO
    Users (user_id, user_name)
VALUES (6, 'Alice'),
    (2, 'Bob'),
    (7, 'Alex');

CREATE TABLE Register (
    contest_id INT,
    user_id INT,
    FOREIGN KEY (user_id) REFERENCES Users (user_id)
);

INSERT INTO
    Register (contest_id, user_id)
VALUES (215, 6),
    (209, 2),
    (208, 2),
    (210, 6),
    (208, 6),
    (209, 7),
    (209, 6),
    (215, 7),
    (208, 7),
    (210, 2),
    (207, 2),
    (210, 7);

SELECT r.contest_id, ROUND(
        (
            COUNT(r.user_id) / (
                SELECT COUNT(*)
                FROM `Users`
            ) * 100
        ), 2
    ) as 'percentage'
FROM `Users` u
    JOIN `Register` r ON u.user_id = r.user_id
GROUP BY
    r.contest_id
ORDER BY percentage DESC, contest_id;