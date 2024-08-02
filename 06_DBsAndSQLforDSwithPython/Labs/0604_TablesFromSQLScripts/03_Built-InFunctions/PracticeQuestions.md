Built-In Functions
==================

# Aggregation Functions
1. Write a query that calculates the total cost of all animal rescues in the PETRESCUE table.
    ```sql
    SELECT SUM(COST) FROM PETRESCUE;
    ```
    You can further assign a label to the query `SUM_OF_COST`.
    ```sql
    SELECT SUM(COST) AS SUM_OF_COST FROM PETRESCUE;
    ```
2. Write a query that displays the maximum quantity of animals rescued (of any kind).
    ```sql
    SELECT MAX(QUANTITY) FROM PETRESCUE;
    ```
    The query can easily be changed to display the minimum quantity using the `MIN` function instead.
    ```sql
    SELECT MIN(QUANTITY) FROM PETRESCUE;
    ```

3. Write a query that displays the average cost of animals rescued.
    ```sql
    SELECT AVG(COST) FROM PETRESCUE;
    ```

# Scalar and String Functions
## 1. Write a query that displays the rounded integral cost of each rescue.
For this query, we will use the function `ROUND(COLUMN_NAME, NUMBER_OF_DECIMALS)`. \
The output of this query will be the value of each element in the column rounded to the specified number of decimal places. Note that the second argument is optional and, if omitted, results in rounding to an integer value. The query for this question can be written as:
```sql
SELECT ROUND(COST) FROM PETRESCUE;
```
The query could also be written as:
```sql
SELECT ROUND(COST, 0) FROM PETRESCUE;
```
In case the question was to round the value to 2 decimal places, the query would change to:
```sql
SELECT ROUND(COST, 2) FROM PETRESCUE;
```
## 2. Write a query that displays the length of each animal name.
For this query, we will use the function `LENGTH(COLUMN_NAME)`. The output of this query will be the length of each element in the column. The query for this question can be written as:
```sql
SELECT LENGTH(ANIMAL) FROM PETRESCUE;
```
## 3. Write a query that displays the animal name in each rescue in uppercase.
For this query, we will use the function `UCASE(COLUMN_NAME)`. The output of this query will be each element in the column in upper case letters. The query for this question can be written as:
```sql
SELECT UCASE(ANIMAL) FROM PETRESCUE;
```
Just as easily, the user could ask for a lower case representation, and the query would be changed to:
```sql
SELECT LCASE(ANIMAL) FROM PETRESCUE;
```

# Date Functions
## 1. Write a query that displays the rescue date.
For this query, we will use the function `DAY(COLUMN_NAME)`. The output of this query will be only the DAY part of the date in the column. The query for this question can be written as:
```sql
SELECT DAY(RESCUEDATE) FROM PETRESCUE;
```
In case the query was asking for MONTH of rescue, the query would change to:
```sql
SELECT MONTH(RESCUEDATE) FROM PETRESCUE;
```
In case the query was asking for YEAR of rescue, the query would change to:
```sql
SELECT YEAR(RESCUEDATE) FROM PETRESCUE;
```
## 2. Animals rescued should see the vet within three days of arrival. Write a query that displays the third day of each rescue.
For this query, we will use the function `DATE_ADD(COLUMN_NAME, INTERVAL Number Date_element)`. Here, the quantity in `Number` and in `Date_element` will combine to form the interval to be added to the date in the column. For the given question, the query would be:
```sql
SELECT DATE_ADD(RESCUEDATE, INTERVAL 3 DAY) FROM PETRESCUE;
```
If the question was to add 2 months to the date, the query would change to:
```sql
SELECT DATE_ADD(RESCUEDATE, INTERVAL 2 MONTH) FROM PETRESCUE;
```
Similarly, we can retrieve a date before the one given in the column by a given number using the function `DATE_SUB`. By modifying the same example, the following query would provide the date 3 days before the rescue.
```sql
SELECT DATE_SUB(RESCUEDATE, INTERVAL 3 DAY) FROM PETRESCUE;
```
## 3. Write a query that displays the length of time the animals have been rescued, for example, the difference between the current date and the rescue date.
For this query, we will use the function `DATEDIFF(Date_1, Date_2)`. This function calculates the difference between the two given dates and gives the output in number of days. For the given question, the query would be:
```sql
SELECT DATEDIFF(CURRENT_DATE, RESCUEDATE) FROM PETRESCUE;
```
`CURRENT_DATE` is also an inbuilt function that returns the present date as known to the server. \
<br>
To present the output in a YYYY-MM-DD format, another function `FROM_DAYS(number_of_days)` can be used. This function takes a number of days and returns the required formatted output. The query above would thus be modified to
```sql
SELECT FROM_DAYS(DATEDIFF(CURRENT_DATE, RESCUEDATE)) FROM PETRESCUE;
```

# Practice Problems
1. Write a query that displays the average cost of rescuing a single dog. Note that the cost per dog would not be the same in different instances.
    ```sql
    SELECT AVG(COST/QUANTITY)
    FROM petrescue
    WHERE ANIMAL='Dog';
    ```
1. Write a query that displays the animal name in each rescue in uppercase without duplications.
    ```sql
    SELECT DISTINCT UCASE(ANIMAL)
    FROM petrescue;
    ```
1. Write a query that displays all the columns from the PETRESCUE table where the animal(s) rescued are cats. Use cat in lowercase in the query.
    ```sql
    SELECT *
    FROM petrescue
    WHERE LCASE(ANIMAL)='cat';
    ```
1. Write a query that displays the number of rescues in the 5th month.
    ```sql
    SELECT SUM(QUANTITY)
    FROM petrescue
    WHERE MONTH(RESCUEDATE)="05";
    ```
1. The rescue shelter is supposed to find good homes for all animals within 1 year of their rescue. Write a query that displays the ID and the target date.
    ```sql
    SELECT ID, DATE_ADD(RESCUEDATE, INTERVAL 1 YEAR) AS 'Target Date'
    FROM petrescue;
    ```