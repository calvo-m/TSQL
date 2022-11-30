USE QATSQLPLUS
DECLARE @Vendor VARCHAR(100)
SET @Vendor = 'AQ'
DECLARE @msg VARCHAR(100)

IF @Vendor IS NULL
	BEGIN;
		THROW 54000, 'Vendor cannot be null', 1
		RETURN
	END
IF NOT EXISTS (SELECT * FROM dbo.Vendor WHERE VendorName = @Vendor)
	BEGIN
	SET @msg = FORMATMESSAGE('Vendor %s cannot be found', @Vendor);
		THROW 54000, @msg , 1
		RETURN
	END
SELECT *
	FROM dbo.Course AS C
		INNER JOIN dbo.Vendor AS V
			ON C.VendorID = V.VendorID
		WHERE VendorName = @Vendor
GO