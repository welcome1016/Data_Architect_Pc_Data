drop table if exists [dbo].[Dim_Pc_Properties]
CREATE TABLE[Pc_Data_Staging].[dbo].[Dim_Pc_Properties](
	[Properies_ID] [int] IDENTITY(1,1) Primary key,
	[PC_Make] [nvarchar](50) NOT NULL,
	[PC_Model] [nvarchar](50) NOT NULL,
	[Storage_Type] [nvarchar](50) NOT NULL,
	[RAM] [nvarchar](50) NOT NULL,
	[Storage_Capacity] [nvarchar](50) NOT NULL
) 
insert into [Pc_Data_Staging].[dbo].[Dim_Pc_Properties] ([PC_Make], [PC_Model], [Storage_Type], [RAM], [Storage_Capacity])
select distinct [PC_Make], [PC_Model], [Storage_Type], [RAM], [Storage_Capacity]
from [Pc_Data_Staging].[dbo].[pc_data _RawData]

