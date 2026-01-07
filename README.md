🍽️ Zomato Business Intelligence Case Study

End-to-End SQL + BigQuery + Tableau Analytics Project

📌 Project Overview


This project presents a business intelligence analysis of Zomato’s food delivery operations using SQL (BigQuery) and Tableau.
The objective is to understand customer behavior, city-level demand, cuisine performance, delivery efficiency, cancellations, and customer value in order to support data-driven business decisions.

The analysis follows the same workflow used by BI and analytics teams in food-delivery and e-commerce companies.

🎯 Business Questions


Which cities and cuisines contribute the highest orders and revenue?

How efficient are deliveries across different cities, and where do delays occur?

What percentage of customers are repeat buyers, and how valuable are they?

Which customer segments drive the most revenue based on RFM analysis?

How can Zomato improve retention and reduce cancellations?


🛠️ Tools & Technologies


SQL (Google BigQuery) — data cleaning, joins, aggregations, cohort & RFM analysis

Tableau Public — interactive dashboard & visual storytelling

Excel / CSV — dataset preparation

RFM Segmentation — customer value classification using Recency, Frequency, Monetary metrics


📊 Key Metrics (KPIs)

Metric	Value
Total Orders	2,811
Delivered Revenue	₹7,80,409
Avg Delivery Time	26 minutes
Cancellation Rate	6.51%
Repeat Customer Rate	50.39%

Metric Definitions

Delivered Revenue = sum of order value for delivered orders only

Repeat Customer Rate = customers with ≥2 delivered orders / total customers

Cancellation Rate = cancelled orders / total orders

These KPIs form the foundation for operational efficiency, retention strategy, and revenue optimization.

📈 Final Dashboard

🔗 Live Tableau Dashboard

https://public.tableau.com/views/zomato_analysis_17647700669780/Dashboard1

📁 Project Structure
SQL/
 └── zomato_analysis.sql        # All SQL queries

Tableau/
 ├── dashboard.png              # Dashboard screenshot
 └── tableau_link.txt           # Public dashboard link

Dataset/
 └── zomato_orders_dataset.csv  # Dataset used in BigQuery

Documentation/
 └── analysis_notes.txt         # Detailed logic, insights & notes

README.md                       # Project documentation

🔍 Analysis Approach

Cleaned and filtered raw order data (removed invalid & cancelled records where required).

Aggregated city-level and cuisine-level performance using SQL.

Calculated delivery time, cancellation rate, and repeat customer metrics.

Built RFM segmentation using NTILE(5) to classify customers by value.

Visualized operational and customer insights using Tableau dashboards.

🧠 Key Insights & Findings

⭐ 1. City-Level Performance

Pune and Bangalore generate the highest order volumes and revenue, indicating strong demand concentration in metro cities.

Tier-2 cities show rising month-over-month activity, highlighting emerging growth opportunities.

⭐ 2. Cuisine Demand

Fast Food, North Indian, and Snacks dominate order volume and repeat purchases.

These cuisines contribute a major share of total revenue, making them critical for promotions.

⭐ 3. Delivery Efficiency

Average delivery time is 26 minutes, reflecting strong overall operations.

Kolkata and Delhi show the fastest deliveries, while Hyderabad and Pune have slightly higher delivery times due to traffic and distance.

⭐ 4. Cancellations

Overall cancellation rate is 6.51%.

Cities with longer delivery times also show higher cancellation rates, indicating a clear operational correlation.

⭐ 5. Customer Behavior

50.39% of customers are repeat buyers, showing strong customer stickiness.

High-frequency customers contribute a disproportionate share of total revenue, reinforcing the importance of retention.

⭐ 6. RFM Segmentation (Customer Value)
Segment	Insight
Champions	Highest value & most engaged customers — critical to retain
Loyal Customers	Frequent buyers with strong revenue contribution
Potential Loyalists	New users with rising frequency — high conversion potential
At-Risk Customers	Previously active but declining engagement
Lost Customers	No recent orders — low priority for incentives

RFM segmentation clearly highlights which customer groups drive sustainable growth.

💡 Business Recommendations

📍 1. Improve Delivery Time in Slow Cities

Focus on Hyderabad, Pune, and Mumbai to reduce delays.

Optimize routing, batching, and peak-hour operations.

📍 2. Strengthen Customer Retention

Since repeat customers contribute ~50% of orders, introduce loyalty programs:

Free delivery after X orders

Reward points

Personalized cuisine recommendations

📍 3. Focus Marketing on High-Demand Cuisines

Promote Fast Food and North Indian combos in high-volume cities.

Bundle low-demand cuisines during off-peak hours.

📍 4. Reduce Cancellations with Better ETA Accuracy

Improve expected delivery time predictions to set accurate customer expectations.

Refined ETA models can directly reduce cancellations.

📍 5. Convert Potential Loyalists

Target customers with increasing frequency but low recency using:

Personalized notifications

“Order again from your favorite restaurant” nudges

📦 SQL Highlights Used in This Project

City & cuisine-level revenue analysis

New vs repeat customer calculation

Monthly order and revenue trends

Cancellation rate computation

Full RFM segmentation using NTILE(5)

All SQL queries are available in:
📂 /SQL/zomato_analysis.sql
