SELECT * FROM employees
WHERE salary > 50000;

SELECT department, AVG(salary)
FROM employees
GROUP BY department;
