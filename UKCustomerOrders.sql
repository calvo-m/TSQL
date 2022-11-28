USE Northwind
SELECT c.CustomerID, c.CompanyName, c.ContactName, c.City, o.OrderID, o.OrderDate FROM dbo.Customers AS c
JOIN 
dbo.Orders AS o
ON c.CustomerID = o.CustomerID
WHERE c.Country = 'UK'
ORDER BY CompanyName, OrderDate