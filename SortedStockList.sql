USE NORTHWIND
SELECT	TOP 10 ProductID, ProductName, UnitPrice, UnitsInStock, UnitsOnOrder, UnitPrice*UnitsInStock AS CurrentStockValue, (UnitsOnOrder + UnitsInStock)*UnitPrice AS FutureStockValue FROM Products ORDER BY (UnitsOnOrder + UnitsInStock)*UnitPrice DESC