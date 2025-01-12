CREATE TABLE Signups (
    user_id INT,
    time_stamp DATETIME
);

DROP TABLE `Signups`;
INSERT INTO Signups (user_id, time_stamp) VALUES
(3, '2020-03-21 10:16:13'),
(7, '2020-01-04 13:57:59'),
(2, '2020-07-29 23:09:44'),
(6, '2020-12-09 10:39:37');

CREATE TABLE Confirmations (
    user_id INT,
    time_stamp DATETIME,
    action VARCHAR(20)
);
DROP table `Confirmations`

INSERT INTO Confirmations (user_id, time_stamp, action) VALUES
(3, '2021-01-06 03:30:46', 'timeout'),
(3, '2021-07-14 14:00:00', 'timeout'),
(7, '2021-06-12 11:57:29', 'confirmed'),
(7, '2021-06-13 12:58:28', 'confirmed'),
(7, '2021-06-14 13:59:27', 'confirmed'),
(2, '2021-01-22 00:00:00', 'confirmed'),
(2, '2021-02-28 23:59:59', 'timeout');


SELECT s.user_id,      
       IFNULL(ROUND(SUM(c.action = 'confirmed') / COUNT(c.user_id), 2), 0.00) AS confirmation_rate
FROM `Signups` s
LEFT JOIN `Confirmations` c
ON s.user_id = c.user_id
GROUP BY s.user_id;



INSERT INTO Signups (user_id, time_stamp) VALUES
(9, '2020-01-23 08:33:13'),
(10, '2021-11-25 22:09:08'),
(3, '2021-09-20 20:00:03'),
(17, '2020-11-30 16:46:50'),
(4, '2020-01-20 05:51:39'),
(14, '2021-09-04 19:27:43'),
(13, '2021-04-22 09:57:23'),
(18, '2020-07-19 14:04:36'),
(7, '2020-12-18 11:44:03');

INSERT INTO Confirmations (user_id, time_stamp, action) VALUES
(17, '2021-05-23 08:22:54', 'timeout'),
(3, '2021-04-19 15:51:35', 'timeout'),
(3, '2020-10-13 07:03:17', 'timeout'),
(4, '2020-09-18 20:03:08', 'confirmed'),
(10, '2021-05-01 14:46:13', 'timeout'),
(3, '2020-01-03 01:19:48', 'confirmed'),
(10, '2021-12-19 07:38:08', 'confirmed'),
(10, '2020-06-28 07:22:23', 'confirmed'),
(4, '2021-09-20 22:53:49', 'confirmed'),
(4, '2021-12-07 16:29:49', 'timeout');
