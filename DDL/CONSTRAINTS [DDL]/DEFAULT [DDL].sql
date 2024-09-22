-- [DEFAULT] --------------------------------------------------------------------------

/*
Set DEFAULT Values in DATABASE.   
*/

CREATE DATABASE IF NOT EXISTS EMP_DETAIL;

SHOW DATABASES;

USE EMP_DETAIL;

CREATE TABLE EMPLOYEE_COMPANY (
    EMP_ID INT PRIMARY KEY,
    -- EMP_ID IS A PRIMARY KEY.
    FIRST_NAME VARCHAR(50),
    LAST_NAME VARCHAR(50),
    SALARY DECIMAL(10, 2) NOT NULL DEFAULT 0,
    JOINING_DATE DATE,
    DEPARTMENT VARCHAR(50),
    YEAR_OF_EXPERIENCE INT
);

SHOW TABLES;

INSERT INTO
    EMPLOYEE_COMPANY (
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
    ),
    (
        2,
        'Alice',
        'Johnson',
        60000.00,
        '2020-05-20',
        'Finance',
        5
    ),
    (
        3,
        'Michael',
        'Smith',
        55000.00,
        '2019-08-10',
        'HR',
        4
    ),
    (
        4,
        'Emily',
        'Williams',
        48000.00,
        '2022-03-01',
        'Marketing',
        2
    ),
    (
        5,
        'David',
        'Brown',
        52000.00,
        '2023-06-12',
        'Sales',
        1
    ),
    (
        6,
        'Sophia',
        'Miller',
        63000.00,
        '2018-11-25',
        'IT',
        6
    ),
    (
        7,
        'Daniel',
        'Jones',
        57000.00,
        '2017-09-08',
        'Finance',
        7
    ),
    (
        8,
        'Olivia',
        'Taylor',
        54000.00,
        '2019-04-03',
        'HR',
        3
    );

INSERT INTO
    EMPLOYEE_COMPANY (
        EMP_ID,
        FIRST_NAME,
        LAST_NAME,
        JOINING_DATE,
        DEPARTMENT,
        YEAR_OF_EXPERIENCE
    )
VALUES (
        9,
        'Krushi',
        'Monpara',
        '2019-04-05',
        'HR',
        2
    );

SELECT * FROM EMPLOYEE_COMPANY;

DROP DATABASE IF EXISTS EMP_DETAIL;