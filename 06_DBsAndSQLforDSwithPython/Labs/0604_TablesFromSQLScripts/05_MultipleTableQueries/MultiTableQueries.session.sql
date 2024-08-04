
-- @block
SELECT *
FROM employees
WHERE JOB_ID IN (SELECT JOB_IDENT
                    FROM jobs);

-- @block
SELECT *
FROM jobs
WHERE JOB_IDENT IN (SELECT JOB_ID 
                    FROM employees
                    WHERE SALARY>70000);

-- @block
SELECT *
FROM employees, jobs
WHERE EMPLOYEES.JOB_ID = JOBS.JOB_IDENT;

-- @block
SELECT *
FROM employees E, jobs J
WHERE E.JOB_ID = J.JOB_IDENT;

-- @block
SELECT EMP_ID, F_NAME, L_NAME, JOB_TITLE
FROM employees E, jobs J
WHERE E.JOB_ID = J.JOB_IDENT;

-- @block
SELECT E.EMP_ID, E.F_NAME, E.L_NAME, J.JOB_TITLE
FROM employees E, jobs J
WHERE E.JOB_ID = J.JOB_IDENT;

-- @block
SELECT *
FROM employees
WHERE JOB_ID IN (SELECT JOB_IDENT
                FROM jobs
                WHERE JOB_TITLE='Jr. Designer');

-- @block
SELECT *
FROM employees E, jobs J
WHERE E.JOB_ID = J.JOB_IDENT AND J.JOB_TITLE = 'Jr. Designer';


-- @block
SELECT *
FROM jobs
WHERE JOB_IDENT IN (SELECT JOB_ID
                    FROM employees
                    WHERE B_DATE > 1976);


-- @block
SELECT J.JOB_TITLE, J.MIN_SALARY, J.MAX_SALARY, J.JOB_IDENT
FROM employees E, jobs J
WHERE E.JOB_ID = J.JOB_IDENT AND YEAR(E.B_DATE) > 1976;

-- @block
SELECT * FROM employees WHERE DEP_ID =
(SELECT MAX(DEPT_ID_DEP) FROM departments);

-- @block
SELECT * FROM employees WHERE DEP_ID =
(SELECT DEPT_ID_DEP FROM departments WHERE DEPT_ID_DEP IS MAX);