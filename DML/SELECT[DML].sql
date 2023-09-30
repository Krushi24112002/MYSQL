CREATE DATABASE BANK_DETAILS;

SHOW DATABASES;

USE BANK_DETAILS;

CREATE TABLE
    CUSTOMER_BANKDETAILS (
        CUSTOMER_ID INT PRIMARY KEY,
        FIRST_NAME VARCHAR(50),
        LAST_NAME VARCHAR(50),
        ACCOUNT_NUMBER VARCHAR(20),
        BANK_NAME VARCHAR(100),
        BALANCE DECIMAL(10, 2)
    );

SHOW TABLES;

-- INSERT INTO statement is used to insert new records in a table.

INSERT INTO
    CUSTOMER_BANKDETAILS (
        CUSTOMER_ID,
        FIRST_NAME,
        LAST_NAME,
        ACCOUNT_NUMBER,
        BANK_NAME,
        BALANCE
    )
VALUES (
        1,
        'Alice',
        'Johnson',
        '1234567890',
        'ABC Bank',
        15000.00
    ), (
        2,
        'Bob',
        'Smith',
        '9876543210',
        'XYZ Bank',
        20000.00
    ), (
        3,
        'Charlie',
        'Williams',
        '4567890123',
        'PQR Bank',
        12500.50
    ), (
        4,
        'David',
        'Brown',
        '7890123456',
        'DEF Bank',
        18000.75
    ), (
        5,
        'Eva',
        'Miller',
        '2345678901',
        'LMN Bank',
        22000.25
    );

-- The SELECT statement is used to retrieve data from one or more tables in a database.

-- It allows you to specify the columns you want to retrieve, filter data based on conditions, and sort the results.

SELECT * FROM CUSTOMER_BANKDETAILS;

DROP DATABASE BANK_DETAILS;