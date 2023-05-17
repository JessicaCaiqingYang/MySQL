CREATE DATABASE Students;
USE Students;
CREATE TABLE student (
id INTEGER PRIMARY KEY,
first_name VARCHAR(50),
last_name VARCHAR(50),
dob DATE
);
CREATE TABLE assessment (
id INTEGER PRIMARY KEY,
student_id INTEGER,
average_total INTEGER,
grade INTEGER,
atl VARCHAR(10)
);
INSERT INTO student
(id, first_name, last_name, dob)
VALUES
(1, 'Bobby', 'Brown', 20110102),
(2, 'Nathan', 'James', 20110402),
(3, 'Tobby', 'Sharp', 20101209);

INSERT INTO assessment
(id, student_id, average_total, grade, atl)
VALUES
(1, 2, 75, 6, 'c'),
(2, 1, 93, 9, 'S'),
(3, 3, 87, 8, 'S');

SELECT * FROM assessment ORDER BY average_total DESC LIMIT 1;
SELECT * FROM assessment ORDER BY average_total ASC LIMIT 1;
SELECT * FROM student WHERE first_name LIKE 'B%';