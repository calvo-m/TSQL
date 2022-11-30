USE QATSQLPLUS

SELECT VendorName, CourseName, StartDate, SUM(NumberDelegates) AS TotalDelegates
FROM dbo.VendorCourseDateDelegateCount 
GROUP BY VendorName, CourseName, StartDate WITH ROLLUP
GO

SELECT VendorName, CourseName, StartDate, SUM(NumberDelegates) AS TotalDelegates
FROM dbo.VendorCourseDateDelegateCount 
GROUP BY VendorName, CourseName, StartDate
GO

SELECT VendorName, CourseName, StartDate, SUM(NumberDelegates) AS TotalDelegates, GROUPING_ID(VendorName, CourseName, StartDate) AS GroupingID
FROM dbo.VendorCourseDateDelegateCount 
GROUP BY
GROUPING SETS (
(VendorName), 
(VendorName, CourseName),
(VendorName, CourseName, StartDate)
)