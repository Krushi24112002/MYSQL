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

-- [PATTERN SEARCHING/WILDCARD] ['%' , '_']  ------------------------------------------------------------------------------

SELECT * FROM EMPLOYEE WHERE FIRST_NAME LIKE '%i%';

SELECT * FROM EMPLOYEE WHERE LAST_NAME LIKE '_i%';

-- [ORDER BY] ----------------------------------------------------------------------------

SELECT * FROM EMPLOYEE ORDER BY SALARY DESC;

-- Descending Order

SELECT * FROM EMPLOYEE ORDER BY SALARY ASC;

-- Ascending Order

-- [DISTINCT] -----------------------------------------------------------------------------

SELECT DISTINCT(DEPARTMENT) FROM EMPLOYEE;

-- [GROUP BY] ------------------------------------------------------------------------------

-- #NOTE# When You Use GROUP BY It's Compulsory To Use With Aggregation Functions.

SELECT
    DEPARTMENT,
    COUNT(DEPARTMENT)
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