-- How TO retrieve second highest salary of an employee



-- OPTION 1
-- This query retrieves the second highest salary from the employees table.
-- The inner query finds the maximum salary.
-- The outer query filters out the maximum salary and then finds the highest salary among the remaining ones.

SELECT Max(Salary)
FROM employees
WHERE salary <(SELECT max(salary) FROM employees);

