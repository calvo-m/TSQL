EXEC sp_addmessage 50017, 16, 'Vendor %s cannot be found'

DECLARE @msg VARCHAR(100) = FORMATMESSAGE(50017, 'Red Hat');
THROW 50017, @msg, 1
