-- Create the Employees table
CREATE TABLE EmployeesTime (
    emp_id INT NOT NULL,
    event_day DATE NOT NULL,
    in_time INT NOT NULL,
    out_time INT NOT NULL
);

-- Insert data into the Employees table
INSERT INTO EmployeesTime (emp_id, event_day, in_time, out_time) VALUES
(1, '2020-11-28', 4, 32),
(1, '2020-11-28', 55, 200),
(1, '2020-12-03', 1, 42),
(2, '2020-11-28', 3, 33),
(2, '2020-12-09', 47, 74);



SELECT event_day as "day",emp_id,sum(out_time-in_time) as "total_time"
FROM `EmployeesTime`
GROUP BY event_day,emp_id;


