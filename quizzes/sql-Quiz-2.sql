.echo on
.headers on

--Name : Emeka Mkpume
--Files: sql-Test 01-ch2.sql
--Date: January 22, 2020

--1. List the company name, the contact name and the country of all customers in poland.

select customerid, companyname, country from customers where country in("Poland");

--2. List the order id, the order date and the destination city of all orders shipped to berlin.


--3. How many boxes of filo mix do we have in stock?
--4. List the telephone numbers of all our younger employees?
--5. who is our oldest employee? Who is our youngest employee ?
--6. List the supplies where the owner of the supplier is also the sales contact.