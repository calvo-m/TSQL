USE QATSQLPLUS

SELECT VendorName, PhoneNumber, 'Vendor' AS ContactType
FROM 
dbo.Vendor
UNION 
SELECT TrainerName, PhoneNumber, 'Trainer' AS ContactType
FROM
dbo.Trainer

