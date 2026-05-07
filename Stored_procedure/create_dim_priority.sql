

CREATE PROCEDURE sp_create_dim_priority
AS
BEGIN
 drop table if exists [dbo].[Dim_Priority]
CREATE TABLE [Pc_Data_Staging].[dbo].[Dim_Priority](
	[PriorityID] [int] IDENTITY(1,1) Primary key,
	[Priority] [nvarchar](50) NOT NULL
)
insert into [Pc_Data_Staging].[dbo].[Dim_Priority] ([Priority])
select distinct [Priority]
from [Pc_Data_Staging].[dbo].[pc_data _RawData]
END;