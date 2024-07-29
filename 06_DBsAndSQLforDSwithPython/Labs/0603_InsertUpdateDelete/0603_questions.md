Lab 0603 INSERT, UPDATE, DELETE
===============================

<!-- TOC tocDepth:1..3 chapterDepth:2..6 -->

- [`INSERT`](#insert)
    - [Task A: Example Questions on `INSERT`](#task-a-example-questions-on-insert)
    - [Task B: Practice Examples on `INSERT`](#task-b-practice-examples-on-insert)
- [`UPDATE`](#update)
    - [Example Exercises on `UPDATE`](#example-exercises-on-update)

<!-- /TOC -->

# `INSERT`
## Task A: Example Exercises on `INSERT`
Let us go through some examples of INSERT related queries:

1. In this example, suppose we want to insert a new single row into the Instructor table.

    i. Problem:
    >*Insert a new instructor record with id 4 for Sandip Saha who lives in Edmonton, CA into the “Instructor” table.*

    ii. Solution:
    ```SQL
    INSERT INTO Instructor(ins_id, lastname, firstname, city, country)
    VALUES (4, 'Saha', 'Sandip', 'Edmonton', 'CA');
    ```

    iii. Copy the solution code above by clicking on the little copy button on the bottom right of the codeblock below and paste it to the textbox of the Datasette tool. Then click **Submit query**.

    iv. Copy the code below by clicking on the little copy button on the bottom right of the codeblock below and paste it to the textbox of the Datasette tool. Then click **Submit query**.
    ```SQL
    SELECT * FROM Instructor;
    ```
1. In this example, suppose we want to insert a new single row into the Instructor table.

    i. Problem:
    >*Insert two new instructor records into the “Instructor” table. First record with id 5 for John Doe who lives in Sydney, AU. Second record with id 6 for Jane Doe who lives in Dhaka, BD.*

    ii. Solution:
    ```SQL
    INSERT INTO Instructor(ins_id, lastname, firstname, city, country)
    VALUES
        (5, 'Doe', 'John', 'Sydney', 'AU'),
        (6, 'Doe', 'Jane', 'Dhaka', 'BD');
    ```

    iii. Copy the solution code above by clicking on the little copy button on the bottom right of the codeblock below and paste it to the textbox of the Datasette tool. Then click **Submit query**.

    iv. Copy the code below by clicking on the little copy button on the bottom right of the codeblock below and paste it to the textbox of the Datasette tool. Then click **Submit query**.
    ```SQL
    SELECT * FROM Instructor;
    ```

## Task B: Practice Examples on `INSERT`
Now, let us practice creating and running some INSERT related queries.

1. Insert a new instructor record with id 7 for Antonio Cangiano who lives in Vancouver, CA into the "Instructor" table.
    ```SQL
    INSERT INTO Instructor (ins_id, lastname, firstname, city, country)
    ...> VALUES (7, 'Cangiano', 'Antonio', 'Vancouver', 'CA');
    ```
1. Insert two new instructor records into the “Instructor” table. First record with id 8 for Steve Ryan who lives in Barlby, GB. Second record with id 9 for Ramesh Sannareddy who lives in Hyderabad, IN.
    ```SQL
    INSERT INTO Instructor (ins_id, lastname, firstname, city, country)
   ...> VALUES
   ...> (8, 'Ryan', 'Steve', 'Barlby', 'GB'),
   ...> (9, 'Sannareddy', 'Ramesh', 'Hyderabad', 'IN');
    ```

# `UPDATE`
## Example Exercises on `UPDATE`
