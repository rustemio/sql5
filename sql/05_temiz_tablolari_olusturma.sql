USE [21291001_ETL];
GO

DROP TABLE IF EXISTS clean_customers_dirty;
DROP TABLE IF EXISTS clean_products_dirty;
DROP TABLE IF EXISTS clean_leads_dirty;
GO

CREATE TABLE clean_customers_dirty (
    customer_id NVARCHAR(100),
    first_name NVARCHAR(100),
    last_name NVARCHAR(100),
    company NVARCHAR(200),
    city NVARCHAR(100),
    country NVARCHAR(150),
    phone_1 NVARCHAR(50),
    phone_2 NVARCHAR(50),
    email NVARCHAR(150),
    subscription_date DATE,
    website NVARCHAR(200)
);

CREATE TABLE clean_products_dirty (
    product_name NVARCHAR(255),
    description NVARCHAR(MAX),
    brand NVARCHAR(100),
    category NVARCHAR(100),
    price DECIMAL(10,2),
    currency NVARCHAR(20),
    stock INT,
    ean NVARCHAR(50),
    color NVARCHAR(50),
    size NVARCHAR(50),
    availability NVARCHAR(50),
    internal_id NVARCHAR(50)
);

CREATE TABLE clean_leads_dirty (
    account_id NVARCHAR(100),
    lead_owner NVARCHAR(100),
    first_name NVARCHAR(100),
    last_name NVARCHAR(100),
    company NVARCHAR(200),
    phone_1 NVARCHAR(50),
    phone_2 NVARCHAR(50),
    email_1 NVARCHAR(150),
    email_2 NVARCHAR(150),
    website NVARCHAR(200),
    source NVARCHAR(100),
    deal_stage NVARCHAR(100),
    notes NVARCHAR(MAX)
);