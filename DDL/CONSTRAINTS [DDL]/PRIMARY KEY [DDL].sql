-- #NOTE# PRIMARY KEY IS NOT NULL , UNIQUE AND ONLY ONE PER TABLE.

/*
 # Rules for Primary key
 1. The primary key column value must be unique.
 2. Each table can contain only one primary key.
 3. The primary key column cannot be null or empty.
 4. MySQL does not allow us to insert a new row with the existing primary key.
 5. It is recommended to use INT or BIGINT data type for the primary key column.
 */

CREATE DATABASE IF NOT EXISTS EMP_DETAILS;

SHOW DATABASES;

USE EMP_DETAILS;

CREATE TABLE
    EMPLOYEE (
        EMP_ID INT PRIMARY KEY,
        -- EMP_ID IS A PRIMARY KEY.
        FIRST_NAME VARCHAR(50),
        LAST_NAME VARCHAR(50),
        SALARY DECIMAL(10, 2),
        JOINING_DATE DATE,
        DEPARTMENT VARCHAR(50),
        YEAR_OF_EXPERIENCE INT
    );

SHOW TABLES;

INSERT INTO
    EMPLOYEE(
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

SELECT * FROM EMPLOYEE;

DROP DATABASE EMP_DETAILS;