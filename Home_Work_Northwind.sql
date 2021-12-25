-- Home work Norhwind site https://www.w3resource.com/mysql-exercises/northwind/products-table-exercises/

-- 1.Write a query to get Product name and quantity/unit.
select ProductName, QuantityPerUnit
from Products
where Discontinued = 'False'
go

-- 2. Write a query to get current Product list (Product ID and name).
select ProductID, ProductName
from Products
order by ProductID
go

-- 3. Write a query to get discontinued Product list (Product ID and name).
select ProductID, ProductName
from Products
where Discontinued = 'true'
order by ProductName
go

-- 4. Write a query to get most expense to least expensive Product list (name and unit price).
select ProductName, UnitPrice 
from Products 
order by UnitPrice desc
go

-- 5. Write a query to get Product list (id, name, unit price) where current products cost less than $20.
select ProductID, ProductName, UnitPrice
from Products
where UnitPrice<20 AND Discontinued = 'False'
order by ProductID
go

-- 6. Write a query to get Product list (name, unit price) where products cost between $15 and $25.
select ProductName, UnitPrice
from Products
where UnitPrice >= 15 And UnitPrice <=25 and Discontinued = 'False'
order by ProductName
go

-- 7. Write a query to get Product list (id, name, unit price) of above average price.
select distinct ProductName, UnitPrice
from Products
where UnitPrice > (select avg(UnitPrice) from Products)
order by ProductName
go

-- 8. Write a query to get Product list (name, unit price) of twenty most expensive products.
select distinct top 20 ProductName, UnitPrice
from Products
order by UnitPrice desc
go

-- 9. Write a query to count current and discontinued products.
select count(ProductName)
from Products
group by Discontinued
go

-- 10. Write a query to get Product list (name, units on order , units in stock) of stock is less than the quantity on order.
select ProductName,  UnitsOnOrder , UnitsInStock
from Products
where Discontinued = 'False' and UnitsInStock < UnitsOnOrder
go