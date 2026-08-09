USE Business_KPI_Analytics;
GO

-- Row counts
SELECT 'customers' AS table_name, COUNT(*) AS row_count FROM stg.customers
UNION ALL SELECT 'products', COUNT(*) FROM stg.products
UNION ALL SELECT 'orders', COUNT(*) FROM stg.orders
UNION ALL SELECT 'website_sessions', COUNT(*) FROM stg.website_sessions
UNION ALL SELECT 'marketing_spend', COUNT(*) FROM stg.marketing_spend
UNION ALL SELECT 'customer_feedback', COUNT(*) FROM stg.customer_feedback;

-- Duplicate checks
SELECT customer_id, COUNT(*) AS duplicates
FROM stg.customers GROUP BY customer_id HAVING COUNT(*) > 1;

SELECT order_id, COUNT(*) AS duplicates
FROM stg.orders GROUP BY order_id HAVING COUNT(*) > 1;

-- Null checks
SELECT
    SUM(CASE WHEN order_date IS NULL THEN 1 ELSE 0 END) AS null_order_date,
    SUM(CASE WHEN customer_id IS NULL THEN 1 ELSE 0 END) AS null_customer_id,
    SUM(CASE WHEN revenue IS NULL THEN 1 ELSE 0 END) AS null_revenue
FROM stg.orders;

-- Referential integrity checks
SELECT COUNT(*) AS orphan_orders
FROM stg.orders o
LEFT JOIN stg.customers c ON o.customer_id = c.customer_id
WHERE c.customer_id IS NULL;

SELECT COUNT(*) AS orphan_products
FROM stg.orders o
LEFT JOIN stg.products p ON o.product_id = p.product_id
WHERE p.product_id IS NULL;
