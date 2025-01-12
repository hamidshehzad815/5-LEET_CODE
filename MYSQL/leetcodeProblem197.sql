-- Active: 1727339273739@@127.0.0.1@3306@leetcode
CREATE TABLE Weather (
    id INT PRIMARY KEY,
    recordDate DATE,
    temperature INT
);
INSERT INTO Weather (id, recordDate, temperature) VALUES
(1, '2015-01-01', 10),
(2, '2015-01-02', 25),
(3, '2015-01-03', 20),
(4, '2015-01-04', 30);

INSERT INTO Weather (id, recordDate, temperature) VALUES
(1, '2000-12-14', 3),
(2, '2000-12-16', 5);

DROP TABLE `Weather`;
SELECT *
FROM `Weather` w1
JOIN `Weather` w2
WHERE w2.temperature > w1.temperature AND w1.`recordDate` = DATE_SUB(w2.`recordDate`,INTERVAL 1 DAY)

SELECT '2015-01-31' = DATE_SUB('2015-02-01', INTERVAL 1 DAY);
