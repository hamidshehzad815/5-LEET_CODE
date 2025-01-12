-- Active: 1727339273739@@127.0.0.1@3306@leetcode
CREATE TABLE Visits (
    visit_id INT PRIMARY KEY,
    customer_id INT
);

CREATE TABLE Transactions (
    transaction_id INT PRIMARY KEY,
    visit_id INT,
    amount DECIMAL(10, 2),
    FOREIGN KEY (visit_id) REFERENCES Visits (visit_id)
);

INSERT INTO
    Visits (visit_id, customer_id)
VALUES (1, 23),
    (2, 9),
    (4, 30),
    (5, 54),
    (6, 96),
    (7, 54),
    (8, 54);

INSERT INTO
    Transactions (
        transaction_id,
        visit_id,
        amount
    )
VALUES (2, 5, 310.00),
    (3, 5, 300.00),
    (9, 5, 200.00),
    (12, 1, 910.00),
    (13, 2, 970.00);

SELECT customer_id,count(customer_id) AS count_no_trans
FROM `Visits`
WHERE
    visit_id NOT IN(
        SELECT visit_id
        FROM `Transactions`
    )
GROUP BY customer_id
ORDER BY count_no_trans DESC;

SELECT *
LEFT JOIN Transactions t
ON v.visit_id=t.visit_id
