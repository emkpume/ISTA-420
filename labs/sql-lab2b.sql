.echo on
.headers on

--Name : Emeka Mkpume
--Files: sql-lab02b.sql-lab02b
--Date: January 22, 2020

--1. Who are our customers in north america?
select customerid, companyname, country from customers where country in("Canada","USA","Mexico");

--2. What orders were place in April, 1998 ?


