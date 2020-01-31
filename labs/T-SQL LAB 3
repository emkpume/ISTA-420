-- Emeka Mkpume
-- T-SQL LAB 3
-- January 28, 2020

--1. What is the order number and the date of each order sold by each employee?
select * from Orders;
select * from Employees;

select OrderID, FirstName, LastName, OrderDate
	from Orders as O
	inner join Employees as E
	on O.EmployeeID = E.EmployeeID;

--2. List each territory by region 
 select *
	from Region as R1
	cross join Territories as T
	where R1.RegionID = T.RegionID
	and R1.RegionDescription like 'East%';
	select Count(*) from territories;

	select *
		from Region as R
		join Territories as T
		on R.RegionID = T.RegionID
		where R.RegionDescription like 'East%';

--3. What is the supplier name for each product, alphabetically by supplier ?
	select * from products;
	select * from suppliers;

	select * 
		from products as P
		inner join suppliers as S
		on P.supplierID = S.supplierID;

	select ProductName, CompanyName
		from Products as P
		inner join Suppliers as S
		on P.SupplierID = S.SupplierID
		order by CompanyName asc;

--4. For every order on May 5, 1998, how many of each item was ordered, and what was the price of the items

	select * 
		from [Order Details]
	select *
		from Orders;

select sum(Quantity), UnitPrice, OrderDate, ProductID
	from [Order Details] as OD
	inner join Orders as O
	on OD.OrderID = O.OrderID
	where OrderDate = ('1998-05-05')
	group by ProductID,  UnitPrice, OrderDate
	Order by ProductID;

--5. For every order on May 5, 1998, how many of each item was ordered giving the name of the item, and what was the price of the item?
-- ordered giving the name of the item, and what was the price of the item

select * from Orders where Orderdate = '1998-05-05';
select * from [Order Details];
select * from Products;

select * 
	from Orders as O
	join [Order Details] as OD
	on O.OrderID = OD.OrderID
	join Products as P
	on OD.ProductID =P.ProductID
	where OrderDate = '1998-5-5';

select  ProductName, OD.UnitPrice, sum(Quantity) as Quantity
	from Orders as O
	join [Order Details] as OD
	on O.OrderID = OD.OrderID
	join Products as P
	on OD.ProductID = P.ProductID
	where OrderDate = '1998-5-5'
	group by P.ProductID, ProductName, OD.UnitPrice;

--6. For every order in May, 1998, what was the customer's name and the shipper's name?
-- customers name
--shippers name

select * from Orders
	where month(OrderDate) = 5
	and year(OrderDate) = 1998;

select C.CompanyName, S.CompanyName
	from Orders as O
	join Shippers as S
	on O.ShipVia = S.ShipperID
	join Customers as C
	on O.CustomerID = C.CustomerID
	where month(OrderDate) = 5
	and year(OrderDate) = 1998;

--7.  What is the customer's name and the employee's name for every order shipped to France?
--customers
--employees
--ShippedVia France
	select * from customers;
	select * from employees;
	select * from orders;

	select C.CompanyName,
	E.FirstName + ' ' + E.LastName as Customer
		from Orders as O
		join Customers as C
		on O.CustomerID = C.CustomerID
		join Employees as E
		on O.EmployeeID = E.EmployeeID
		where ShipCountry = 'France';

--8. List the products by name that were shipped to Germany.
	select distinct ProductName
		from Orders as O
		join [Order Details] as OD
		on O.OrderID = OD.OrderID
		join Products as P
		on OD.ProductID = P.ProductID
		where ShipCountry = 'Germany'
		Order by ProductName asc;

-- german customers to german shippers
select *
	from [Order Details] as OD
	join Orders as O
	on OD.OrderID = O.OrderID
	join Customers as C
	on O.CustomerID = C.CustomerID
	join products as P
	on OD.productID = P.ProductID
	join Suppliers as S
	on P.SupplierID = S.SupplierID
	where S.Country = 'Germany'
	and C.Country = 'Germany'
	group by C.CompanyName, S.CompanyName;

--- which region have employees who have made sales of products by german suppliers.
--list regions
--employee names
--supplier names
--product names
select * from Suppliers;
select * from Products;
select * from [Order Details];
select * from Orders;

select S.Suppliers, P.Product, OD.[Order Details], O.Orders;
		from Suppliers as S
		join Product as P
		on S.Product = P.Product
		join [Order Details] as OD
		on OD.orders = O.Orders
		where Supplier = 'Germany';





