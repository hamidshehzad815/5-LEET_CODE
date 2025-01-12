CREATE TABLE Employee (
    employee_id INT PRIMARY KEY,
    name VARCHAR(50),
    experience_years INT
);

CREATE TABLE Project (
    project_id INT,
    employee_id INT,
    PRIMARY KEY (project_id, employee_id),
    FOREIGN KEY (employee_id) REFERENCES Employee (employee_id)
);

INSERT INTO
    Employee (
        employee_id,
        name,
        experience_years
    )
VALUES (1, 'Khaled', 3),
    (2, 'Ali', 2),
    (3, 'John', 1),
    (4, 'Doe', 2);

INSERT INTO
    Project (project_id, employee_id)
VALUES (1, 1),
    (1, 2),
    (1, 3),
    (2, 1),
    (2, 4);

SELECT p.project_id, round(
        sum(e.experience_years) / COUNT(p.employee_id), 2
    ) as average_years
FROM `Project` p
    JOIN `Employee` e ON p.employee_id = e.employee_id
GROUP BY
    p.project_id