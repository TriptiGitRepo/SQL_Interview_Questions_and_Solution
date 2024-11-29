-- Step 1: Create a Common Table Expression (CTE) to identify duplicate rows.
-- The ROW_NUMBER() function assigns a unique number to each row within duplicate groups,
-- based on the columns that define uniqueness (column1, column2, column3).
-- The ORDER BY clause in ROW_NUMBER() ensures one record is marked as the "first" in each group.

WITH CTE AS (
    SELECT *, ROW_NUMBER() OVER (PARTITION BY column1, column2, column3 ORDER BY id) AS row_num
    FROM table_name
)

-- Step 2: Delete rows identified as duplicates (where row_num > 1) using the CTE.
DELETE FROM table_name
WHERE id IN (
    SELECT id
    FROM CTE
    WHERE row_num > 1
);
