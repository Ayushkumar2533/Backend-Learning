--for using clause (filter based on conditions)
SELECT column_name
FROM table_name
WHERE condition;
--list of commands to print all the data by appplyig filter..
SELECT city, AVG(marks) AS average_marks
FROM Students
WHERE age >= 19
GROUP BY city
HAVING AVG(marks) > 70
ORDER BY average_marks DESC
LIMIT 3;

