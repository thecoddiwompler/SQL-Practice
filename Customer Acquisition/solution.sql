WITH cte AS(
  SELECT 
    TO_CHAR(order_date, 'YYYY-Mon') AS order_month,
    customer,
    ROW_NUMBER() OVER(PARTITION BY customer ORDER BY order_date) AS customer_rank
  FROM 
    sales
)
SELECT
	order_month,
  COUNT(customer) customer_acquisition_count
FROM
 	cte
WHERE
	customer_rank=1
GROUP BY
	order_month
ORDER BY
	order_month