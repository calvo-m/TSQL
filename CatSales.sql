
EXEC dbo.SalesByCategory 'Seafood', '1996'
EXEC dbo.SalesByCategory 'Seafood', '1997'
EXEC dbo.SalesByCategory 'Seafood', '1998'
EXEC dbo.SalesByCategory 'Seafood' 
EXEC dbo.SalesByCategory '1996', 'Seafood'
EXEC dbo.SalesByCategory @OrdYear = '1996', @CategoryName ='Seafood'