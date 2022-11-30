DECLARE @Vendor VARCHAR(100)
SET @Vendor = 'AQ'
IF @Vendor IS NOT NULL
	BEGIN
	IF NOT EXISTS (SELECT * FROM dbo.Vendor WHERE VendorName = @Vendor) PRINT('Vendor cannot be found')
	ELSE
		BEGIN
		SELECT *
		FROM dbo.Course AS C
		INNER JOIN dbo.Vendor AS V
			ON C.VendorID = V.VendorID
		WHERE 
		VendorName = @Vendor
		END
	END
ELSE PRINT('Vendor is null')
GO

-----------------------------------------------
DECLARE @Vendor VARCHAR(100)
SET @Vendor = 'QA'
IF @Vendor IS NOT NULL
	BEGIN
	IF NOT EXISTS (SELECT * FROM dbo.Vendor WHERE VendorName = @Vendor) 
		BEGIN
		PRINT('Vendor cannot be found') 
		RETURN
		END
	SELECT *
		FROM dbo.Course AS C
		INNER JOIN dbo.Vendor AS V
			ON C.VendorID = V.VendorID
		WHERE 
		VendorName = @Vendor
		RETURN
	END
PRINT('Vendor is null')