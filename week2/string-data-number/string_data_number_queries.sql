SELECT UPPER(emp_name)
FROM employee_payments;

SELECT LOWER(emp_name)
FROM employee_payments;

SELECT ROUND(base_salary,0)
FROM employee_payments;

SELECT CONCAT(emp_name,' - ',department)
FROM employee_payments;

SELECT YEAR(joining_date)
FROM employee_payments;
