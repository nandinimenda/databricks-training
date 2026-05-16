CREATE TABLE employees (
emp_id INT PRIMARY KEY,
emp_name VARCHAR(50),
manager_id INT,
dept_id INT
);

CREATE TABLE departments (
dept_id INT PRIMARY KEY,
dept_name VARCHAR(50)
);
