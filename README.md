# Bike Sales Dashboard - SQL, Power BI
Developed an interactive dashboard in Power BI to analyze bike sales data. Used SQL for data cleaning and transformation, ensuring accurate and reliable insights. The dashboard highlights key metrics like total sales, regional performance, customer segments, and product trends to support data-driven decisions.

![Bike Sales](https://github.com/joydaniel-123/Bike_sales_dashboard-SQL.PowerBI/blob/main/asset/WhatsApp%20Image%20bike.jpg?raw=true)

## Table of Contents:

- [Problem Statement](https://github.com/yogeshkasar778/PWC_task_2-Customer_Churn_Retension_dashboard/edit/main/README.md#problem-statement-)
- [Datasource](https://github.com/yogeshkasar778/PWC_task_2-Customer_Churn_Retension_dashboard/edit/main/README.md#datasource-)
- [Data Preparation](https://github.com/yogeshkasar778/PWC_task_2-Customer_Churn_Retension_dashboard/edit/main/README.md#data-preparation)
- [Data Modeling](https://github.com/yogeshkasar778/PWC_task_2-Customer_Churn_Retension_dashboard/edit/main/README.md#data-modeling)
- [Data Analysis (DAX)](https://github.com/yogeshkasar778/PWC_task_2-Customer_Churn_Retension_dashboard/edit/main/README.md#data-analysis-dax)
- [Data Visualization (Dashboard)](https://github.com/yogeshkasar778/PWC_task_2-Customer_Churn_Retension_dashboard/edit/main/README.md#data-visualization-dashboard)
- [Insights](https://github.com/yogeshkasar778/PWC_task_2-Customer_Churn_Retension_dashboard/edit/main/README.md#insights)
- [Recommendation](https://github.com/yogeshkasar778/PWC_task_2-Customer_Churn_Retension_dashboard/edit/main/README.md#recommendation)

## Problem Statement :

The purpose of this task is to:

- Create a dashboard for the sales manager reflecting the KPIs, findings, and include suggestions on what needs to be changed to improve bike sales.
- Write a short report to the sales team explaining the findings and include recommendations on what needs to be adjusted to boost sales.
- Identify customers who have not purchased bikes based on income, marital status, and education levels.
- Analyze customer purchase patterns based on services such as commute distance, age bracket, gender, occupation, and region.
- Provide customer demographic and purchase information: average income, marital status, education level, occupation, region, and purchase history.
- Include demographic insights about customers: gender, age bracket, and regional distribution to target marketing efforts effectively.
## Datasource :

Dataset used for this task was presented by [Pwc](https://www.pwc.ch/en/careers-with-pwc/students/virtual-case-experience.html) and customer churn Retention dataset:

Dataset: [Customer Churn Retention](https://github.com/yogeshkasar778/PWC_task_2---Customer_Churn_Retension_dashboard/blob/main/02%20Churn-Dataset.xlsx)

## Data Preparation:

Completed the Data transformation in Power Query and the dataset loaded into Microsoft Power BI Desktop for modeling.

Customer Churn dataset is give table named:

- `Customer churn dataset` which has `23 columns and 7043 rows` of observation

Data Cleaning for the dataset was done in the power query editor as follows:

- Replaced  the value is `SeniorCitizen` N coverted No and Y converted Yes

In the new table, one additional conditional columns were added using M-formula:

- loyalty = `SWITCH(TRUE(),'01 Churn-Dataset'[tenure]<=12,"< 1 year",'01 Churn-Dataset'[tenure]<=24,"< 2 years",'01 Churn-Dataset'[tenure]<=36,"< 3 years",'01 Churn-Dataset'[tenure]<=48,"< 4 years", '01 Churn-Dataset'[tenure]<=60,"< 5 years",'01 Churn-Dataset'[tenure]<=72,"< 6 years")`

- Removed Unnecessary columns 
- Removed Unnecessary rows
- Each of the columns in the table were validated to have the correct data type

## Data Modeling:

And then dataset was cleaned and transformed, it was ready to the data modeled.

- The `customer churn` tables as show below:

![Screenshot (39)](https://user-images.githubusercontent.com/118357991/227792100-51216842-8e72-4e48-b740-aab5d2f97541.png)

## Data Analysis (DAX):

Measures used in  all visualization are:

- Average MonthlyCharges = `AVERAGE('01 Churn-Dataset'[MonthlyCharges])`

- Average TotalCharges = `AVERAGE('01 Churn-Dataset'[TotalCharges])`

- churn count = `CALCULATE(COUNT('01 Churn-Dataset'[Churn]), ALLSELECTED('01 Churn-Dataset'[Churn]),'01 Churn-Dataset'[Churn] = "Yes")`

- churn rate % = `DIVIDE(CALCULATE(COUNT('01 Churn-Dataset'[Churn]), '01 Churn-Dataset'[Churn] = "yes" ), COUNT('01 Churn-Dataset'[Churn]), 0)`

- Dependent in % = `DIVIDE(CALCULATE(COUNT('01 Churn-Dataset'[Dependents]), '01 Churn-Dataset'[Dependents]="Yes",'01 Churn-Dataset'[Churn]="Yes"), CALCULATE(COUNT('01 Churn-Dataset'[Dependents]),'01 Churn-Dataset'[Churn]="Yes"), 0)`

- Device protection in % = `DIVIDE(CALCULATE(COUNT('01 Churn-Dataset'[DeviceProtection]), '01 Churn-Dataset'[DeviceProtection] ="Yes", '01 Churn-Dataset'[Churn]="Yes"),CALCULATE(COUNT('01 Churn-Dataset'[DeviceProtection]),'01 Churn-Dataset'[Churn]="Yes"),0)`

- Online backup in % = `DIVIDE(CALCULATE(COUNT('01 Churn-Dataset'[OnlineBackup]), '01 Churn-Dataset'[OnlineBackup] ="Yes", '01 Churn-Dataset'[Churn]="Yes"),CALCULATE(COUNT('01 Churn-Dataset'[OnlineBackup]),'01 Churn-Dataset'[Churn]="Yes"),0)`

- Online security in % =`DIVIDE(CALCULATE(COUNT('01 Churn-Dataset'[OnlineSecurity]), '01 Churn-Dataset'[OnlineSecurity] ="Yes", '01 Churn-Dataset'[Churn]="Yes"),CALCULATE(COUNT('01 Churn-Dataset'[OnlineSecurity]),'01 Churn-Dataset'[Churn]="Yes"),0)`

- Partner in % = `DIVIDE(CALCULATE(COUNT('01 Churn-Dataset'[Partner]),'01 Churn-Dataset'[Partner]="Yes",'01 Churn-Dataset'[Churn]="Yes"), CALCULATE(COUNT('01 Churn-Dataset'[Partner]), '01 Churn-Dataset'[Churn]="Yes"), 0)`

- Phone service in % =`DIVIDE(CALCULATE(COUNT('01 Churn-Dataset'[PhoneService]), '01 Churn-Dataset'[PhoneService] ="Yes", '01 Churn-Dataset'[Churn]="Yes"),CALCULATE(COUNT('01 Churn-Dataset'[PhoneService]),'01 Churn-Dataset'[Churn]="Yes"),0)`

- SenioCitizen in % = `DIVIDE(CALCULATE(COUNT('01 Churn-Dataset'[SeniorCitizen]),'01 Churn-Dataset'[SeniorCitizen]=1,'01 Churn-Dataset'[Churn]="Yes"), CALCULATE(COUNT('01 Churn-Dataset'[SeniorCitizen]),'01 Churn-Dataset'[Churn]="Yes"), 0)`

- Streaming Movies in % =`DIVIDE(CALCULATE(COUNT('01 Churn-Dataset'[StreamingMovies]), '01 Churn-Dataset'[StreamingMovies] ="Yes", '01 Churn-Dataset'[Churn]="Yes"),CALCULATE(COUNT('01 Churn-Dataset'[StreamingMovies]),'01 Churn-Dataset'[Churn]="Yes"),0)`

- Streaming TV in % =`DIVIDE(CALCULATE(COUNT('01 Churn-Dataset'[StreamingTV]), '01 Churn-Dataset'[StreamingTV] ="Yes", '01 Churn-Dataset'[Churn]="Yes"),CALCULATE(COUNT('01 Churn-Dataset'[StreamingTV]),'01 Churn-Dataset'[Churn]="Yes"),0)`

- Tech Support in % =`DIVIDE(CALCULATE(COUNT('01 Churn-Dataset'[TechSupport]), '01 Churn-Dataset'[TechSupport] ="Yes", '01 Churn-Dataset'[Churn]="Yes"),CALCULATE(COUNT('01 Churn-Dataset'[TechSupport]),'01 Churn-Dataset'[Churn]="Yes"),0)`

## Data Visualization (Dashboard):

Data visualization for the data analysis (DAX) was done in Microsoft Power BI Desktop:

Dashboard: [View Dashboard](https://www.novypro.com/project/yogeshkasar97-1)

Shows visualizations from Customer Retention analysis:

| Customer Churn |
| ----------- |
|![PWC Task 2-Customer Churn Retenstion_page-0002](https://user-images.githubusercontent.com/118357991/229330706-03af1d41-a7e3-4449-8867-55322ecdf371.jpg)|

| Customer Risk |
| ----------- |
|![PWC Task 2-Customer Churn Retenstion_page-0003](https://user-images.githubusercontent.com/118357991/229330924-5b82f4ab-8326-41f0-b001-e56eb264d3ba.jpg)|

| Services |
| ----------- |
|![PWC Task 2-Customer Churn Retenstion_page-0004](https://user-images.githubusercontent.com/118357991/229330958-68b013f5-d013-4de6-a4f7-6a2500823de0.jpg)|

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













