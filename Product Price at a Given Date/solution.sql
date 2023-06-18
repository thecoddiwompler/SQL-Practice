WITH CTE AS (
    SELECT product_id, MAX(change_date) eff_date
    FROM products
    WHERE change_date<= CAST('2019-08-16' AS DATE)
    GROUP BY product_id
),
changed_price AS (
    SELECT a.product_id, b.new_price, a.eff_date
    FROM cte a
    INNER JOIN products b
    ON a.product_id=b.product_id
    AND a.eff_date=b.change_date
)
SELECT DISTINCT a.product_id, COALESCE(b.new_price, 10) price
FROM products a
LEFT OUTER JOIN changed_price b
ON a.product_id=b.product_id
