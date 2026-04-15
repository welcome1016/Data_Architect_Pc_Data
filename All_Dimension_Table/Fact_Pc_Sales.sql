
drop table if exists [dbo].[FACT_PC_SALES]
CREATE TABLE [dbo].[FACT_PC_SALES](
	[Sales_ID] [int] IDENTITY(1,1) Primary key,
	[Cost_Price] [int] NOT NULL,
	[Sale_Price] [int] NOT NULL,
	[Discount_Amount] [int] NOT NULL,
	[Finance_Amount] [nvarchar](50) NOT NULL,
	[Credit_Score] [int] NOT NULL,
	[Cost_of_Repairs] [nvarchar](50) NOT NULL,
	[Total_Sales_per_Employee] [int] NOT NULL,
	[PC_Market_Price] [int] NOT NULL
) 

insert into [Pc_Data_Staging].[dbo].[FACT_PC_SALES] ([Cost_Price], [Sale_Price], [Discount_Amount], [Finance_Amount], [Credit_Score], [Cost_of_Repairs], [Total_Sales_per_Employee], [PC_Market_Price])
select distinct [Cost_Price], [Sale_Price], [Discount_Amount], [Finance_Amount], [Credit_Score], [Cost_of_Repairs], [Total_Sales_per_Employee], [PC_Market_Price]
from [Pc_Data_Staging].[dbo].[pc_data _RawData]


