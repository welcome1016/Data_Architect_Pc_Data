
1--drop table if exists [Pc_Data_Staging].[dbo].[Dim_Customer]
CREATE TABLE [Pc_Data_Staging].[dbo].[Dim_Customer](
	[Customer_ID] [int] IDENTITY(1,1) Primary key,
	[Customer_Name] [nvarchar](50) NOT NULL,
	[Customer_Surname] [nvarchar](50) NOT NULL,
	[Customer_Contact_Number] [nvarchar](50) NOT NULL,
	[Customer_Email_Address] [nvarchar](50) NOT NULL
) 
--2 insert data into table
insert into [Pc_Data_Staging].[dbo].[Dim_Customer] ([Customer_Name], [Customer_Surname], [Customer_Contact_Number], [Customer_Email_Address])
select distinct [Customer_Name], [Customer_Surname], [Customer_Contact_Number], [Customer_Email_Address]
from [Pc_Data_Staging].[dbo].[pc_data _RawData]

--3 view data 
select * from [Pc_Data_Staging].[dbo].[Dim_Customer]