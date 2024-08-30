-- The ALTER TABLE statement is used to add, delete, or modify columns in an existing table.

-- The ALTER TABLE statement is also used to add and drop various constraints on an existing table.

CREATE DATABASE CUSTOMER_DETAILS;

USE CUSTOMER_DETAILS;

SHOW DATABASES;

CREATE TABLE CUSTOMER (
    CUSTOMER_ID INT PRIMARY KEY,
    FIRST_NAME VARCHAR(50),
    LAST_NAME VARCHAR(50),
    EMAIL VARCHAR(100),
    PHONE_NUMBER VARCHAR(20)
);

SHOW TABLES;

INSERT INTO
    CUSTOMER (
        CUSTOMER_ID,
        FIRST_NAME,
        LAST_NAME,
        EMAIL,
        PHONE_NUMBER
    )
VALUES (
        1,
        'Alice',
        'Johnson',
        'alice@example.com',
        '555-1234'
    ),
    (
        2,
        'Bob',
        'Smith',
        'bob@example.com',
        '555-5678'
    ),
    (
        3,
        'Charlie',
        'Williams',
        'charlie@example.com',
        '555-9876'
    ),
    (
        4,
        'David',
        'Brown',
        'david@example.com',
        '555-2345'
    ),
    (
        5,
        'Eva',
        'Miller',
        'eva@example.com',
        '555-6789'
    ),
    (
        6,
        'Frank',
        'Davis',
        'frank@example.com',
        '555-3456'
    );

SELECT * FROM CUSTOMER;

-- ALTER TABLE - ADD Column

ALTER TABLE CUSTOMER ADD CITY VARCHAR(50);

SELECT * FROM CUSTOMER;

UPDATE CUSTOMER SET CITY = "New York" WHERE CUSTOMER_ID = 1;

UPDATE CUSTOMER SET CITY = "SURAT" WHERE CUSTOMER_ID = 2;

UPDATE CUSTOMER SET CITY = "RAJKOT" WHERE CUSTOMER_ID = 3;

UPDATE CUSTOMER SET CITY = "MEHSANA" WHERE CUSTOMER_ID = 4;

UPDATE CUSTOMER SET CITY = "SURAT" WHERE CUSTOMER_ID = 5;

UPDATE CUSTOMER SET CITY = "VAPI" WHERE CUSTOMER_ID = 6;

SELECT * FROM CUSTOMER;

-- ALTER TABLE - MODIFY COLUMN

-- To change the data type of a column in a table

ALTER TABLE CUSTOMER MODIFY COLUMN EMAIL CHAR(150);

-- After MODIFY COLUMN EMAIL Change DATA_TYPE OF EMAIL COLUMN TO CHAR.

DESCRIBE CUSTOMER EMAIL;

-- ALTER TABLE - RENAME COLUMN NAME

ALTER TABLE CUSTOMER RENAME COLUMN CITY TO CUSTOMER_CITY;

SELECT * FROM CUSTOMER;

--ALTER TABLE - RENAME TABLE NAME

ALTER TABLE CUSTOMER RENAME TO CUSTOMER_INFORMATION;

SHOW TABLES;

-- ALTER TABLE - DROP COLUMN

-- To delete a column in a table

ALTER TABLE CUSTOMER_INFORMATION DROP COLUMN CUSTOMER_CITY;

SELECT * FROM CUSTOMER_INFORMATION;

DROP DATABASE CUSTOMER_DETAILS;