CREATE DATABASE IF NOT EXISTS CUSTOMER_DETAILS;

SHOW DATABASES;

USE CUSTOMER_DETAILS;

CREATE TABLE CUSTOMER (
    CUSTOMER_ID INT PRIMARY KEY,
    FIRST_NAME VARCHAR(50),
    LAST_NAME VARCHAR(50),
    EMAIL VARCHAR(100),
    PHONE_NUMBER VARCHAR(20),
    CITY VARCHAR(50)
);

SHOW TABLES;

INSERT INTO
    CUSTOMER (
        CUSTOMER_ID,
        FIRST_NAME,
        LAST_NAME,
        EMAIL,
        PHONE_NUMBER,
        CITY
    )
VALUES (
        1,
        'Alice',
        'Johnson',
        'alice@example.com',
        '555-1234',
        'Berlin'
    ),
    (
        2,
        'Bob',
        'Smith',
        'bob@example.com',
        '555-5678',
        'Munich'
    ),
    (
        3,
        'Charlie',
        'Williams',
        'charlie@example.com',
        '555-9876',
        'Hamburg'
    ),
    (
        4,
        'David',
        'Brown',
        'david@example.com',
        '555-2345',
        'Leipzig'
    ),
    (
        5,
        'Eva',
        'Miller',
        'eva@example.com',
        '555-6789',
        'Stuttgart'
    ),
    (
        6,
        'Frank',
        'Davis',
        'frank@example.com',
        '555-3456',
        'Frankfurt'
    );

SELECT * FROM CUSTOMER;

-- UPDATE Statement

UPDATE CUSTOMER SET CITY = "New York" WHERE CUSTOMER_ID = 1;

UPDATE CUSTOMER SET CITY = "SURAT" WHERE CUSTOMER_ID = 2;

UPDATE CUSTOMER SET CITY = "RAJKOT" WHERE CUSTOMER_ID = 3;

UPDATE CUSTOMER SET CITY = "MEHSANA" WHERE CUSTOMER_ID = 4;

UPDATE CUSTOMER SET CITY = "SURAT" WHERE CUSTOMER_ID = 5;

UPDATE CUSTOMER SET CITY = "VAPI" WHERE CUSTOMER_ID = 6;

SELECT * FROM CUSTOMER;

DROP DATABASE IF EXISTS CUSTOMER_DETAILS;