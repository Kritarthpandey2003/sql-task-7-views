use task7;
DROP VIEW IF EXISTS it_employees;
DROP VIEW IF EXISTS dept_avg_salary;
DROP VIEW IF EXISTS dept_avg_salary_v2;
DROP VIEW IF EXISTS secure_it;
DROP TABLE IF EXISTS employee;
CREATE TABLE employee (
    id INT PRIMARY KEY,
    name VARCHAR(50),
    department VARCHAR(50),
    salary INT
);
INSERT INTO employee (id, name, department, salary) VALUES
(1, 'Alice', 'IT', 60000),
(2, 'Bob', 'HR', 50000),
(3, 'Charlie', 'IT', 70000),
(4, 'David', 'Finance', 55000);
SELECT * FROM employee;
CREATE VIEW it_employees AS
SELECT id, name, salary
FROM employee
WHERE department = 'IT';
SELECT * FROM it_employees;
CREATE VIEW dept_avg_salary AS
SELECT department, AVG(salary) AS avg_salary
FROM employee
GROUP BY department;
SELECT * FROM dept_avg_salary;
CREATE VIEW secure_it AS
SELECT *
FROM employee
WHERE department = 'IT'
WITH CHECK OPTION;
SELECT * FROM secure_it;
SHOW FULL TABLES WHERE Table_type = 'VIEW';