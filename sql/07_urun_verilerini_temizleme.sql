USE [21291001_ETL];
GO

INSERT INTO clean_products_dirty (
    product_name, description, brand, category, price, currency,
    stock, ean, color, size, availability, internal_id
)
SELECT
    NULLIF(LTRIM(RTRIM([Name])), ''),
    LTRIM(RTRIM([Description])),
    LTRIM(RTRIM([Brand])),
    LTRIM(RTRIM([Category])),
    TRY_CAST([Price] AS DECIMAL(10,2)),
    LTRIM(RTRIM([Currency])),
    TRY_CAST([Stock] AS INT),
    LTRIM(RTRIM([EAN])),
    LTRIM(RTRIM([Color])),
    LTRIM(RTRIM([Size])),
    LTRIM(RTRIM([Availability])),
    LTRIM(RTRIM([Internal_ID]))
FROM [dbo].[raw_products_dirty]
WHERE NULLIF(LTRIM(RTRIM([Name])), '') IS NOT NULL
  AND TRY_CAST([Price] AS DECIMAL(10,2)) IS NOT NULL
  AND TRY_CAST([Price] AS DECIMAL(10,2)) >= 0;