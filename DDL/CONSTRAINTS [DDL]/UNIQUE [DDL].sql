-- UNIQUE

/*
-> A unique key in MySQL is a single field or combination of fields that ensure all values going to store into the column will be unique.
-> It means a column cannot stores duplicate values.
-> MySQL allows us to use more than one column with UNIQUE constraint in a table.
-> It can accept a null value, but MySQL allowed only one null value per column.
*/

CREATE DATABASE IF NOT EXISTS CUSTOMER_DETAILS;

SHOW DATABASES;

USE CUSTOMER_DETAILS;

CREATE TABLE CUSTOMERS (
    customer_id INT PRIMARY KEY,
    customer_name VARCHAR(50),
    customer_email VARCHAR(50) UNIQUE
);

SHOW TABLES;

INSERT INTO
    CUSTOMERS (
        customer_id,
        customer_name,
        customer_email
    )
VALUES (
        1,
        'John Smith',
        'john@example.com'
    ),
    (
        2,
        'Jane Doe',
        'jane@example.com'
    ),
    (
        3,
        'Michael Brown',
        'michael@example.com'
    ),
    (
        4,
        'Emily Johnson',
        'emily@example.com'
    ),
    (
        5,
        'David Lee',
        'david@example.com'
    );

SELECT * FROM CUSTOMERS;

DROP DATABASE IF EXISTS CUSTOMER_DETAILS;