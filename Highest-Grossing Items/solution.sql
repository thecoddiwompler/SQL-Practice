WITH cte AS (
  SELECT category, product, SUM(spend) total_spend
  FROM product_spend
  WHERE EXTRACT(year FROM transaction_date)='2022'
  GROUP BY category, product
),
sol AS (
  SELECT category, product, total_spend,
  RANK() OVER(PARTITION BY category ORDER BY total_spend DESC) rn
  FROM cte
)
SELECT category, product, total_spend
FROM sol
WHERE rn<3
