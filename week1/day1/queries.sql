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

-- 21. Select total salary for each department
SELECT department_id, SUM(salary) AS total_salary
FROM Employee
GROUP BY department_id;

-- 22. Select average age of employees in each department
SELECT department_id, AVG(age) AS average_age
FROM Employee
GROUP BY department_id;

-- 23. Select number of employees hired each year
SELECT YEAR(hire_date) AS hire_year,
COUNT(*) AS employee_count
FROM Employee
GROUP BY YEAR(hire_date);

-- 24. Select highest salary in each department
SELECT department_id, MAX(salary) AS highest_salary
FROM Employee
GROUP BY department_id;

-- 25. Select department with highest average salary
SELECT department_id, AVG(salary) AS avg_salary
FROM Employee
GROUP BY department_id
ORDER BY avg_salary DESC
LIMIT 1;

-- 26. Departments with more than 2 employees
SELECT department_id, COUNT(*) AS employee_count
FROM Employee
GROUP BY department_id
HAVING COUNT(*) > 2;

-- 27. Departments with average salary above 55000
SELECT department_id, AVG(salary) AS avg_salary
FROM Employee
GROUP BY department_id
HAVING AVG(salary) > 55000;

-- 28. Years with more than 1 employee hired
SELECT YEAR(hire_date) AS hire_year, COUNT(*) AS employee_count
FROM Employee
GROUP BY YEAR(hire_date)
HAVING COUNT(*) > 1;

-- 29. Departments with total salary less than 100000
SELECT department_id, SUM(salary) AS total_salary
FROM Employee
GROUP BY department_id
HAVING SUM(salary) < 100000;

-- 30. Departments with max salary above 75000
SELECT department_id, MAX(salary) AS max_salary
FROM Employee
GROUP BY department_id
HAVING MAX(salary) > 75000;

-- 31. Employees ordered by salary
SELECT * FROM Employee
ORDER BY salary ASC;

-- 32. Employees ordered by age descending
SELECT * FROM Employee
ORDER BY age DESC;

-- 33. Employees ordered by hire date
SELECT * FROM Employee
ORDER BY hire_date ASC;

-- 34. Employees ordered by department then salary
SELECT * FROM Employee
ORDER BY department_id, salary;

-- 35. Departments ordered by total salary
SELECT department_id, SUM(salary) AS total_salary
FROM Employee
GROUP BY department_id
ORDER BY total_salary DESC;

-- 36. Employee names with department names
SELECT e.name AS employee_name, d.name AS department_name
FROM Employee e
JOIN Department d
ON e.department_id = d.department_id;

-- 37. Project names with department names
SELECT p.name AS project_name, d.name AS department_name
FROM Project p
JOIN Department d
ON p.department_id = d.department_id;

-- 38. Employee names with project names
SELECT e.name AS employee_name, p.name AS project_name
FROM Employee e
JOIN Project p
ON e.department_id = p.department_id;

-- 39. All employees with departments
SELECT e.name, d.name AS department_name
FROM Employee e
LEFT JOIN Department d
ON e.department_id = d.department_id;

-- 40. All departments with employees
SELECT d.name AS department_name, e.name AS employee_name
FROM Department d
LEFT JOIN Employee e
ON d.department_id = e.department_id;

-- 41. Employees not assigned to projects
SELECT e.name
FROM Employee e
LEFT JOIN Project p
ON e.department_id = p.department_id
WHERE p.project_id IS NULL;

-- 42. Employees with project count
SELECT e.name, COUNT(p.project_id) AS project_count
FROM Employee e
LEFT JOIN Project p
ON e.department_id = p.department_id
GROUP BY e.name;

-- 43. Departments without employees
SELECT d.name
FROM Department d
LEFT JOIN Employee e
ON d.department_id = e.department_id
WHERE e.emp_id IS NULL;

-- 44. Employees in same department as John Doe
SELECT name
FROM Employee
WHERE department_id = (
    SELECT department_id
    FROM Employee
    WHERE name = 'John Doe'
);

-- 45. Department with highest average salary
SELECT d.name, AVG(e.salary) AS avg_salary
FROM Employee e
JOIN Department d
ON e.department_id = d.department_id
GROUP BY d.name
ORDER BY avg_salary DESC
LIMIT 1;

-- 46. Employee with highest salary
SELECT *
FROM Employee
WHERE salary = (
    SELECT MAX(salary)
    FROM Employee
);

-- 47. Employees earning above average salary
SELECT *
FROM Employee
WHERE salary > (
    SELECT AVG(salary)
    FROM Employee
);

-- 48. Second highest salary
SELECT MAX(salary) AS second_highest_salary
FROM Employee
WHERE salary < (
    SELECT MAX(salary)
    FROM Employee
);

-- 49. Department with most employees
SELECT department_id, COUNT(*) AS employee_count
FROM Employee
GROUP BY department_id
ORDER BY employee_count DESC
LIMIT 1;

-- 50. Employees earning more than department average
SELECT *
FROM Employee e
WHERE salary > (
    SELECT AVG(salary)
    FROM Employee
    WHERE department_id = e.department_id
);

-- 51. Youngest employee
SELECT *
FROM Employee
WHERE age = (
    SELECT MIN(age)
    FROM Employee
);

-- 52. Oldest employee
SELECT *
FROM Employee
WHERE age = (
    SELECT MAX(age)
    FROM Employee
);

-- 53. Employees whose name starts with A
SELECT *
FROM Employee
WHERE name LIKE 'A%';

-- 54. Employees whose salary is between 40000 and 70000
SELECT *
FROM Employee
WHERE salary BETWEEN 40000 AND 70000;

-- 55. Employees from HR department
SELECT e.*
FROM Employee e
JOIN Department d
ON e.department_id = d.department_id
WHERE d.name = 'HR';

-- 56. Count total employees
SELECT COUNT(*) AS total_employees
FROM Employee;

-- 57. Count employees with salary above 50000
SELECT COUNT(*) AS employee_count
FROM Employee
WHERE salary > 50000;

-- 58. Display distinct department ids
SELECT DISTINCT department_id
FROM Employee;

-- 59. Employees ordered by name
SELECT *
FROM Employee
ORDER BY name ASC;

-- 60. Top 3 highest paid employees
SELECT *
FROM Employee
ORDER BY salary DESC
LIMIT 3;

-- 61. Employees hired after 2020
SELECT *
FROM Employee
WHERE hire_date > '2020-12-31';

-- 62. Employees with null department
SELECT *
FROM Employee
WHERE department_id IS NULL;

-- 63. Projects under IT department
SELECT p.*
FROM Project p
JOIN Department d
ON p.department_id = d.department_id
WHERE d.name = 'IT';

-- 64. Count projects in each department
SELECT department_id, COUNT(*) AS project_count
FROM Project
GROUP BY department_id;

-- 65. Department names with employee count
SELECT d.name, COUNT(e.emp_id) AS employee_count
FROM Department d
LEFT JOIN Employee e
ON d.department_id = e.department_id
GROUP BY d.name;
