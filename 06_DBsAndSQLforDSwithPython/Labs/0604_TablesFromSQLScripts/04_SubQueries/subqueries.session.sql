
-- @block
SELECT AVG(SALARY)
FROM (SELECT SALARY
        FROM employees
        ORDER BY SALARY DESC
        LIMIT 5) AS SALARY_TABLE;

-- @block
SELECT *
FROM employees
WHERE YEAR(FROM_DAYS(DATEDIFF(CURRENT_DATE,B_DATE))) >
    (SELECT AVG(YEAR(FROM_DAYS(DATEDIFF(CURRENT_DATE,B_DATE))))
    FROM employees);


-- @block
SELECT EMPL_ID, 
        YEAR(FROM_DAYS(DATEDIFF(CURRENT_DATE,START_DATE))), 
        (SELECT AVG(YEAR(FROM_DAYS(DATEDIFF(CURRENT_DATE,START_DATE))))
        FROM job_history)
FROM job_history;