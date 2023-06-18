WITH cte AS (
    SELECT customer_id, COUNT(DISTINCT product_key) cnt
    FROM customer
    GROUP BY customer_id
)
SELECT customer_id
FROM cte
WHERE cnt IN (
    SELECT COUNT(*)
    FROM product
)
