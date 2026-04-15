drop table if exists [dbo].[Dim_Location]
CREATE TABLE[Pc_Data_Staging]. [dbo].[Dim_Location](
	[LocationID] [int]  IDENTITY(1,1) Primary key,
	[Continent] [nvarchar](50) NOT NULL,
	[Country_or_State] [nvarchar](50) NOT NULL,
	[Province_or_City] [nvarchar](100) NOT NULL
) 
insert into [Pc_Data_Staging].[dbo].[Dim_Location] ([Continent], [Country_or_State], [Province_or_City])
select distinct [Continent], [Country_or_State], [Province_or_City]
from [Pc_Data_Staging].[dbo].[pc_data _RawData]

