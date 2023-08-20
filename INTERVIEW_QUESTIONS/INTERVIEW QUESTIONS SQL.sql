CREATE DATABASE ORG; -- ORG = Organization
SHOW DATABASES;
USE ORG;

CREATE TABLE Worker (
     WORKER_ID INT NOT NULL PRIMARY KEY AUTO_INCREMENT,
     FIRST_NAME CHAR(25),
     LAST_NAME CHAR(25),
     SALARY INT(15),
     JOINING_DATE DATETIME,
     DEPARTMENT CHAR(25)
);

INSERT INTO Worker
       (WORKER_ID ,FIRST_NAME ,LAST_NAME ,SALARY ,JOINING_DATE ,DEPARTMENT) VALUES
		(001, 'Monika', 'Arora', 100000, '14-02-20 09.00.00', 'HR'),
        (002, 'Niharika', 'Verma', 80000, '14-06-11 09.00.00', 'Admin'),
        (003, 'Vishal', 'Singhal', 300000, '14-02-20 09.00.00', 'HR'),
        (004, 'Amitabh', 'Singh', 500000, '14-02-20 09.00.00', 'Admin'),
        (005, 'Vievk', 'Bhati', 500000, '14-06-11 09.00.00', 'Admin'),
        (006, 'Vipul', 'Diwan', 200000, '14-06-11 09.00.00', 'Account'),
        (007, 'Satish', 'Kumar', 75000, '14-01-20 09.00.00', 'Account'),
        (008, 'Geetika', 'Chauhan', 90000, '14-04-11 09.00.00', 'Admin');
        	
SELECT * FROM Worker;

CREATE TABLE Bonus (
       WORKER_REF_ID INT,
	   BONUS_AMOUNT INT(10),
       BONUS_DATE DATETIME,
       FOREIGN KEY(WORKER_REF_ID) REFERENCES Worker(WORKER_ID)
	    ON DELETE CASCADE
);

INSERT INTO Bonus
       (WORKER_REF_ID ,BONUS_AMOUNT ,BONUS_DATE) VALUES
       (001, 5000, '16-02-20'),
       (002, 3000, '16-06-11'),
       (003, 4000, '16-02-20'),
       (001, 4500, '16-02-20'),
       (002, 3500, '16-06-11');
       
SELECT * FROM Bonus;
       
CREATE TABLE Title (
       WORKER_REF_ID INT,
       WORKER_TITLE CHAR(25),
       AFFECTED_FROM DATETIME,
          FOREIGN KEY(WORKER_REF_ID) REFERENCES Worker(WORKER_ID)
          ON DELETE CASCADE
);

INSERT INTO Title 
       (WORKER_REF_ID ,WORKER_TITLE ,AFFECTED_FROM) VALUES
       (001, 'Manager', '2016-02-20 00:00:00'),
       (002, 'Executive', '2016-06-11 00:00:00'),
       (008, 'Executive', '2016-06-11 00:00:00'),
       (005, 'Manager', '2016-06-11 00:00:00'),
       (004, 'Asst', '2016-06-11 00:00:00'),
       (007,'Executive', '2016-06-11 00:00:00'),
       (006, 'Lead', '2016-06-11 00:00:00'), 
       (003, 'Lead', '2016-06-11 00:00:00');
	
SELECT * FROM Title;

-- Q-1. Write an SOL qt»ery to fetch 'FIRST NAME' frome Worker table using The alias name as <WORKER_NAME>.
 SELECT FIRST_NAME AS WORKER_NAME FROM Worker;
 
 -- Q-2. Write an SOL query to fetch "FIRST_NAME" From Worker Table in Upper Case.
 SELECT UPPER(FIRST_NAME) FROM Worker;
 
 -- Q.3 Write an SQL Query to fetch unique values of DEPARTMENT From Worker Table.
 SELECT DISTINCT DEPARTMENT FROM Worker;
 
 -- Q.4 Write An SQL Query to print the first three characters of FIRST_NAME From Worker Table.
 SELECT SUBSTRING(FIRST_NAME,1,3) FROM Worker;
 
 -- Q.5 Write An SQL Query to find the position of the alphabet ('b') in the first name column 'Amitabh' from worker Table.
 SELECT INSTR(FIRST_NAME,'b') FROM Worker WHERE FIRST_NAME = 'Amitabh';
 
 -- Q.6 Write An SQL Query to print the FIRST_NAME From Worker Table After Removing White Spaces From The Right Side.
 SELECT RTRIM(FIRST_NAME) FROM Worker; 
 
 -- Q.7 Write An SQL Query to print the FIRST_NAME From Worker Table After Removing White Spaces From The Left Side.
 SELECT LTRIM(FIRST_NAME) FROM Worker;
 
 -- Q.8 Write an SQL query that fetches the unique values of DEPARTMENT from Worker table and prints its length.
 SELECT DISTINCT DEPARTMENT, LENGTH(DEPARTMENT) FROM Worker;
 
 -- Q.9 Write an SQL query to print the FIRST_NAME from Worker table after replacing 'a' with 'A'
 SELECT REPLACE(FIRST_NAME,'a','A') FROM Worker;
 
-- Q—10. Write an SQL query to print the FIRST_NAME and LAST_NAME from Worker table into a single column COMPLETE_NAME. A space char should separate them.
SELECT CONCAT(FIRST_NAME, ' ', LAST_NAME) AS COMPLETE_NAME FROM Worker;
 
 -- Q—ll. Write an SQL query to print all Worker details from the Worker table order by FIRST NAME Ascending.
 SELECT * FROM Worker ORDER BY FIRST_NAME ASC;
 
 -- Q—12. Write an SQL query to print all Worker details from the Worker table order by FIRST_NAME Ascending and DEPARTMENT Descending.
 SELECT * FROM Worker ORDER BY FIRST_NAME ASC , DEPARTMENT DESC;
 
 -- Q-13 Write an SQL query to print details for Workers with the first name as "Vipul" and "Satish" from Worker table.
 SELECT * FROM Worker WHERE FIRST_NAME = 'Vipul' OR FIRST_NAME = 'Satish';
 -- Without Use Of OR Keyword. 
 SELECT * FROM Worker WHERE FIRST_NAME IN('Vipul', 'Satish');
 
 -- Q-14 Write an SQL query to print details of workers excluding first names, "Vipul" and "Satish" from Worker table.
 SELECT * FROM Worker WHERE FIRST_NAME NOT IN('Vipul', 'Satish');
 
 -- Q-15 Write an SQL query to print details of Workers with DEPARTMENT name as "Admin*".
 SELECT * FROM Worker WHERE DEPARTMENT LIKE "Admin%";
 
 -- Q-16 Write an SQL query to print details of the Workers whose FIRST_NAME contains 'a'.
 SELECT * FROM Worker WHERE FIRST_NAME LIKE "%a%";
 
 -- Q-17 Write an SQL query to print details of the workers whose FIRST_NAME ends with 'a'
 SELECT * FROM Worker WHERE FIRST_NAME LIKE "%a";
 
 -- Q-18 Write an SQL query to print details of the Workers whose FIRST_NAHE ends with 'h' and contains six alphabets.
 SELECT * FROM Worker WHERE FIRST_NAME LIKE "_____h";
 
 -- Q-19 Write an SQL query to print details of the Workers whose SALARY lies between l00000 and 500000
 SELECT * FROM Worker WHERE SALARY BETWEEN 100000 AND 500000;
 
 -- Q-20 Write an SQL query to print details of the Workers who have joined in Feb '2014.
 SELECT * FROM Worker WHERE YEAR(JOINING_DATE) = 2014 AND MONTH(JOINING_DATE) = '02';
 
 -- Q-21 Write an SQL query to fetch the count of employees working in the department 'Admini .
 SELECT DEPARTMENT,COUNT(*) FROM Worker WHERE DEPARTMENT = 'Admin';
 
 -- Q-22 Write an SOL query to fetch worker full names with salaries 50000 and 100000.
 SELECT CONCAT(FIRST_NAME,' ',LAST_NAME) FROM Worker WHERE SALARY >= 50000 AND SALARY <= 100000;
 
 -- Q-23 Write an SQL query to fetch the no. of workers for each department in the descending order.
 SELECT DEPARTMENT,COUNT(WORKER_ID)AS NO_OF_WORKER 
 FROM Worker 
 GROUP BY DEPARTMENT 
 ORDER BY COUNT(WORKER_ID) DESC;
 
 -- Q-24 Write an SOL query to print details of the Workers who are also Managers.
 SELECT Worker.* FROM Worker
 INNER JOIN Title
 ON Worker.WORKER_ID = Title.WORKER_REF_ID
 WHERE WORKER_TITLE = 'Manager';
 
 -- Q-25 write an SOL query to fetch number (more than 1) Of different titles in the ORG.
 SELECT WORKER_TITLE, COUNT(*)
 FROM Title
 GROUP BY WORKER_TITLE HAVING COUNT(*) > 1;
 
 -- Q-26 Write an SQL query to show only odd rows from a table.
 SELECT * FROM Worker WHERE MOD(WORKER_ID,2) != 0;
 
 -- Q-27 Write an SQL query to Show only even rows from a table.
 SELECT * FROM Worker WHERE MOD(WORKER_ID,2) = 0;
 
 -- Q-28 Write an SQL query to clone a new table from another table.
 CREATE TABLE WORKER_CLONE LIKE Worker;
 INSERT INTO WORKER_CLONE SELECT * FROM Worker;
 SELECT * FROM WORKER_CLONE;
 
 -- Q-29 Write an SQL query to fetch intersecting records of two tables.
 SELECT Worker.* 
 FROM Worker 
 INNER JOIN WORKER_CLONE 
 USING(WORKER_ID);
 
 -- Q-30 Write an SQL query to show records from one table that another table does not have.
 -- MINUS
 SELECT Worker.* FROM Worker
 LEFT JOIN WORKER_CLONE
 USING(WORKER_ID)
 WHERE WORKER_CLONE.WORKER_ID IS NULL;
 
 -- Q-31 Write an SQL query to show the current date and time.
 SELECT CURDATE();
 
 SELECT CURTIME();
 
 -- Q-32 Write an SQL query to show the top n (say 5) records of a table order by descending salary.
 SELECT * FROM Worker ORDER BY SALARY DESC LIMIT 5;
 
 -- Q-33 Write an SQL query to determine the nth (say n=5) highest salary from a table.
 SELECT * FROM Worker ORDER BY SALARY DESC LIMIT 4,1;
 
 -- Q-34 Write an SQL query to determine the 5th highest salary without using LIMIT keyword.
 
 
 -- Q-35 Write an SOL query to fetch the list of employees with the same salary.
 SELECT W1.* FROM Worker W1,Worker W2 WHERE W1.SALARY = W2.SALARY AND W1.WORKER_ID != W2.WORKER_ID; 
 
 -- Q-36 Write an SQL query to show the second highest salary from a table.
 
 -- Q-37 Write an SQL query to show one row twice in results from a table.
 SELECT * FROM Worker
 UNION ALL
 SELECT * FROM Worker ORDER BY WORKER_ID;
 
 -- Q-38 Write an SOL query to list worker_id who does not get bonus.
 
 -- Q-39 Write an SQL query to fetch the first records from a table.
 