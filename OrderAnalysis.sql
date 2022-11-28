USE Northwind
SELECT COUNT(*) AS NumberOfOrders, MIN(OrderDate) AS EarliestOrder, MAX(OrderDate) as LatestOrder FROM dbo.Orders WHERE EmployeeID = 1