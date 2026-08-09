# Data Dictionary

## customers
| Column | Description |
|---|---|
| customer_id | Unique customer identifier |
| customer_name | Synthetic customer name |
| signup_date | Customer registration date |
| city | Customer city |
| province | Customer province |
| region | Geographic region |
| acquisition_channel | Channel associated with customer acquisition |

## products
| Column | Description |
|---|---|
| product_id | Product identifier |
| sku | Stock keeping unit |
| category | Product category |
| sub_category | Product sub-category |
| unit_price | Selling price |
| unit_cost | Product cost |

## orders
| Column | Description |
|---|---|
| order_id | Unique order identifier |
| order_date | Order date |
| customer_id | Customer identifier |
| product_id | Product identifier |
| quantity | Units purchased |
| unit_price | Price per unit |
| unit_cost | Cost per unit |
| discount_amount | Discount applied |
| revenue | Net sales revenue |
| cost | Product cost |
| profit | Revenue minus cost |
| sales_channel | Online, Store or Marketplace |

## website_sessions
| Column | Description |
|---|---|
| session_id | Unique web session |
| session_date | Session date |
| customer_id | Customer identifier |
| channel | Acquisition channel |
| device | Visitor device |
| converted | 1 if session converted, otherwise 0 |

## marketing_spend
| Column | Description |
|---|---|
| month | Month of spend |
| channel | Marketing channel |
| spend | Marketing investment |

## customer_feedback
| Column | Description |
|---|---|
| feedback_id | Feedback identifier |
| feedback_date | Feedback date |
| customer_id | Customer identifier |
| csat_score | 1–5 satisfaction score |
| nps_score | 0–10 recommendation score |
