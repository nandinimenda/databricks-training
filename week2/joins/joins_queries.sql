-- 1. Retrieve employee names and department names using INNER JOIN
SELECT e.emp_name, d.dept_name
FROM employees e
INNER JOIN departments d
ON e.dept_id = d.dept_id;

-- 2. Display all employees even if department is missing
SELECT e.emp_name, d.dept_name
FROM employees e
LEFT JOIN departments d
ON e.dept_id = d.dept_id;

-- 3. Display all departments even if employees are missing
SELECT e.emp_name, d.dept_name
FROM employees e
RIGHT JOIN departments d
ON e.dept_id = d.dept_id;

-- 4. Display employee names and project names
SELECT e.emp_name, p.project_name
FROM employees e
LEFT JOIN projects p
ON e.emp_id = p.emp_id;

-- 5. Display employee names and manager names
SELECT e1.emp_name AS employee,
       e2.emp_name AS manager
FROM employees e1
LEFT JOIN employees e2
ON e1.manager_id = e2.emp_id;

-- 6. Fetch employee names and assigned projects
SELECT e.emp_name, p.project_name
FROM employees e
LEFT JOIN projects p
ON e.emp_id = p.emp_id;

-- 7. Employees who completed at least one project
SELECT e.emp_name, p.project_name
FROM employees e
INNER JOIN projects p
ON e.emp_id = p.emp_id;

-- 8. Show all projects even without employees
SELECT e.emp_name, p.project_name
FROM employees e
RIGHT JOIN projects p
ON e.emp_id = p.emp_id;

-- 9. Retrieve employee names and department names including employees without department
SELECT e.emp_name, d.dept_name
FROM employees e
LEFT JOIN departments d
ON e.dept_id = d.dept_id;

-- 10. Display all departments including departments without employees
SELECT d.dept_name, e.emp_name
FROM departments d
LEFT JOIN employees e
ON d.dept_id = e.dept_id;

-- 11. Employees who do not belong to any department
SELECT e.emp_name
FROM employees e
LEFT JOIN departments d
ON e.dept_id = d.dept_id
WHERE d.dept_id IS NULL;

-- 12. Employees and their projects including employees without projects
SELECT e.emp_name, p.project_name
FROM employees e
LEFT JOIN projects p
ON e.emp_id = p.emp_id;

-- 13. Projects and employees including projects without employees
SELECT p.project_name, e.emp_name
FROM projects p
LEFT JOIN employees e
ON p.emp_id = e.emp_id;

-- 14. Employees reporting to managers
SELECT e1.emp_name AS employee,
       e2.emp_name AS manager
FROM employees e1
INNER JOIN employees e2
ON e1.manager_id = e2.emp_id;

-- 15. Count employees department-wise
SELECT d.dept_name, COUNT(e.emp_id) AS total_employees
FROM departments d
LEFT JOIN employees e
ON d.dept_id = e.dept_id
GROUP BY d.dept_name;
