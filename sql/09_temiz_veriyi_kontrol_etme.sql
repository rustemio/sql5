USE [21291001_ETL];
GO

SELECT COUNT(*) AS raw_customers_count FROM [dbo].[raw_customers_dirty];
SELECT COUNT(*) AS clean_customers_count FROM clean_customers_dirty;

SELECT COUNT(*) AS raw_products_count FROM [dbo].[raw_products_dirty];
SELECT COUNT(*) AS clean_products_count FROM clean_products_dirty;

SELECT COUNT(*) AS raw_leads_count FROM [dbo].[raw_leads_dirty];
SELECT COUNT(*) AS clean_leads_count FROM clean_leads_dirty;

SELECT TOP 10 * FROM clean_customers_dirty;
SELECT TOP 10 * FROM clean_products_dirty;
SELECT TOP 10 * FROM clean_leads_dirty;