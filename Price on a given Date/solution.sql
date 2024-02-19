WITH cte AS (
    SELECT
        DISTINCT date_trunc('Month', price_date) month_start_date
    FROM
        sku
    UNION
    SELECT
        date_trunc('Month', MAX(price_date)) + INTERVAL '1' MONTH
    FROM
        sku
),
sol AS (
    SELECT
        b.sku_id,
        a.month_start_date,
        b.price_date,
        b.price
    FROM
        cte a
        INNER JOIN sku b ON a.month_start_date >= b.price_date
),
ans AS (
    SELECT
        sku_id,
        month_start_date,
        MAX(price_date) target_date
    FROM
        sol
    GROUP BY
        sku_id,
        month_start_date
)
SELECT
    a.sku_id,
    TO_CHAR(a.month_start_date, 'YYYY-MM-DD') month_start_date,
    a.price
FROM
    sol a
    INNER JOIN ans b ON a.sku_id = b.sku_id
    AND a.month_start_date = b.month_start_date
    AND a.price_date = b.target_date;