USE Northwind

SELECT ShipName, ShipCity, CustomerID, Country, OrderID, OrderDate FROM dbo.Invoices
WHERE Country = 'UK'
ORDER BY ShipName