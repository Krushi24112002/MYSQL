CREATE DATABASE IF NOT EXISTS CUSTOMER_DETAILS;

USE CUSTOMER_DETAILS;

-- SHOW DATABASES :- Show All The DataBases Available in MYSQL Server.

SHOW DATABASES;

-- SHOW TABLES :- Shows all tables within the current database.

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

-- The TRUNCATE command in SQL is used to delete all the rows from a table, effectively removing all

-- the data from the table while keeping the table structure intact.

-- Unlike the DELETE statement,which removes rows one by one and can be rolled back, the TRUNCATE command

-- is faster and cannot be rolled back. It is often used when you want to quickly remove all data from a table.

TRUNCATE TABLE CUSTOMER;

SHOW TABLES;

-- after TRUNCATE all table data was remove only Structure was remain.
SELECT * FROM CUSTOMER;

DROP DATABASE IF EXISTS CUSTOMER_DETAILS;