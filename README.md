# Bike Sales Dashboard - SQL, Power BI
Developed an interactive dashboard in Power BI to analyze bike sales data. Used SQL for data cleaning and transformation, ensuring accurate and reliable insights. The dashboard highlights key metrics like total sales, regional performance, customer segments, and product trends to support data-driven decisions.

![Bike Sales](https://github.com/joydaniel-123/Bike_sales_dashboard-SQL.PowerBI/blob/main/asset/WhatsApp%20Image%20bike.jpg?raw=true)

## Table of Contents:

- [Problem Statement](https://github.com/joydaniel-123/Bike_sales_dashboard-SQL.PowerBI/blob/main/README.md#problem-statement-)
- [Datasource](https://github.com/joydaniel-123/Bike_sales_dashboard-SQL.PowerBI/blob/main/README.md#datasource-)
- [Data Preparation](https://github.com/joydaniel-123/Bike_sales_dashboard-SQL.PowerBI/blob/main/README.md#data-preparation)
- [Data Transformation](https://github.com/joydaniel-123/Bike_sales_dashboard-SQL.PowerBI/blob/main/README.md#key-transformations)
- [Data Modeling](https://github.com/joydaniel-123/Bike_sales_dashboard-SQL.PowerBI/blob/main/README.md#data-modeling)
- [Data Visualization (Dashboard)](https://github.com/joydaniel-123/Bike_sales_dashboard-SQL.PowerBI/blob/main/README.md#data-visualization-dashboard)
- [Insights](https://github.com/joydaniel-123/Bike_sales_dashboard-SQL.PowerBI/blob/main/README.md#insights)
- [Recommendation](https://github.com/joydaniel-123/Bike_sales_dashboard-SQL.PowerBI/blob/main/README.md#recommendation)

## Problem Statement :

The purpose of this task is to:

- Create a dashboard for the sales manager reflecting the KPIs, findings, and include suggestions on what needs to be changed to improve bike sales.
- Write a short report to the sales team explaining the findings and include recommendations on what needs to be adjusted to boost sales.
- Identify customers who have not purchased bikes based on income, marital status, and education levels.
- Analyze customer purchase patterns based on services such as commute distance, age bracket, gender, occupation, and region.
- Provide customer demographic and purchase information: average income, marital status, education level, occupation, region, and purchase history.
- Include demographic insights about customers: gender, age bracket, and regional distribution to target marketing efforts effectively.
## Datasource :

Dataset used for this task was [Bike sales dataset](https://github.com/joydaniel-123/Bike_sales_dashboard-SQL.PowerBI/blob/fabe3fec07dc080e7a99a1e9fa29a5557721e8e0/bike%20sales%20dataset.csv)

## Data Preparation:

Bike Sales Data Preparation (Using SQL)

- Imported the original Excel sheet into the Intern database as src_bike_sales.
- Created a Master_business table in the bike_sales_project database with codes (M, S) and labels (Married, Single).
- Transferred this into the Intern database as src_Marital_status for lookup use.
- Renamed Columns for Consistency
- Used sp_rename to rename confusing column names (e.g., changed Couple to Code in src_Marital_status).
- Created a new cleaned table: stg_bike_sales from src_bike_sales using SELECT INTO.

## Key transformations:

- Marital Status: Used CASE to translate M and S codes into "Married" and "Single".

- Age Grouping: Created age categories:

   `Age < 31 → Adolescent`

   `31 ≤ Age ≤ 50 → Middle age`

   `Age > 50 → Old `

- Currency Label: Added a static column labeled 'USD' for currency.

NB: [Download the Sql Script]

## Data Modeling:

And then dataset was cleaned and transformed, it was ready to the data modeled.

- The `customer churn` tables as show below:

![Screenshot (39)](https://github.com/joydaniel-123/Bike_sales_dashboard-SQL.PowerBI/blob/main/asset/data%20modeling%20for%20bike%20sales.PNG?raw=true)


## Data Visualization (Dashboard):

Data visualization for the data analysis (DAX) was done in Microsoft Power BI Desktop:

Dashboard: [Download Dashboard](https://github.com/joydaniel-123/Bike_sales_dashboard-SQL.PowerBI/blob/d5daff9cf11e5f42b8734fbaa5c065daffccad7d/bike_sales.pbix)

Shows visualizations from Customer Retention analysis:

| Bike sales |
| ----------- |
|![Bike sales dashboard](https://github.com/joydaniel-123/Bike_sales_dashboard-SQL.PowerBI/blob/main/asset/Power%20bi%20dashboard.PNG?raw=true)|



## Insights:

As shown the data Visualization, It can be deduced that:

- Married customers $60,000.00 and those with college education $54,000.00-$52,000.00 have higher incomes and potential buying power.
- Clerical, management, and professional roles show higher bike purchase counts.
- Midwest region leads bike purchases.
- Middle-aged customers are the most likely buyers.

## Recommendation:

- Focus marketing on middle/high-income, married, and college-educated customers.
- Target 0-2 mile commute customers with tailored campaigns.
- Promote to middle-aged and professional occupations.
- Boost Midwest region marketing.
- Offer incentives for longer commute customers.

---













