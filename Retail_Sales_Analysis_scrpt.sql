--SQL Syntax--

SELECT COUNT (DISTINCT transaction_id) AS number_of_sales,
COUNT(DISTINCT customer_id)AS number_of_customers,

date as purchase_date,
DAYNAME (DATE) AS day_name,
MONTHNAME (date) AS month_name,
DAYOFMONTH(date)AS day_of_month,

CASE
WHEN age BETWEEN 0 AND 12 THEN 'Child'
WHEN age BETWEEN 12 AND 18 THEN 'Youth'
WHEN age BETWEEN 19 AND 20 THEN 'Young Adult'
WHEN age BETWEEN 31 AND 40 THEN 'Adult'
ELSE 'Senior'
END AS age_bucketss,

CASE 
WHEN total_amount BETWEEN 0 AND 100 THEN 'Low spend'
WHEN total_amount > 100 AND total_amount <200 THEN 'Med spend'
WHEN total_amount > 200 THEN 'High spend'
END AS spend_buckets,

SUM (quantity) AS UNIT_SOLD,
SUM (TOTAL_AMOUNT) AS total_revenue,
product_category,
gender
FROM shopping_trends.sales.sales
GROUP BY ALL
