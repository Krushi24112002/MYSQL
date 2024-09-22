CREATE DATABASE IF NOT EXISTS PERSON_DETAILS;

USE PERSON_DETAILS;

CREATE TABLE PERSON (
    PERSON_ID INT PRIMARY KEY,
    FIRST_NAME VARCHAR(50),
    LAST_NAME VARCHAR(50),
    BIRTHDATE DATE,
    GENDER VARCHAR(10),
    CITY VARCHAR(50)
);

SHOW TABLES;

INSERT INTO
    PERSON (
        PERSON_ID,
        FIRST_NAME,
        LAST_NAME,
        BIRTHDATE,
        GENDER,
        CITY
    )
VALUES (
        1,
        'John',
        'Doe',
        '1990-05-15',
        'Male',
        'Berlin'
    ),
    (
        2,
        'Jane',
        'Smith',
        '1985-10-22',
        'Female',
        'Surat'
    ),
    (
        3,
        'Michael',
        'Johnson',
        '1978-03-08',
        'Male',
        'New York'
    ),
    (
        4,
        'Emily',
        'Williams',
        '1995-12-03',
        'Female',
        'Peris'
    ),
    (
        5,
        'David',
        'Brown',
        '1982-07-19',
        'Male',
        'Madrid'
    );

SELECT * FROM PERSON;

-- ALTER TABLE - RENAME COLUMN or RENAME TABLE NAME.

ALTER TABLE PERSON RENAME COLUMN CITY TO PERSON_CITY;

SELECT * FROM PERSON;

ALTER TABLE PERSON RENAME TO PERSON_DETAILS;

SHOW TABLES;

SELECT * FROM PERSON_DETAILS;

DROP DATABASE IF EXISTS PERSON_DETAILS;