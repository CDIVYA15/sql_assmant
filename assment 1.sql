Create database if not exists Workerdb;
Use Workerdb; 

Create table Worker(
	WORKER_ID int primary key auto_increment,
    FIRST_NAME VARCHAR(50),
    LAST_NAME VARCHAR(50),
    SALARY INT,
    JOINING_DATE DATETIME,
    DEPARTMENT varchar(50)
);

INSERT INTO WORKER (FIRST_NAME,LAST_NAME,SALARY,JOINING_DATE,DEPARTMENT) 
VALUES ("Monika","Arora",100000,"2014/02/20 09:00","HR"),
	   ("Niharika","Verma",80000,"2014/06/11 09:00","Admin"),
	   ("Vishal","Singhal",300000,"2014/02/20 09:00","HR"),
	   ("Amitabh","Singh",500000,"2014/02/20 09:00","Admin"),
	   ("Vivek","Bhati",500000,"2014/06/11 09:00","Admin"),
	   ("Vipul","Diwan",200000,"2014/06/11 09:00","Account"),
	   ("Satish","Kumar",75000,"2014/01/20 09:00","Account"),
	   ("Geetika","Chauhan",90000,"2014/04/11 09:00","Admin");
       
Select * from Worker;

#1 Write an SQL query to print all Worker details from the Worker table order by FIRST_NAME Ascending and DEPARTMENT Descending.
	Select * from worker order by FIRST_NAME,DEPARTMENT desc;
    
#2 Write an SQL query to print details for Workers with the first names “Vipul” and “Satish” from the Worker table.
	Select * from worker where FIRST_NAME IN ("Vipul","Satish");
    
#3 Write an SQL query to print details of the Workers whose FIRST_NAME ends with ‘h’ and contains six alphabets.
	Select * from worker where FIRST_NAME LIKE "_____h";
    
#4 Write an SQL query to print details of the Workers whose SALARY lies between 50000 and 100000.
	Select * from worker where salary between 50000 and 100000;
    
#5  Write an SQL query to fetch duplicate records having matching data in some fields of a table.
	Select JOINING_DATE,DEPARTMENT from worker group by JOINING_DATE,DEPARTMENT having count(*) > 1;
    
#6 Write an SQL query to show the top 6 records of a table.
	Select * from Worker limit 6;
    
#7 Write an SQL query to fetch the departments that have less than five people in them.
	Select DEPARTMENT from worker group by DEPARTMENT having count(*) < 5;
    
#8 Write an SQL query to show all departments along with the number of people in there.
	Select DEPARTMENT,Count(*) as "No of Employee" from worker group by DEPARTMENT;
    
 #9 Write an SQL query to print the name of employees having the highest salary in each department.
	Select Concat(FIRST_NAME," ",Last_name) as Emp_Name,DEPARTMENT,Salary from worker 
    where salary IN (Select Max(Salary) from worker group by DEPARTMENT);

