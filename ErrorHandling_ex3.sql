DECLARE @Vendor VARCHAR(30) = NULL

BEGIN TRY
UPDATE dbo.Vendor
	SET VendorName = @Vendor
	WHERE VendorID = 1
END TRY
BEGIN CATCH;
	THROW 60000, 'Error', 1
END CATCH