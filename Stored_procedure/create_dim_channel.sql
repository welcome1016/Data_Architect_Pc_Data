
CREATE PROCEDURE sp_create_dim_channel
AS
BEGIN
drop table if exists [Pc_Data_Staging].[dbo].[Dim_Channel]
CREATE TABLE [Pc_Data_Staging].[dbo].[Dim_Channel](
	[Channel_ID] [int] IDENTITY(1,1) NOT NULL,
	[Channel] [nvarchar](50) NOT NULL
) 
insert into [Pc_Data_Staging].[dbo].[Dim_Channel] ([Channel])
select distinct [Channel]
from [Pc_Data_Staging].[dbo].[pc_data _RawData]
 
END;