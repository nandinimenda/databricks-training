-- 1. Convert emp_name to uppercase
SELECT UPPER(emp_name)
FROM employee_payments;

-- 2. Convert emp_name to lowercase
SELECT LOWER(emp_name)
FROM employee_payments;

-- 3. Convert emp_name to Proper Case
SELECT CONCAT(
UPPER(LEFT(emp_name,1)),
LOWER(SUBSTRING(emp_name,2))
)
FROM employee_payments;

-- 4. Calculate total income
SELECT emp_name,
base_salary + IFNULL(bonus,0) AS total_income
FROM employee_payments;

-- 5. Round total income
SELECT ROUND(base_salary + IFNULL(bonus,0),0)
FROM employee_payments;

-- 6. Extract joining year
SELECT YEAR(joining_date)
FROM employee_payments;

-- 7. Employee Classification
SELECT emp_name,
CASE
WHEN TIMESTAMPDIFF(YEAR, joining_date, CURDATE()) > 7
THEN 'Senior'
WHEN TIMESTAMPDIFF(YEAR, joining_date, CURDATE()) BETWEEN 4 AND 7
THEN 'Mid'
ELSE 'Junior'
END AS employee_level
FROM employee_payments;
