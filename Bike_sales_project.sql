------BIKE SALES PROJECT------
--------------------------------------------------------------------------------------------------------


----CREATED TABLE src_bike_sales IN INTERN DATABASE FROM AN EXCEL SOURCE SHEET------
SELECT *
FROM [Intern].[dbo].[src_Marital_status]


-------CREATED TABLE src_marital_table  IN INTERN DATABASE FROM Master_business TABLE IN BIKE_SALES_PROJECT DATABASE-------
-----------------------------------------------------------------------------------------------------------------------

CREATE TABLE [bike_sales_project].[dbo]. [Master_business]
(Code varchar(2),
Status varchar(50))


INSERT INTO[bike_sales_project ].[dbo].[Master_business] VALUES
 ( 'M', 'Married'),
 ('S' , 'Single')

 SELECT *
 FROM [bike_sales_project].[dbo].[Master_business]

 
SELECT *
INTO [Intern].[dbo].[src_Marital_status]
FROM [bike_sales_project] .[dbo].[Master_business]


SELECT *
FROM  [Intern].[dbo].[src_Marital_status]

-----THIS SYNTAX IS USED TO RENAME THE COLUMN NAME IN THE TABLE----

  --databasename--
Use Intern ;
GO             --table name--    --new column-  -old column--
EXEC sp_rename 'src_Marital_status.[Couple]', 'Code', 'COLUMN';
GO


-------CREATED stg_bike_sales table IN INTERN DATABASE from src_bike_table IN INTERN DATABASE --------
-----firstly go under src_bike_table under intern to copy the query in (select top 1000 rows), copy the column names and also add new columns----
------------------------------------------------------------------------------------------------------------------------

SELECT  [ID]
	  ,CASE 
		WHEN Marital_status = 'S' THEN 'Single'
		WHEN Marital_status = 'M' THEN 'Married' ELSE 'Invalid'
	   END AS [Marital_Status] 
      ,[Gender]
      ,[Income]
      ,[Children]
      ,[Education]
      ,[Occupation]
      ,[Home_Owner]
      ,[Cars]
      ,[Commute_Distance]
      ,[Region]
	   ,CASE
	    WHEN Age > 50 THEN 'Old'  
	    WHEN Age >= 31 THEN 'Middle age'
	    WHEN Age < 31 THEN 'Adolescent' ELSE 'Invalid'
	   END AS [Age]
      ,[Purchased_Bike]
	  ,'USD'AS [Currency]
INTO [Intern].[dbo].[stg_bike_sales]
FROM [Intern].[dbo].[Src_bike_sales]


SELECT *
FROM [Intern].[dbo].[stg_bike_sales]










