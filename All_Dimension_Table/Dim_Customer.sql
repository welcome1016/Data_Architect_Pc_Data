SELECT 
      Distinct
      [Customer_Name]
      ,[Customer_Surname]
      ,[Customer_Contact_Number]
      ,[Customer_Email_Address]
      into [Pc_Data_Staging].[dbo].[pc_data_Dim_Customer]
  FROM [Pc_Data_Staging].[dbo].[pc_data _RawData]
