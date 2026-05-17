-- 1. Show all employees whose salary is NULL
SELECT *
FROM Employees
WHERE salary IS NULL;

-- 2. Show all orders where discount is NOT NULL
SELECT *
FROM Orders
WHERE discount IS NOT NULL;

-- 3. Get products where category is NULL
SELECT *
FROM Products
WHERE category IS NULL;

-- 4. Count employees with NULL manager_id
SELECT COUNT(*)
FROM Employees
WHERE manager_id IS NULL;

-- 5. Replace NULL salary with 0
SELECT IFNULL(salary,0)
FROM Employees;

-- 6. Replace NULL bonus with 1000
SELECT IFNULL(bonus,1000)
FROM Employees;

-- 7. Replace NULL stock with 0
SELECT IFNULL(stock,0)
FROM Products;

-- 8. Show employee earnings using salary or bonus
SELECT COALESCE(salary, bonus, 0)
FROM Employees;

-- 9. Use NULLIF
SELECT NULLIF(10,10);

-- 10. Avoid divide by zero
SELECT amount / NULLIF(discount,0)
FROM Orders;

-- 11. Calculate total earnings
SELECT salary + IFNULL(bonus,0)
FROM Employees;

-- 12. Employees where both salary and bonus are NULL
SELECT *
FROM Employees
WHERE salary IS NULL
AND bonus IS NULL;
