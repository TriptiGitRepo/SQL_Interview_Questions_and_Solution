-- How do you fetch the nth highest salary ?

-- OPTION 1
-- This query is using DISTINCT and ORDER BY with LIMIT.
-- DISTINCT ensures that duplicate salaries are treated as one unique value.
-- ORDER BY sorts the salaries in descending order.
-- LIMIT skips the top n-1 salaries and fetches the nth salary.

SELECT DISTINCT salary
FROM employees
ORDER BY salary DESC
LIMIT n-1, 1;

--OPTION 2 

-- This query is using a subquery.
-- The inner query counts distinct salaries that are greater than the current salary.
-- The outer query matches the condition where the count of greater salaries equals n-1,
-- ensuring that only the nth highest salary is retrieved.

SELECT salary
FROM employees e1
WHERE (n-1) = (
    SELECT COUNT(DISTINCT salary)
    FROM employees e2
    WHERE e2.salary > e1.salary
);
