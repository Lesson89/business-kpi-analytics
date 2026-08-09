# Power BI Dashboard Build Guide

## 1. Connect

Get Data → SQL Server → select database `Business_KPI_Analytics`.

Use:
- `analytics.vw_sales_kpi`
- `analytics.vw_monthly_kpis`

Optionally import customer feedback, sessions and marketing spend for detailed pages.

## 2. Core Measures

Create measures similar to:

```DAX
Total Revenue = SUM(vw_sales_kpi[revenue])

Total Profit = SUM(vw_sales_kpi[profit])

Profit Margin % =
DIVIDE([Total Profit], [Total Revenue])

Orders =
DISTINCTCOUNT(vw_sales_kpi[order_id])

AOV =
DIVIDE([Total Revenue], [Orders])

Customers =
DISTINCTCOUNT(vw_sales_kpi[customer_id])
```

For the remaining KPIs, either:
- use SQL views/queries as the semantic layer, or
- reproduce the definitions in DAX after validating the SQL results.

## 3. Dashboard Design

### Executive page
Top row: 5–10 KPI cards.

Middle:
- Revenue trend
- Profit trend
- Revenue by category

Bottom:
- Revenue by province
- Revenue by acquisition channel

### Customer & Marketing page
- CAC by channel
- LTV by channel
- Churn
- Conversion rate
- Marketing spend vs profit

### Customer Experience page
- CSAT
- NPS
- Promoter/Passive/Detractor breakdown
- Satisfaction by region/category

## 4. Storytelling

Every visual should answer a business question.

Avoid building a dashboard that only displays numbers. Add:
- a clear title
- filters
- comparisons
- trends
- a short insight box
- recommended action

## 5. Screenshot Checklist for GitHub

Add 3 screenshots to your repository:

`docs/dashboard_overview.png`
`docs/customer_marketing.png`
`docs/customer_experience.png`

Then embed them in the README.
