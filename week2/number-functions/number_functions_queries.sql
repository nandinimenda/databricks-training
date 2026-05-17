-- 1. ABS – Absolute Value
SELECT ABS(-100);

-- 2. ROUND – Round Salary to 0 Decimals
SELECT ROUND(base_salary, 0)
FROM employee_salary;

-- 3. ROUND – Round Salary to 2 Decimals
SELECT ROUND(base_salary, 2)
FROM employee_salary;

-- 4. CEIL – Round Up
SELECT CEIL(base_salary)
FROM employee_salary;

-- 5. FLOOR – Round Down
SELECT FLOOR(base_salary)
FROM employee_salary;

-- 6. TRUNCATE – Cut Decimals
SELECT TRUNCATE(base_salary, 1)
FROM employee_salary;

-- 7. MOD – Find Remainder
SELECT MOD(experience_years, 2)
FROM employee_salary;

-- 8. POWER Function
SELECT POWER(2, 3);

-- 9. POW Function
SELECT POW(5, 2);

-- 10. SQRT – Square Root
SELECT SQRT(64);

-- 11. SIGN – Sign of Salary
SELECT SIGN(base_salary)
FROM employee_salary;

-- 12. RAND – Random Number
SELECT RAND();

-- 13. FORMAT – Format Salary
SELECT FORMAT(base_salary, 2)
FROM employee_salary;

-- 14. GREATEST – Maximum Value
SELECT emp_name,
GREATEST(base_salary, IFNULL(bonus, 0))
FROM employee_salary;

-- 15. LEAST – Minimum Value
SELECT emp_name,
LEAST(base_salary, IFNULL(bonus, 0))
FROM employee_salary;
