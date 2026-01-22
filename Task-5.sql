USE intern_training_db;
CREATE TABLE students (
    student_id INT PRIMARY KEY AUTO_INCREMENT,
    name VARCHAR(50),
    age INT,
    department VARCHAR(50),
    marks INT
);
INSERT INTO students (name, age, department, marks) VALUES
('Anil', 20, 'CSE', 85),
('Sunita', 21, 'CSE', 90),
('Ravi', 20, 'ECE', 78),
('Meena', 22, 'ECE', 88),
('Kiran', 21, 'MECH', 70),
('Priya', 20, 'CSE', NULL),
('Rahul', 22, 'MECH', 65);
SELECT COUNT(*) AS total_students FROM students;
SELECT COUNT(marks) AS students_with_marks FROM students;
SELECT SUM(marks) AS total_marks FROM students;
SELECT AVG(marks) AS average_marks FROM students;
SELECT 
    MIN(marks) AS minimum_marks,
    MAX(marks) AS maximum_marks
FROM students;
SELECT age, COUNT(*) AS total_students
FROM students
GROUP BY age;
SELECT department, AVG(marks) AS avg_marks
FROM students
GROUP BY department;
SELECT department, AVG(marks) AS avg_marks
FROM students
GROUP BY department
HAVING AVG(marks) > 80;
SELECT department, COUNT(*) AS total_students
FROM students
WHERE age >= 21
GROUP BY department
HAVING COUNT(*) >= 2;
SELECT 
    COUNT(*) AS total_rows,
    COUNT(marks) AS marks_available
FROM students;
