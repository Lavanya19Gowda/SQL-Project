--Database  - Pelican Store


--Q1. Which gender gives the maximum sales?
--SELECT sum(Sales) from store where gender = "Male";
--SELECT sum(Sales) from store where gender = "Female";

--Q2. Which age group and gender gives the maximum sales?
--Select Age, Gender, Sales from store order by cast (Sales as float) desc limit 5;
--Females and 30-50 age group gives the maximum sales.


--Q3. What is the highest discount given to females?
--select * from store where gender = "Female" order by discount desc;


--Q4. What is the average discount given to females in the store?
--select avg(discount) from store  where gender = "Female";

--Database – Chinook.db

--Q5. Top 2 invoices of Germany customers with names and Do the sum of the invoices of Germany customers.
--select total_invoices, country, firstname from invoices inner join customers on invoices.CustomerId = customers.customerid where country = "Germany" order by total_invoices DESC;

--How to join three tables?

-- syntax
--select * from table 1 a left outer join  table 2 b on b.c1=a.c1 left outer join table 3 on c.c2=b.c2;


--Q6. Name the customer have the track id 232?
--select firstname, trackid from invoice_items a left outer join invoices b on b.InvoiceId = a.InvoiceId;
--left OUTER JOIN customers c on c.CustomerId = b.CustomerId where trackid = "232";

--Dataset - imdb 

--Q7. top 5 directors having rating more then average?
--Select director, actors, rating from imdb where rating > (SELECT avg(rating) from imdb) order by rating limit "5";

--Group BY

--Import Pelican Store Dataset

--The GROUP BY statement is often used with aggregate functions (COUNT(), MAX(), MIN(), SUM(), AVG()) to group the result-set by one or more columns


--SELECT method_of_payment, AVG(Sales) FROM store GROUP BY method_of_payment;
--SELECT COUNT(method_of_payment),method_of_payment FROM store GROUP BY method_of_payment;
--SELECT COUNT(method_of_payment),method_of_payment FROM store GROUP BY method_of_payment ORDER BY COUNT(method_of_payment) DESC;


--Joins + Group BY

--Example

--SELECT Shippers.ShipperName, COUNT(Orders.OrderID) AS NumberOfOrders FROM Orders LEFT JOIN Shippers ON Orders.ShipperID = Shippers.ShipperID GROUP BY ShipperName;
