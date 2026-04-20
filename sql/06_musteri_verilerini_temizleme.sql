USE [21291001_ETL];
GO

INSERT INTO clean_customers_dirty (
    customer_id, first_name, last_name, company, city, country,
    phone_1, phone_2, email, subscription_date, website
)
SELECT
    LTRIM(RTRIM([Customer_Id])),
    NULLIF(LTRIM(RTRIM([First_Name])), ''),
    NULLIF(LTRIM(RTRIM([Last_Name])), ''),
    LTRIM(RTRIM([Company])),
    LTRIM(RTRIM([City])),
    LTRIM(RTRIM([Country])),
    LTRIM(RTRIM([Phone_1])),
    NULLIF(LTRIM(RTRIM([Phone_2])), ''),
    LOWER(NULLIF(LTRIM(RTRIM([Email])), '')),
    TRY_CAST([Subscription_Date] AS DATE),
    LTRIM(RTRIM([Website]))
FROM [dbo].[raw_customers_dirty]
WHERE [Customer_Id] IS NOT NULL
  AND LTRIM(RTRIM([Customer_Id])) <> '';