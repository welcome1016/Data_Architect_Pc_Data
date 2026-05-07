

CREATE PROCEDURE sp_create_dim_sales_person
AS
BEGIN
drop table if exists [dbo].[Dim_Sales_Person]
CREATE TABLE [dbo].[Dim_Sales_Person](
	[Sales_Person_ID] [int] IDENTITY(1,1) Primary key,
	[Sales_Person_Name] [nvarchar](50) NOT NULL,
	[Sales_Person_Department] [nvarchar](50) NOT NULL
) 
insert into [dbo].[Dim_Sales_Person] ([Sales_Person_Name], [Sales_Person_Department])
select distinct [Sales_Person_Name], [Sales_Person_Department]
	from [Pc_Data_Staging].[dbo].[pc_data _RawData]
END;