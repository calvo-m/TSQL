USE QATSQLPLUS
GO

CREATE VIEW VendorCourseDelegateCountView AS (
SELECT VendorName, CourseName, NumberDelegates, 
RANK() OVER (ORDER BY NumberDelegates DESC) AS Rank,
DENSE_RANK() OVER (ORDER BY NumberDelegates DESC) AS DenseRank,
ROW_NUMBER() OVER (ORDER BY NumberDelegates DESC) AS RowNumber,
NTILE(3) OVER (ORDER BY NumberDelegates DESC) AS NTile
FROM dbo.VendorCourseDelegateCount)

WITH LeaguePos AS (
SELECT VendorName, CourseName, NumberDelegates, 
RANK() OVER (PARTITION BY VendorName ORDER BY NumberDelegates DESC) AS League_Pos FROM VendorCourseDelegateCountView)
SELECT * FROM LeaguePos WHERE League_Pos = 1