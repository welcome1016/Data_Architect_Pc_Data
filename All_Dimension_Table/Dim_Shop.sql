drop table if exists [dbo].[Dim_Shop]
CREATE TABLE [Pc_Data_Staging].[dbo].[Dim_Shop](
	[Shop_ID] [int] IDENTITY(1,1) Primary key,
	[Shop_Name] [nvarchar](50) NOT NULL,
	[Shop_Age] [nvarchar](50) NOT NULL
) 
insert into [Pc_Data_Staging].[dbo].[Dim_Shop] ([Shop_Name], [Shop_Age])
select distinct [Shop_Name], [Shop_Age]
from [Pc_Data_Staging].[dbo].[pc_data _RawData]


