-- How do you display the current time in SQL?

-- This query retrieves the current time in the default format for the database.
-- The function used to fetch the current time varies depending on the database system.
-- Below are examples for different databases:

-- For MySQL:
SELECT CURRENT_TIME;

-- For SQL Server:
SELECT CONVERT(TIME, GETDATE());

-- For Oracle:
SELECT TO_CHAR(SYSDATE, 'HH24:MI:SS') AS current_time;
