USE QATSQLPLUS

SELECT da.DelegateID
FROM
dbo.DelegateAttendance AS da
JOIN
dbo.CourseRun AS cr
ON da.CourseRunID = cr.CourseRunID
JOIN
dbo.Course AS c
ON c.CourseID = cr.CourseID
WHERE c.CourseName = 'QATSQL'
INTERSECT
SELECT da.DelegateID
FROM
dbo.DelegateAttendance AS da
JOIN
dbo.CourseRun AS cr
ON da.CourseRunID = cr.CourseRunID
JOIN
dbo.Course AS c
ON c.CourseID = cr.CourseID
WHERE c.CourseName = 'QATSQLPLUS'