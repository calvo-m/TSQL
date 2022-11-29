USE QATSQLPLUS

SELECT d.DelegateID, d.DelegateName, d.CompanyName, dt.StartDate FROM 
dbo.DelegateAttendance AS da
JOIN
dbo.Delegate AS d
ON da.DelegateID = d.DelegateID
JOIN (
SELECT cr.CourseRunID, cr.StartDate FROM
dbo.CourseRun AS cr
JOIN
dbo.Trainer as t
ON cr.TrainerID = t.TrainerID
WHERE t.TrainerName = 'Jason Bourne') AS DT
ON da.CourseRunID = dt.CourseRunID