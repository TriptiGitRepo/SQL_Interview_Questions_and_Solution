-- This query retrieves the common records from two tables by performing an INNER JOIN.
-- The INNER JOIN operation combines rows from table1 and table2 where the values in the specified column (common_column) match.
-- SELECT *: Retrieves all columns from both tables for the matching rows.
-- ON table1.common_column = table2.common_column: Specifies the condition for matching rows between the two tables.
-- Replace table1, table2, and common_column with your actual table names and column to match.

SELECT *
FROM table1
INNER JOIN table2
ON table1.common_column = table2.common_column;
