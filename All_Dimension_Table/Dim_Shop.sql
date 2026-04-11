SELECT distinct
      [Shop_Name]
      ,[Shop_Age]
      into [Pc_Data_Staging].[dbo].[pc_data_Dim_Shop]
  FROM [Pc_Data_Staging].[dbo].[pc_data _RawData]
