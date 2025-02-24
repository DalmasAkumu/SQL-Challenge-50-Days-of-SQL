-- 01/50 
CREATE DATABASE 50_Days_Challenge;
USE 50_Days_Challenge;
CREATE TABLE employees(
employee_id SERIAL PRIMARY KEY, 
name VARCHAR(100), 
department VARCHAR(50),
salary DECIMAL (10,2)
);

-- Insert Records into the table 
INSERT INTO employees (name, department, salary) VALUES 
('John Doe', 'Engineering', 63000),
('Jane Smith', 'Engineering', 55000),
('Michael Johnson', 'Engineering', 64000),
('Emily Davis', 'Marketing', 58000),
('Chris Brown', 'Marketing', 56000),
('Emma Wilson', 'Marketing', 59000),
('Alex Lee', 'Sales', 58000),
('Sarah Adams', 'Sales', 58000),
('Ryan Clark', 'Sales', 61000);

-- Second Highest Earner Using Two methods. 
-- Alt One 
SELECT * FROM employees
ORDER BY salary DESC
LIMIT 1 OFFSET 1; 

-- Alt Two 

SELECT * FROM
(SELECT *, 
DENSE_RANK() OVER(ORDER BY Salary DESC) AS DenseRank
FROM employees) AS Subquery 
WHERE DENSERANK = 2;

INSERT INTO employees VALUES ('11', 'Sara', 'IT', 63000);

