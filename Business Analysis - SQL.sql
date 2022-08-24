-- Data Types
-- int (1,2,3,4)
--float(12.3,12,6)
--char = var123demo // limited size
--varchar = var123 //no limitation in the sizedemo 


-- create tables
--insert valuesdemo
--extract and analyze

--create table <table name>(name datatype, name datatype);
--create table customers (name varchar, surname varchar, age int);

--insert into <table name> VALUES (value1, value2, value3);
--insert into customers values ('krish', 'gupta', 30);
--insert into CUSTOMERS VALUES ('Neeru', "Sharma", 50);
--insert into CUSTOMERS VALUES ('Farhan', "Mohd", 26);
--insert into CUSTOMERS VALUES ('Simran', "Singh", 35);
--insert into CUSTOMERS VALUES ('Ayush', "Jain", 40);
--insert into CUSTOMERS VALUES ('Sambhav', "Singla", 19);
--select * from customers;


/*
= equals
> greater than
< less than
>= greater than or equal TO
<= less than or equal to 
between = between a certain range
LIKE = search for a specific pattern
in = multiple possible values
*/ 

--select * from customers where age>30;

/*
CREATE TABLE  AGENTS (
   "AGENT_CODE" VARCHAR NOT NULL PRIMARY KEY,
       AGENT_NAME VARCHAR,
       "WORKING_AREA" VARCHAR,
       "COMMISSION" FLOAT,
       "PHONE_NO" VARCHAR,
       "COUNTRY" VARCHAR
);
*/


/*
--INSERT INTO AGENTS VALUES ('A001', 'Ramasundar', 'Bangalore', '0.15', '077-
25814763', 'India');
--INSERT INTO AGENTS VALUES ('A003', 'Alex ', 'London', '0.13', '075-12458969',
'UK');
--INSERT INTO AGENTS VALUES ('A008', 'Alford', 'New York', '0.12', '044-25874365',
'USA');
--INSERT INTO AGENTS VALUES ('A011', 'Ravi Kumar', 'Bangalore', '0.15', '077-
45625874', 'India');
--INSERT INTO AGENTS VALUES ('A004', 'Ramasundar', 'Bangalore', '0.15', '077-
25814763', 'Sri Lanka');
*/


--select * from AGENTS;
--select * from agents WHERE country = "India";
--select * from agents WHERE agent_name = "Ravi Kumar";


--AND = common values / intersection
--or = all the values / union
--select * from agents WHERE country = "India" AND agent_name = "Ramasundar";
--select * from agents WHERE country = "India" OR agent_name = "Ramasundar";
--select * from agents WHERE not country = "India"; 

-- sorting


--select * from AGENTS order by commission;
--select * from AGENTS order by commission desc;


--update AGENTS set agent_code = "A006" where agent_code = "A011";
--select * from AGENTS;
--update AGENTS set agent_name = "Aditi", country = "Germany" where agent_code = "A006";
--select * from AGENTS where agent_code = "A006";


--DELETE FROM AGENTS WHERE agent_code = "A006";
--SELECT * from AGENTS; 


--select count(agent_code) from AGENTS; // functions works in sql 


--select * from AGENTS where agent_name like "Ra%";
--select * from AGENTS where country like "%a";
--select * from AGENTS where agent_name like "%as%";
--Select * from Agents WHERE agent_name LIKE "%a_";
--Select * from Agents WHERE agent_name LIKE "_a%";

 --The COUNT() function returns the number of rows that matches the specified criteria.
 
 --The AVG() function returns the average value of a numeric column.
--The SUM() function returns the total sum of a numeric column.


--select count(agent_code) from AGENTS;
--select avg(commission) from AGENTS;
--select sum(commission) from AGENTS;

-- Minimum and Maximum values in particular column 


--SELECT MIN(commission) AS minCommision FROM AGENTS;
--SELECT MAX(commission) AS minCommision FROM AGENTS; 


--SELECT * FROM AGENTS WHERE commission BETWEEN 0.1 AND 0.14;
--SELECT * FROM AGENTS WHERE commission NOT BETWEEN 0.1 AND 0.14;

--Aliases 

--SQL aliases are used to give a table, or a column in a table a temporary name. 
--Aliases are often used to make column names more readable.
--An alias only exists for the duration of the query.

--SELECT agent_name , agent_code FROM AGENTS;
--SELECT agent_name as Name , agent_code as ID FROM AGENTS;
--SELECT * from AGENTS a where a.AGENT_CODE="A001";
--SELECT * FROM AGENTS WHERE Country IN ('India', 'UK'); //alternate of OR Operator

--DROP TABLE customers;

--SUB Queries

--CREATE TABLE Employee
(
  Emp_ID VARCHAR NOT NULL PRIMARY KEY, -- 0/ ""
   Emp_NAME VARCHAR,
    Location VARCHAR,
     Commision INT,
      PHONE_NO VARCHAR,
       COUNTRY VARCHAR
        );
        
--Inserting Values into Employee


--INSERT INTO Employee VALUES ('1', 'Ramasundar', 'Bangalore', '1500', '077-25814763', 'India');
--INSERT INTO Employee VALUES ('2', 'Alex ', 'London', '1100', '075-12458969', 'UK');
--INSERT INTO Employee VALUES ('3', 'Alford', 'New York', '1000', '044-25874365', 'USA');
--INSERT INTO Employee VALUES ('4', 'Ravi Kumar', 'Bangalore', '1500', '077-45625874', 'India');
--INSERT INTO Employee VALUES ('5', 'Santakumar', 'Chennai', '1000', '007-22388644', 'India');
--INSERT INTO Employee VALUES ('6', 'Lucida', 'San Jose', '800', '044-52981425', 'USA');
--INSERT INTO Employee VALUES ('7', 'Anderson', 'Brisbane', '1800', '045-21447739', 'New Zealand');
--INSERT INTO Employee VALUES ('8', 'Subbarao', 'Bangalore', '1400', '077-12346674', 'India');
--INSERT INTO Employee VALUES ('9', 'Mukesh', 'Mumbai', '1600', '029-12358964', 'India');
--INSERT INTO Employee VALUES ('10', 'McDen', 'London', '1700', '078-22255588', 'UK');
--INSERT INTO Employee VALUES ('11', 'Ivan', 'Toronto', '500', '008-22544166', 'Canada');
--INSERT INTO Employee VALUES ('12', 'Benjamin', 'Hampshire', '1500', '008- 22536178', 'Canada');
--INSERT INTO Employee VALUES ('13', 'Ramasundar', 'Bangalore', '1900', '077-25814763', 'India');

--CREATE TABLE  CUSTOMER
 (CUSTOMER_ID VARCHAR NOT NULL PRIMARY KEY,
  CUST_NAME VARCHAR NOT NULL,
   CUST_CITY VARCHAR,
    WORKING_AREA VARCHAR NOT NULL,
     CUST_COUNTRY VARCHAR NOT NULL,
      GRADE INT,
       OPENING_AMT FLOAT NOT NULL,
        RECEIVE_AMT FLOAT NOT NULL,
         PAYMENT_AMT FLOAT NOT NULL,
          OUTSTANDING_AMT FLOAT NOT NULL,
           PHONE_NO VARCHAR NOT NULL,
            Emp_ID  VARCHAR NOT NULL
);

--INSERT INTO CUSTOMER VALUES ('C00013', 'Holmes', 'London', 'London', 'UK','2', '6000.00', '5000.00', '7000.00', '4000.00', 'BBBBBBB', '1');
--INSERT INTO CUSTOMER VALUES ('C00001', 'Micheal', 'New York', 'New York','USA', '2', '3000.00', '5000.00', '2000.00', '6000.00', 'CCCCCCC', '2');
--INSERT INTO CUSTOMER VALUES ('C00020', 'Albert', 'New York', 'New York','USA', '3', '5000.00', '7000.00', '6000.00', '6000.00', 'BBBBSBB', '3');
--INSERT INTO CUSTOMER VALUES ('C00025', 'Ravindran', 'Bangalore','Bangalore', 'India', '2', '5000.00', '7000.00', '4000.00', '8000.00','AVAVAVA', '4');
--INSERT INTO CUSTOMER VALUES ('C00024', 'Cook', 'London', 'London', 'UK','2', '4000.00', '9000.00', '7000.00', '6000.00', 'FSDDSDF', '5');
--INSERT INTO CUSTOMER VALUES ('C00015', 'Stuart', 'London', 'London', 'UK','1', '6000.00', '8000.00', '3000.00', '11000.00', 'GFSGERS', '6');
--INSERT INTO CUSTOMER VALUES ('C00002', 'Bolt', 'New York', 'New York','USA', '3', '5000.00', '7000.00', '9000.00', '3000.00', 'DDNRDRH', '7');
--INSERT INTO CUSTOMER VALUES ('C00018', 'Fleming', 'Brisbane', 'Brisbane','Australia', '2', '7000.00', '7000.00', '9000.00', '5000.00', 'NHBGVFC','8');
--INSERT INTO CUSTOMER VALUES ('C00021', 'Jacks', 'Brisbane', 'Brisbane','Australia', '1', '7000.00', '7000.00', '7000.00', '7000.00', 'WERTGDF','9');
--INSERT INTO CUSTOMER VALUES ('C00019', 'Yearannaidu', 'Chennai', 'Chennai','India', '1', '8000.00', '7000.00', '7000.00', '8000.00', 'ZZZZBFV', '10');
--INSERT INTO CUSTOMER VALUES ('C00005', 'Sasikant', 'Mumbai', 'Mumbai','India', '1', '7000.00', '11000.00', '7000.00', '11000.00', '147-25896312','1');
--INSERT INTO CUSTOMER VALUES ('C00007', 'Ramanathan', 'Chennai', 'Chennai','India', '1', '7000.00', '11000.00', '9000.00', '9000.00', 'GHRDWSD', '2');
--INSERT INTO CUSTOMER VALUES ('C00022', 'Avinash', 'Mumbai', 'Mumbai','India', '2', '7000.00', '11000.00', '9000.00', '9000.00', '113-12345678','3');
--INSERT INTO CUSTOMER VALUES ('C00004', 'Winston', 'Brisbane', 'Brisbane','Australia', '1', '5000.00', '8000.00', '7000.00', '6000.00', 'AAAAAAA','4');
--INSERT INTO CUSTOMER VALUES ('C00023', 'Karl', 'London', 'London', 'UK','0', '4000.00', '6000.00', '7000.00', '3000.00', 'AAAABAA', '6');
--INSERT INTO CUSTOMER VALUES ('C00006', 'Shilton', 'Toronto', 'Toronto','Canada', '1', '10000.00', '7000.00', '6000.00', '11000.00', 'DDDDDDD','10');
--INSERT INTO CUSTOMER VALUES ('C00010', 'Charles', 'Hampshire', 'Hampshire','UK', '3', '6000.00', '4000.00', '5000.00', '5000.00', 'MMMMMMM', '11');
--INSERT INTO CUSTOMER VALUES ('C00017', 'Srinivas', 'Bangalore','Bangalore', 'India', '2', '8000.00', '4000.00', '3000.00', '9000.00','AAAAAAB', '6');
--INSERT INTO CUSTOMER VALUES ('C00012', 'Steven', 'San Jose', 'San Jose','USA', '1', '5000.00', '7000.00', '9000.00', '3000.00', 'KRFYGJK', '7');
--INSERT INTO CUSTOMER VALUES ('C00008', 'Karolina', 'Toronto', 'Toronto','Canada', '1', '7000.00', '7000.00', '9000.00', '5000.00', 'HJKORED', '2');
--INSERT INTO CUSTOMER VALUES ('C00003', 'Martin', 'Toronto', 'Toronto','Canada', '2', '8000.00', '7000.00', '7000.00', '8000.00', 'MJYURFD', '6');
--INSERT INTO CUSTOMER VALUES ('C00009', 'Ramesh', 'Mumbai', 'Mumbai','India', '3', '8000.00', '7000.00', '3000.00', '12000.00', 'Phone No','9');
--INSERT INTO CUSTOMER VALUES ('C00014', 'Rangappa', 'Bangalore','Bangalore', 'India', '2', '8000.00', '11000.00', '7000.00', '12000.00','AAAATGF', '5');
--INSERT INTO CUSTOMER VALUES ('C00016', 'Venkatpati', 'Bangalore','Bangalore', 'India', '2', '8000.00', '11000.00', '7000.00', '12000.00','JRTVFDD', '2');
--INSERT INTO CUSTOMER VALUES ('C00011', 'Sundariya', 'Chennai', 'Chennai','India', '3', '7000.00', '11000.00', '7000.00', '11000.00', 'PPHGRTS','8');


--select * from CUSTOMER;
--select * from Employee;

--SELECT COUNT(emp_id) from Employee;
--SELECT COUNT(cust_id) from CUSTOMER; 

--SELECT * FROM CUSTOMER;
--SELECT cust_name, agent_code, outstanding_amt from CUSTOMER;


--Research Average Outstanding Amounts: 


--SELECT AVG(outstanding_amt) from CUSTOMER;
--7600


--Names of customers who have amount greater than average oustanding
--SELECT cust_name, emp_id, outstanding_amt from CUSTOMER where outstanding_amt > 7600;


--SELECT cust_name, emp_id, outstanding_amt from CUSTOMER where outstanding_amt > (SELECT AVG(outstanding_amt) from CUSTOMER);

--SELECT * FROM AGENTS where agent_code = "A011";
--SELECT * FROM AGENTS where agent_code IN ("A011", "A003", "A010");
--SELECT * FROM Employee where emp_id IN (SELECT emp_id from CUSTOMER where outstanding_amt > (SELECT AVG(outstanding_amt) from CUSTOMER));

--JOINS 

 --A JOIN clause is used to combine rows from two or more tables, based on a related column between them.
 
--Inner Join

--Syntax of Inner Join

--SELECT column_name's FROM table1 INNER JOIN table2 ON table1.column_name = table2.column_name;
--SELECT cust_name,emp_name, outstanding_amt, location as EmployeeLocation FROM Employee INNER JOIN CUSTOMER ON Employee.emp_id = CUSTOMER.emp_id;

--LEFT JOIN

--The LEFT JOIN keyword returns all records from the left table (table1), and the matched records from the right table (table2).


--Syntax of left outer join

--SELECT column_name(s) FROM table1 LEFT JOIN table2 ON table1.column_name = table2.column_name;
--SELECT cust_name,emp_name, outstanding_amt, CUSTOMER.phone_no FROM Employee LEFT JOIN CUSTOMER ON Employee.emp_id = CUSTOMER.emp_id;

--Right join //not supported in sql lite 

--SELECT * FROM Customer left JOIN Employee ON Employee.emp_id = CUSTOMER.emp_id; // we can use this by changing the places of tables used in left join


-- with order and limit funcionality
--SELECT cust_name,emp_name, outstanding_amt, CUSTOMER.phone_no FROM Employee LEFT JOIN CUSTOMER ON Employee.emp_id = CUSTOMER.emp_id order by emp_name Limit 5;


--top 5 customers have the highest outstanding payment with emp name?


--SELECT cust_name,emp_name, outstanding_amt FROM Employee LEFT JOIN CUSTOMER ON Employee.emp_id = CUSTOMER.emp_id order by outstanding_amt desc limit 5;

--with commision


--SELECT cust_name,emp_name, outstanding_amt, Employee.Commision from Employee LEFT JOIN CUSTOMER ON Employee.emp_id = CUSTOMER.emp_id order by outstanding_amt desc limit 5;

--change column name

--Alter table CUSTOMER RENAME COLUMN phone_no to CUSTOMER_Number;
--select * from CUSTOMER; 


--DELETE ANY SPECIFIC ROW FROM TABLE

--DELETE FROM CUSTOMER WHERE customer_number = "BBBBBBB";

--TO DELETE ANY SPECIFIC TABLE

--DROP TABLE DEMO;

