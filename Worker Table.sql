create database assessment;

use assessment;

create table Worker
(
WORKER_ID int not null auto_increment,
primary key (WORKER_Id),
FIRST_NAME VARCHAR(200),
LAST_NAME VARCHAR(200),
SALARY int,
JOINING_DATE DATETIME,
DEPARTMENT VARCHAR(200)
);

INSERT INTO Worker (FIRST_NAME, LAST_NAME, SALARY, JOINING_DATE, DEPARTMENT)
values	("Monika", "Arora", 100000, "2014-2-20 9:00:00", "HR"),
		("Niharika", "Verma", 80000, "2014-6-11 9:00:00", "Admin"),
        ("Vishal", "Singhal", 300000, "2014-2-20 9:00:00", "HR"),
        ("Amitabh", "Singh", 500000, "2014-2-20 9:00:00", "Admin"),
        ("Vivek", "Bhati", 500000, "2014-6-11 9:00:00", "Admin"),
        ("Vipul", "Diwan", 200000, "2014-6-11 9:00:00", "Account"),
        ("Satish", "Kumar", 75000, "2014-1-20 9:00:00", "Account"),
        ("Geetika", "Chauhan", 90000, "2014-4-11 9:00:00", "Admin");
        
# 1. Write an SQL query to print all Worker details from the Worker table order by FIRST_NAME 
# Ascending and DEPARTMENT Descending. 

	SELECT * FROM Worker order by FIRST_NAME ASC, DEPARTMENT DESC;

# 2.Write an SQL query to print details for Workers with the first names “Vipul” and “Satish” 
# from the Worker table. 

	SELECT * FROM Worker where FIRST_NAME = "Vipul" OR FIRST_NAME = "Satish";

# 3. Write an SQL query to print details of the Workers whose FIRST_NAME ends with ‘h’ and 
# contains six alphabets. 

	SELECT * FROM Worker where FIRST_NAME like "______h";

# 4. Write an SQL query to print details of the Workers whose SALARY lies between 1.

	SELECT * FROM Worker where SALARY BETWEEN 7500 and 100000;

# 5. Write an SQL query to fetch duplicate records having matching data in some fields of a table. 
	
	(SELECT DISTINCT SALARY, COUNT(*) AS RECORDS FROM Worker GROUP BY SALARY HAVING COUNT(*) > 1) UNION ALL
    (SELECT DISTINCT JOINING_DATE, COUNT(*) AS RECORDS FROM Worker GROUP BY JOINING_DATE HAVING COUNT(*) > 1) UNION ALL
    (SELECT DISTINCT DEPARTMENT, COUNT(*) AS RECORDS FROM Worker GROUP BY DEPARTMENT HAVING COUNT(*) > 1);

# 6. Write an SQL query to show the top 6 records of a table. 

	SELECT * FROM Worker LIMIT 6;

# 7. Write an SQL query to fetch the departments that have less than five people in them. 

	SELECT DEPARTMENT, COUNT(DEPARTMENT) AS NO_OF_PEOPLE FROM Worker group by DEPARTMENT HAVING count(DEPARTMENT) < 5;

# 8. Write an SQL query to show all departments along with the number of people in there. 

	SELECT DEPARTMENT, COUNT(*) FROM Worker GROUP BY DEPARTMENT;

# 9. Write an SQL query to print the name of employees having the highest salary in each department.

	SELECT DEPARTMENT, MAX(SALARY) FROM Worker GROUP BY DEPARTMENT;
