CREATE DATABASE college;

-- 2.for  USE DATABASE
USE college;

 -- 3. DELETE DATABASE
DROP DATABASE college;

-- Select the database
USE college;

-- Create students table
CREATE TABLE students (
    id INT PRIMARY KEY AUTO_INCREMENT,
    name VARCHAR(50) NOT NULL,
    age INT,
    course VARCHAR(50),
    marks INT
);
--inserting values to the table
INSERT INTO students (name, age, course, marks)
VALUES
('Ayush', 20, 'CSE', 85),
('Rahul', 21, 'IT', 90),
('Aman', 20, 'CSE', 78);

--to display all records of the table 
SELECT * FROM students;
