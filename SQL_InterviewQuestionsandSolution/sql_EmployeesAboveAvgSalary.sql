--How do you fetch all employees whose salary is greater than the average salary?


-- The inner query calculates the average salary from the employees table.
-- The outer query compares each employee's salary with the average salary
-- and retrieves only those employees with a salary greater than the calculated average.

SELECT *
FROM employees
WHERE salary > (SELECT AVG(salary) FROM employees);
