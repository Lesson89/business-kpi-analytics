IF DB_ID('Business_KPI_Analytics') IS NULL
    CREATE DATABASE Business_KPI_Analytics;
GO
USE Business_KPI_Analytics;
GO

IF SCHEMA_ID('stg') IS NULL EXEC('CREATE SCHEMA stg');
IF SCHEMA_ID('analytics') IS NULL EXEC('CREATE SCHEMA analytics');
GO

DROP TABLE IF EXISTS stg.customer_feedback;
DROP TABLE IF EXISTS stg.marketing_spend;
DROP TABLE IF EXISTS stg.website_sessions;
DROP TABLE IF EXISTS stg.orders;
DROP TABLE IF EXISTS stg.products;
DROP TABLE IF EXISTS stg.customers;
GO

CREATE TABLE stg.customers (
    customer_id VARCHAR(10) PRIMARY KEY,
    customer_name VARCHAR(100),
    signup_date DATE,
    city VARCHAR(50),
    province VARCHAR(50),
    region VARCHAR(50),
    acquisition_channel VARCHAR(50)
);

CREATE TABLE stg.products (
    product_id VARCHAR(10) PRIMARY KEY,
    sku VARCHAR(20),
    category VARCHAR(50),
    sub_category VARCHAR(50),
    unit_price DECIMAL(12,2),
    unit_cost DECIMAL(12,2)
);

CREATE TABLE stg.orders (
    order_id VARCHAR(20) PRIMARY KEY,
    order_date DATE,
    customer_id VARCHAR(10),
    product_id VARCHAR(10),
    quantity INT,
    unit_price DECIMAL(12,2),
    unit_cost DECIMAL(12,2),
    discount_amount DECIMAL(12,2),
    revenue DECIMAL(14,2),
    cost DECIMAL(14,2),
    profit DECIMAL(14,2),
    sales_channel VARCHAR(30)
);

CREATE TABLE stg.website_sessions (
    session_id VARCHAR(20) PRIMARY KEY,
    session_date DATE,
    customer_id VARCHAR(10),
    channel VARCHAR(50),
    device VARCHAR(30),
    converted BIT
);

CREATE TABLE stg.marketing_spend (
    month DATE,
    channel VARCHAR(50),
    spend DECIMAL(14,2),
    PRIMARY KEY(month, channel)
);

CREATE TABLE stg.customer_feedback (
    feedback_id VARCHAR(20) PRIMARY KEY,
    feedback_date DATE,
    customer_id VARCHAR(10),
    csat_score INT,
    nps_score INT
);
GO
