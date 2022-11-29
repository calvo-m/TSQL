USE QATSQLPLUS

ALTER TABLE #MicrosoftLocal (
	CourseID int,
	CourseName varchar(200),
	VendorID int
)


SELECT * INTO #MicrosoftLocal
FROM
dbo.Course 
WHERE VendorID = 2
GO

CREATE TABLE ##MicrosoftLocal (
	CourseID int,
	CourseName varchar(200),
	VendorID int
)

INSERT INTO ##MicrosoftLocal
SELECT * FROM
dbo.Course 
WHERE VendorID = 2
GO

SELECT * FROM ##MicrosoftLocal

SELECT * FROM #MicrosoftLocal
SELECT * FROM ##MicrosoftLocal