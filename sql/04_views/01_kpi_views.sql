USE Business_KPI_Analytics;
GO

CREATE OR ALTER VIEW analytics.vw_sales_kpi AS
SELECT
    o.order_id,
    o.order_date,
    o.customer_id,
    c.city,
    c.province,
    c.region,
    c.acquisition_channel,
    o.product_id,
    p.category,
    p.sub_category,
    o.quantity,
    o.revenue,
    o.cost,
    o.profit,
    o.discount_amount,
    o.sales_channel,
    DATEFROMPARTS(YEAR(o.order_date), MONTH(o.order_date), 1) AS month_start
FROM stg.orders o
LEFT JOIN stg.customers c ON o.customer_id = c.customer_id
LEFT JOIN stg.products p ON o.product_id = p.product_id;
GO

CREATE OR ALTER VIEW analytics.vw_monthly_kpis AS
WITH sales AS (
    SELECT
        DATEFROMPARTS(YEAR(order_date), MONTH(order_date), 1) AS month_start,
        SUM(revenue) AS revenue,
        SUM(profit) AS profit,
        COUNT(DISTINCT order_id) AS orders,
        COUNT(DISTINCT customer_id) AS customers
    FROM stg.orders
    GROUP BY DATEFROMPARTS(YEAR(order_date), MONTH(order_date), 1)
)
SELECT
    month_start,
    revenue,
    profit,
    orders,
    customers,
    ROUND(profit / NULLIF(revenue,0) * 100.0,2) AS profit_margin_pct,
    ROUND(revenue / NULLIF(orders,0),2) AS aov,
    ROUND(
        (revenue - LAG(revenue) OVER (ORDER BY month_start))
        / NULLIF(LAG(revenue) OVER (ORDER BY month_start),0) * 100.0, 2
    ) AS revenue_growth_pct
FROM sales;
GO
