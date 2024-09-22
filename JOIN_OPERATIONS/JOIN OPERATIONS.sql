CREATE DATABASE IF NOT EXISTS JOIN_TEST;

SHOW DATABASES;

USE JOIN_TEST;

CREATE TABLE PROJECT (
    PROJECT_ID INT,
    EMP_ID INT,
    PROJECT_NAME VARCHAR(255),
    PROJECT_START_DATE DATE,
    CLIENT_ID INT
);

SHOW TABLES;

INSERT INTO
    PROJECT (
        PROJECT_ID,
        EMP_ID,
        PROJECT_NAME,
        PROJECT_START_DATE,
        CLIENT_ID
    )
VALUES (1, 1, 'A', '2021-04-21', 3),
    (2, 2, 'B', '2021-03-12', 1),
    (3, 3, 'C', '2021-01-16', 5),
    (4, 3, 'D', '2021-04-27', 2),
    (5, 5, 'E', '2021-05-01', 4);

SELECT * FROM PROJECT;

CREATE TABLE EMPLOYEE (
    EMP_ID INT,
    FIRST_NAME VARCHAR(255),
    LAST_NAME VARCHAR(255),
    AGE INT,
    EMAIL_ID VARCHAR(255),
    PHONE_NO INT,
    CITY VARCHAR(255)
);

SHOW TABLES;

INSERT INTO
    EMPLOYEE (
        EMP_ID,
        FIRST_NAME,
        LAST_NAME,
        AGE,
        EMAIL_ID,
        PHONE_NO,
        CITY
    )
VALUES (
        1,
        'Aman',
        'Proto',
        32,
        'aman@gmail.com',
        898,
        'Delhi'
    ),
    (
        2,
        'Yagya',
        'Narayan',
        44,
        'yagya@gmail.com',
        222,
        'Palam'
    ),
    (
        3,
        'Rahul',
        'BD',
        22,
        'rahul@gmail.com',
        444,
        'Kolkata'
    ),
    (
        4,
        'Jatin',
        'Herti',
        31,
        'jatin@gmail.com',
        666,
        'Raipur'
    ),
    (
        5,
        'PK',
        'Pandey',
        21,
        'pk@gmail.com',
        555,
        'Jaipur'
    );

SELECT * FROM EMPLOYEE;

CREATE TABLE CLIENTS (
    CLIENTS_ID INT,
    FIRST_NAME VARCHAR(255),
    LAST_NAME VARCHAR(255),
    AGE INT,
    EMAIL_ID VARCHAR(255),
    PHONE_NO INT,
    CITY VARCHAR(255),
    EMP_ID INT
);

SHOW TABLES;

INSERT INTO
    CLIENTS (
        CLIENTS_ID,
        FIRST_NAME,
        LAST_NAME,
        AGE,
        EMAIL_ID,
        PHONE_NO,
        CITY,
        EMP_ID
    )
VALUES (
        1,
        'Mac',
        'Rogers',
        47,
        'mac@hotmail.com',
        333,
        'Kolkata',
        3
    ),
    (
        2,
        'Max',
        'Poirier',
        27,
        'max@gmail.com',
        222,
        'Kolkata',
        3
    ),
    (
        3,
        'Peter',
        'Jain',
        24,
        'peter@abc.com',
        111,
        'Delhi',
        1
    ),
    (
        4,
        'Sushant',
        'Aggarwal',
        23,
        'sushant@yahoo.com',
        45454,
        'Hyderabad',
        5
    ),
    (
        5,
        'Pratap',
        'Singh',
        36,
        'p@xyz.com',
        77767,
        'Mumbai',
        2
    );

SELECT * FROM CLIENTS;

SHOW TABLES;

-- INNER JOIN [QUESTION :- 1]

-- Enlist All The Employees ID's, Names Along With The Project Allocated To Them.

SELECT EMPLOYEE.EMP_ID, EMPLOYEE.FIRST_NAME, EMPLOYEE.LAST_NAME, PROJECT.PROJECT_ID, PROJECT.PROJECT_NAME
FROM EMPLOYEE
    INNER JOIN PROJECT ON EMPLOYEE.EMP_ID = PROJECT.EMP_ID;

-- OR

SELECT *
FROM EMPLOYEE
    INNER JOIN PROJECT ON EMPLOYEE.EMP_ID = PROJECT.EMP_ID;

-- #NOTE# Without Use Of INNER JOIN Keyword Perform Same Operations.

SELECT EMPLOYEE.EMP_ID, EMPLOYEE.FIRST_NAME, EMPLOYEE.LAST_NAME, PROJECT.PROJECT_ID, PROJECT.PROJECT_NAME
FROM EMPLOYEE, PROJECT
WHERE
    EMPLOYEE.EMP_ID = PROJECT.EMP_ID;

-- INNER JOIN [QUESTION :- 2]

-- Fetch out all the employee ID's and their contact detail who have been working

-- from Jaipur with the clients name working in Hyderabad.

SELECT EMPLOYEE.EMP_ID, EMPLOYEE.EMAIL_ID, EMPLOYEE.PHONE_NO, CLIENTS.FIRST_NAME, CLIENTS.LAST_NAME
FROM EMPLOYEE
    INNER JOIN CLIENTS ON EMPLOYEE.EMP_ID = CLIENTS.EMP_ID
WHERE
    EMPLOYEE.CITY = 'jaipur'
    AND CLIENTS.CITY = 'Hyderabad';

-- LEFT JOIN [QUESTION :- 1]

-- Fetch out each project allocated to each employee.

SELECT *
FROM EMPLOYEE
    LEFT JOIN PROJECT ON EMPLOYEE.EMP_ID = PROJECT.EMP_ID;

-- RIGHT JOIN [QUESTION :- 1]

-- List out all the projects along with the employee's name and their respective allocated email ID.

SELECT PROJECT.PROJECT_ID, EMPLOYEE.EMP_ID, PROJECT.PROJECT_NAME, EMPLOYEE.FIRST_NAME, EMPLOYEE.LAST_NAME, EMPLOYEE.EMAIL_ID
FROM EMPLOYEE
    RIGHT JOIN PROJECT ON EMPLOYEE.EMP_ID = PROJECT.EMP_ID;

SELECT *
FROM EMPLOYEE
    RIGHT JOIN PROJECT ON EMPLOYEE.EMP_ID = PROJECT.EMP_ID;

-- FULL OUTER (JOIN) :

-- The FULL OUTER JOIN keyword returns all records when there is a match in left (table1) or right (table2) table records.

-- Example of Full Outer Join.

CREATE TABLE Customers (
    CustomerID INT PRIMARY KEY,
    CustomerName VARCHAR(250)
);

SHOW TABLES;

INSERT INTO
    Customers (CustomerID, CustomerName)
VALUES (1, 'Alice'),
    (2, 'Bob'),
    (3, 'Charlie');

SELECT * FROM Customers;

CREATE TABLE Orders (
    OrderID INT PRIMARY KEY,
    CustomerID INT,
    OrderDate DATE
);

SHOW TABLES;

INSERT INTO
    Orders (
        OrderID,
        CustomerID,
        OrderDate
    )
VALUES (101, 1, '2023-09-01'),
    (102, 2, '2023-09-02'),
    (103, 1, '2023-09-03');

SELECT * FROM Orders;

SELECT Customers.CustomerName, Customers.CustomerID, Orders.OrderID, Orders.OrderDate
FROM Customers
    LEFT JOIN Orders ON Customers.CustomerID = Orders.CustomerID
UNION
SELECT Customers.CustomerName, Customers.CustomerID, Orders.OrderID, Orders.OrderDate
FROM Orders
    RIGHT JOIN Customers ON Customers.CustomerID = Orders.CustomerID
    -- CROSS JOIN
    -- List out all the combinations possible for the employee's name and projects that can exist.

SELECT EMPLOYEE.EMP_ID, EMPLOYEE.FIRST_NAME, EMPLOYEE.LAST_NAME, PROJECT.PROJECT_ID, PROJECT.PROJECT_NAME
FROM EMPLOYEE
    CROSS JOIN PROJECT;

-- SUB QUERIES

-- WHERE Clause Same Table

-- Employee With Age > 30

SELECT *
FROM EMPLOYEE
WHERE
    AGE IN (
        SELECT AGE
        FROM EMPLOYEE
        WHERE
            AGE > 30
    );

-- WHERE Clause Different Table.

-- Employee Details Working in More Than 1 Projects.

DROP DATABASE IF EXISTS JOIN_TEST;