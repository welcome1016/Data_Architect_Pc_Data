SELECT Distinct
      [Purchase_Date]
      ,[Ship_Date]
      into [Pc_Data_Staging].[dbo].[pc_data_Dim_Date]
  FROM [Pc_Data_Staging].[dbo].[pc_data _RawData]
