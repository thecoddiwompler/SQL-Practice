WITH cte AS (
    SELECT
        product_id,
        RANK() OVER(
            PARTITION BY product_id
            ORDER BY
                year
        ) year_rank,
        RANK() OVER(
            PARTITION BY product_id
            ORDER BY
                total_sales_revenue
        ) sales_rank
    FROM
        sales
),
sol AS (
    SELECT
        product_id,
        COUNT(product_id) total_count,
        COUNT(product_id) filter(
            WHERE
                year_rank = sales_rank
        ) revenue_increase_count
    FROM
        cte
    GROUP BY
        product_id
)
SELECT
    a.product_id,
    b.product_name,
    b.category
FROM
    sol a
    INNER JOIN products b ON a.product_id = b.product_id
WHERE
    a.total_count = a.revenue_increase_count
ORDER BY
    a.product_id