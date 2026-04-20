USE [21291001_ETL];
GO

SELECT 
    COUNT(*) AS total_customers,
    SUM(CASE WHEN [Customer_Id] IS NULL OR LTRIM(RTRIM([Customer_Id])) = '' THEN 1 ELSE 0 END) AS empty_customer_id,
    SUM(CASE WHEN [Email] IS NULL OR LTRIM(RTRIM([Email])) = '' THEN 1 ELSE 0 END) AS empty_email,
    SUM(CASE WHEN TRY_CAST([Subscription_Date] AS DATE) IS NULL THEN 1 ELSE 0 END) AS invalid_subscription_date
FROM [dbo].[raw_customers_dirty];

SELECT
    COUNT(*) AS total_products,
    SUM(CASE WHEN [Name] IS NULL OR LTRIM(RTRIM([Name])) = '' THEN 1 ELSE 0 END) AS empty_product_name,
    SUM(CASE WHEN TRY_CAST([Price] AS DECIMAL(10,2)) IS NULL THEN 1 ELSE 0 END) AS invalid_price,
    SUM(CASE WHEN TRY_CAST([Price] AS DECIMAL(10,2)) < 0 THEN 1 ELSE 0 END) AS negative_price,
    SUM(CASE WHEN TRY_CAST([Stock] AS INT) IS NULL THEN 1 ELSE 0 END) AS invalid_stock
FROM [dbo].[raw_products_dirty];

SELECT
    COUNT(*) AS total_leads,
    SUM(CASE WHEN [Account_Id] IS NULL OR LTRIM(RTRIM([Account_Id])) = '' THEN 1 ELSE 0 END) AS empty_account_id,
    SUM(CASE WHEN [Email_1] IS NULL OR LTRIM(RTRIM([Email_1])) = '' THEN 1 ELSE 0 END) AS empty_email_1,
    SUM(CASE WHEN [Source] IS NULL OR LTRIM(RTRIM([Source])) = '' THEN 1 ELSE 0 END) AS empty_source
FROM [dbo].[raw_leads_dirty];