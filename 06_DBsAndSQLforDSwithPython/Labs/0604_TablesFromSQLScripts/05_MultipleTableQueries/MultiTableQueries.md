Multi-Table Queries
===================

# Accessing Multiple Tables With Sub-Queries
Let us see some examples of queries requiring multiple table access using sub-queries.
1. Retrieve only the EMPLOYEES records corresponding to jobs in the JOBS table.

    For such a question, you can implement the sub-query in the WHERE clause, such that the overlapping column of JOD ID can identify the required entries.
    ```sql
    SELECT *
    FROM employees
    WHERE JOB_ID IN (SELECT JOB_IDENT
                    FROM jobs);
    ```
1. Retrieve JOB information for employees earning over $70,000.

    For this example, retrieve the details from the JOBS table, which has common IDs with those available in the EMPLOYEES table, provided the salary in the EMPLOYEES table is greater than $70,000. You can write the query as:
    ```sql
    SELECT *
    FROM jobs
    WHERE JOB_IDENT IN (SELECT JOB_ID 
                        FROM employees
                        WHERE SALARY>70000);
    ```

# Accessing Multiple Tables With Implicit Joins
Let us see some examples of queries that require access of multiple tables using Implicit Joins.

1. Retrieve only the EMPLOYEES records corresponding to jobs in the JOBS table

    Same question as before, but now we will use Implicit Join to retrieve the required information. For this, you will combine the tables based on job IDs. Use the following query for this:
    ```sql
    SELECT *
    FROM employees, jobs
    WHERE EMPLOYEES.JOB_ID = JOBS.JOB_IDENT;
    ```
1. Redo the previous query using shorter aliases for table names.

    Note that the tables in question can be assigned shorter aliases. This is especially helpful in cases where specifc columns are to be accessed from different tables. The query would be modified to:
    ```sql
    SELECT *
    FROM employees E, jobs J
    WHERE E.JOB_ID = J.JOB_IDENT;
    ```
    Note that the two queries are giving the same response.
1. In the previous query, retrieve only the Employee ID, Name, and Job Title.

    Notice that Job Title is a column of the JOBS, and other details are coming from the EMPLOYEES table. The two tables will be joined on Job ID. The query would be as follows:
    ```sql
    SELECT EMP_ID, F_NAME, L_NAME, JOB_TITLE
    FROM employees E, jobs J
    WHERE E.JOB_ID = J.JOB_IDENT;
    ```
4. Redo the previous query, but specify the fully qualified column names with aliases in the SELECT clause.

    The column names can also be prefixed with table aliases to keep track of where each column is coming from. The above query will be modified as shown below:
    ```sql
    SELECT E.EMP_ID, E.F_NAME, E.L_NAME, J.JOB_TITLE
    FROM employees E, jobs J
    WHERE E.JOB_ID = J.JOB_IDENT;
    ```

# Practice Questions
1. Retrieve only the list of employees whose JOB_TITLE is Jr. Designer.
    
    a. Using sub-queries
    ```sql
    SELECT *
    FROM employees
    WHERE JOB_ID IN (SELECT JOB_IDENT
        2            WHERE JOB_TITLE='Jr. Designer');
    ```
    b. Using explicit joins
    ```sql
    SELECT *
    FROM employees E, jobs J
    WHERE E.JOB_ID = J.JOB_IDENT AND J.JOB_TITLE = 'Jr. Designer';
    ```
1. Retrieve JOB information and a list of employees whose birth year is after 1976.

    a. Using sub-queries
    ```sql
    SELECT *
    FROM jobs
    WHERE JOB_IDENT IN (SELECT JOB_ID
                        FROM employees
                        WHERE B_DATE > 1976);
    ```
    b. Using implicit join
    ```sql
    SELECT J.JOB_TITLE, J.MIN_SALARY, J.MAX_SALARY, J.JOB_IDENT
    FROM employees E, jobs J
    WHERE E.JOB_ID = J.JOB_IDENT AND YEAR(E.B_DATE) > 1976;
    ```