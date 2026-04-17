
drop table [dbo].[FACT_PC_SALES]
CREATE TABLE [dbo].[FACT_PC_SALES](

	[Sales_ID] [int] IDENTITY(1,1) Primary key,
	[Customer_ID] [int] NOT NULL,
	[Channel_ID] [int] NOT NULL,
	[Properies_ID] [int] NOT NULL,
	[Payment_Method_ID] [int] Not null,
	[PriorityID] [int] NOT NULL,
	[Sales_Person_ID] [int] NOT NULL,
	[DateID] [INT] Not Null,
	[Shop_ID] [int] NOT NULL,
	[LocationID] [int] NOT NULL,
	[Cost_Price] [int] NOT NULL,
	[Sale_Price] [int] NOT NULL,
	[Discount_Amount] [int] NOT NULL,
	[Finance_Amount] [nvarchar](50) NOT NULL,
	[Credit_Score] [int] NOT NULL,
	[Cost_of_Repairs] [nvarchar](50) NOT NULL,
	[Total_Sales_per_Employee] [int] NOT NULL,
	[PC_Market_Price] [int] NOT NULL
) 
select * from [dbo].[FACT_PC_SALES]


insert into [dbo].[FACT_PC_SALES] ( [Customer_ID],	[Channel_ID] ,  [Payment_Method_ID], [Properies_ID],[PriorityID], 
[Sales_Person_ID] ,[DateID],[Shop_ID] ,[LocationID],[Cost_Price], [Sale_Price], [Discount_Amount], [Finance_Amount], 
[Credit_Score], [Cost_of_Repairs], [Total_Sales_per_Employee], [PC_Market_Price])
select Distinct

	a.[Customer_ID],
	b.[Channel_ID],
	c. [Payment_Method_ID],
	d. [Properies_ID],
	e.[PriorityID],
	f.[Sales_Person_ID],
	g.[DateID] ,
	h.[Shop_ID] ,
	i.[LocationID],
	s.[Cost_Price],
	s.[Sale_Price],
	s.[Discount_Amount],
	s.[Finance_Amount],
s.[Credit_Score],
	s.[Cost_of_Repairs],
	s.[Total_Sales_per_Employee],
	s.[PC_Market_Price]
	from [Pc_Data_Staging].[dbo].[pc_data _RawData] as s
	join [dbo].[Dim_Customer] as a on s.Customer_Name = a.Customer_Name 
			and s.Customer_Surname = a.Customer_Surname 
			and s.Customer_Contact_Number = a.Customer_Contact_Number
			and s.Customer_Email_Address = a.Customer_Email_Address

	join [dbo].[Dim_Channel] as b  on s.Channel = b.Channel

	join [dbo].[Dim_Payment_Method] as c on s.Payment_Method = c.Payment_Method

	join [dbo].[Dim_Pc_Properties] as d on s.PC_Make = d.PC_Make
								and s.PC_Model = d.PC_Model
								and s.Storage_Type = d.Storage_Type
								and s.RAM = d.RAM
								and s.Storage_Capacity = d.Storage_Capacity

	join [dbo].[Dim_Priority] as e on s.Priority = e.priority
	join [dbo].[Dim_Sales_Person] as f on s.Sales_Person_Name = f.Sales_Person_Name
								and s.Sales_Person_Department = f.Sales_Person_Department

	join [dbo].[Dim_Date] as g on s.Purchase_Date = g.Purchase_Date
						and s.Ship_Date = g.Ship_Date

	join [dbo].[Dim_Shop] as h on s.Shop_Name = h.Shop_Name
								and s.Shop_Age = h.Shop_Age


join [dbo].[Dim_Location] as i on s.Continent = i.continent
							and s.Country_or_State = i.Country_or_State
							and s.Province_or_City = i.Province_or_City

				
				select * from [dbo].[FACT_PC_SALES]