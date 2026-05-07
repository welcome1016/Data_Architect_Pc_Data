CREATE PROCEDURE sp_create_dim_date

AS
BEGIN
drop table if exists [dbo].[Dim_Date]
CREATE TABLE [Pc_Data_Staging].[dbo].[Dim_Date](
	[DateID] [INT]  IDENTITY(1,1) Primary key,
	[Purchase_Date] [datetime2](7) NOT NULL,
	[Ship_Date] [nvarchar](50) NOT NULL
) 
insert into [Pc_Data_Staging].[dbo].[Dim_Date] ([Purchase_Date], [Ship_Date])
select distinct [Purchase_Date], [Ship_Date]
from [Pc_Data_Staging].[dbo].[pc_data _RawData]
END;