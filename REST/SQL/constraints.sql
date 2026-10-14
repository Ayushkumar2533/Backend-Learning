
-- prevent column from storing null values
CREATE TABLE students (
    id INT,
    name VARCHAR(50) NOT NULL,
    age INT
);

--prevents duplicate values in the column
CREATE TABLE students (
    id INT PRIMARY KEY,
    email VARCHAR(100) UNIQUE
);

--PRIMARY KEY:uniquely identifies each rows 
CREATE TABLE students (
    id INT PRIMARY KEY,
    name VARCHAR(50),
    age INT
);

--FORIEGN KEY: it generally connects two table having same column name in both the table
CREATE TABLE departments (
    dept_id INT PRIMARY KEY,
    dept_name VARCHAR(50)
);
--DEFAULT KEY: sets default value automatically when we not give input to any of the tupple
CREATE TABLE students (
    id INT PRIMARY KEY,
    name VARCHAR(50),
    course VARCHAR(50) DEFAULT 'CSE'
);