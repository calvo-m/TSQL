USE Northwind
SELECT c.CustomerID, c.CompanyName, c.ContactName, o.OrderID, o.OrderDate, od.ProductID, od.Quantity, p.ProductID, p.ProductName, cat.CategoryName FROM dbo.Customers AS c
JOIN 
dbo.Orders AS o
ON c.CustomerID = o.CustomerID
JOIN 
dbo.[Order Details] AS od
ON o.OrderID = od.OrderID
JOIN 
dbo.Products AS p
ON od.ProductID = p.ProductID
JOIN 
dbo.Categories AS cat
ON p.CategoryID = cat.CategoryID
WHERE c.Country = 'UK' AND cat.CategoryName  = 'Seafood'
ORDER BY c.CompanyName, o.OrderDate
