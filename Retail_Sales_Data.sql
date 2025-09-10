Create database Retail_Sales_Data;
Use Retail_Sales_Data;

Create Table Sales_Data_Transactions (
customer_id Varchar(255),
trans_date Varchar (255),
trans_amount Int);

Create Table Sales_Data_Response (
customer_id Varchar(255) Primary key,
response Int);

Load Data Infile 'C:/ProgramData/MySQL/MySQL Server 8.0/Uploads/Retail_Data_Transactions.csv'
Into Table Sales_Data_Transactions
Fields terminated by ','
Lines terminated by '\n'
Ignore 1 Rows;

Select * from Sales_Data_Transactions limit 10;
Explain Select * from Sales_Data_Transactions where customer_id = 'CS4768';
Create Index idx_id on Sales_Data_Transactions(customer_id);

Explain Select * from Sales_Data_Transactions where customer_id = 'CS4768';
