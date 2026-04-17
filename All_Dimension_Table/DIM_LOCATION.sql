drop table [Pc_Data_Staging].[dim_Location]
drop table Dim_Location 
CREATE TABLE [Pc_Data_Staging].[dbo].[dim_Location](
	[locationID] [int] IDENTITY(1,1) primary key,
	[Continent] [nvarchar](50) NOT NULL,
	[Country_or_State] [nvarchar](50) NOT NULL,
	[Province_or_City] [nvarchar](100) NOT NULL
)
insert into [Pc_Data_Staging].[dbo].[dim_Location] ( [Continent],[Country_or_State] ,[Province_or_City] )
select distinct [Continent],[Country_or_State] ,[Province_or_City]
from  [Pc_Data_Staging].[dbo].[pc_data _RawData]

select *from [Pc_Data_Staging].[dbo].[dim_Location]
