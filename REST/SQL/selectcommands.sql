
-- 1. SELECT ALL COLUMNS
SELECT * FROM students;

-- 2. SELECT SPECIFIC COLUMNS
SELECT name, marks FROM students;

-- 3. SELECT WITH WHERE
SELECT * FROM students WHERE marks > 80;
SELECT * FROM students WHERE age = 20;
SELECT * FROM students WHERE course = 'CSE';
SELECT * FROM students WHERE marks < 70;

-- 4. SELECT WITH AND
SELECT * FROM students
WHERE course = 'CSE' AND marks > 80;

-- 5. SELECT WITH OR
SELECT * FROM students
WHERE course = 'CSE' OR course = 'IT';

-- 6. SELECT WITH DISTINCT
SELECT DISTINCT course FROM students;

-- 7. SELECT WITH ORDER BY
-- Ascending order
SELECT * FROM students ORDER BY marks ASC;

-- Descending order
SELECT * FROM students ORDER BY marks DESC;

-- 8. SELECT WITH LIMIT
SELECT * FROM students LIMIT 3;

-- Student with the highest marks
SELECT * FROM students ORDER BY marks DESC LIMIT 1;

-- 9. SELECT WITH BETWEEN
SELECT * FROM students WHERE marks BETWEEN 70 AND 90;

-- 10. SELECT WITH IN
SELECT * FROM students WHERE course IN ('CSE', 'IT');

-- 11. SELECT WITH LIKE
-- Names starting with A
SELECT * FROM students WHERE name LIKE 'A%';

-- Names ending with a
SELECT * FROM students WHERE name LIKE '%a';

-- Names containing yu
SELECT * FROM students WHERE name LIKE '%yu%';

-- Names with any single character followed by yush
SELECT * FROM students WHERE name LIKE '_yush';


-- 12. SELECT WITH IS NULL
SELECT * FROM students WHERE marks IS NULL;

-- Values that are not NULL
SELECT * FROM students WHERE marks IS NOT NULL;


-- 13. AGGREGATE FUNCTIONS
-- Count all records
SELECT COUNT(*) FROM students;

-- Total marks
SELECT SUM(marks) FROM students;

-- Average marks
SELECT AVG(marks) FROM students;

-- Maximum marks
SELECT MAX(marks) FROM students;

-- Minimum marks
SELECT MIN(marks) FROM students;


-- 14. SELECT WITH GROUP BY
SELECT course, COUNT(*) AS total_students
FROM students
GROUP BY course;


-- 15. SELECT WITH HAVING
SELECT course, AVG(marks) AS avg_marks
FROM students
GROUP BY course
HAVING AVG(marks) > 80;


-- 16. SELECT WITH ALIASES
SELECT name AS student_name, marks AS total_marks
FROM students;


-- 17. SELECT WITH MULTIPLE CONDITIONS
SELECT name, marks
FROM students
WHERE marks >= 70
ORDER BY marks DESC
LIMIT 3;


-- 18. SELECT WITH NOT
SELECT * FROM students WHERE NOT course = 'CSE';


-- 19. SELECT WITH COUNT AND DISTINCT
SELECT COUNT(DISTINCT course) AS total_courses
FROM students;


-- 20. SELECT WITH COMPARISON OPERATORS
SELECT * FROM students WHERE marks = 85;
SELECT * FROM students WHERE marks != 85;
SELECT * FROM students WHERE marks >= 80;
SELECT * FROM students WHERE marks <= 90;
SELECT * FROM students WHERE marks <> 85;
