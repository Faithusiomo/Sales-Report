Create database upskill;
Exec sp_databases---lists all databases
use master
drop database upskill
Go


Create database upskill;
Exec sp_databases---lists all databases

create database Customer_data
Use Customer_data
CREATE database Employee_Data
Use Employee_Data;
CREATE TABLE Employees(
  ID INT,
  NAME VARCHAR (20),
  AGE INT,         NOT NULL
  ADDRESS CHAR(25),
  SALARY INT,
  PRIMARY KEY(ID)
  );

  ALTER TABLE EMPLOYEES ADD Gender varchar(10);

 ALTER TABLE EMPLOYEES DROP COLUMN Gender;

 select * from Employees

 INSERT INTO EMPLOYEES (ID,NAME,AGE,ADDRESS,SALARY)
 VALUES(1,'sara',32,'London',33000.00)
 INSERT INTO EMPLOYEES (ID,NAME,AGE,ADDRESS,SALARY)
 VALUES(2,'Katie',25,'Reading',45000.00)
INSERT INTO EMPLOYEES (ID,NAME,AGE,ADDRESS,SALARY)
 VALUES(3,'David',45,'Bristol',65000.00)


 INSERT INTO EMPLOYEES
 VALUES (7,'Muffy',24,'Oxford', 30000.00)

 select * from Employees

 ALTER TABLE EMPLOYEES ADD GENDER varchar(10)

 UPDATE EMPLOYEES SET GENDER = 'Female' where ID =1
 UPDATE EMPLOYEES SET GENDER = 'Female' where ID =2
 UPDATE EMPLOYEES SET GENDER = 'Male' where ID =3
 UPDATE EMPLOYEES SET GENDER = 'Female' where ID =7

 select * from Employees

 INSERT INTO Employees
 VALUES(7,'John',27,'Birmingham',43000.00,'Male')

 INSERT INTO Employees
 VALUES(4,'Mike',30,'Cornwall',75000.00,'Male')
 INSERT INTO Employees
 VALUES(5,'Hazal',35,'London',95000.00,'Female')
 INSERT INTO Employees
 VALUES(6,'Georgie',28,'Reading',35000.00,'female')

 select * from Employees

  select id,Name,salary from employees 

 select id,Name,salary from employees where salary > 50000
 select id, name, age, salary, address,gender from employees where name ='mike'
 select * from employees where name ='mike'

 select salary as salary_greater_than_50000 from  employees
 where salary >50000

 select count(salary) as salary_greater_than_50000  ---syntax for count
 from employees
 where salary> 50000

 select gender, avg(salary)  as Average_salary from employees 
 group by gender

 select gender, avg(age)  as Average_age from employees 
 group by gender

 insert into employees
 values(8,'Tom',45,'London',70000,'Male')
 select gender,age,avg(salary) as Average_Salary from employees group by Age,Gender
 Having Age >30
 select gender,age,avg(salary) as Average_Salary from employees group by Age,Gender
 Having Age > 40
 select * from employees order by salary desc
  select * from employees order by salary 


  Select NAME,AGE,ADDRESS
FROM Employees
WHERE GENDER = 'FEMALE'
GROUP BY NAME,AGE, ADDRESS
HAVING AGE > 30;
 

 SELECT NAME, AGE, ADDRESS FROM EMPLOYEES
WHERE GENDER = 'Female'
GROUP BY NAME, AGE, ADDRESS
HAVING AGE > 30


select 'Data' + ' ' + 'Analysis' + ' ' +'Bootcamp' as Course_Name ----concating string

select  concat('Data', ' ', 'Analysis',' ', 'Bootcamp') as course_Name ---concating string


UPDATE EMPLOYEES SET NAME = CONCAT(NAME , ' ' , surname); -----Concating columns


ALTER TABLE EMPLOYEES ADD Surname varchar(10);

UPDATE EMPLOYEES SET surname = 'Andreas' where ID =1
 UPDATE EMPLOYEES SET Surname = 'Jerry' where ID =2
 UPDATE EMPLOYEES SET surname = 'Almas' where ID =3
 UPDATE EMPLOYEES SET Surname = 'Punit' where ID =4
 UPDATE EMPLOYEES SET surname = 'Victor' where ID =5
 UPDATE EMPLOYEES SET surname = 'Joseph' where ID =6
 UPDATE EMPLOYEES SET surname = 'Alexandra' where ID =7

 Select CONCAT ('The', ' ', 'count' , ' ', 'of',
' ', 'employees (Age >30)', ' ', 'is') as Description, 
count(*) AS Number_of_Employees
from EMPLOYEES

Select CONCAT ('The', ' ', 'count' , ' ', 'of',
' ', 'employees (Age >30)', ' ', 'is') as Description, 
count(*) AS Number_of_Employees
from EMPLOYEES

Select CONCAT ('The', ' ', 'count' , ' ', 'of',
' ', 'employees', ' ','live',' ','in',' ','London',' ', 'is') as Description, 
count(*) AS Number_of_Employees
from EMPLOYEES
where ADDRESS = 'London'


select * from employees

select name, surname from employees where surname is not null

select name, surname from employees where surname is null

Update employees set surname= 'Not Available'
where surname is Null

UPDATE EMPLOYEES
SET  surname = 'Not Available'
WHERE surname IS NULL;

select name,age,address from employees where age > 30 and address = 'London' And Gender = 'Female'

select name,age,address from employees where age > 30 or address = 'London' or Gender = 'Female'

select name, address from employees where not address = 'London'

select * from samplesuperstore


create database lab1


CREATE DATABASE Lab1
select  * from SampleSuperstore

--Select all the record where Region = South
Select * from samplesuperstore where Region ='South'




--How many records South region has? Set column name as 'South_Region'
Select count(Region) as South_Region  from samplesuperstore where Region = 'South'



-- Count of sales of all Regions
Select count(Sales),Region
FROM Samplesuperstore
GROUP BY Region


 








--Count of sales of all regions by category 
Select count(Sales),Region, Category
FROM Samplesuperstore
GROUP BY  category,region





--Sort the sales in DESC order 
select  sales from samplesuperstore order by sales desc







--Display the category and subcategory where profit is negative

Select Category, subcategory,profit
FROM samplesuperstore
WHERE profit < 0


select * from samplesuperstore


-- Total Sales of all the states
select sum(sales), state from samplesuperstore 
Group by state





--Which State has the most number of negative profit



Select state,profit
FROM samplesuperstore
WHERE profit < 0
order by profit asc




--Which Region has the most number of negative profit

Select Region,count(profit) as negative_profit
FROM samplesuperstore
WHERE profit < 0
order by profit asc
