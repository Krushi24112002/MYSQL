-- FOREIGN KEY :- MULTIPLE FOREIGN KEY PER TABLE ALSO CREATE.

/*
-> The foreign key is used to link one or more than one table together.
-> It is also known as the referencing key. 
-> A foreign key matches the primary key field of another table. It means a foreign key field in one table refers to the primary key field of the other table.
-> A foreign key makes it possible to create a parent-child relationship with the tables. 
# MySQL defines the foreign key in two ways: # 
1. Using CREATE TABLE Statement
2. Using ALTER TABLE Statement
*/

CREATE DATABASE CUSTOMER_ORDER;

SHOW DATABASES;

USE CUSTOMER_ORDER;

CREATE TABLE CUSTOMER (
    customer_id INT PRIMARY KEY,
    customer_name VARCHAR(50),
    customer_email VARCHAR(50)
);

SHOW TABLES;

INSERT INTO
    CUSTOMER (
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

SELECT * FROM CUSTOMER;

CREATE TABLE ORDERS (
    order_id INT,
    order_date DATE,
    total_amount DECIMAL(10, 2),
    customer_id INT,
    FOREIGN KEY (customer_id) REFERENCES CUSTOMER (customer_id)
);

SHOW TABLES;

INSERT INTO
    ORDERS (
        order_id,
        order_date,
        total_amount,
        customer_id
    )
VALUES (101, '2023-08-01', 150.00, 1),
    (102, '2023-08-02', 75.50, 2),
    (103, '2023-08-03', 200.25, 3),
    (104, '2023-08-03', 50.00, 1),
    (105, '2023-08-04', 300.00, 4);

SELECT * FROM ORDERS;

DROP DATABASE CUSTOMER_ORDER;