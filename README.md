# Task 7: Creating Views (SQL Developer Internship)

##  Objective
Learn to create and use SQL views for abstraction, security, and reusable SQL logic.

---

##  Tools Used
- MySQL Workbench
- SQL

---

##  Steps Performed

✅ Dropped existing tables/views (if any)  
✅ Created `employee` table and inserted sample data  
✅ Created and tested the following views:
- `it_employees` → Shows employees in the IT department
- `dept_avg_salary` → Shows average salary by department
- `secure_it` → Restricts updates through view with `WITH CHECK OPTION`

---

##  Views Created & Examples

### 1️ `it_employees`
```sql
CREATE VIEW it_employees AS
SELECT id, name, salary
FROM employee
WHERE department = 'IT';

###2️ dept_avg_salary
Displays the average salary for each department.

sql
Copy
Edit
CREATE VIEW dept_avg_salary AS
SELECT department, AVG(salary) AS avg_salary
FROM employee
GROUP BY department;

###3️ secure_it
Shows IT employees and prevents updates/inserts that violate the WHERE condition.

sql
Copy
Edit
CREATE VIEW secure_it AS
SELECT *
FROM employee
WHERE department = 'IT'
WITH CHECK OPTION;


