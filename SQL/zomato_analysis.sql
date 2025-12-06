-- Total Revenue
SELECT SUM(order_amount) AS net_revenue
FROM zomato_orders
WHERE order_status = 'Delivered';

-- Total Orders
SELECT COUNT(*) AS total_orders
FROM zomato_orders;

-- Cancelled Orders
SELECT COUNT(*) AS cancelled_orders
FROM zomato_orders
WHERE order_status = 'Cancelled';

-- City-wise Orders
SELECT city, COUNT(*) AS total_orders
FROM zomato_orders
GROUP BY city
ORDER BY total_orders DESC;

-- Cuisine-wise Orders
SELECT cuisine, COUNT(*) AS total_orders
FROM zomato_orders
GROUP BY cuisine
ORDER BY total_orders DESC;

-- Restaurant-wise Orders
SELECT restaurant_name, city, COUNT(*) AS total_orders
FROM zomato_orders
GROUP BY restaurant_name, city
ORDER BY total_orders DESC;

-- Avg Delivery Time (Delivered Only)
SELECT city, ROUND(AVG(delivery_time_minutes)) AS avg_delivery_time
FROM zomato_orders
WHERE order_status = 'Delivered'
GROUP BY city
ORDER BY avg_delivery_time ASC;

-- Cancellation Rate by City
SELECT city,
ROUND(100 * SUM(CASE WHEN order_status = 'Cancelled' THEN 1 END) / COUNT(*), 2) AS cancellation_rate
FROM zomato_orders
GROUP BY city
ORDER BY cancellation_rate DESC;

-- Payment Method Distribution
SELECT payment_method, COUNT(*) AS total_orders
FROM zomato_orders
GROUP BY payment_method
ORDER BY total_orders DESC;

-- Repeat vs Single Order Customers
WITH cust_orders AS (
  SELECT customer_id, COUNT(*) AS order_count
  FROM zomato_orders
  GROUP BY customer_id
)
SELECT
  SUM(CASE WHEN order_count = 1 THEN 1 END) AS single_order_customers,
  SUM(CASE WHEN order_count > 1 THEN 1 END) AS repeat_customers,
  ROUND(100 * SUM(CASE WHEN order_count > 1 THEN 1 END) / COUNT(*), 2) AS repeat_rate_percent
FROM cust_orders;

-- Monthly New vs Repeat Customer Trend
WITH orders_month AS (
  SELECT customer_id, DATE_TRUNC(order_date, MONTH) AS order_month
  FROM zomato_orders
),
cust_first_month AS (
  SELECT customer_id, MIN(order_month) AS first_month
  FROM orders_month
  GROUP BY customer_id
),
orders_with_flag AS (
  SELECT o.customer_id, o.order_month, cf.first_month,
  CASE WHEN DATE_DIFF(o.order_month, cf.first_month, MONTH) = 0 THEN 'new' ELSE 'repeat' END AS type
  FROM orders_month o
  JOIN cust_first_month cf USING (customer_id)
)
SELECT order_month,
COUNT(DISTINCT CASE WHEN type = 'new' THEN customer_id END) AS new_users,
COUNT(DISTINCT CASE WHEN type = 'repeat' THEN customer_id END) AS repeat_users
FROM orders_with_flag
GROUP BY order_month
ORDER BY order_month;

-- RFM Segmentation
WITH last_order AS (
  SELECT customer_id,
  MAX(order_date) AS last_order_date,
  COUNT(*) AS frequency,
  SUM(CASE WHEN order_status='Delivered' THEN order_amount END) AS monetary
  FROM zomato_orders
  GROUP BY customer_id
),
rfm AS (
  SELECT *,
  DATE_DIFF(CURRENT_DATE(), last_order_date, DAY) AS recency
  FROM last_order
),
rfm_score AS (
  SELECT customer_id,
    NTILE(5) OVER (ORDER BY recency ASC) AS r_score,
    NTILE(5) OVER (ORDER BY frequency DESC) AS f_score,
    NTILE(5) OVER (ORDER BY monetary DESC) AS m_score
  FROM rfm
)
SELECT r_score, f_score, m_score, COUNT(*) AS customers
FROM rfm_score
GROUP BY r_score, f_score, m_score
ORDER BY r_score, f_score, m_score;

