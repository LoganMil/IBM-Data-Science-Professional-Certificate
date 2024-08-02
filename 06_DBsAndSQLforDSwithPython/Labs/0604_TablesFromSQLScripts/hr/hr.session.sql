
-- PRACTICE QUESTIONS

-- 1. Retrieve the list of all employees, first and last names, whose first names start with ‘S’
-- @block
SELECT f_NAME, L_NAME
FROM employees
WHERE F_NAME LIKE 'S%';

-- 2. Arrange all the records of the EMPLOYEES table in ascending order of the date of birth.
-- @block
SELECT *
FROM employees
ORDER BY B_DATE;

-- 3. Group the records in terms of the department IDs
--    and filter them of ones that have average salary more than or equal to 60000.
--    Display the department ID and the average salary.
-- @block
SELECT DEP_ID, AVG(SALARY) AS 'AVG_Salary'
FROM employees
GROUP BY DEP_ID
HAVING AVG_Salary >= 60000;

-- 4. For the problem above, sort the results for each group in descending order of average salary.
-- @block
SELECT DEP_ID, AVG(SALARY) AS 'AVG_Salary'
FROM employees
GROUP BY DEP_ID
HAVING AVG_Salary >= 60000
ORDER BY AVG_Salary DESC;







--  @block
CREATE TABLE EMPLOYEES (
                            EMP_ID CHAR(9) NOT NULL, 
                            F_NAME VARCHAR(15) NOT NULL,
                            L_NAME VARCHAR(15) NOT NULL,
                            SSN CHAR(9),
                            B_DATE DATE,
                            SEX CHAR,
                            ADDRESS VARCHAR(30),
                            JOB_ID CHAR(9),
                            SALARY DECIMAL(10,2),
                            MANAGER_ID CHAR(9),
                            DEP_ID CHAR(9) NOT NULL,
                            PRIMARY KEY (EMP_ID));
                            
  CREATE TABLE JOB_HISTORY (
                            EMPL_ID CHAR(9) NOT NULL, 
                            START_DATE DATE,
                            JOBS_ID CHAR(9) NOT NULL,
                            DEPT_ID CHAR(9),
                            PRIMARY KEY (EMPL_ID,JOBS_ID));
 
 CREATE TABLE JOBS (
                            JOB_IDENT CHAR(9) NOT NULL, 
                            JOB_TITLE VARCHAR(30),
                            MIN_SALARY DECIMAL(10,2),
                            MAX_SALARY DECIMAL(10,2),
                            PRIMARY KEY (JOB_IDENT));

CREATE TABLE DEPARTMENTS (
                            DEPT_ID_DEP CHAR(9) NOT NULL, 
                            DEP_NAME VARCHAR(15) ,
                            MANAGER_ID CHAR(9),
                            LOC_ID CHAR(9),
                            PRIMARY KEY (DEPT_ID_DEP));

CREATE TABLE LOCATIONS (
                            LOCT_ID CHAR(9) NOT NULL,
                            DEP_ID_LOC CHAR(9) NOT NULL,
                            PRIMARY KEY (LOCT_ID,DEP_ID_LOC));



-- @block
-- Load Data Departments
LOAD DATA
INFILE 'C:/ProgramData/MySQL/MySQL Server 8.0/Uploads/Departments.csv'
INTO TABLE departments
FIELDS TERMINATED BY ',';

-- @block
-- Load Data Employees
LOAD DATA
INFILE 'C:/ProgramData/MySQL/MySQL Server 8.0/Uploads/Employees.csv'
INTO TABLE employees
FIELDS TERMINATED BY ',' OPTIONALLY ENCLOSED BY '"';

-- @block
-- Load Data Job History
LOAD DATA
INFILE 'C:/ProgramData/MySQL/MySQL Server 8.0/Uploads/JobsHistory.csv'
INTO TABLE job_history
FIELDS TERMINATED BY ',' OPTIONALLY ENCLOSED BY '"';

-- @block
-- Load Data Jobs
LOAD DATA
INFILE 'C:/ProgramData/MySQL/MySQL Server 8.0/Uploads/Jobs.csv'
INTO TABLE jobs
FIELDS TERMINATED BY ',' OPTIONALLY ENCLOSED BY '"';

-- @block
-- Load Data Locations
LOAD DATA
INFILE 'C:/ProgramData/MySQL/MySQL Server 8.0/Uploads/Locations.csv'
INTO TABLE locations
FIELDS TERMINATED BY ',' OPTIONALLY ENCLOSED BY '"';



--  String Patterns
-- @block
SELECT F_NAME, L_NAME
FROM employees
WHERE ADDRESS LIKE '%Elgin,IL%';

-- @block
SELECT F_NAME, L_NAME
FROM employees
WHERE B_DATE LIKE '197%';

-- @block
SELECT *
FROM employees
WHERE (SALARY BETWEEN 60000 AND 70000) AND DEP_ID = 5;



-- Sorting
-- @block
SELECT F_NAME, L_NAME, DEP_ID
FROM employees
ORDER BY DEP_ID;

-- @block
SELECT F_NAME, L_NAME, DEP_ID
FROM employees
ORDER BY DEP_ID DESC, L_NAME DESC;



-- Grouping
-- @block
SELECT DEP_ID, COUNT(*)
FROM employees
GROUP BY DEP_ID;

-- @block
SELECT DEP_ID AS 'Dept. ID', COUNT(*) as 'Num Employees', AVG(SALARY) as 'Avg Salary'
FROM employees
GROUP BY DEP_ID;

-- @block
SELECT DEP_ID AS 'Dept. ID', COUNT(*) as 'Num_Employees', AVG(SALARY) as 'Avg_Salary'
FROM employees
GROUP BY DEP_ID
ORDER BY Avg_Salary;


