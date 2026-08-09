# 📊 Business KPI Analytics — SQL + Power BI Portfolio Project

A GitHub-ready **Data Analyst portfolio project** that turns transactional, customer, marketing, web-session and feedback data into 10 business KPIs.

> **Portfolio goal:** demonstrate that I can move from raw business data → data profiling → SQL analysis → KPI definitions → dashboard-ready datasets → business recommendations.

## 🎯 Business Questions

1. Is revenue growing month over month?
2. Is the business profitable?
3. How much does it cost to acquire a customer?
4. What is the historical customer lifetime value?
5. Are customers churning?
6. What percentage of website sessions convert?
7. How much does the average customer spend per order?
8. Is marketing investment generating a return?
9. How satisfied are customers?
10. Would customers recommend the business?

## 📌 KPIs

| KPI | Definition |
|---|---|
| Revenue Growth | Month-over-month revenue change |
| Profit Margin | Profit ÷ Revenue |
| CAC | Marketing spend ÷ acquired customers |
| LTV | Average historical customer revenue |
| Churn Rate | Customers active before cutoff who did not return in the final 90 days |
| Conversion Rate | Converted sessions ÷ total sessions |
| AOV | Revenue ÷ orders |
| ROI | (Profit − marketing spend) ÷ marketing spend |
| CSAT | % of feedback scores 4–5 |
| NPS | % Promoters − % Detractors |

## 🧰 Tech Stack

- **SQL Server / SSMS** — data storage, profiling and KPI calculations
- **SQL** — CTEs, window functions, joins, aggregations, CASE expressions
- **Power BI** — dashboard and business storytelling
- **Excel/CSV** — source data
- **Git/GitHub** — version control and portfolio presentation

## 📂 Repository Structure

```text
Business_KPI_Analytics/
├── data/
│   ├── customers.csv
│   ├── products.csv
│   ├── orders.csv
│   ├── website_sessions.csv
│   ├── marketing_spend.csv
│   └── customer_feedback.csv
├── sql/
│   ├── 01_profiling/
│   │   └── 01_data_profiling.sql
│   ├── 02_staging/
│   │   └── 01_create_tables.sql
│   ├── 03_analytics/
│   │   └── 01_kpi_queries.sql
│   └── 04_views/
│       └── 01_kpi_views.sql
├── docs/
│   ├── data_dictionary.md
│   └── business_insights.md
├── powerbi/
│   └── dashboard_build_guide.md
└── README.md
```

## 🚀 How to Run

### 1. Create the SQL Server database

Open **SSMS** and run:

`sql/02_staging/01_create_tables.sql`

### 2. Load the CSV files

Load the six CSV files from `/data` into their matching `stg` tables.

### 3. Profile the data

Run:

`sql/01_profiling/01_data_profiling.sql`

Check:
- row counts
- duplicate keys
- NULL values
- orphan foreign keys

### 4. Calculate the KPIs

Run:

`sql/03_analytics/01_kpi_queries.sql`

### 5. Create dashboard-ready views

Run:

`sql/04_views/01_kpi_views.sql`

Connect Power BI to SQL Server and use `analytics.vw_sales_kpi` and `analytics.vw_monthly_kpis`.

## 📊 Recommended Power BI Dashboard

### Page 1 — Executive Overview
Top KPI cards:
- Revenue
- Revenue Growth %
- Profit Margin %
- AOV
- CAC
- LTV
- Churn %
- Conversion %
- CSAT
- NPS

Charts:
- Monthly Revenue & Profit
- Revenue by Category
- Revenue by Province
- Revenue by Acquisition Channel

### Page 2 — Customer & Marketing
- CAC by channel
- LTV by acquisition channel
- Churn trend
- Conversion rate by channel
- Marketing spend vs profit

### Page 3 — Customer Experience
- CSAT trend
- NPS
- Promoter/Passive/Detractor distribution
- CSAT by region
- NPS by acquisition channel

## 💡 Business Insight Examples

After running the analysis, investigate questions such as:

- Revenue may be increasing while profit margin falls because discounting or costs are increasing.
- A channel with high acquisition volume may still be unattractive if CAC is high and LTV is low.
- A high conversion rate does not automatically mean high profitability.
- A strong NPS can coexist with poor CSAT for specific products or regions.
- AOV can increase because customers buy more items, because prices increased, or because the product mix changed.

**Do not copy these as final findings.** Replace them with evidence from your own SQL/Power BI results.

## 🧠 Skills Demonstrated

- Business KPI definition
- Data profiling
- Data quality checks
- Relational data modelling
- SQL joins
- CTEs
- Window functions
- Aggregations
- NULL handling
- CASE expressions
- Customer analytics
- Marketing analytics
- Dashboard design
- Business storytelling
- Git/GitHub documentation

## 📈 Portfolio Outcome

This project demonstrates the full analyst workflow:

**Raw Data → Profile → Clean/Validate → SQL Analysis → KPI Layer → Power BI → Insights → Business Recommendations**

## ⚠️ Dataset Note

The CSV data in this repository is **synthetic and created for portfolio/learning purposes**. It does not represent a real company's customers or financial performance.

## 👤 CV Bullet

> **Business KPI Analytics Dashboard | SQL Server, Power BI, Git**
> Analyzed synthetic retail/e-commerce data to calculate 10 business KPIs including Revenue Growth, Profit Margin, CAC, LTV, Churn, Conversion Rate, AOV, ROI, CSAT and NPS; performed data-quality profiling in SQL Server and developed dashboard-ready analytical views for Power BI.
