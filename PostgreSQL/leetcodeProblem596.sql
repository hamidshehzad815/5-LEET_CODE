-- Create the Courses table
CREATE TABLE Courses (
    student CHAR(1) NOT NULL,
    class VARCHAR(50) NOT NULL
);

-- Insert data into the Courses table
INSERT INTO Courses (student, class) VALUES
('A', 'Math'),
('B', 'English'),
('C', 'Math'),
('D', 'Biology'),
('E', 'Math'),
('F', 'Computer'),
('G', 'Math'),
('H', 'Math'),
('I', 'Math');


SELECT *
FROM `Courses`;


SELECT class
FROM `Courses`
GROUP BY class
HAVING COUNT(student) >= 5