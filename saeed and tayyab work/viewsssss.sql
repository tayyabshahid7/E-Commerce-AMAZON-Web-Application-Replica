create view GettingProductsAll
as
select * from (
	
	select P.CategoryID,


		P.ProductID,P.Name,P.Price,
		P.ImageUrl, C.CategoryName ,
		P.ProductQuantity,
		Isnull (Sum(CP.TotalProduct),0) As ProductSold,
		(P.ProductQuantity- Isnull(Sum(CP.TotalProduct) ,0) )as AvailableStock
		From Products P
		inner join Category C
		on C.CategoryID=P.CategoryID
		left join CustomerProducts CP
		on CP.ProductID=P.ProductID
	group by
	P.ProductID,P.Name,P.Price,
	P.ImageUrl, 
	C.CategoryName,
	P.ProductQuantity,
	P.CategoryID)as   StockTable
	
	where AvailableStock>0


