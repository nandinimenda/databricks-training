-- 1. Current Date
SELECT CURDATE();

-- 2. Current Timestamp
SELECT NOW();

-- 3. Extract Year
SELECT YEAR(order_date)
FROM orders;

-- 4. Extract Month
SELECT MONTH(order_date)
FROM orders;

-- 5. Extract Day
SELECT DAY(order_date)
FROM orders;

-- 6. Extract Using EXTRACT
SELECT EXTRACT(YEAR FROM order_date)
FROM orders;

-- 7. Month Name
SELECT MONTHNAME(order_date)
FROM orders;

-- 8. Day Name
SELECT DAYNAME(order_date)
FROM orders;

-- 9. Identify Weekends
SELECT order_id, order_date
FROM orders
WHERE DAYNAME(order_date) IN ('Saturday','Sunday');

-- 10. Identify Weekdays
SELECT order_id, order_date
FROM orders
WHERE DAYOFWEEK(order_date) BETWEEN 2 AND 6;

-- 11. Add 5 Days
SELECT DATE_ADD(order_date, INTERVAL 5 DAY)
FROM orders;

-- 12. Subtract 3 Days
SELECT DATE_SUB(order_date, INTERVAL 3 DAY)
FROM orders;

-- 13. Delivery Days Difference
SELECT DATEDIFF(delivery_date, order_date)
FROM orders;

-- 14. Month Difference
SELECT TIMESTAMPDIFF(MONTH, order_date, delivery_date)
FROM orders;

-- 15. Last Day of Month
SELECT LAST_DAY(order_date)
FROM orders;

-- 16. First Day of Month
SELECT DATE_SUB(order_date, INTERVAL DAY(order_date)-1 DAY)
FROM orders;

-- 17. Date Formatting
SELECT DATE_FORMAT(order_date,'%d-%m-%Y')
FROM orders;

-- 18. Orders in January
SELECT *
FROM orders
WHERE MONTH(order_date)=1;

-- 19. Orders in February
SELECT *
FROM orders
WHERE MONTHNAME(order_date)='February';

-- 20. Financial Year Logic
SELECT order_date,
CASE
WHEN MONTH(order_date) >= 4
THEN CONCAT(YEAR(order_date),'-',YEAR(order_date)+1)
ELSE CONCAT(YEAR(order_date)-1,'-',YEAR(order_date))
END AS financial_year
FROM orders;
