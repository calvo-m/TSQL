USE QATSQLPLUS

SELECT VendorName, CourseName, StartDate, NumberDelegates
FROM dbo.VendorCourseDateDelegateCount 

SELECT * FROM (
SELECT VendorName, StartDate, NumberDelegates
FROM dbo.VendorCourseDateDelegateCount) AS A PIVOT
(SUM(NumberDelegates) FOR VendorName IN ([Microsoft], [QA], [Oracle])) AS BaseData