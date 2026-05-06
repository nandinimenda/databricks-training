-- 1. Select all columns from Employee table
SELECT * FROM Employee;

-- 2. Select only name and salary
SELECT name, salary FROM Employee;

-- 3. Select employees older than 30
SELECT * FROM Employee
WHERE age > 30;

-- 4. Select all department names
SELECT name FROM Department;

-- 5. Select employees working in IT department
SELECT e.name
FROM Employee e
JOIN Department d
ON e.department_id = d.department_id
WHERE d.name = 'IT';

-- 6. Select employees whose names start with 'J'
SELECT * FROM Employee
WHERE name LIKE 'J%';

-- 7. Select employees whose names end with 'e'
SELECT * FROM Employee
WHERE name LIKE '%e';

-- 8. Select employees whose names contain 'a'
SELECT * FROM Employee
WHERE name LIKE '%a%';

-- 9. Select employees whose names are exactly 9 characters long
SELECT * FROM Employee
WHERE LENGTH(name) = 9;

-- 10. Select employees whose names have 'o' as the second character
SELECT * FROM Employee
WHERE name LIKE '_o%';

-- 11. Select employees hired in the year 2020
SELECT * FROM Employee
WHERE YEAR(hire_date) = 2020;

-- 12. Select employees hired in January
SELECT * FROM Employee
WHERE MONTH(hire_date) = 1;

-- 13. Select employees hired before 2019
SELECT * FROM Employee
WHERE hire_date < '2019-01-01';

-- 14. Select employees hired on or after March 1, 2021
SELECT * FROM Employee
WHERE hire_date >= '2021-03-01';

-- 15. Select employees hired in the last 2 years
SELECT * FROM Employee
WHERE hire_date >= '2020-01-01';

-- 16. Select the total salary of all employees
SELECT SUM(salary) AS total_salary
FROM Employee;

-- 17. Select the average salary of employees
SELECT AVG(salary) AS average_salary
FROM Employee;

-- 18. Select the minimum salary in Employee table
SELECT MIN(salary) AS minimum_salary
FROM Employee;

-- 19. Select number of employees in each department
SELECT department_id, COUNT(*) AS employee_count
FROM Employee
GROUP BY department_id;

-- 20. Select average salary in each department
SELECT department_id, AVG(salary) AS average_salary
FROM Employee
GROUP BY department_id;
