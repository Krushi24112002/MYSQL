CREATE DATABASE IF NOT EXISTS PERSON_DETAIL;

SHOW DATABASES;

USE PERSON_DETAIL;

CREATE TABLE PERSON (
    PERSON_ID INT PRIMARY KEY,
    FIRST_NAME VARCHAR(50),
    LAST_NAME VARCHAR(50),
    BIRTHDATE DATE,
    GENDER VARCHAR(10)
);

SHOW TABLES;

INSERT INTO
    PERSON (
        PERSON_ID,
        FIRST_NAME,
        LAST_NAME,
        BIRTHDATE,
        GENDER
    )
VALUES (
        1,
        'John',
        'Doe',
        '1990-05-15',
        'Male'
    ),
    (
        2,
        'Jane',
        'Smith',
        '1985-10-22',
        'Female'
    ),
    (
        3,
        'Michael',
        'Johnson',
        '1978-03-08',
        'Male'
    ),
    (
        4,
        'Emily',
        'Williams',
        '1995-12-03',
        'Female'
    ),
    (
        5,
        'David',
        'Brown',
        '1982-07-19',
        'Male'
    );

SELECT * FROM PERSON;

-- DROP DATABASE Statement

-- The DROP DATABASE statement is used to drop an existing SQL database or column.

ALTER TABLE PERSON DROP COLUMN BIRTHDATE;

SELECT * FROM PERSON;

-- DROP TABLE

DROP TABLE PERSON;

SHOW TABLES;

DROP DATABASE IF EXISTS PERSON_DETAIL;