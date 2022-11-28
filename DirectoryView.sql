USE Northwind
GO
CREATE VIEW dbo.ContactDirectory AS
SELECT c.CompanyName, c.ContactName, c.Phone 
FROM dbo.Customers AS c
UNION ALL
SELECT s.CompanyName, s.ContactName, s.Phone
FROM dbo.Suppliers AS s
UNION ALL
SELECT 'Northwind Traders', e.FirstName + ' ' + e.LastName AS FullName, e.Extension
FROM dbo.Employees AS e

