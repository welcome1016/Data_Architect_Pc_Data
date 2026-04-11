SELECT Distinct
      [PC_Make]
      ,[PC_Model]
      ,[Storage_Type]
      ,[RAM]
      ,[Storage_Capacity]
      into [Pc_Data_Staging].[dbo].[pc_data_Dim_PC]
  FROM [Pc_Data_Staging].[dbo].[pc_data _RawData]
