drop table if exists [dbo].[Dim_Payment_Method]
CREATE TABLE [Pc_Data_Staging]. [dbo].[Dim_Payment_Method](
	[Payment_Method_ID] [int] IDENTITY(1,1) Primary key,
	[Payment_Method] [nvarchar](50) NOT NULL
) 
insert into [Pc_Data_Staging].[dbo].[Dim_Payment_Method] ([Payment_Method])
select distinct [Payment_Method]
from [Pc_Data_Staging].[dbo].[pc_data _RawData]


