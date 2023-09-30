-- The CREATE DATABASE statement is used to create a new SQL database or Table.

CREATE DATABASE IF NOT EXISTS COMPANY_EMPLOYEE;

SHOW DATABASES;

USE COMPANY_EMPLOYEE;

CREATE TABLE
    EMPLOYEE (
        EMPLOYEE_ID INT PRIMARY KEY,
        FIRST_NAME VARCHAR(50),
        LAST_NAME VARCHAR(50),
        DEPARTMENT VARCHAR(50),
        HIRE_DATE DATE
    );

INSERT INTO
    EMPLOYEE (
        EMPLOYEE_ID,
        FIRST_NAME,
        LAST_NAME,
        DEPARTMENT,
        HIRE_DATE
    )
VALUES (
        1,
        'John',
        'Doe',
        'Sales',
        '2022-01-15'
    ), (
        2,
        'Jane',
        'Smith',
        'Marketing',
        '2021-08-03'
    ), (
        3,
        'Michael',
        'Johnson',
        'IT',
        '2023-03-10'
    ), (
        4,
        'Emily',
        'Williams',
        'HR',
        '2020-11-22'
    ), (
        5,
        'David',
        'Brown',
        'Finance',
        '2019-05-07'
    );

SELECT * FROM EMPLOYEE;