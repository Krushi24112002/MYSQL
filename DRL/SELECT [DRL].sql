CREATE DATABASE IF NOT EXISTS EMPLOYEE_DETAILS;

SHOW DATABASES;

USE EMPLOYEE_DETAILS;

CREATE TABLE
    EMPLOYEE (
        EMP_ID INT PRIMARY KEY,
        FIRST_NAME VARCHAR(50),
        LAST_NAME VARCHAR(50),
        SALARY DECIMAL(10, 2),
        JOINING_DATE DATE,
        DEPARTMENT VARCHAR(50),
        YEAR_OF_EXPERIENCE INT
    );

SHOW TABLES;

INSERT INTO
    EMPLOYEE (
        EMP_ID,
        FIRST_NAME,
        LAST_NAME,
        SALARY,
        JOINING_DATE,
        DEPARTMENT,
        YEAR_OF_EXPERIENCE
    )
VALUES (
        1,
        'John',
        'Doe',
        50000.00,
        '2021-01-15',
        'IT',
        3
    ), (
        2,
        'Alice',
        'Johnson',
        60000.00,
        '2020-05-20',
        'Finance',
        5
    ), (
        3,
        'Michael',
        'Smith',
        55000.00,
        '2019-08-10',
        'HR',
        4
    ), (
        4,
        'Emily',
        'Williams',
        48000.00,
        '2022-03-01',
        'Marketing',
        2
    ), (
        5,
        'David',
        'Brown',
        52000.00,
        '2023-06-12',
        'Sales',
        1
    ), (
        6,
        'Sophia',
        'Miller',
        63000.00,
        '2018-11-25',
        'IT',
        6
    ), (
        7,
        'Daniel',
        'Jones',
        57000.00,
        '2017-09-08',
        'Finance',
        7
    ), (
        8,
        'Olivia',
        'Taylor',
        54000.00,
        '2019-04-03',
        'HR',
        3
    );

-- [SELECT] --------------------------------------------------------------------------------

-- #NOTE# Order of execution from RIGHT to LEFT.

-- DRL/DQL (data retrieval language / data query language): retrieve data from the tables.

-- SELECT

SELECT * FROM EMPLOYEE;

-- Only Show Specific Columns.

SELECT FIRST_NAME,LAST_NAME,SALARY FROM EMPLOYEE;

-- [WHERE] ----------------------------------------------------------------------------------

SELECT FIRST_NAME,LAST_NAME FROM EMPLOYEE WHERE DEPARTMENT = 'HR';

-- [BETWEEN] --------------------------------------------------------------------------------

-- The BETWEEN operator selects values within a given range. The values can be numbers, text, or dates.

-- The BETWEEN operator is inclusive: begin and end values are included.

SELECT * FROM EMPLOYEE WHERE YEAR_OF_EXPERIENCE BETWEEN 5 AND 7;

-- [IN] --------------------------------------------------------------------------------------

-- #NOTE# IN Statement Use To Reduce Multiple OR Conditions

SELECT *
FROM EMPLOYEE
WHERE
    DEPARTMENT IN('Marketing', 'HR', 'Finance');

-- [OR] ---------------------------------------------------------------------------------------

SELECT *
FROM EMPLOYEE
WHERE
    DEPARTMENT = 'Marketing'
    OR DEPARTMENT = 'HR'
    OR DEPARTMENT = 'Finance';

-- [AND] --------------------------------------------------------------------------------------

SELECT * FROM EMPLOYEE WHERE SALARY BETWEEN 55000 AND 63000;

--  [NOT IN] --------------------------------------------------------------------------------

SELECT *
FROM EMPLOYEE
WHERE
    DEPARTMENT NOT IN('Marketing', 'HR', 'Finance');

-- -------------------------------------------------------------------------------------------

CREATE TABLE
    IF NOT EXISTS ANIMAL (
        ANIMAL_ID INT PRIMARY KEY,
        SPECIES VARCHAR(50),
        NAME VARCHAR(50),
        AGE INT,
        LOCATION VARCHAR(100)
    );

INSERT INTO
    ANIMAL (
        ANIMAL_ID,
        SPECIES,
        NAME,
        AGE,
        LOCATION
    )
VALUES (1, 'Lion', 'Leo', 5, 'Savannah'), (
        2,
        'Elephant',
        'Ellie',
        10,
        'Jungle'
    ), (3, 'Giraffe', 'Gerry', 7, NULL), (
        4,
        'Penguin',
        'Penny',
        2,
        'Antarctica'
    ), (5, 'Tiger', 'Tigger', 3, NULL);

SELECT * FROM ANIMAL;

-- [IS NUll] -------------------------------------------------------------------

SELECT * FROM ANIMAL WHERE LOCATION IS NUll;

-- [IS NOT NULL] ----------------------------------------------------------------

SELECT * FROM ANIMAL WHERE LOCATION IS NOT NULL;

-- [PATTERN SEARCHING/WILDCARD][LIKE Operators] ['%' , '_']  ------------------------------------------------------------------------------

-- The percent sign (%) represents zero, one, or multiple characters

-- The underscore sign (_) represents one, single character

SELECT * FROM EMPLOYEE WHERE FIRST_NAME LIKE '%i%';

SELECT * FROM EMPLOYEE WHERE LAST_NAME LIKE '_i%';

-- [ORDER BY] ----------------------------------------------------------------------------

-- The ORDER BY keyword is used to sort the result-set in ascending or descending order.

-- The ORDER BY keyword sorts the records in ascending order by default. To sort the records in descending order, use the DESC keyword.

SELECT * FROM EMPLOYEE ORDER BY SALARY DESC;

-- [Descending Order]

SELECT * FROM EMPLOYEE ORDER BY SALARY ASC;

-- [Ascending Order]

-- [DISTINCT] -----------------------------------------------------------------------------

SELECT DISTINCT DEPARTMENT FROM EMPLOYEE;

-- [GROUP BY] ------------------------------------------------------------------------------

-- #NOTE# When You Use GROUP BY It's Compulsory To Use With Aggregation Functions.

-- SELECT, FROM, WHERE, GROUP BY, HAVING,sORDER BY   <-- Correct Order OF SQL.

SELECT
    DEPARTMENT,
    COUNT(DEPARTMENT) AS TOTAL_DEPARTMENT
FROM EMPLOYEE
GROUP BY DEPARTMENT;

SELECT DEPARTMENT ,AVG(SALARY) FROM EMPLOYEE GROUP BY DEPARTMENT;

SELECT DEPARTMENT ,MAX(SALARY) FROM EMPLOYEE GROUP BY DEPARTMENT;

SELECT DEPARTMENT ,MIN(SALARY) FROM EMPLOYEE GROUP BY DEPARTMENT;

-- [GROPU BY HAVING] -----------------------------------------------------------------------

SELECT
    DEPARTMENT,
    COUNT(DEPARTMENT)
FROM EMPLOYEE
GROUP BY DEPARTMENT
HAVING COUNT(DEPARTMENT) > 1;

CREATE TABLE
    Employees (
        EmployeeID INT PRIMARY KEY,
        FirstName VARCHAR(50),
        LastName VARCHAR(50),
        Department VARCHAR(50),
        Salary DECIMAL(10, 2)
    );

INSERT INTO
    Employees (
        EmployeeID,
        FirstName,
        LastName,
        Department,
        Salary
    )
VALUES (
        1,
        'John',
        'Doe',
        'Sales',
        60000.00
    ), (
        2,
        'Jane',
        'Smith',
        'HR',
        55000.00
    ), (
        3,
        'Alice',
        'Johnson',
        'Marketing',
        52000.00
    ), (
        4,
        'Bob',
        'Brown',
        'Sales',
        61000.00
    ), (
        5,
        'Eva',
        'Williams',
        'Finance',
        58000.00
    );

-- AND Operator

-- The AND operator is used to combine multiple conditions, and it returns true only if all the conditions evaluate to true.

SELECT *
FROM Employees
WHERE
    Department = 'Sales'
    AND Salary > 50000;

-- OR Operator

-- The OR operator is used to combine multiple conditions, and it returns true if at least one of the conditions evaluates to true.

SELECT *
FROM Employees
WHERE
    Department = 'Sales'
    OR Salary > 50000;

-- NOT Operator

-- The NOT operator is used to negate a condition, and it returns true if the condition is false.

SELECT * FROM Employees WHERE NOT Department = 'HR';

-- TOP or LIMIT : TOP or LIMIT clause is used to specify the number of records to return.

SELECT * FROM Employees LIMIT 3;