

-- Emeka Mkpume
-- T-SQL QUIZ 3
-- January 29, 2020

--- which region have employees who have made sales of products by german suppliers.
--list regions
--employee names
--supplier names
--product names

select RegionDescription, LastName + ',' + FirstName as Employee, S.CompanyName as Supplier, ProductName
	from orders as O
	join [Order Details] as OD on O.OrderID = OD.OrderID
	join Products as P on OD.ProductID = P.ProductID
	join Employees as E on E.EmployeeID = O.EmployeeID
	join Suppliers as S on P.SupplierID = S.SupplierID
	join EmployeeTerritories as ET on E.EmployeeID = ET.EmployeeID
	join Territories as T on ET.TerritoryID = T.TerritoryID
	join Region as R on R.RegionID = T.RegionID
	where S.country = 'Germany'
	group by ProductName, S.CompanyName, LastName, FirstName, RegionDescription
	Order by RegionDescription;