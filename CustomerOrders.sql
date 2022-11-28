USE Northwind
SELECT COUNT(OrderID) AS NumberOfOrders, CustomerID FROM dbo.Orders GROUP BY CustomerID ORDER BY NumberOfOrders DESC