🍽️ Zomato Business Intelligence Case Study
An End-to-End SQL + Tableau Analytics Project
📌 Project Overview

This project delivers a complete business analysis of Zomato’s food delivery dataset using SQL + BigQuery + Tableau.
The goal is to generate actionable insights into customer behavior, city-level performance, cuisine demand, delivery efficiency, and RFM-based customer segmentation.

The dashboard answers real industry questions such as:

Which cities contribute the highest orders & revenue?

What cuisines are most popular among users?

How fast are deliveries across locations?

What percentage of customers are repeat vs new?

Which customer segments provide the highest value?

This project replicates the analysis approach used in business intelligence teams at food delivery companies.

🛠️ Tools & Technologies

SQL (Google BigQuery) — Data cleaning, transformation, joins, aggregations

Tableau Public — Dashboard creation & visualization

Excel / CSV — Data formatting

RFM Segmentation — Customer lifetime value classification

📊 Key Metrics (KPIs)
Metric	Value
Total Orders	2,811
Delivered Revenue	₹7,80,409
Avg Delivery Time	26 minutes
Cancellation Rate	6.51%
Repeat Customer Rate	50.39%

These KPIs form the foundation of operational, marketing, and retention strategy.

📈 Final Dashboard

🔗 Live Tableau Dashboard:
(https://public.tableau.com/views/zomato_analysis_17647700669780/Dashboard1?:language=en-US&:sid=&:redirect=auth&:display_count=n&:origin=viz_share_link)

📁 Project Structure
SQL/
 └── zomato_analysis.sql       # All SQL queries used for analysis
Tableau/
 ├── dashboard.png             # Dashboard screenshot
 └── tableau_link.txt          # Public link to dashboard
Dataset/
 └── zomato_orders_dataset.csv # Prepared dataset used in BigQuery
Documentation/
 └── analysis_notes.txt        # Problem statements, insights & recommendations
README.md                      # Project summary & documentation

🧠 Insights & Findings
⭐ 1. City-Level Insights

Pune and Bangalore recorded the highest order volumes, indicating strong demand concentration in major metro cities.

Tier-2 cities show moderate activity but rising month-over-month trends → emerging markets for Zomato.

⭐ 2. Cuisine Performance

Fast Food, North Indian, and Snacks are the top-performing cuisines.

These categories contribute a majority share of total orders and repeat customer activity.

⭐ 3. Delivery Time Analysis

Average delivery time across all cities is 26 minutes, indicating strong operational efficiency.

Kolkata & Delhi show the fastest deliveries, while Hyderabad and Pune show slightly higher times due to distance & traffic patterns.

⭐ 4. Cancellation Analysis

Overall cancellation rate = 6.51%, primarily driven by delays and peak-hour congestion.

Cities with longer average delivery times also show slightly higher cancellations → clear operational correlation.

⭐ 5. Customer Behavior Insights

50.39% customers are repeat buyers, showing strong loyalty and customer stickiness.

New vs repeat user analysis shows consistent month-on-month improvement in retention.

Higher frequency customers contribute a disproportionate amount of revenue.

⭐ 6. RFM Segmentation (Customer Value Classification)
Segment	Insights
Champions (R5, F5, M5)	Most engaged, highest revenue customers. Critical to retain.
Loyal Customers	High frequency, good monetary contribution. Good candidates for rewards.
Potential Loyalists	New users ordering more frequently. Convert with targeted offers.
At-Risk Customers	High frequency in the past but low recent activity. Require win-back campaigns.
Lost Customers	No recent orders; poor recency score. Best for SMS/Email retention efforts.

RFM makes it clear which customer groups matter most for business growth.

💡 Business Recommendations
📍 1. Improve Delivery Time in Slow Cities

Hyderabad, Pune, and Mumbai need operational improvements to reduce delays.

Suggestion: Better batching, improved routing, and timing-based surge handling.

📍 2. Strengthen Retention Strategy

Since repeat customers contribute ~50% of orders, a loyalty program can significantly increase order frequency.

Eg: Free delivery after 5 orders, points system, personalized cuisine recommendations.

📍 3. Focus Marketing on High-Demand Cuisines

Fast Food & North Indian cuisine segments can be promoted further with combo offers.

Low-demand cuisines can be bundled during off-peak hours.

📍 4. Reduce Cancellations with Better ETA Predictions

Slight improvement in expected delivery times can directly reduce cancellations.

ML-based ETA refinement can help.

📍 5. Convert “Potential Loyalists” Into Repeat Buyers

Push targeted offers to customers showing increasing frequency but still low recency.

Personalized notifications → “Order again from your favorite restaurant!”

📦 SQL Highlights Used in Project

Includes advanced queries:

Total revenue and orders

City & cuisine analysis

Repeat user calculation

New vs repeat monthly trend

Cancellation rate

Full RFM segmentation using NTILE(5)

All queries are available in /SQL/query.sql

👨‍💻 About Me

Mohammad Zaid
Data Analyst | SQL | Tableau | BI Dashboards
Focused on solving business problems with analytics & storytelling
