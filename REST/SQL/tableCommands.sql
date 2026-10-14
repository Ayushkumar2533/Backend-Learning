-- Select database
USE college;

-- Create table
CREATE TABLE students (
    id INT PRIMARY KEY AUTO_INCREMENT,
    name VARCHAR(50) NOT NULL,
    age INT,
    course VARCHAR(50),
    marks INT
);

--ALter commands : used to modify existing tables
ALTER TABLE students
ADD email VARCHAR(100);

--Rename tables command
RENAME TABLE students TO college_students;

--removes all the data while keeping the structure of the data
TRUNCATE TABLE students;
--Deletes a table including its structure
DROP TABLE students;

-- Update a student's marks using update commands
UPDATE students
SET marks = 95
WHERE id = 1;





