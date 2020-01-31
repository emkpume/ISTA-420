.echo on
.headers on

--Name : Emeka Mkpume
--Files: sql-Test 01-ch2.sql
--Date: January 22, 2020

--1. List the company name, the contact name and the country of all customers in poland.

 select companyname, contactname, country from customers where country like "Poland";

--2. List the order id, the order date and the destination city of all orders shipped to berlin.

select orderid, orderdate, shipcity from orders where shipcity like "Berlin";

--3. How many boxes of filo mix do we have in stock?

select productid, productname, unitsinstock from products where productid = 52;

--4. List the telephone numbers of all our younger employees?

select phone from shippers;

--5. who is our oldest employee? Who is our youngest employee ?

 select firstname, lastname, birthdate from employees order by birthdate;
 
 select EmployeeID, FirstName, LastName, Birthdate from employees where birthdate like "%1937%";
 
 select EmployeeID, FirstName, LastName, Birthdate from employees where birthdate like "%1966%";
 
--margaret peacook is the oldest while anne dodsworth is the youngest

--6. List the supplies where the owner of the supplier is also the sales contact.

 select contactname, contacttitle from suppliers where contacttitle like "Owner";