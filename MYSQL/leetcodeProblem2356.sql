-- Active: 1728706307382@@127.0.0.1@3306@leetcode
-- Create the Teacher table
CREATE TABLE Teacher (
    teacher_id INT,
    subject_id INT,
    dept_id INT
);

-- Insert the data into the Teacher table
INSERT INTO
    Teacher (
        teacher_id,
        subject_id,
        dept_id
    )
VALUES (1, 2, 3),
    (1, 2, 4),
    (1, 3, 3),
    (2, 1, 1),
    (2, 2, 1),
    (2, 3, 1),
    (2, 4, 1);

SELECT DISTINCT
    teacher_id,
    COUNT(DISTINCT subject_id)
FROM `Teacher`
GROUP BY
    teacher_id