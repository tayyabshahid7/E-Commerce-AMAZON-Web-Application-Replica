USE [MyAmazonDB]
GO
/****** Object:  StoredProcedure [dbo].[SP_AddNewCategory]    Script Date: 12/7/2016 1:33:10 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
Create proc [dbo].[SP_DeleteTheProduct]
( 
@ProductName varchar(200)

)
AS
BEGIN
BEGIN TRY
	delete from Products
	where [Name]=@ProductName
END TRY
BEGIN CATCH

 PRINT( 'Error occured' )
END CATCH
END




Create proc [dbo].[SP_DeleteCategory]
( 
@CategoryName varchar(200)

)
AS
BEGIN
BEGIN TRY
	delete from Category
	where CategoryName=@CategoryName
END TRY
BEGIN CATCH

 PRINT( 'Error occured' )
END CATCH
END


Create proc [dbo].[SP_UpdateCategory]
( 
@CategoryName varchar(200),
@CategoryName2 varchar(200)

)
AS
BEGIN
BEGIN TRY
	update Category
	set CategoryName = @CategoryName2
	where CategoryName=@CategoryName
END TRY
BEGIN CATCH

 PRINT( 'Error occured' )
END CATCH
END


create table Members
(
    MemberID int primary key identity(1,1),
	FirstName varchar(30),
	LastName varchar (30),
	[Password] varchar (30),
	ConfirmPassword varchar (30),
	Email varchar (30),
	DateOfBirth date,
	Gender varchar (2),
)


create PROCEDURE [dbo].[SP_AddingCustomer]
(
@FName varchar(30),
@LName varchar(30),
@Pwd1 varchar (30),
@Pwd2 varchar (30),
@Emailing varchar (30),
@DOB1 varchar (30),
@Gender varchar (2)


)
AS
BEGIN
BEGIN TRY
Insert into Members (FirstName,LastName, [Password], ConfirmPassword, Email,DateOfBirth,Gender)
values(
@FName,@LName,@Pwd1,@Pwd2,@Emailing,@DOB1,@Gender)
End try
BEGIN CATCH
-----INSERT INTO dbo.ErrorLog _VALUES(ERROR_HESSAGE(),'sp_GetAllData')
 PRINT( 'Error occured' )
END CATCH
END



select  * from Members





alter PROCEDURE [dbo].[SP_CheckLogin]
(

@Emailing varchar (100),
@Pwd1  varchar (100)

)
AS
BEGIN
BEGIN Tran


if (exists(
select Email, [Password] from Members
where Email = @Emailing and [Password] = @Pwd1)
)

begin
	commit tran
end

else
begin
	rollback tran
	end


end

