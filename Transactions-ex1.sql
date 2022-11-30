USE QATSQLPLUS
DECLARE @ProductID INT = 4
DECLARE @Amount INT = 1
DECLARE @msg VARCHAR(100)

IF @ProductID = NULL 
	BEGIN
		SET @msg = FORMATMESSAGE('%s cannot be null', @ProductID);
		THROW 53000, @msg, 1
		RETURN
	END

IF @Amount = NULL 
	BEGIN
		SET @msg = FORMATMESSAGE('%s cannot be null', @Amount);
		THROW 53000, @msg, 1
		RETURN
	END

BEGIN TRY
	BEGIN TRAN
		INSERT INTO dbo.BookTransfers VALUES (@ProductId, getdate(), 'Transfer Out', @Amount)
		UPDATE dbo.BookStock
			SET StockAmount = StockAmount - @Amount
			WHERE ProductID = @ProductID
	COMMIT TRAN
END TRY

BEGIN CATCH
	ROLLBACK TRAN;
	THROW 54000, 'Error in the transaction.', 1
END CATCH

