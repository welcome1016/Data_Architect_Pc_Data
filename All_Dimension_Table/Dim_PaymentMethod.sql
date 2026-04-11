SELECT Distinct
      [Payment_Method]
      into [Pc_Data_Staging].[dbo].[pc_data_Dim_Payment_Method]
  FROM [Pc_Data_Staging].[dbo].[pc_data _RawData]
