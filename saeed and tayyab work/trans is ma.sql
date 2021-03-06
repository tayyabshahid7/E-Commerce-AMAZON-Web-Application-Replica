USE [MyAmazonDB]
GO
/****** Object:  StoredProcedure [dbo].[SP_Addingone]    Script Date: 12/7/2016 7:02:55 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
ALTER PROCEDURE [dbo].[SP_Addingone]
(
@ProductName varchar(300),
@ProductPrice int,
@ProductDescription varchar (1000),
@CategoryID int,
@ImageUrl varchar (500),
@ProductQuantity int

)
AS
BEGIN tran

if( @ProductName is not null and  @ProductPrice is not null and  @ProductDescription is not null and  @CategoryID is not null and  @ImageUrl is not null and @ProductQuantity is not null )
begin
Insert into Products (Name, Price, [Description], CategoryID, ImageUrl,ProductQuantity)
values(
@ProductName,@ProductPrice, @ProductDescription, @CategoryID, @ImageUrl,@ProductQuantity)

commit tran
end
else
begin
rollback tran
end



select * from Products