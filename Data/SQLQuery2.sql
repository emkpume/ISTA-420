--S-SQL LAB 2C
--ELLIOT ROBINSON
--January 27, 2020.

--1. List the employee IDs with the number of sales by each employee from most sales to least.
--I want to recognize the employees with the most sales.

select top(5) EmployeeId,
			Count(EmployeeId) as TotalSales
from Orders
group by EmployeeID
order by TotalSales desc;

-- 2. Report the average discounts taken by all customers for products that cost more than $50.00.
--ordering from the highest price to the lowest price.

select *
from [Order Details]
where UnitPrice > 50.0;

select ProductID,
	avg(Discount) as AvgDiscount
from [Order Details]
where UnitPrice > 50.0
group by ProductID;

select ProductID, UnitPrice,
	avg(Discount) as AvgDiscount
from [Order Details]
where UnitPrice > 50.0
group by ProductID, UnitPrice
order by UnitPrice desc;

--3. I am doing an analysis of which shippers ship to each country,
--and I need a report showing the number of orders each shipper delivered to each country and the number of orders.
--I don’t need the data where the number of orders is ten or less, 
--but I need the report listed by country and the number of orders shipped to that country.

select ShipCountry,
	count(OrderID) as Quantity
	from orders
	group by ShipCountry
	having count(OrderID) > 10
	order by Quantity desc;

--4. For each order, what was the time lag between the order date and the ship date?

select OrderDate, ShippeDdate,
datediff(D, OrderDate, ShippedDate) as T_Lag
from orders;

--5. Continuing with the previous query, I need the average time lag for each shipper

select ShipVia, Avg(DateDiff(day, OrderDate, ShippedDate)) as AvgT_Lag
	from orders 
	group by Shipvia;

--6.  I am doing inventory, and I need to know the total price of each product on hand,
--that is, the price of each product line, sorted alphabetically by product name.

select * from products;
select ProductName,
		UnitPrice * UnitsInStock as ProductTotalValue
		from products
		order by productName asc;

--7.What is the dollar total we have tied up in inventory

select sum(UnitsInStock * ProductId ) as TotalProductValue
	from products;

--8.  We have discovered that some customers favor certain employees. I need to know this information.
--I need a report of the most common employee/customer pairs, the nuber of times the employee took
--orders from the customer, and the number of orders.
--Alphabetize this by customer id. Omit customer/employee pairs wherethe number of orders is less than 5.

select CustomerID, EmployeeID,
	count(CustomerID) as TotalCustomers
	from orders
	group by customerID, EmployeeID
	having count(CustomerID) > 4
	order by CustomerID;
	

--9.  How many days were in the service (if you are a veteran), 
--or how many days will you serve (assuming you know your ETS date)?

select DateDiff(d,'1988-09-03', getDate());
select datediff_big(NS,'1988-09-03', getDate()) as nanosecondsOld;

--10.Answer these questions using the built in time and date function. 
--• What is today’s date? 
--• What was the ﬁrst day of the month?
--• What will be the ﬁrst day of the next month? 
--• What is the last day of this month?

select GetDate();
select DATEFROMPARTS(Year(Getdate()), month(GetDate()),1);
select DATEFROMPARTS(Year(GetDate()), month(GetDate()) +1,1);
select EOMONTH(Getdate());
