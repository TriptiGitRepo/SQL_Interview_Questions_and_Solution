-- SQL Query to Find Duplicate Records in a Table


-- OPTION 1
-- This query identifies duplicates in the specified column(s).
-- The GROUP BY groups records with identical values in the specified column(s).
-- The HAVING clause filters out groups with only one record, leaving only duplicates.

SELECT column_name, COUNT(*)
FROM table_name
GROUP BY column_name
HAVING COUNT(*) > 1;


-- OPTION 2
-- This query retrieves all duplicate rows from the table, showing all columns.
-- It uses a Common Table Expression (CTE) to identify duplicates based on a condition.


WITH CTE_Duplicates AS (
    SELECT column_name, COUNT(*)
    FROM table_name
    GROUP BY column_name
    HAVING COUNT(*) > 1
)
SELECT *
FROM table_name
WHERE column_name IN (SELECT column_name FROM CTE_Duplicates);