USE QATSQLPLUS
GO

WITH BourneCourses AS (SELECT cr.CourseRunID, cr.StartDate FROM
dbo.CourseRun AS cr
JOIN
dbo.Trainer as t
ON cr.TrainerID = t.TrainerID
WHERE t.TrainerName = 'Jason Bourne')
SELECT d.DelegateID, d.DelegateName, d.CompanyName, bc.StartDate FROM
dbo.Delegate AS d
JOIN dbo.DelegateAttendance as da
ON d.DelegateID = da.DelegateID
JOIN
BourneCourses AS bc
ON bc.CourseRunID = da.CourseRunID
